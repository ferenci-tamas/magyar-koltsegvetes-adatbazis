library(data.table)

# Reading the "konszolidált funkcionális mérleg / kiadások" tables (fu__kon.pdf)
#
#   read_fukon(file)     one PDF  -> wide data.table, one column per header column
#   read_fukons(files)   many PDFs -> long data.table (file, doc_type, row, level, code,
#                        name, column, year, type, value); `year` and `type` ("actual",
#                        "original_plan" or "modified_plan") come from the column
#                        header, `doc_type` ("Tervezet" or "Zarszamadas") from the
#                        table; runs both checks below, see attr(x, "checks") and
#                        attr(x, "code_check")
#   check_fukon(x)       the totals check itself (long or wide input)
#   check_fukon_codes(x) is the code <-> name mapping one-to-one (long or wide input)?
#
# Rows have a `level`: "function" (e.g. ÁLLAMI MŰKÖDÉSI FUNKCIÓK), "main_group"
# (F01), "subgroup" (F01.a) or "total" (Kiadások összesen, Egyenleg, ...).

fukon_re <- list(
  num  = "^-?[0-9]+(,[0-9]+)?$",   # one space-separated group of a number
  dec  = "^-?[0-9]+,[0-9]+$",      # last group of a number (has the decimal comma)
  code = "^F[0-9]{2}(\\.[a-z])?$"  # F01 or F01.a
)

# Name fixes, applied only where both `code` and `old` match (so an unexpected new name
# still shows up in check_fukon_codes()): F08 and F15 are worded differently in older
# documents (up to the 2013 Tervezet) than from the 2012 Zárszámadás on, and F13.b has
# the same name as its main group F13
fukon_rename <- data.table(
  code = c("F08", "F15", "F13.b"),
  old = c("Szórakoztató, kulturális, és vallási tevékenységek és szolgáltatások",
          "Államadósság kezelés, államháztartás",
          "Egyéb gazdasági tevékenységek és szolgáltatások"),
  new = c("Szórakoztató, kulturális, vallási tevékenységek és szolgáltatások",
          "Államadósság-kezelés, államháztartás",
          "További egyéb gazdasági tevékenységek és szolgáltatások")
)

# Start a new cluster wherever the gap between sorted values exceeds `gap`
cluster_1d <- function(v, gap) {
  o <- order(v)
  g <- integer(length(v))
  g[o] <- cumsum(c(TRUE, diff(v[o]) > gap))
  g
}

squish <- function(s) trimws(gsub("\\s+", " ", s))

# Glue the tokens of one line (sorted by x). Some glyphs (notably "ő") are separate
# tokens touching their neighbours without a space flag, so they get no space.
join_tokens <- function(text, x, width, space) {
  n <- length(text)
  if (n == 0L) return("")
  if (n == 1L) return(text)
  gap <- x[-1] - (x[-n] + width[-n])
  sep <- ifelse(!space[-n] & gap <= 1, "", " ")
  paste0(text, c(sep, ""), collapse = "")
}

# Glue tokens spanning several lines (a header cell)
join_lines <- function(tok, line_gap) {
  if (nrow(tok) == 0L) return(NA_character_)
  tok <- copy(tok)[, line := cluster_1d(cy, line_gap)]
  setorder(tok, line, x)
  paste(tok[, .(s = join_tokens(text, x, width, space)), by = line]$s, collapse = " ")
}

# c("1", "179", "709,5") -> 1179709.5; NA unless the tokens form one well-formed number
parse_cell <- function(text, x, right, max_gap) {
  n <- length(text)
  ok <- if (n == 1L) grepl(fukon_re$num, text) else
    grepl("^-?[0-9]{1,3}$", text[1]) &&
      all(grepl("^[0-9]{3}$", text[-c(1, n)])) &&
      grepl("^[0-9]{3}(,[0-9]+)?$", text[n]) &&
      all(x[-1] - right[-n] <= max_gap)
  if (!ok) return(NA_real_)
  as.numeric(sub(",", ".", paste(text, collapse = ""), fixed = TRUE))
}

read_fukon <- function(file) {
  pages <- pdftools::pdf_data(file)
  if (length(pages) > 1L) warning(file, ": has ", length(pages), " pages, reading the first only", call. = FALSE)
  d <- as.data.table(pages[[1]])
  if (!nrow(d)) stop(file, ": no text layer", call. = FALSE)
  d[, `:=`(x = as.numeric(x), width = as.numeric(width))]
  d[, `:=`(cx = x + width / 2, cy = y + height / 2, right = x + width)]

  # Accented glyphs are sometimes drawn twice at (almost) the same spot: keep one copy
  setorder(d, -height)
  same <- outer(d$text, d$text, "==") &
    abs(outer(d$x, d$x, "-")) <= 1.5 & abs(outer(d$cy, d$cy, "-")) <= 2.5
  keep <- rowSums(same & lower.tri(same)) == 0
  d <- d[keep]

  h <- median(d$height)
  line_gap <- h / 2
  d[, row := cluster_1d(cy, line_gap)]

  # Header = rows between "millió forintban" and the first row with a number
  top <- d[text == "forintban", row]
  if (!length(top)) stop(file, ": 'millió forintban' line not found", call. = FALSE)
  top <- max(top)
  first <- d[row > top & grepl(fukon_re$dec, text), row]
  if (!length(first)) stop(file, ": no numbers found below the header", call. = FALSE)
  first <- min(first)

  # Table rows, classified by their label (= the non-numeric tokens)
  body <- d[row >= first][, is_num := grepl(fukon_re$num, text)]
  rows <- body[, {
    o <- order(x)
    lab <- o[!is_num[o]]
    code <- if (length(lab) && grepl(fukon_re$code, text[lab[1]])) text[lab[1]] else NA_character_
    nm <- if (is.na(code)) lab else lab[-1]
    list(code = code,
         name = join_tokens(text[nm], x[nm], width[nm], space[nm]),
         label_right = if (length(lab)) max(right[lab]) else NA_real_,
         has_dec = any(grepl(fukon_re$dec, text)))
  }, keyby = row]
  rows[, name := squish(gsub("\\s*[:*]+\\s*$", "", name))]
  rows[fukon_rename, on = .(code, name = old), name := i.new]
  rows[, level := fcase(
    grepl(".", code, fixed = TRUE), "subgroup",
    !is.na(code), "main_group",
    has_dec & grepl("összesen|egyenleg", tolower(name)), "total",
    grepl("\\p{Lu}", name, perl = TRUE) & !grepl("\\p{Ll}", name, perl = TRUE), "function",
    default = NA_character_
  )]
  stray <- rows[is.na(level) & has_dec]
  if (nrow(stray)) warning(file, ": ignored row(s) with numbers but unrecognised label: ",
                           paste(shQuote(stray$name), collapse = ", "), call. = FALSE)
  rows <- rows[!is.na(level)]

  # Value columns: numbers are right-aligned, so cluster the right edges of the last groups
  vals <- body[row %in% rows$row & is_num]
  dec_right <- vals[grepl(fukon_re$dec, text), right]
  edges <- as.numeric(tapply(dec_right, cluster_1d(dec_right, 2 * h), max))
  K <- length(edges)
  vals[, col := findInterval(right - h / 2, edges, left.open = TRUE) + 1L]
  if (any(vals$col > K)) warning(file, ": ignored numbers right of the last column: ",
                                 paste(vals[col > K, text], collapse = " "), call. = FALSE)
  vals <- vals[col <= K]
  setorder(vals, row, col, x)
  cells <- vals[, .(value = parse_cell(text, x, right, max_gap = h),
                    raw = paste(text, collapse = " ")), by = .(row, col)]
  if (anyNA(cells$value)) warning(file, ": could not parse cell(s): ",
                                  paste(shQuote(cells[is.na(value), raw]), collapse = ", "), call. = FALSE)

  # Column names: split header lines into phrases at wide gaps and give each phrase to
  # the column containing its centre (header text is centred over its column)
  L <- max(rows$label_right, na.rm = TRUE)
  hdr <- d[row > top & row < first & cx > L]
  hdr[, hline := cluster_1d(cy, line_gap)]
  setorder(hdr, hline, x)
  hdr[, seg := cumsum(c(TRUE, x[-1] - right[-.N] > 0.75 * h)), by = hline]
  hdr[, col := findInterval((min(x) + max(right)) / 2, edges, left.open = TRUE) + 1L, by = .(hline, seg)]
  lost <- hdr[col > K & grepl("[[:alnum:]]", text), text]
  if (length(lost)) warning(file, ": header text right of the last column ignored: ",
                            paste(lost, collapse = " "), call. = FALSE)
  cols <- vapply(seq_len(K), function(k) join_lines(hdr[col == k], line_gap), "")
  # Drop footnote markers; fix the "2008, évi" typo of one header
  cols <- sub("^([0-9]{4}),", "\\1.", squish(gsub("*", "", cols, fixed = TRUE)))
  if (anyNA(cols) || any(cols == "")) {
    warning(file, ": no header found for some columns", call. = FALSE)
    cols[is.na(cols) | cols == ""] <- paste0("V", which(is.na(cols) | cols == ""))
  }
  if (anyDuplicated(cols)) {
    warning(file, ": duplicated column names made unique", call. = FALSE)
    cols <- make.unique(cols, sep = "_")
  }

  m <- matrix(NA_real_, nrow(rows), K)
  m[cbind(match(cells$row, rows$row), cells$col)] <- cells$value
  out <- data.table(row = seq_len(nrow(rows)), level = rows$level, code = rows$code, name = rows$name)
  out[, (cols) := as.data.table(m)]
  out[]
}

fukon_long <- function(wide, file = NA_character_) {
  value_cols <- setdiff(names(wide), c("row", "level", "code", "name"))
  long <- melt(wide, id.vars = c("row", "level", "code", "name"), measure.vars = value_cols,
               variable.name = "column", value.name = "value", variable.factor = FALSE)
  long[, cpos := match(column, value_cols)]
  setorder(long, row, cpos)
  long[, cpos := NULL]
  long[, file := file]
  # From the header: "teljesítés" -> actual; "törvényi módosított (ei.)" -> modified plan;
  # "terv", "tervezés", "törvény", "eredeti", "(eredeti/törvényi) előirányzat" -> original plan
  long[, year := strtoi(sub("^([0-9]{4})\\..*$", "\\1", column), base = 10L)]
  long[, type := fcase(
    grepl("teljesítés", column), "actual",
    grepl("módosított", column), "modified_plan",
    grepl("előirányzat|terv|törvény|eredeti", column), "original_plan"
  )]
  if (anyNA(long$year) || anyNA(long$type))
    warning(file, ": could not parse year or type from header(s): ",
            paste(unique(long[is.na(year) | is.na(type), column]), collapse = ", "), call. = FALSE)
  # Final accounts (Zárszámadás) report the actual for their latest year, proposals don't
  latest <- max(long$year, na.rm = TRUE)
  long[, doc_type := if (any(type == "actual" & year == latest, na.rm = TRUE)) "Zarszamadas" else "Tervezet"]
  setcolorder(long, c("file", "doc_type", "row", "level", "code", "name", "column", "year", "type", "value"))
  long[]
}

# Checks every aggregating row against the sum of its components:
#   subgroups (F01.a, ...)  = main group (F01)
#   main groups             = function row above them (ÁLLAMI MŰKÖDÉSI FUNKCIÓK, ...)
#   function rows           = "... kiadások összesen" (if present)
#   Bevételek - Kiadások    = Egyenleg (if present)
# Blank cells count as 0. Figures are rounded to 0.1, so by default a difference of up
# to 0.05 * (n + 1) is accepted for a sum of n items; pass `tol` for a fixed tolerance.
check_fukon <- function(x, tol = NULL) {
  x <- as.data.table(x)
  if (!all(c("column", "value") %in% names(x))) x <- fukon_long(x)
  if (!"file" %in% names(x)) x[, file := NA_character_]
  x <- x[, .(file, column, row, level, code, name, v = fcoalesce(value, 0))]
  setorder(x, file, column, row)
  # A main group belongs to the closest function row above it
  x[, fn := cummax(fifelse(level == "function", row, 0L)), by = .(file, column)]
  keys <- c("file", "column")

  c1 <- merge(
    x[level == "main_group", .(file, column, parent = code, reported = v)],
    x[level == "subgroup", .(computed = sum(v), n = .N),
      by = .(file, column, parent = sub("\\..*$", "", code))],
    by = c(keys, "parent"), all.y = TRUE
  )[, check := "subgroups = main group"]

  c2 <- merge(
    x[level == "function", .(file, column, fn = row, parent = name, reported = v)],
    x[level == "main_group", .(computed = sum(v), n = .N), by = .(file, column, fn)],
    by = c(keys, "fn"), all = TRUE
  )[, fn := NULL][, check := "main groups = function"]

  c3 <- merge(
    x[level == "total" & grepl("kiadás", tolower(name)), .(file, column, parent = name, reported = v)],
    x[level == "function", .(computed = sum(v), n = .N), by = keys],
    by = keys
  )[, check := "functions = total expenditure"]

  c4 <- x[level == "total", .(
    parent = "Egyenleg",
    reported = v[grepl("egyenleg", tolower(name))][1],
    computed = v[grepl("bevétel", tolower(name))][1] - v[grepl("kiadás", tolower(name))][1],
    n = 2L
  ), by = keys][!is.na(reported)][, check := "revenue - expenditure = balance"]

  res <- rbindlist(list(c1, c2, c3, c4), use.names = TRUE, fill = TRUE)
  res[, diff := round(reported - computed, 6)]
  res[, tol := if (is.null(tol)) 0.05 * (n + 1) + 1e-6 else tol]
  res[, ok := !is.na(diff) & abs(diff) <= tol]
  setcolorder(res, c("file", "column", "check", "parent", "n", "reported", "computed", "diff", "tol", "ok"))
  res[]
}

# Is the code <-> name mapping one-to-one across all files? Returns every code-name pair
# involved in a violation (a code with several names, or a name with several codes),
# with the files it occurs in; an empty table means the mapping is one-to-one.
check_fukon_codes <- function(x) {
  x <- as.data.table(x)
  if (!"file" %in% names(x)) x[, file := NA_character_]
  pairs <- unique(x[!is.na(code), .(file, code, name)])[
    , .(n_files = .N, files = paste(file, collapse = ", ")), by = .(code, name)]
  res <- rbind(
    pairs[code %in% code[duplicated(code)]][, problem := "code has several names"],
    pairs[name %in% name[duplicated(name)]][, problem := "name has several codes"]
  )
  setcolorder(res, "problem")
  res[]
}

read_fukons <- function(files, tol = NULL) {
  res <- rbindlist(lapply(files, function(f) fukon_long(read_fukon(f), f)))
  checks <- check_fukon(res, tol)
  nbad <- sum(!checks$ok)
  if (nbad) {
    warning(nbad, " of ", nrow(checks), " total checks failed, see attr(x, \"checks\")", call. = FALSE)
  } else {
    message("All ", nrow(checks), " total checks passed.")
  }
  setattr(res, "checks", checks)
  code_check <- check_fukon_codes(res)
  if (nrow(code_check)) {
    warning("codes and names are not one-to-one for ", paste(unique(code_check$code), collapse = ", "),
            ", see attr(x, \"code_check\")", call. = FALSE)
  } else {
    message("Codes and names correspond one-to-one.")
  }
  setattr(res, "code_check", code_check)
  res[]
}

###############################################################################

fukons <- list.files("./dokumentumok/", "fu__kon.pdf", recursive = TRUE, full.names = TRUE)

fukons

fk <- read_fukons(fukons)
fk2 <- fk[order(year, doc_type, column, row),
         .(year, doc_type, column, type, row, level, code, name, value,
           source = sub("^.*?/([^/]+/[^/]+)/.*$", "\\1", file))]
attr(fk2, "checks") <- attr(fk, "checks")
attr(fk2, "code_check") <- attr(fk, "code_check")

saveRDS(fk2, "magyar-koltsegvetes-funkcionalis-kiadasok.rds")
openxlsx::write.xlsx(fk2, "magyar-koltsegvetes-funkcionalis-kiadasok.xlsx")
fwrite(fk2, "magyar-koltsegvetes-funkcionalis-kiadasok.csv", dec = ",", sep =";", bom = TRUE)
