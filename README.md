Magyar költségvetések adatbázisa (1949–2027)
================
Ferenci Tamás (<https://www.medstat.hu/>)<br>
2026. november 4.

Az ország költségvetése alapvetően határozza meg életünk kereteit: egyik
oldalról megmutatja, hogy az állam mennyi adót, járulékot szed be, másik
oldalról meghatározza, hogy ezt a pénzt utána hogyan osztja vissza,
vagyis mennyit szán a különböző funkciókra, szolgáltatásokra,
egészségügytől oktatáson át a nyugdíjakig. Természetesen nagyon sok
minden múlik azon is, hogy a pénzeket konkrétan hogyan költik el, amiről
a költségvetés nem nyilatkozik minden részletében, de ezen összegek
nagysága, egymáshoz való viszonya önmagában is befolyásolja az ország
fejlődési pályáját. A költségvetési hiány alakítja az államadósságot,
ennek révén a jövő generáció lehetőségeit is.

A fentiekből fakadóan a költségvetés vizsgálata, értékelése mind a
kutatók, mind a politikai döntéshozók számára fontos kérdés, ezenfelül a
szélesebb közvélemény érdeklődésére is messzemenőkig számot tartó,
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
  a másik véglet, amikor minden tartalom 2–3 gigantikus PDF-fájlban
  összeömlesztve található. A kettő között több átmenet is előfordul az
  egyes években (minden egyben, kivéve az indokolás mellékleteit, az
  indokolás mellékletei szétszedve vagy egyben vannak, a törvényszöveg
  vagy külön van, vagy nincs…).
- A tartalom nem gépi úton feldolgozható formátumban érhető el: még a
  tisztán számszerű adatokat tartalmazó táblázatok is csak PDF-ben
  vannak közzétéve.

Ebben a projektben a fentiekre tekintettel célul tűztem ki, hogy egy
helyen összegyűjtsem az ország összes múltbeli költségvetését, ezzel
egyrészt megkönnyítve az eligazodást, remélhetőleg támogatva a
kutatómunkát és a fent említett diskurzust, a hozzá szükséges elemzések
megszületését, másrészt egy tartalék archívumot is képezve arra az
esetre, ha a Parlament honlapja bármi miatt nem lenne elérhető.
(Mégiscsak az ország életének alapvető kereteiről tanúskodó
dokumentumokról van szó; kritikusan fontos, hogy az utókor számára
nagyon biztonságosan megőrizzük ezeket.) Emellett, félig-meddig
illusztrációként is egy ilyen adatbázis felhasználási lehetőségeire, és
a költségvetésről szóló diskurzusok támogatására, egy konkrét gépi úton
feldolgozható formátumra történő átalakítást is bemutatok a
költségvetések egy nagyon fontos jellemzőjére vonatkozóan.

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
  javaslatok hatását, viszont nincs hozzá indokolás, és így
  indokolás-mellékletek sem.
- Módosítások. A költségvetési törvény menet közben módosítható.
- Zárszámadás tervezete. Ez számol be a költségvetés tényleges
  teljesítéséről: hogy mi és hogyan valósult meg a tervekből. A formátum
  nagyon hasonló: a tervezet egy benyújtott törvényjavaslat,
  törvényszöveggel és rengeteg melléklettel; külön oldala van általában
  a Parlament honlapján, és módosulhat a módosító javaslatok fényében.
- Zárszámadási törvény. Ez a végleges szövege a zárszámadásnak (de itt
  is igaz, hogy indokolást és azok mellékleteit nem tartalmazza).

## Az államháztartás konszolidált funkcionális kiadásainak gépi úton feldolgozható adatbázisa

Az 1000 oldalas költségvetések alapján elég sok kérdés vethető fel (a
probléma inkább az, hogy ezek mennyire válaszolhatóak meg gigantikus
PDF-ek alapján). Most mutatok egy példát egy olyan témakörre, amire
egyszerre igaz, hogy fontos – ráadásul mind tudományosan, mind a
közvélemény számára – *és* elég jól strukturált ahhoz, hogy legyen esély
kinyerni a választ a dokumentumokból. Ez a kérdés a következő: mire
mennyit költ az állam? Számtalanszor hallunk olyan vitákat, érveléseket,
amelyek végeredményben arra a kérdésre vezetnek, hogy mennyit költ a
magyar állam – például – az egészségügyre. Sokat? Keveset? Többet, mint
az előző kormány? Többet kellene? Ha igen, mennyivel? Minek rovására?
stb. stb. Ezek megválaszolásához mind kiindulópont, hogy tudjuk, mennyit
költ, illetve költött a múltban és tervez költeni jövőre.

Ha szó szerint vesszük, akkor ez maga a költségvetés (legalábbis a
kiadási oldala). Ez azonban ilyen formában használhatatlan lenne: a
költségvetés több ezer sorból áll, ráadásul nem aszerint van
csoportosítva, hogy mi a funkciója az adott sornak (egészségügy,
oktatás, környezetvédelem stb.), hanem intézményi hierarchiában, tehát
elvileg egyesével kellene végignézni mindegyik sort, és eldönteni, hogy
ebből melyik – a példánál maradva – egészségügy. A jó hír, hogy erre
nincsen szükség, mert ezt megteszik helyettünk: ezt hívják funkcionális
csoportosításnak, és minden költségvetés a mellékletében tartalmazza a
költségvetés adatait ilyen besorolásban is. Ha ezeket az adatokat ki
tudjuk nyerni, akkor megvan a kiindulópontunk a fenti kérdések
megválaszolásához.

Nagyon fontos hangsúlyozni, hogy ezek a számok *önmagukban*
természetesen nem adnak választ a fenti kérdésekre. Hogy a
legnyilvánvalóbb problémát említsem: a 2010-es forint természetesen nem
vethető egybe a 2020-as forinttal, vagyis a számértékek nem
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
ami sokkal-sokkal nagyobb baj, hogy sem a 2004 előtti, sem a 2021 utáni
adatok nincsenek benne. Az oldal utolsó frissítésének dátuma 2022 eleji;
nekem nem úgy tűnik, mintha ezt jelenleg is karbantartanák.)

Az összes költségvetés letöltése után – a teljes adatbázist lásd a
következő pontban – kinyertem a mellékletekből a funkcionális kiadások
tábláit, és egyetlen, harmonizált formátumú, az összes elérhető múltbeli
adatot egységes struktúrában tartalmazó, gépi úton feldolgozható
táblázattá alakítottam. Az idősor 2000-ben indul, mert a korábbi éveknél
nem találtam meg a költségvetés azon mellékleteit, amelyek a
funkcionális bontást tartalmaznák (nagyon régre visszamenve valószínűleg
nem is készült ilyen). A táblázat a konszolidált adatokat tartalmazza
(ez azt jelenti, hogy ha az államháztartás egyik alrendszere egy másik
alrendszernek pénzt küld, akkor az nem jelenik meg az előbbinél
kiadásként, az utóbbinál pedig bevételként, hiszen az államháztartás
egészét nézve egy ilyen mozgás neutrális).

A táblázatot elérhetővé tettem
[CSV](magyar-koltsegvetes-funkcionalis-kiadasok.csv?raw=true) és
[XLSX](magyar-koltsegvetes-funkcionalis-kiadasok.xlsx?raw=true)
formátumokban, valamint az R nyelvi feldolgozásra alkalmas
[RDS](magyar-koltsegvetes-funkcionalis-kiadasok.rds?raw=true)
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
  szolgáltatások” néven futott, az F15 eleinte „Államadósság kezelés,
  államháztartás” volt, később „Államadósság-kezelés, államháztartás”
  lett. Én minden esetben lecseréltem a régieket is az újakra (pláne,
  mert szerintem az újak a nyelvtanilag helyesek).

A fenti módosításokkal a név is már egyértelműen azonosítja a
csoportokat, nem csak a kód.

A következő dolgok számomra nem stimmelnek, de nem ismerem az okukat, és
nincs rájuk magyarázatom:

- A legnagyobb problémám, hogy bizonyos esetekben *ugyanazon* adatra is
  más számot adnak meg a különböző évek táblázatai. Tehát nem arról van
  szó, hogy T. év előirányzata nem egyezik a zárszámadásbeli
  teljesítéssel, vagy a módosított előirányzattal, ez magától értetődő,
  hanem arról, hogy *ugyanarról* az előirányzatról más számot közöl
  az T. évi és az T+1. évi táblázat. Miközben az előirányzat az, ami az
  eredetileg tervezett érték, ez nem változhatna meg attól, hogy később
  írjuk le az értékét.
- Bizonyos esetekben (pl. 2016. évi zárszámadás) az államháztartás
  konszolidált funkcionális kiadásai közül hiányzik az F01.e kategória
  (az F01.d után az F01.f jön). Furcsa lenne, hogy egyszerűen
  kihagyjanak egy sort, de gyanúsan ez történt, mert a funkcionális
  mérlegben szerepel, és a megoszlások között is. A legvalószínűbb
  magyarázat, hogy a sor végig üres, azaz, ha mindent jól értek, 0
  forintos volt, és ezért hagyták el (bár más esetekben – helyesen –
  ilyenkor is megtartották, erre példa a 2015-ös zárszámadás).
- A 2003-as és 2004-es tervezetben az államháztartás konszolidált
  funkcionális kiadásai tábla azt állítja magáról a fejlécben, hogy „ESA
  ’95 módszertan szerint” készült. Ez furcsa, mert normális körülmények
  között ez azt jelentené, hogy eredményszemléletű, miközben ez a tábla
  mindig pénzforgalmi szemléletű.
- A 2003. évi tervezetben az államháztartás konszolidált funkcionális
  kiadásainak főcsoportjait összeadva 8 305 222,6 millió forintot
  kapunk, a feltüntetett érték viszont 8 310 600,4 millió forint. Nagyon
  nehéz elhinni, hogy a költségvetésben valamit rosszul adjanak össze
  (pláne, hogy nyilván számítógéppel végzik, nem kézzel), de jelenleg
  nincs jobb magyarázatom arra, hogy mi történhetett itt. Annyi
  mindenesetre elmondható, hogy a végén lévő egyenleg 8 310 600,4-gyel
  stimmel, tehát minden bizonnyal az a helyes, és a hiba a másik
  számban, tehát a funkciók szerinti értékekben van.

### Technikai részletek

A modern éra azon éveiben, ahol a költségvetésnek saját aloldala volt a
Parlament honlapján, a költségvetések dokumentumait egy [R
nyelven](https://ferenci-tamas.github.io/r-nyelv/) írt szkript
segítségével töltöttem le a Parlament honlapjáról
([downloader.R](downloader.R)). A szkript `wget2` használatával végzi a
letöltést, kiindulva a költségvetés kezdőoldaláról – melynek linkjeit
egy [külön fájl](linkek.csv) tartalmazza – és onnan rekurzívan
(`--recursive --level=inf`), de végig a megfelelő domainen belül maradva
(`--domains=parlament.hu --span-hosts`) tölt le minden fájlt. A
könyvtárstruktúrát nem őrzi meg (`--no-directories`), de arra figyel,
hogy az azonos nevű fájlok úgy neveződjenek át, hogy a kiterjesztésük
megmaradjon (`--keep-extension`). Ez utóbbi csak a `wget2`-ben van, a
`wget`-ben nincs, de amúgy is célszerűbb a `wget2` használata, mert
gyorsabb és modernebb. Azon években, ahol nem volt ilyen aloldal, kézzel
töltöttem le a fájlokat (ez könnyen megtehető volt, mert az aloldal
hiánya épp azt jelentette, hogy csak 3–4 fájl van tipikusan kitéve).
Ahol szükséges volt, jellemzően ez utóbbi esetekben, a hosszú PDF-ekből
`qpdf::pdf_subset` segítségével szedtem ki azt az oldalt, ahol a
szükséges tábla volt. Egy-két esetben külön fájlban volt ugyan a tábla,
de a szokásostól eltérő volt a fájl neve, ezeknél létrehoztam egy
szabványos nevű másolatot is, így végeredményben egységesen
`fu__kon.pdf` néven minden esetben megtalálható a szükséges tábla
(minden évre és mind a tervezetre, mind a zárszámadásra).

Ezen PDF-ek tartalmát szintén egy szkript ([read_fukon.R](read_fukon.R))
segítségével nyertem ki és alakítottam gépi úton feldolgozható
formátumúra (ez a szkript Claude Opus 5.5 segítségével készült, itt most
nem aggódtam a programozás automatizálása miatt, hiszen a végeredmény
úgyis jól ellenőrizhető, amit meg is tettem).

A következő automatizált ellenőrzések futnak: a csoportok összege
egyenlő-e a főcsoport értékével, a főcsoportok összege egyenlő-e a fő
funkció értékével, a fő funkciók összege egyenlő-e a teljes kiadással,
és végezetül a teljes kiadás és a bevétel különbsége egyenlő-e az
egyenleggel (ha ez utóbbi kettő is adva volt). Ezenkívül ellenőrzi a
szkript, hogy a kód és a név között egy-egy megfeleltetés van-e (hogy
később nyugodtak lehessünk, hogy bármelyik használható azonosításra).

## Adatbázis

A táblázat az 1949-es költségvetéssel indul – költségvetése ugyan már az
Osztrák–Magyar Monarchiának [is
volt](https://library.hungaricana.hu/hu/collection/orszaggyulesi_konyvtar_dtt_DualKozosBizKoltsgv_Koltsgv/),
és bár tudom, hogy gazdaságtörténészek néha még olyanokat is
[vizsgálnak](https://www.rug.nl/ggdc/historicaldevelopment/maddison/),
mint az egy főre jutó bruttó hazai termék a Római Birodalomban, én most
azért odáig nem akartam visszamenni, amikor már az ország pénzneme (és
idővel még a területe is) más volt. Azért 1949-ben kezdem, mert az
1946/47-es és az 1947/48-as költségvetések még nem tárgyérvre
vonatkoztak, így 1949 az első év, amikor a ma szokásos éves költségvetés
elkészült.

| Év | Költségvetés tervezet, indokolás, melléklet | Költségvetés jogszabály | Módosítás | Zárszámadás tervezet, indokolás, melléklet | Zárszámadás jogszabály |
|---:|:---|:---|:---|:---|:---|
| 2027 | [Dokumentumok](dokumentumok/2027/koltsegvetes-tervezet) |  |  |  |  |
| 2026 | [Dokumentumok](dokumentumok/2026/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/2026/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2025-69-00-00), [Jogkódex](https://jogkodex.hu/jsz/2025_69_torveny_2330920)) |  |  |  |
| 2025 | [Dokumentumok](dokumentumok/2025/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/2025/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2024-90-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2025_2024_90_torveny_4651494)) |  |  |  |
| 2024 | [Dokumentumok](dokumentumok/2024/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom42/04181/04181.html)) | [Jogszabály](dokumentumok/2024/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2023-55-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2024_2023_55_torveny_6555338)) |  | [Dokumentumok](dokumentumok/2024/zarszamadas-tervezet) | [Jogszabály](dokumentumok/2024/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2025-85-00-00), [Jogkódex](https://jogkodex.hu/jsz/2025_85_torveny_6748204)) |
| 2023 | [Dokumentumok](dokumentumok/2023/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom42/00152/00152.html)) | [Jogszabály](dokumentumok/2023/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2022-25-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2023_2022_25_torveny_7266010)) |  | [Dokumentumok](dokumentumok/2023/zarszamadas-tervezet) | [Jogszabály](dokumentumok/2023/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2024-48-00-00), [Jogkódex](https://jogkodex.hu/jsz/2024_48_torveny_2958386)) |
| 2022 | [Dokumentumok](dokumentumok/2022/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/16118/16118.html)) | [Jogszabály](dokumentumok/2022/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2021-90-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2022_2021_90_torveny_9194446)) |  | [Dokumentumok](dokumentumok/2022/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom42/05387/05387.html)) | [Jogszabály](dokumentumok/2022/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2023-73-00-00), [Jogkódex](https://jogkodex.hu/jsz/2023_73_torveny_9883063)) |
| 2021 | [Dokumentumok](dokumentumok/2021/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/10710/10710.htm)) | [Jogszabály](dokumentumok/2021/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2020-90-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2021_2020_90_torveny_9676945)) |  | [Dokumentumok](dokumentumok/2021/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom42/01877/01877.html)) | [Jogszabály](dokumentumok/2021/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2022-72-00-00), [Jogkódex](https://jogkodex.hu/jsz/2022_72_torveny_6055597)) |
| 2020 | [Dokumentumok](dokumentumok/2020/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/06322/06322.htm)) | [Jogszabály](dokumentumok/2020/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2019-71-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2020_2019_71_torveny_5689626)) |  | [Dokumentumok](dokumentumok/2020/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/17188/17188.html)) | [Jogszabály](dokumentumok/2020/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2021-116-00-00), [Jogkódex](https://jogkodex.hu/jsz/2021_116_torveny_3807510)) |
| 2019 | [Dokumentumok](dokumentumok/2019/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/00503/00503.htm)) | [Jogszabály](dokumentumok/2019/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2018-50-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2019_2018_50_torveny_4736605)) |  | [Dokumentumok](dokumentumok/2019/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/13098/13098.html)) | [Jogszabály](dokumentumok/2019/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2020-117-00-00), [Jogkódex](https://jogkodex.hu/jsz/2020_117_torveny_6957148)) |
| 2018 | [Dokumentumok](dokumentumok/2018/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/15381/15381.htm)) | [Jogszabály](dokumentumok/2018/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2017-100-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2018_2017_100_torveny_9129064)) |  | [Dokumentumok](dokumentumok/2018/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/07556/07556.html)) | [Jogszabály](dokumentumok/2018/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2019-79-00-00), [Jogkódex](https://jogkodex.hu/jsz/2019_79_torveny_3720906)) |
| 2017 | [Dokumentumok](dokumentumok/2017/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/10377/10377.htm)) | [Jogszabály](dokumentumok/2017/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2016-90-00-00), [Jogkódex](https://jogkodex.hu/jsz/kvtv_2017_2016_90_torveny_6154110)) |  | [Dokumentumok](dokumentumok/2017/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom41/01671/01671.html)) | [Jogszabály](dokumentumok/2017/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2018-84-00-00), [Jogkódex](https://jogkodex.hu/jsz/2018_84_torveny_9326523)) |
| 2016 | [Dokumentumok](dokumentumok/2016/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/04730/04730.htm)) | [Jogszabály](dokumentumok/2016/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2015-100-00-00), [Jogkódex](https://jogkodex.hu/jsz/2015_100_torveny_3018208)) |  | [Dokumentumok](dokumentumok/2016/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/17578/17578.htm)) | [Jogszabály](dokumentumok/2016/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2017-170-00-00), [Jogkódex](https://jogkodex.hu/jsz/2017_170_torveny_9977727)) |
| 2015 | [Dokumentumok](dokumentumok/2015/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/2015/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2014-100-00-00), [Jogkódex](https://jogkodex.hu/jsz/2014_100_torveny_3227494)) |  | [Dokumentumok](dokumentumok/2015/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/12284/12284.htm)) | [Jogszabály](dokumentumok/2015/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2016-122-00-00), [Jogkódex](https://jogkodex.hu/jsz/2016_122_torveny_6663469)) |
| 2014 | [Dokumentumok](dokumentumok/2014/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/2014/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2013-230-00-00), [Jogkódex](https://jogkodex.hu/jsz/2013_230_torveny_7639853)) |  | [Dokumentumok](dokumentumok/2014/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/05954/05954.htm)) | [Jogszabály](dokumentumok/2014/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2015-172-00-00), [Jogkódex](https://jogkodex.hu/jsz/2015_172_torveny_5219780)) |
| 2013 | [Dokumentumok](dokumentumok/2013/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/07655/07655.htm)) | [Jogszabály](dokumentumok/2013/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2012-204-00-00), [Jogkódex](https://jogkodex.hu/jsz/2012_204_torveny_5387966)) |  | [Dokumentumok](dokumentumok/2013/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom40/01143/01143.htm)) | [Jogszabály](dokumentumok/2013/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2014-62-00-00), [Jogkódex](https://jogkodex.hu/jsz/2014_62_torveny_5141811)) |
| 2012 | [Dokumentumok](dokumentumok/2012/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/04365/04365.htm)) | [Jogszabály](dokumentumok/2012/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2011-188-00-00), [Jogkódex](https://jogkodex.hu/jsz/2011_188_torveny_3515719)) |  | [Dokumentumok](dokumentumok/2012/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/12002/12002.htm)) | [Jogszabály](dokumentumok/2012/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2013-193-00-00), [Jogkódex](https://jogkodex.hu/jsz/2013_193_torveny_2286419)) |
| 2011 | [Dokumentumok](dokumentumok/2011/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/01498/01498.htm)) | [Jogszabály](dokumentumok/2011/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2010-169-00-00), [Jogkódex](https://jogkodex.hu/jsz/2010_169_torveny_2562458)) |  | [Dokumentumok](dokumentumok/2011/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/08196/08196.htm)) | [Jogszabály](dokumentumok/2011/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2012-155-00-00), [Jogkódex](https://jogkodex.hu/jsz/2012_155_torveny_7623454)) |
| 2010 | [Dokumentumok](dokumentumok/2010/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/10554/10554.htm)) | [Jogszabály](dokumentumok/2010/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2009-130-00-00), [Jogkódex](https://jogkodex.hu/jsz/2009_130_torveny_7635108)) |  | [Dokumentumok](dokumentumok/2010/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/03927/03927.htm)) | [Jogszabály](dokumentumok/2010/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2011-133-00-00), [Jogkódex](https://jogkodex.hu/jsz/2011_133_torveny_1362205)) |
| 2009 | [Dokumentumok](dokumentumok/2009/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/06571/06571.htm)) | [Jogszabály](dokumentumok/2009/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2008-102-00-00), [Jogkódex](https://jogkodex.hu/jsz/2008_102_torveny_7616013)) |  | [Dokumentumok](dokumentumok/2009/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom39/01062/01062.htm)) | [Jogszabály](dokumentumok/2009/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2010-98-00-00), [Jogkódex](https://jogkodex.hu/jsz/2010_98_torveny_1240365)) |
| 2008 | [Dokumentumok](dokumentumok/2008/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/03860/03860.htm)) | [Jogszabály](dokumentumok/2008/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2007-169-00-00), [Jogkódex](https://jogkodex.hu/jsz/2007_169_torveny_8557560)) |  | [Dokumentumok](dokumentumok/2008/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/10380/10380.htm)) | [Jogszabály](dokumentumok/2008/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2009-129-00-00), [Jogkódex](https://jogkodex.hu/jsz/2009_129_torveny_8290037)) |
| 2007 | [Dokumentumok](dokumentumok/2007/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/1145/1145.htm)) | [Jogszabály](dokumentumok/2007/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2006-127-00-00), [Jogkódex](https://jogkodex.hu/jsz/2006_127_torveny_9624096)) |  | [Dokumentumok](dokumentumok/2007/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/06133/06133.htm)) | [Jogszabály](dokumentumok/2007/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2008-78-00-00), [Jogkódex](https://jogkodex.hu/jsz/2008_78_torveny_3446669)) |
| 2006 | [Dokumentumok](dokumentumok/2006/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/17700/17700.htm)) | [Jogszabály](dokumentumok/2006/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2005-153-00-00), [Jogkódex](https://jogkodex.hu/jsz/2005_153_torveny_4146036)) |  | [Dokumentumok](dokumentumok/2006/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/03578/03578.htm)) | [Jogszabály](dokumentumok/2006/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2007-128-00-00), [Jogkódex](https://jogkodex.hu/jsz/2007_128_torveny_3319285)) |
| 2005 | [Dokumentumok](dokumentumok/2005/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/11700/11700.htm)) | [Jogszabály](dokumentumok/2005/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2004-135-00-00), [Jogkódex](https://jogkodex.hu/jsz/2004_135_torveny_2325783)) |  | [Dokumentumok](dokumentumok/2005/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom38/00881/00881.htm)) | [Jogszabály](dokumentumok/2005/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2006-99-00-00), [Jogkódex](https://jogkodex.hu/jsz/2006_99_torveny_7997482)) |
| 2004 | [Dokumentumok](dokumentumok/2004/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/5601/5601.htm)) | [Jogszabály](dokumentumok/2004/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2003-116-00-00), [Jogkódex](https://jogkodex.hu/jsz/2003_116_torveny_3349928)) |  | [Dokumentumok](dokumentumok/2004/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/17290/17290.htm)) | [Jogszabály](dokumentumok/2004/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2005-118-00-00), [Jogkódex](https://jogkodex.hu/jsz/2005_118_torveny_6651441)) |
| 2003 | [Dokumentumok](dokumentumok/2003/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/1220/1220.htm)) | [Jogszabály](dokumentumok/2003/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2002-62-00-00), [Jogkódex](https://jogkodex.hu/jsz/2002_62_torveny_2720438)) |  | [Dokumentumok](dokumentumok/2003/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/11020/11020.htm)) | [Jogszabály](dokumentumok/2003/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2004-100-00-00), [Jogkódex](https://jogkodex.hu/jsz/2004_100_torveny_8900068)) |
| 2002 | [Dokumentumok](dokumentumok/2002/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom36/3122/3122.htm)) | [Jogszabály](dokumentumok/2002/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2000-133-00-00), [Jogkódex](https://jogkodex.hu/jsz/2000_133_torveny_6270027)) |  | [Dokumentumok](dokumentumok/2002/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/4966/4966.htm)) | [Jogszabály](dokumentumok/2002/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2003-95-00-00), [Jogkódex](https://jogkodex.hu/jsz/2003_95_torveny_9101368)) |
| 2001 | [Dokumentumok](dokumentumok/2001/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom36/3122/3122.htm)) | [Jogszabály](dokumentumok/2001/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2000-133-00-00), [Jogkódex](https://jogkodex.hu/jsz/2000_133_torveny_6270027)) |  | [Dokumentumok](dokumentumok/2001/zarszamadas-tervezet) ([Parlament.hu](https://www.parlament.hu/irom37/0762/0762.htm)) | [Jogszabály](dokumentumok/2001/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2002-40-00-00), [Jogkódex](https://jogkodex.hu/jsz/2002_40_torveny_7792597)) |
| 2000 | [Dokumentumok](dokumentumok/2000/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom36/1658/1658.htm)) | [Jogszabály](dokumentumok/2000/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1999-125-00-00), [Jogkódex](https://jogkodex.hu/jsz/1999_125_torveny_5955886)) |  |  | [Jogszabály](dokumentumok/2000/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2001-75-00-00), [Jogkódex](https://jogkodex.hu/jsz/2001_75_torveny_2503680)) |
| 1999 | [Dokumentumok](dokumentumok/1999/koltsegvetes-tervezet) ([Parlament.hu](https://www.parlament.hu/irom36/0325/0325.htm)) | [Jogszabály](dokumentumok/1999/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1998-90-00-00), [Jogkódex](https://jogkodex.hu/jsz/1998_90_torveny_5425463)) |  | [Dokumentumok](dokumentumok/1999/zarszamadas-tervezet) | [Jogszabály](dokumentumok/1999/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/2000-118-00-00), [Jogkódex](https://jogkodex.hu/jsz/2000_118_torveny_3794021)) |
| 1998 |  | [Jogszabály](dokumentumok/1998/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1997-146-00-00), [Jogkódex](https://jogkodex.hu/jsz/1997_146_torveny_2928708)) |  |  | [Jogszabály](dokumentumok/1998/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1999-105-00-00), [Jogkódex](https://jogkodex.hu/jsz/1999_105_torveny_4950863)) |
| 1997 |  | [Jogszabály](dokumentumok/1997/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1996-124-00-00), [Jogkódex](https://jogkodex.hu/jsz/1996_124_torveny_8929010)) |  |  | [Jogszabály](dokumentumok/1997/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1998-48-00-00), [Jogkódex](https://jogkodex.hu/jsz/1998_48_torveny_2545176)) |
| 1996 |  | [Jogszabály](dokumentumok/1996/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1995-121-00-00), [Jogkódex](https://jogkodex.hu/jsz/1995_121_torveny_8664085)) |  |  | [Jogszabály](dokumentumok/1996/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1997-111-00-00), [Jogkódex](https://jogkodex.hu/jsz/1997_111_torveny_4857370)) |
| 1995 |  | [Jogszabály](dokumentumok/1995/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1994-104-00-00), [Jogkódex](https://jogkodex.hu/jsz/1994_104_torveny_9571947)) |  |  | [Jogszabály](dokumentumok/1995/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1996-109-00-00), [Jogkódex](https://jogkodex.hu/jsz/1996_109_torveny_6955545)) |
| 1994 |  | [Jogszabály](dokumentumok/1994/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1993-111-00-00), [Jogkódex](https://jogkodex.hu/jsz/1993_111_torveny_8691511)) |  |  | [Jogszabály](dokumentumok/1994/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1995-104-00-00), [Jogkódex](https://jogkodex.hu/jsz/1995_104_torveny_1294621)) |
| 1993 |  | [Jogszabály](dokumentumok/1993/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1992-80-00-00), [Jogkódex](https://jogkodex.hu/jsz/1992_80_torveny_9719701)) |  |  | [Jogszabály](dokumentumok/1993/zarszamadas-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1994-96-00-00), [Jogkódex](https://jogkodex.hu/jsz/1994_96_torveny_1384458)) |
| 1992 |  | [Jogszabály](dokumentumok/1992/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1991-91-00-00), [Jogkódex](https://jogkodex.hu/jsz/1991_91_torveny_2905980)) |  |  |  |
| 1991 |  | [Jogszabály](dokumentumok/1991/koltsegvetes-jogszabaly) ([NJT](https://njt.jog.gov.hu/jogszabaly/1990-104-00-00), [Jogkódex](https://jogkodex.hu/jsz/1990_104_torveny_1515414)) |  |  |  |
| 1990 |  | [Jogszabály](dokumentumok/1990/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1989_50_torveny_8003660)) |  |  | [Jogszabály](dokumentumok/1990/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1991_42_torveny_2798606)) |
| 1989 |  | [Jogszabály](dokumentumok/1989/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1988_17_torveny_8868566)) |  |  | [Jogszabály](dokumentumok/1989/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1990_52_torveny_1621926)) |
| 1988 |  | [Jogszabály](dokumentumok/1988/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1987_8_torveny_6498187)) |  |  | [Jogszabály](dokumentumok/1988/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1989_24_torveny_7376527)) |
| 1987 |  | [Jogszabály](dokumentumok/1987/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1986_5_torveny_4292692)) |  |  | [Jogszabály](dokumentumok/1987/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1988_5_torveny_8657576)) |
| 1986 |  | [Jogszabály](dokumentumok/1986/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1985_8_torveny_4858707)) |  |  | [Jogszabály](dokumentumok/1986/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1987_2_torveny_3649949)) |
| 1985 |  | [Jogszabály](dokumentumok/1985/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1984_5_torveny_6632575)) |  |  | [Jogszabály](dokumentumok/1985/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1986_3_torveny_4320806)) |
| 1984 |  | [Jogszabály](dokumentumok/1984/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1983_4_torveny_1245616)) |  |  | [Jogszabály](dokumentumok/1984/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1985_5_torveny_1787121)) |
| 1983 |  | [Jogszabály](dokumentumok/1983/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1982_2_torveny_1643307)) |  |  | [Jogszabály](dokumentumok/1983/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1984_3_torveny_2112771)) |
| 1982 |  | [Jogszabály](dokumentumok/1982/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1981_3_torveny_6196622)) |  |  | [Jogszabály](dokumentumok/1982/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1983_1_torveny_7661492)) |
| 1981 |  | [Jogszabály](dokumentumok/1981/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1980_4_torveny_3511244)) |  |  | [Jogszabály](dokumentumok/1981/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1982_1_torveny_7226265)) |
| 1980 |  | [Jogszabály](dokumentumok/1980/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1979_3_torveny_6326562)) |  |  | [Jogszabály](dokumentumok/1980/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1981_2_torveny_4026829)) |
| 1979 |  | [Jogszabály](dokumentumok/1979/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1978_3_torveny_9607521)) |  |  | [Jogszabály](dokumentumok/1979/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1980_2_torveny_2927619)) |
| 1978 |  | [Jogszabály](dokumentumok/1978/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1977_5_torveny_3557146)) |  |  | [Jogszabály](dokumentumok/1978/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1979_1_torveny_4525097)) |
| 1977 |  | [Jogszabály](dokumentumok/1977/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1976_7_torveny_6596655)) |  |  | [Jogszabály](dokumentumok/1977/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1978_2_torveny_6733394)) |
| 1976 |  | [Jogszabály](dokumentumok/1976/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1975_5_torveny_6037730)) |  |  | [Jogszabály](dokumentumok/1976/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1977_3_torveny_9927393)) |
| 1975 |  | [Jogszabály](dokumentumok/1975/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1974_4_torveny_7996521)) |  |  | [Jogszabály](dokumentumok/1975/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1976_3_torveny_5790098)) |
| 1974 |  | [Jogszabály](dokumentumok/1974/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1973_6_torveny_4604913)) |  |  | [Jogszabály](dokumentumok/1974/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1975_3_torveny_6878098)) |
| 1973 |  | [Jogszabály](dokumentumok/1973/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1972_6_torveny_7073973)) |  |  | [Jogszabály](dokumentumok/1973/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1974_2_torveny_2895228)) |
| 1972 |  | [Jogszabály](dokumentumok/1972/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1971_5_torveny_3569868)) |  |  | [Jogszabály](dokumentumok/1972/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1973_2_torveny_9649617)) |
| 1971 |  | [Jogszabály](dokumentumok/1971/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1970_4_torveny_5691774)) |  |  | [Jogszabály](dokumentumok/1971/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1972_3_torveny_2618748)) |
| 1970 |  | [Jogszabály](dokumentumok/1970/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1969_8_torveny_1683993)) |  |  | [Jogszabály](dokumentumok/1970/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1971_2_torveny_6722340)) |
| 1969 |  | [Jogszabály](dokumentumok/1969/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1968_6_torveny_6210297)) |  |  | [Jogszabály](dokumentumok/1969/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1970_1_torveny_2291778)) |
| 1968 |  | [Jogszabály](dokumentumok/1968/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1967_7_torveny_6170331)) |  |  | [Jogszabály](dokumentumok/1968/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1969_4_torveny_7877051)) |
| 1967 |  | [Jogszabály](dokumentumok/1967/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1967_1_torveny_1900714)) |  |  | [Jogszabály](dokumentumok/1967/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1968_2_torveny_1209876)) |
| 1966 |  | [Jogszabály](dokumentumok/1966/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1966_1_torveny_2259650)) |  |  | [Jogszabály](dokumentumok/1966/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1967_20_tvr_3199800)) |
| 1965 |  | [Jogszabály](dokumentumok/1965/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1965_1_torveny_3742660)) |  |  | [Jogszabály](dokumentumok/1965/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1966_14_tvr_3468862)) |
| 1964 |  | [Jogszabály](dokumentumok/1964/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1964_1_torveny_3203865)) |  |  | [Jogszabály](dokumentumok/1964/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1965_13_tvr_6962445)) |
| 1963 |  | [Jogszabály](dokumentumok/1963/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1963_1_torveny_1013153)) |  |  | [Jogszabály](dokumentumok/1963/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1964_16_tvr_2336311)) |
| 1962 |  | [Jogszabály](dokumentumok/1962/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1962_1_torveny_6253378)) |  |  | [Jogszabály](dokumentumok/1962/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1963_13_tvr_3401261)) |
| 1961 |  | [Jogszabály](dokumentumok/1961/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1961_1_torveny_1808822)) |  |  | [Jogszabály](dokumentumok/1961/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1962_2_torveny_1972152)) |
| 1960 |  | [Jogszabály](dokumentumok/1960/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1960_1_torveny_7826679)) |  |  | [Jogszabály](dokumentumok/1960/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1961_4_torveny_2948869)) |
| 1959 |  | [Jogszabály](dokumentumok/1959/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1959_1_torveny_1662832)) |  |  | [Jogszabály](dokumentumok/1959/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1960_2_torveny_4227840)) |
| 1958 |  | [Jogszabály](dokumentumok/1958/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1958_1_torveny_1595828)) |  |  | [Jogszabály](dokumentumok/1958/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1959_3_torveny_2020934)) |
| 1957 |  | [Jogszabály](dokumentumok/1957/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1957_3_torveny_1384849)) |  |  |  |
| 1956 | [Dokumentumok](dokumentumok/1956/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/1956/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1956_2_torveny_6725246)) |  |  |  |
| 1955 | [Dokumentumok](dokumentumok/1955/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/1955/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1955_1_torveny_2564420)) |  |  |  |
| 1954 | [Dokumentumok](dokumentumok/1954/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/1954/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1954_4_torveny_5906880)) |  |  | [Jogszabály](dokumentumok/1954/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1955_1_torveny_2564420)) |
| 1953 | [Dokumentumok](dokumentumok/1953/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/1953/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1952_5_torveny_2976557)) |  |  | [Jogszabály](dokumentumok/1953/zarszamadas-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1954_4_torveny_5906880)) |
| 1952 | [Dokumentumok](dokumentumok/1952/koltsegvetes-tervezet) | [Jogszabály](dokumentumok/1952/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1951_4_torveny_5523513)) |  |  |  |
| 1951 |  | [Jogszabály](dokumentumok/1951/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1950_3_torveny_1526633)) |  |  |  |
| 1950 |  | [Jogszabály](dokumentumok/1950/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1949_28_torveny_7408369)) |  |  |  |
| 1949 |  | [Jogszabály](dokumentumok/1949/koltsegvetes-jogszabaly) ([Jogkódex](https://jogkodex.hu/jsz/1949_5_torveny_9826344)) |  |  |  |

## Adatforrások

A jogszabályok szövegének adatforrása a [Nemzeti
Jogszabálytár](https://njt.jog.gov.hu/) és a
[Jogkódex](https://jogkodex.hu/). (Mivel az előbbi a hivatalos, ezért
ahol lehetett, azt használtam, de bizonyos régebbi törvények nem voltak
ott fellelhetőek.) A tervezetek indokolásai, mellékletei az újabb
időszak esetében a [Parlament honlapjáról](https://www.parlament.hu/),
régebbi időknél az Országgyűlési Könyvtár [Magyar Parlamenti
Gyűjteményéből](https://mandadb.hu/tart/kereses?HNDTYPE=SEARCH&name=doc&page=1&fld_sort=score_insdt&fld_compound_target=allfields&fld_compound=k%C3%B6lts%C3%A9gvet%C3%A9s&_clearfacets=1&_clearfilters=1&fac_organization=24)
származnak, melyet a Magyar Nemzeti Digitális Archívumon
[keresztül](https://mandadb.hu/) értem el.
