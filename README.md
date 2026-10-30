Magyar költségvetések adatbázisa (1946-2026)
================
Ferenci Tamás (<https://www.medstat.hu/>)<br>
2026. október 30.

Az ország költségvetése alapvetően határozza meg életünk kereteit: egyik
oldalról megszabja, hogy az állam mennyi adót, járulékot szed be, másik
oldalról meghatározza, hogy ezt a pénzt utána hogyan osztja vissza,
vagyis mennyit szán a különböző funkciókra, szolgáltatásokra,
egészségügytől oktatáson át a nyugdíjakig. Természetesen nagyon sok
minden múlik azon is, hogy a pénzeket konkrétan hogyan költik el, amiről
a költségvetés nem nyilatkozik minden részletében, de ezen összegek
nagysága, egymáshoz való viszonya önmagában is befolyásolja az ország
fejlődési pályáját. A költségvetés hiánya alakítja az államadósságot,
ennek révén a jövő generáció lehetőségeit is.

A fentiekből fakadóan a költségvetés vizsgálata, értékelése mind a
kutatók, mind a politikai döntéshozók számára fontos kérdés, ezen felül
a szélesebb közvélemény érdeklődésére is messzemenőkig számot tartó,
gyakran vitákat generáló téma. Ezek a viták hasznosak, hiszen
hozzájárulnak a múltbeli történések, a jelenlegi helyzet és a jövőbeli
választási lehetőségek jobb megértéséhez, ennek révén pedig,
remélhetőleg, az ország boldogulásához. Ennek azonban előfeltétele, hogy
rendelkezésre álljanak a megfelelő – és elemzésekhez, vizualizációkhoz
jól feldolgozható – adatok a költségvetésről.

## Az adatbázis összeállításának motivációja

A magyar költségvetésre vonatkozó dokumentumok tulajdonképpen jól
elérhetőek a Parlament [honlapján](https://www.parlament.hu/)
(legalábbis az utóbbi évtizedekre vonatkozóan), de még így is több bajuk
van:

- Töredezett az adatforrás: minden év más helyen található (ráadásul még
  az elérési utakban sincsen semmilyen előre meghatározható logika, nem
  lehet például az évszámból kitalálni, így egyesével kell mindegyiket
  kikeresni).
- Nem egységes a formátum a különböző években: az egyik véglet
  (szerencsére ez a tipikusabb), hogy az adott évi költségvetésnek saját
  aloldala van, rajta minden melléklettel, szétszedve tartalom szerint,
  a másik véglet, amikor minden tartalom 2-3 gigantikus PDF-fájlban
  összeömlesztve található. A kettő között több átmenet is előfordul az
  egyes években (minden egyben kivéve az indoklás mellékleteit, minden
  egyben kivéve az indoklás mellékleteit, de azok nem szétszedve vannak
  hanem egyben, a törvényszöveg vagy külön van vagy nincs…).
- A tartalom nem gépi úton feldolgozható formátumban érhető el: még a
  tisztán számszerű adatok tartalmazó táblázatok is csak PDF-ben vannak
  közzétéve.

Ebben a projektben a fentiekre tekintettel célul tűztem ki, hogy egy
helyen összegyűjtsem az ország összes múltbeli költségvetését, ezzel
egyrészt megkönnyítve az eligazodást, remélhetőleg támogatva a
kutatómunkát és a fent említett diskurzust, a hozzá szükséges elemzések
megszületését, másrészt egy tartalék archívumot is képezve arra az
esetre, ha a Parlament honlapja bármi miatt nem lenne elérhető. (Mégis
csak az ország életének alapvető kereteiről tanúskodó dokumentumokról
van szó; kritikusan fontos, hogy az utókor számára nagyon biztonságosan
megőrizzük ezeket.) E mellett, félig-meddig illusztrációként is egy
ilyen adatbázis felhasználási lehetőségeire, és a költségvetésről szóló
diskurzusok támogatására, egy konkrét gépi úton feldolgozható formátumra
történő átalakítást is bemutatok a költségvetések egy nagyon fontos
jellemzőjére vonatkozóan.

## A magyar költségvetés dokumentumai

A mindenkori magyar költségvetésnek 5 alapvető dokumentuma van:

- A költségvetés tervezete. Ezt a kormány nyújtja be a Parlamentnek
  törvényjavaslat formájában; a Parlament honlapján a legtöbb évben
  külön aloldala van. A törvény szövegére vonatkozó javaslaton túl
  tartalmaz rengeteg mellékletet (manapság akár 1000 oldal hosszúságban
  is); sok elemzéshez valójában ezek a hasznosabbak, mert számos részlet
  itt lelhető fel. Fontos, hogy ez a benyújtott javaslat, a hozzá tett
  és elfogadott módosító javaslatokat nem tartalmazza.
- A költségvetési törvény. Ez már tartalmazza az elfogadott módosító
  javaslatok hatását, viszont nincs hozzá melléklet.
- Módosítások. A költségvetési törvény menet közben módosítható.
- Zárszámadás tervezete. Ez számol be a költségvetés tényleges
  teljesítésről: hogy mi és hogyan valósult meg a tervekből. A formátum
  nagyon hasonló: a tervezet egy benyújtott törvényjavaslat,
  törvényszöveggel és rengeteg melléklettel; külön oldala van általában
  a Parlament honlapján, és módosulhat a módosító javaslatok fényében.
- Zárszámadási törvény. Ez a végleges szövege a zárszámadásnak (de itt
  is igaz, hogy a mellékleteket nem tartalmazza).

## Az államháztartás konszolidált funkcionális kiadásainak gépi úton feldolgozható adatbázisa

Az 1000 oldalas költségvetések alapján elég sok kérdés vethető fel (a
probléma inkább az, hogy ezek mennyire válaszolhatóak meg gigantikus
szövegfájlok alapján). Most mutatok egy példát egy olyan témakörre,
amire egyszerre igaz, hogy fontos – ráadásul mind tudományosan, mind a
közvélemény számára – *és* elég jól strukturált ahhoz, hogy legyen esély
kinyerni a választ a dokumentumokból. Ez a kérdés a következő: mire
mennyi költ az állam? Számtalanszor hallunk olyan vitákat, érveléseket,
amelyek végeredményben arra a kérdésre vezetnek, hogy mennyit költ a
magyar állam – például – az egészségügyre. Sokat? Keveset? Többet mint
az előző kormány? Többet kellene? Ha igen, mennyivel? Minek rovására?
stb. stb. Ezek megválaszolásához mind kiindulópont, hogy tudjuk mennyit
költ, illetve költött a múltban és tervez költeni jövőre.

Ha szó szerint vesszük, akkor ez maga a költségvetés (legalábbis a
kiadási oldala). Ez azonban ilyen formában használhatatlan lenne: a
költségvetés több ezer sorból áll, ráadásul nem a szerint van
csoportosítva, hogy mi a funkciója az adott sornak (egészségügy,
oktatás, környezetvédelem stb.), hanem intézményi hierarchiában, tehát
elvileg egyesével kellene végignézni mindegyik sort, és eldönteni, hogy
ebből melyik – a példánál maradva – egészségügy. A jó hír, hogy erre
nincsen szükség, mert ezt megteszik helyettünk: ezt hívják funkcionális
csoportosításnak, és minden költségvetés a mellékletében tartalmazza a
költségvetés adatait ilyen besorolásban is. Ha ezeket az adatok ki
tudjuk nyerni, akkor megvan a kiindulópontunk a fenti kérdések
megválaszolásához.

Nagyon fontos hangsúlyozni, hogy ezek a számok *önmagukban*
természetesen nem adnak választ a fenti kérdésekre. Hogy a
legnyilvánvalóbb problémát említsem: az 1995-es forint természetesen nem
vethető egybe a 2025-ös forinttal, vagyis a számértékek nem
hasonlíthatóak össze évek között. Ha ráadásul olyan kérdéseket teszünk
fel, mint hogy ez a pénz mennyire sok, vagy kellene-e, hogy még több
legyen, akkor valamiféle összehasonlítási alapra is szükségünk lesz – de
ez már más kérdés, ez az elemzés kérdése, itt most a cél pusztán az
adatok összeállítása.

(Megjegyzés: az Államkincstár honlapján elérhető [egy
oldal](https://www.allamkincstar.gov.hu/Koltsegvetes/Kozponti_alrendszer_-_Merlegek/funkcionalis-merlegek/Allamhaztartasi_funkcionalis_bontas_szerinti_anyagok),
ami már *majdnem* az, amire szükségünk volna – gyönyörű, gépi úton
feldolgozható táblázat, több év egységes adatsorával – de egyrészt nem
az egész államháztartásról szól, hanem csak a központi alrendszerről, de
ami sokkal-sokkal nagyobb baj, hogy sem a 2004 előtti, sem az 2021 utáni
adatok nincsenek benne. Az oldal utolsó frissítésének dátuma 2022 eleji;
nekem nem úgy tűnik, mintha ezt jelenleg is karbantartanák.)

Az összes költségvetés letöltése után – a teljes adatbázist lásd a
következő pontban – kinyertem a mellékletekből a funkcionális kiadások
tábláit, és egyetlen, harmonizált formátumú, az összes elérhető múltbeli
adatot egységes struktúrában tartalmazó, gépi úton feldolgozható
táblázattá alakítottam. Az idősor 1999-ben indul, mert a korábbi éveknél
nem találtam meg a költségvetés mellékleteit, ami a funkcionális bontást
tartalmazná (valószínűleg kellően régre visszamenve nem is készült
ilyen). A táblázat a konszolidált adatokat tartalmazza (ez azt jelenti,
hogy ha az államháztartás egy alrendszere egy másik alrendszertől kapott
pénzt és azt továbbadta, akkor az nem fog nála egyaránt bevételként és
kiadásként megjelenni, hanem ki van nullázva; ez a logikus alap a mi
kérdésünkhöz).

A táblázatot elérhetővé tettem
[CSV](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/raw/refs/heads/main/magyar-koltsegvetes-funkcionalis-kiadasok.csv)
és
[XLSX](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/raw/refs/heads/main/magyar-koltsegvetes-funkcionalis-kiadasok.xlsx)
formátumokban, valamint az R nyelvi feldolgozásra alkalmas
[RDS](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/raw/refs/heads/main/magyar-koltsegvetes-funkcionalis-kiadasok.rds)
formátumban (ez utóbbi tartalmazza az automatikus ellenőrzések
eredményeit is).

### Ismert problémák és javítások

A következő dolgokat szándékosan megváltoztattam, hogy valamilyen
inkonzisztenciát javítsak:

- Elég szerencsétlen választás, hogy van olyan eset (F13 és F13.b), ahol
  egy csoportnak pontosan ugyanaz a neve („Egyéb gazdasági tevékenységek
  és szolgáltatások”), mint az őt – más egyébbel! – összegző
  főcsoportnak. Én ezért az F13.b-t önkényesen lecseréltem arra, hogy
  „További egyéb gazdasági tevékenységek és szolgáltatások”.
- Két esetben változott a kódhoz tartozó leírás: az F08 eleinte
  „Szórakoztató, kulturális, és vallási tevékenységek és szolgáltatások”
  volt, később már „Szórakoztató, kulturális, vallási tevékenységek és
  szolgáltatások” néven futott, az F05 eleinte „Államadósság kezelés,
  államháztartás” volt, később „Államadósság-kezelés, államháztartás”
  lett. Én minden esetben lecseréltem a régieket is az újra (pláne, mert
  szerintem azok a nyelvtanilag helyesek).

A fenti két módosítással a név is már egyértelműen azonosítja a
csoportokat, nem csak a kód.

A következő dolgok számomra nem stimmelnek, de nem ismerem az okukat, és
nincs rá magyarázatom:

- A legnagyobb problémám, hogy bizonyos esetekben *ugyanazon* adatra is
  más számot adnak meg a különböző évek táblázatai. Tehát nem arról van
  szó, hogy X. év előirányzata nem egyezik a zárszámadásbeli
  teljesítéssel, vagy a módosított előirányzattal, ez magától értetődő,
  hanem arról, hogy *ugyanarról* az előirányzatról más számot közöl az X
  évi és az X+1 évi táblázat. Miközben az előirányzat az, ami
- A 2016. évi zárszámadásban az államháztartás konszolidált funkcionális
  kiadásai közül hiányzik az F01.e kategória (a F01.d után az F01.e
  jön). Furcsa lenne, hogy egyszerűen kihagyjanak egy sort, de gyanúsan
  ez történt, mert a funkcionális mérlegben szerepel, és a megoszlások
  között is (de érdekes módon a GDP-arányos megoszlásban megint csak
  hiányzik).
- A 2003-as és 2004-es tervezetben az államháztartás konszolidált
  funkcionális kiadásai tábla azt állítja magáról a fejlécben, hogy „ESA
  ’95 módszertan szerinti”. Ez furcsa, mert normális körülmények között
  ez azt jelentené, hogy eredményszemléletű, miközben ez a tábla mindig
  pénzforgalmi szemléletű.
- A 2003. évi tervezetben az az államháztartás konszolidált funkcionális
  kiadásainak főcsoportjait összeadva 8 305 222,6 Ft-ot kapunk, a
  feltüntetett érték viszont 8 310 600,4 Ft. Nagyon nehéz elhinni, hogy
  a költségvetésben valamit rosszul adjanak össze (pláne, hogy nyilván
  számítógéppel végzik, nem kézzel), de jelenleg nincs jobb magyarázatom
  arra, hogy mi történhetett itt.

### Technikai részletek

A modern éra azon éveiben, ahol a költségvetésnek saját aloldala volt a
Parlament honlapján, a költségvetések dokumentumait egy [R
nyelven](https://ferenci-tamas.github.io/r-nyelv/) írt szkript
segítségével töltöttem le a Parlament honlapjáról
([downloader.R](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/blob/main/downloader.R)).
A szkript `wget2` használatával végzi a letöltést, kiindulva a
költségvetés kezdőoldaláról – melynek linkjeit egy [külön
fájl](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/blob/main/linkek.csv)
tartalmazza – és onnan rekurzívan (`--recursive --level=inf`), de végig
a megfelelő domain-en belül maradva
(`--domains=parlament.hu --span-hosts`) tölt le minden fájlt. A
könytárstruktúrát nem őrzi meg (`--no-directories`), de arra figyel,
hogy az azonos nevű fájlok úgy neveződjenek át, hogy a kiterjesztésük
megmaradjon (`--keep-extension`). Ez utóbbi csak a `wget2`-ben van, a
`wget`-ben nincs, de amúgy is célszerűbb a `wget2` használata, mert
gyorsabb és modernebb. Azon években, ahol nem volt ilyen aloldal, kézzel
töltöttem le a fájlokat (ez könnyen megtehető volt, mert az aloldal
hiánya épp azt jelentette, hogy csak 3-4 fájl van tipikusan kitéve).
Ahol szükséges volt, jellemzően ez utóbbi esetekben, a hosszú PDF-ekből
`qpdf::pdf_subset` segítségével szedtem ki azt az oldalt, ahol a
szükséges tábla volt. Egy-két esetben külön fájlban volt ugyan a tábla,
de a szokásostól eltérő volt a fájl neve, ezeket átneveztem, így
végeredményben egységesen `fu__kon.pdf` néven található meg a szükséges
tábla minden esetben (minden évre és mind a tervezetre, mind a
zárszámadásra).

Ezen PDF-ek tartalmát szintén egy szkript
([read_fukon.R](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/blob/main/read_fukon.R))
segítségével nyertem ki és alakítottam gépi úton feldolgozható
formátumúra (ez a szkript Claude Opus 5.5 segítségével készült, itt most
nem aggódtam a programozás automatizálása miatt, hiszen a végeredmény
úgyis jól ellenőrizhető, amit meg is tettem).

A következő automatizált ellenőrzések futnak: a csoportok összege
egyenlő-e a főcsoport értékével, a főcsoportok összege egyenlő-e a fő
funkció értékével, a fő funkciók összege egyenlő-e a teljes kiadással,
és végezetül a teljes kiadás és a bevétel különbsége egyenlő-e az
egyenleggel (ha ez utóbbi kettő is adva volt). Ezen kívül ellenőrzi a
szkript, hogy a kód és a név között egy-egy megfeleltetés van-e (hogy
később nyugodtak lehessünk, hogy bármelyik használható azonosításra).

## Adatbázis

A táblázat az 1946-os költségvetéssel indul – költségvetése ugyan már az
Osztrák-Magyar Monarchiának [is
volt](https://library.hungaricana.hu/hu/collection/orszaggyulesi_konyvtar_dtt_DualKozosBizKoltsgv_Koltsgv/),
és bár tudom, hogy gazdaságtörténészek néha még olyanokat is
[vizsgálnak](https://www.rug.nl/ggdc/historicaldevelopment/maddison/),
mint az egy főre jutó bruttó nemzeti termék a Római Birodalomban, én
most azért odáig nem akartam visszamenni, amikor már az ország pénzneme
és területe is más volt.

| Év | Költségvetés tervezet, indoklás, melléklet | Költségvetés jogszabály | Módosítás | Zárszámadás tervezet, indoklás, melléklet | Zárszámadás jogszabály |
|---:|:---|:---|:---|:---|:---|
| 2026 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2026/koltsegvetes-tervezet) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2026/zarszamadas-tervezet) |  |
| 2025 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2025/koltsegvetes-tervezet) | [Jogszabály](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2025/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2024-90-00-00.0#NR)) |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2025/zarszamadas-tervezet) |  |
| 2024 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2024/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom42/04181/04181.html)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2024/zarszamadas-tervezet) | [Jogszabály](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2024/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2025-85-00-00.0#NR)) |
| 2023 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2023/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom42/00152/00152.html)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2023/zarszamadas-tervezet) |  |
| 2022 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2022/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/16118/16118.html)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2022/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom42/05387/05387.html)) |  |
| 2021 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2021/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/10710/10710.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2021/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom42/01877/01877.html)) |  |
| 2020 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2020/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/06322/06322.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2020/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/17188/17188.html)) |  |
| 2019 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2019/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/00503/00503.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2019/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/13098/13098.html)) |  |
| 2018 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2018/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/15381/15381.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2018/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/07556/07556.html)) |  |
| 2017 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2017/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu//irom40/10377/10377.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2017/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/01671/01671.html)) |  |
| 2016 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2016/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/04730/04730.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2016/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/17578/17578.htm)) |  |
| 2015 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2015/koltsegvetes-tervezet) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2015/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/12284/12284.htm)) |  |
| 2014 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2014/koltsegvetes-tervezet) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2014/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/05954/05954.htm)) |  |
| 2013 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2013/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/07655/07655.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2013/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/01143/01143.htm)) |  |
| 2012 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2012/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/04365/04365.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2012/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/12002/12002.htm)) |  |
| 2011 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2011/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/01498/01498.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2011/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/08196/08196.htm)) |  |
| 2010 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2010/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/10554/10554.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2010/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/03927/03927.htm)) |  |
| 2009 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2009/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/06571/06571.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2009/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/01062/01062.htm)) |  |
| 2008 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2008/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/03860/03860.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2008/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/10380/10380.htm)) |  |
| 2007 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2007/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/1145/1145.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2007/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/06133/06133.htm)) |  |
| 2006 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2006/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/17700/17700.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2006/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/03578/03578.htm)) |  |
| 2005 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2005/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/11700/11700.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2005/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/00881/00881.htm)) |  |
| 2004 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2004/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/5601/5601.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2004/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/17290/17290.htm)) |  |
| 2003 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2003/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/1220/1220.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2003/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/11020/11020.htm)) |  |
| 2002 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2002/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom36/3122/3122.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2002/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/4966/4966.htm)) |  |
| 2001 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2001/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom36/3122/3122.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2001/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/0762/0762.htm)) |  |
| 2000 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2000/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom36/1658/1658.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/2000/zarszamadas-tervezet) |  |
| 1999 | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/1999/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom36/0325/0325.htm)) |  |  | [Dokumentumok](https://github.com/ferenci-tamas/magyar-koltsegvetes-adatbazis/tree/main/dokumentumok/1999/zarszamadas-tervezet) |  |
