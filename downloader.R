library(data.table)

wgetargs <- c(
  "--recursive", "--level=inf", "--span-hosts", "--keep-extension",
  "--domains=parlament.hu", "--convert-links", "--page-requisites",
  "--wait=2", "--adjust-extension", "--random-wait", "--no-directories",
  '--user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"')

###### Költségvetés #####

LinkData <- fread("linkek.csv")

for(yr in LinkData[LinkKoltsegvetes != "" & Ev >= 1995]$Ev) {
  system2("wget2", c(wgetargs, paste0('--directory-prefix="./dokumentumok/', yr, '/koltsegvetes-tervezet/"'),
                     LinkData[Ev == yr]$LinkKoltsegvetes))
}
# --no-parent https://www.parlament.hu/irom38/06571/

qpdf::pdf_subset("./dokumentumok/2026/koltsegvetes-tervezet/11864KIEGSZ001.pdf", 14, "./dokumentumok/2026/koltsegvetes-tervezet/fu__kon.pdf")
qpdf::pdf_subset("./dokumentumok/2025/koltsegvetes-tervezet/09894KIEGSZ001.pdf", 18, "./dokumentumok/2025/koltsegvetes-tervezet/fu__kon.pdf")
qpdf::pdf_subset("./dokumentumok/2024/koltsegvetes-tervezet/2024kv_altindmell.pdf", 14, "./dokumentumok/2024/koltsegvetes-tervezet/fu__kon.pdf")
qpdf::pdf_subset("./dokumentumok/2015/koltsegvetes-tervezet/01794.pdf", 249, "./dokumentumok/2015/koltsegvetes-tervezet/fu__kon.pdf")
qpdf::pdf_subset("./dokumentumok/2014/koltsegvetes-tervezet/12415.pdf", 251, "./dokumentumok/2014/koltsegvetes-tervezet/fu__kon.pdf")
qpdf::pdf_subset("./dokumentumok/2013/koltsegvetes-tervezet/2013_tvjav_0615.pdf", 186, "./dokumentumok/2013/koltsegvetes-tervezet/fu__kon.pdf")
file.copy("./dokumentumok/2004/koltsegvetes-tervezet/fu_konsz.pdf", "./dokumentumok/2004/koltsegvetes-tervezet/fu__kon.pdf")

###### Zárszámadás #####

for(yr in LinkData[LinkZarszamadas != "" & Ev >= 1995]$Ev) {
  system2("wget2", c(wgetargs, paste0('--directory-prefix="./dokumentumok/', yr, '/zarszamadas-tervezet/"'),
                     LinkData[Ev == yr]$LinkZarszamadas))
}

qpdf::pdf_subset("./dokumentumok/2024/zarszamadas-tervezet/12679KIEGSZ001.pdf", 95, "./dokumentumok/2024/zarszamadas-tervezet/fu__kon.pdf")
qpdf::pdf_subset("./dokumentumok/2023/zarszamadas-tervezet/09346KIEGSZ001.pdf", 97, "./dokumentumok/2023/zarszamadas-tervezet/fu__kon.pdf")
qpdf::pdf_subset("./dokumentumok/2022/zarszamadas-tervezet/tvjav_00_indmell.pdf", 104, "./dokumentumok/2022/zarszamadas-tervezet/fu__kon.pdf")
qpdf::pdf_subset("./dokumentumok/2013/zarszamadas-tervezet/2013zsz_fokotet.pdf", 283, "./dokumentumok/2013/zarszamadas-tervezet/fu__kon.pdf")
file.copy("./dokumentumok/2015/zarszamadas-tervezet/fu__kon_2.pdf", "./dokumentumok/2015/zarszamadas-tervezet/fu__kon.pdf")
file.copy("./dokumentumok/2014/zarszamadas-tervezet/fu__kon_2.pdf", "./dokumentumok/2014/zarszamadas-tervezet/fu__kon.pdf")