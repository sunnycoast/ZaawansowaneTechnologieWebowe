-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Mar 2018, 18:06
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `movedb`
--
CREATE DATABASE IF NOT EXISTS `movedb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `movedb`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `01_role`
--

CREATE TABLE `01_role` (
  `ID_R` int(11) NOT NULL,
  `NazwaR` varchar(255) DEFAULT NULL,
  `OpisR` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `01_role`
--

INSERT INTO `01_role` (`ID_R`, `NazwaR`, `OpisR`) VALUES
(1, 'Menager', NULL),
(2, 'Kucharz', NULL),
(3, 'Barman', NULL),
(4, 'Kelner', 'Podgląd aktualnych zamówień');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `02_pracownicy`
--

CREATE TABLE `02_pracownicy` (
  `ID_Prac` int(11) NOT NULL,
  `Nazwisko` varchar(255) DEFAULT NULL,
  `Imie` varchar(255) DEFAULT NULL,
  `Login` varchar(30) DEFAULT NULL,
  `Haslo` varchar(30) DEFAULT NULL,
  `Rola` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `02_pracownicy`
--

INSERT INTO `02_pracownicy` (`ID_Prac`, `Nazwisko`, `Imie`, `Login`, `Haslo`, `Rola`) VALUES
(3, 'Kowalski', 'Jan', 'kowjak', 'kowal', 1),
(4, 'Smutek', 'Jerzy', 'js', '123js', 2),
(5, 'Wiśniewska', 'Katarzyna', 'prac4log', 'prac4hasło', 3),
(6, 'Nowak', 'Anna', 'annan', 'nowak1234', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `03_obsluga`
--

CREATE TABLE `03_obsluga` (
  `ID_O` int(11) NOT NULL,
  `Zamowienie` int(11) DEFAULT NULL,
  `Pracownik` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `03_obsluga`
--

INSERT INTO `03_obsluga` (`ID_O`, `Zamowienie`, `Pracownik`) VALUES
(2, 2, 5),
(3, 2, 4),
(4, 4, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `03_obsługa`
--

CREATE TABLE `03_obsługa` (
  `ID_O` int(11) NOT NULL,
  `#Zamowienie` int(11) DEFAULT NULL,
  `#Pracownik` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `03_obsługa`
--

INSERT INTO `03_obsługa` (`ID_O`, `#Zamowienie`, `#Pracownik`) VALUES
(2, 2, 5),
(3, 2, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `04_zamowienia`
--

CREATE TABLE `04_zamowienia` (
  `ID_Z` int(11) NOT NULL,
  `Stolik` int(11) DEFAULT NULL,
  `UwagiP` varchar(255) DEFAULT NULL,
  `UwagiG` varchar(255) DEFAULT NULL,
  `DataOtw` datetime DEFAULT NULL,
  `DataZamk` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `04_zamowienia`
--

INSERT INTO `04_zamowienia` (`ID_Z`, `Stolik`, `UwagiP`, `UwagiG`, `DataOtw`, `DataZamk`) VALUES
(2, 3, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL),
(4, 2, NULL, NULL, NULL, NULL),
(5, 1, NULL, NULL, '2018-01-15 23:36:23', NULL),
(6, 1, NULL, NULL, '2018-01-16 12:16:09', NULL),
(7, 1, NULL, NULL, '2018-01-16 09:51:03', NULL),
(8, 1, NULL, NULL, '2018-01-16 10:51:35', NULL),
(9, 1, NULL, NULL, '2018-01-16 10:54:44', NULL),
(10, 1, NULL, NULL, '2018-01-16 10:55:28', NULL),
(11, 1, NULL, NULL, '2018-01-16 10:55:38', NULL),
(12, 4, NULL, NULL, '2018-01-16 11:09:27', NULL),
(13, 4, NULL, NULL, '2018-01-16 13:30:23', NULL),
(14, 5, NULL, NULL, '2018-01-16 13:35:12', NULL),
(15, 4, NULL, NULL, '2018-01-17 10:25:04', NULL),
(16, 4, NULL, NULL, '2018-01-17 10:40:19', NULL),
(17, 4, NULL, NULL, '2018-01-17 10:41:46', NULL),
(18, 4, NULL, NULL, '2018-01-17 11:06:25', NULL),
(19, 5, NULL, NULL, '2018-01-17 13:26:15', NULL),
(20, 4, NULL, NULL, '2018-01-17 14:02:01', NULL),
(21, 4, NULL, NULL, '2018-01-17 14:11:05', NULL),
(22, 4, NULL, NULL, '2018-01-17 14:34:16', NULL),
(23, 4, NULL, NULL, '2018-01-17 20:44:37', NULL),
(24, 4, NULL, NULL, '2018-01-22 22:10:41', NULL),
(25, 4, NULL, NULL, '2018-01-22 22:44:12', NULL),
(26, 4, NULL, NULL, '2018-01-23 11:49:36', NULL),
(27, 4, NULL, NULL, '2018-01-23 11:50:38', NULL),
(28, 4, NULL, NULL, '2018-01-23 11:53:56', NULL),
(29, 4, NULL, NULL, '0000-00-00 00:00:00', NULL),
(30, 4, NULL, NULL, '2018-01-23 13:26:04', NULL),
(31, 4, NULL, NULL, '2018-01-23 13:50:05', NULL),
(32, 4, NULL, NULL, '2018-01-23 14:04:43', NULL),
(33, 4, NULL, NULL, '2018-01-23 14:10:02', NULL),
(34, 4, NULL, NULL, '2018-02-23 20:10:59', NULL),
(35, 4, NULL, NULL, '2018-02-23 20:21:52', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `05_kategorie`
--

CREATE TABLE `05_kategorie` (
  `ID_Kat` int(11) NOT NULL,
  `NazwaKat` varchar(255) DEFAULT NULL,
  `KolorKat` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `05_kategorie`
--

INSERT INTO `05_kategorie` (`ID_Kat`, `NazwaKat`, `KolorKat`) VALUES
(1, 'Napoje zimne', '00CC00'),
(2, 'Kawy', '00CCCC'),
(3, 'Drinki', 'FFFF00'),
(4, 'Shoty', 'FF66CC'),
(5, 'Alkohole lekkie', 'FF0000'),
(6, 'Alkohole mocne', 'FF99FF'),
(7, 'Makarony', '99FFCC'),
(8, 'Sałatki', 'CCFF33'),
(9, 'Pizze', 'FFCC33'),
(10, 'Herbaty', 'FFFF33'),
(11, 'Zupy', '427AF4'),
(12, 'Desery', 'DB678F'),
(13, 'Przystawki', 'C6B455'),
(14, 'Mięsa', 'FF5A14'),
(15, 'Ryby', '02E6F2'),
(16, 'Dodatki', '896AC1'),
(17, 'Dania dnia', 'FC2828'),
(18, 'Inne', 'FF00FF'),
(19, 'Risotto', '4D5AD1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `06_produkty`
--

CREATE TABLE `06_produkty` (
  `ID_Prod` int(11) NOT NULL,
  `NazwaProd` varchar(255) DEFAULT NULL,
  `Kategoria` int(11) DEFAULT NULL,
  `SposPrzyg` varchar(255) DEFAULT NULL,
  `Opis` varchar(255) DEFAULT NULL,
  `KolorProd` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `06_produkty`
--

INSERT INTO `06_produkty` (`ID_Prod`, `NazwaProd`, `Kategoria`, `SposPrzyg`, `Opis`, `KolorProd`) VALUES
(1, 'CocaCola', 1, NULL, 'Napoj CocaCola, 500ml.', 'ff4000'),
(2, 'Spaghetti Bolognese', 7, 'daasdsad', 'Makaron typu spaghetti, sos bolognese, czosnek, zioła, parmezan.', 'ff8000'),
(3, 'Piwo', 5, 'Warka, Lech, Tyskie', 'Nalewane prosto z beczki do zmrozonego kufla (0,5L).', 'ffbf00'),
(4, 'Schabowy', 14, NULL, 'Kotlet wieprzowy z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 'ffff00'),
(5, 'Zapiekanka', 18, NULL, 'Zapiekana bulka z serem i pieczarkami, 250g.', 'bfff00'),
(6, 'Sok', 1, NULL, 'Podany w wysokiej szkance, do wyboru wiele smakow 300ml.', '80ff00'),
(7, 'Tymbark', 1, NULL, 'Napoj Tymbark, smak do wyboru, 250ml.', '40ff00'),
(8, 'Espresso', 2, 'ekspres', 'Oryginalna wloska kawa, mocna, wyrazista.', '00ff00'),
(9, 'Latte', 2, 'ekspres', 'Kawa latte, esspresso z duza iloscia mleka i warstwa spienionego mleka.', '00ff40'),
(10, 'Mrożona', 2, NULL, 'Kawa z mlekiem i kostkami lodu.', '00ff80'),
(11, 'Mojito', 3, '40 ml białego rumu\r\n20 ml syropu cukrowego lub cukier biały / brązowy cukier trzcinowy\r\n2 ćwiartki limonki\r\n6 liści mięty\r\n40 ml wody gazowanej\r\nkruszony lód', 'Koktajl alkoholowy, pochodzenia kubanskiego na bazie bialego rumu o orzezwiajacym smaku.', '00ffbf'),
(12, 'Martini', 3, '90 ml ginu\r\n30 ml wytrawnego wermutu\r\nlód', 'Drink zrobiony z ginu i niewielkiej ilosci wytrawnego wermutu.', '00ffff'),
(13, 'Pina colada', 3, '30 ml białego rumu\r\n30 ml słodkiej śmietanki kokosowej\r\n90 ml soku ananasowego\r\nkruszony lód.', 'Slodki karaibski koktajl alkoholowy, podawany jest z lodem i plastrem cytryny.', '00bfff'),
(14, 'Luxusowa', 4, NULL, 'Shot Finlandii w kieliszku 40 ml.', '0080ff'),
(15, 'Jack Daniel\'s', 4, NULL, 'Shot Jacka Daniel\'sa w kieliszku 40 ml.', '0040ff'),
(16, 'Finlandia', 4, NULL, 'Shot Finlandii w kieliszku 40 ml.', '0000ff'),
(17, 'Wino Olaria Tinto', 5, NULL, 'Wytrawne, krystalicznie czyste wino o kolorze granatu, aromacie dojrzalych owocow i lagodnym posmaku.', '4000ff'),
(18, 'Nalewki', 5, NULL, 'Do wyboru malinowa, truskawkowa i pigwowa.', '8000ff'),
(19, 'Absynt', 6, NULL, 'Oslawiony trunek artystow, 40ml.', 'bf00ff'),
(20, 'Bacardi 151', 6, NULL, 'Bardzo mocny alkohol 75,5%, podany w kieliszku 30ml.', 'ff00ff'),
(21, 'Devil Springs Vodka (płonąca)', 6, NULL, 'Drink jest podawany w kieliszku 40ml, po podaniu jest podpalany przez obsługe.', 'ff00bf'),
(22, 'Spaghetti z klopsikami', 7, NULL, 'Makaron spaghetti z dodatkiem klopsikow miesnych.', 'ff0080'),
(23, 'Makaron z pesto', 7, NULL, 'Makaron spaghetti z dodatkiem zielonego pesto, bazylii i oregano.', 'ff0040'),
(24, 'Cezar', 8, NULL, 'Salata lodowa, smazona piers z kurczaka, pomidor, ogorek, cebula, sos winegret.', 'ff4000'),
(25, 'Ryżowa z czosniekm', 8, NULL, 'Ryz, czosnek, majonez.', 'ff8000'),
(26, 'Warzywna', 8, NULL, 'Ziemniaki, ogorek, kukurydza, papryka, majonez.', 'ffbf00'),
(27, 'Margharitta', 9, NULL, 'Sos, ser, oregano.', 'ffff00'),
(28, 'Peperone', 9, NULL, 'Sos, ser, salami, papryczki peperone.', 'bfff00'),
(29, 'Hawajska', 9, NULL, 'Sos, ser, ananas.', '80ff00'),
(30, 'Czarna LIPTON', 10, NULL, 'Oryginalna herbata LIPTON, 250ml.', '40ff00'),
(31, 'Zielona KWIAT LOTOSU', 10, NULL, 'Herbata zielona, zaparzana w optymalnej temperaturze z dodatkiem kwiatow lotosu, 250ml.', '00ff00'),
(32, 'Owocowa LIPTON', 10, NULL, 'Oryginalna herbata owocowa LIPTON, smak do wyboru 250ml.', '00ff40'),
(33, 'Rosół', 11, NULL, 'Tradycyjny wywar z kury.', '00ff80'),
(34, 'Pomidorowa', 11, NULL, 'Zupa z pomidorami.', '00ffbf'),
(35, 'Ogórkowa', 11, NULL, 'Zupa z ogorkami.', '00ffff'),
(36, 'Szarlotka', 12, NULL, 'Tradycyjne ciasto z jabkiem, 150g.', '00bfff'),
(37, 'Firmowe', 12, NULL, 'Specjalnosc restauracji, 125g.', '0080ff'),
(38, 'Lody w pucharze', 12, NULL, 'Do wyboru smaki galek, podane w pucharku, 200g.', '0040ff'),
(39, 'Chleb czosnkowy', 13, NULL, 'Pieczywo o smaku czosnkowym, 4 kromki.', '0000ff'),
(40, 'Koreczki', 13, NULL, 'Koreczki z mięsem i warzywami, 8 sztuk.', '4000ff'),
(41, 'Kasztany jadalne', 13, NULL, 'Specjal z Francji, 200g.', '8000ff'),
(42, 'Pierś z kurczaka', 14, NULL, 'Kotlet drobiowy z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 'bf00ff'),
(43, 'Karkówka', 14, NULL, 'Kotlet z karkowki z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 'ff00ff'),
(44, 'Dorsz (filet)', 15, NULL, 'Filet rybny z dorsza, pokropiony sokiem z cytryny, 200g.', 'ff00bf'),
(45, 'Sum', 15, NULL, 'Ryba sum, smazona, pokropiona sokiem z cytryny, 100g.', 'ff0080'),
(46, 'Lin (filet)', 15, NULL, 'Filet rybny z lina, pokropiony sokiem z cytryny, 200g.', 'ff0040'),
(47, 'Pieczarki faszerowane', 16, NULL, 'Pieczarki z nadzieniem, 150g.', 'ff4000'),
(48, 'Frytki', 16, NULL, 'Smazone na glebokim oleju, 200g.', 'ff8000'),
(49, 'Kopytka', 16, NULL, 'Tradycyjne polskie danie, 200g.', 'ffbf00'),
(50, 'Zupa kalafiorowa', 17, NULL, 'Tradycyjna zupa kalafiorowa, z ziemniakami i marchewka.', 'ffff00'),
(51, 'Karkówka wołowa, ziemniaki, surówka jasna', 17, NULL, 'Doskonale przyrzadzona wołowina (200g), , gotowane ziemniaki i surowka z kapusty.', 'bfff00'),
(52, 'Nuggetsy', 18, NULL, 'Bezkostne mieso drobiowe, 150g.', '80ff00'),
(53, 'Risotto Pollo', 19, NULL, 'Tradycyjne wloskie risotto z pikantnym kurczakiem i groszkiem, posypane pietruszka i serem Grana Padano.', '40ff00'),
(54, 'Risotto Con Tallegio', 19, NULL, 'Tradycyjne wloskie risotto z serem Taleggio, grzybami lesnymi i pasta truflowa, posypane natka pietruszki i serem Grana Padano.', '00ff00'),
(55, 'Risotto Parma E Pistacchio', 19, NULL, 'Tradycyjne wloskie risotto z pesto pistacjowym, szynka prosciutto, marynowana gruszka, serem Gorgonzola i kruszonymi pistacjami.', '00ff40'),
(58, 'Pieczona kaczka z ziemniakami w mundurkach', 17, 'piekarnik i ziemniaki', 'Pieczona kaczka, dużo ziemniakow upieczonych w mundurkach.', '0044fe'),
(59, 'Pepsi', 1, NULL, 'Napoj Pepsi, 500ml.', '00ff00'),
(60, 'Mirinda', 1, NULL, 'Napoj Mirinda, 500ml.', '00ffbf'),
(61, 'Nestea', 1, NULL, 'Napoj Nestea, 500ml.', '0040ff'),
(62, '7up', 1, NULL, 'Napoj 7up, 500ml.', 'ff8000'),
(63, 'Sprite', 1, NULL, 'Napoj Sprite, 500ml.', '00ffff'),
(64, 'Woda mineralna', 1, NULL, 'Podana w wysokiej szkance, marka do wyboru 300ml.', '00ff40'),
(65, 'Sok ze świeżych cytrusów', 1, NULL, 'Wyciskany na piejscu, pomarancza lub grapefruit, 250ml.', 'ff4000'),
(66, 'Nektar bananowy', 1, NULL, 'Podany w wysokiej szkance, 300ml.', '00ff00'),
(67, 'Americano', 2, NULL, 'Kawa americano, esspresso z duza iloscia wody.', '0080ff'),
(68, 'White', 2, NULL, 'Kawa white, esspresso z duza iloscia mleka.', '0040ff'),
(69, 'Cappuccino', 2, NULL, 'Kawa cappuccino, esspresso z mlekiem i warstwa spienionego na kremowa konsystencje mleka.', '00bfff'),
(70, 'Mrożona z lodami waniliowymi', 2, NULL, 'Kawa z kostkami lodu, dodatkowo sa lody waniliowe.', '00ffbf'),
(71, 'Long Island Ice Tea', 3, 'Żubrówka Biała 20 ml, Bombay Sapphire 20 ml, Rum Bacardi Carta Blanca 20 ml, Tequila Sierra Silver 20 ml, Triple Sec 20 ml, sok z cytryny, Pepsi', 'Koktajl alkoholowy przygotowywany z wodki, ginu, tequili i rumu z dodatkiem soku cytrynowego, zmieszanych z cola.', '4000ff'),
(72, 'Blue Lagoon', 3, 'Żubrówka Biała 40 ml, Bols Blue 20 ml, sok z cytryny, sok jabłkowy, cytryna', ' Koktajl alkoholowy łaczacy wodke, blue curacao i lemoniade.', '0000ff'),
(73, 'Sphinx', 3, 'Żubrówka Biała 40 ml, sok jabłkowy, sok pomarańczowy, sok z cytryny, syrop grenadyna, pomarańcza', 'Koktajl alkoholowy łaczacy wodke, sok jablkowy, cytrynowy, pomaranczowy i syrop z grenadiny.', 'bf00ff'),
(74, 'Green Line', 3, 'Żołądkowa Gorzka 40 ml, sok jabłkowy, sok z cytryny, świeży ogórek, 7up', 'Koktajl alkoholowy łaczacy wodke, sok cytrynowy, ananasowy, sprite i plastry ogorka.', 'ff00ff'),
(75, 'Cuba Libre', 3, 'Rum Bacardi Carta Oro 40 ml, Pepsi, limonka', 'Koktajl alkoholowy łaczacy rum, cole i limonke.', '00bfff'),
(76, 'Sex on the beach', 3, 'Żubrówka Biała 40 ml, Bols Peach 20 ml, sok żurawinowy, sok pomarańczowy, pomarańcza', 'Koktajl alkoholowy przygotowywany z wodki, sznapsu brzoskwiniowego oraz wiecej niz jednego soku owocowego.', 'ff00bf'),
(78, 'Wyborowa', 4, NULL, 'Shot Belvedera w kieliszku 40 ml.', 'ff00bf'),
(79, 'Belvedere', 4, NULL, 'Shot Finlandii w kieliszku 40 ml.', 'ff0080'),
(80, 'Grey Goose', 4, NULL, 'Shot Zoładkowej Gorzkiej w kieliszku 40 ml.', 'ff0040'),
(81, 'Żołądkowa Gorzka', 4, NULL, 'Shot Finlandii w kieliszku 40 ml.', 'ff4000'),
(82, 'Żubrówka Biała', 4, NULL, 'Shot Zubrowka Bialej w kieliszku 40 ml.', 'ff8000'),
(83, 'Żubrówka Bison Grass', 4, NULL, 'Shot Zubrowki Bison Grass w kieliszku 40 ml.', 'ffbf00'),
(84, 'Żubrówka Kora Dębu', 4, NULL, 'Shot Zubrowki Kora Debu w kieliszku 40 ml.', 'ffff00'),
(85, 'Dewar’s White Label', 4, NULL, 'Shot Dewar’sa w kieliszku 40 ml.', 'bfff00'),
(86, 'Ballantine’s Finest', 4, NULL, 'Shot Ballantine’sa w kieliszku 40 ml.', '80ff00'),
(87, 'Johnnie Walker Red', 4, NULL, 'Shot Johnnie Walkera Red w kieliszku 40 ml.', '40ff00'),
(88, 'Jack Daniel’s Single Barrel', 4, NULL, 'Shot Jacka Daniel’sa Single Barrel w kieliszku 40 ml.', '00ff00'),
(89, 'Glenfiddich 12YO', 4, NULL, 'Shot Glenfiddicha w kieliszku 40 ml.', '00ff40'),
(90, 'Metaxa *****', 4, NULL, 'Shot Metaxa w kieliszku 40 ml.', '0044fe'),
(91, 'Hennessy VS', 4, NULL, 'Shot Luxusowej w kieliszku 40 ml.', '00ff00'),
(92, 'Jägermeister', 4, NULL, 'Shot Jagermeistera w kieliszku 40 ml.', '00ffbf'),
(93, 'Las Montañas Cabernet Sauvignon', 5, NULL, 'Wytrawne wino o dobrze zbudowanym bukiecie i głebokim, ciemnym kolorze oraz aromacie i smaku czarnej porzeczki.', '4000ff'),
(94, 'Chianti Classico Villa Campobello', 5, NULL, 'Wytrawne wino o zywym rubinowym kolorze, owocowym zapachu z nuta fiolkow, wisni i dzikich czerwonych jagod.', '0000ff'),
(95, 'Monteiro Tempranillo', 5, NULL, 'Wytrawne, głeboko czerwone wino, powstajace z najwazniejszej odmiany winorosli w Hiszpanii, charakteryzujące się delikatnym ziołowym aromatem.', 'bf00ff'),
(96, 'Castillo de Albai Crianza Rioja', 5, NULL, 'Wytrawne wino o purpurowym kolorze, w zapachu wyczuwalne aromaty dojrzalych czerwonych owocow: malin i sliwek.', 'ff00ff'),
(97, 'Primitivo Marchesi del Salento', 5, NULL, 'Wytrawne wino o głebokim, ciemnym kolorze, z silnie wyczuwalnymi nutami przypraw i zurawiny.', '00bfff'),
(98, 'Mossiere Vino Nobile di Montepulciano', 5, NULL, 'Wytrawne, jedno z najwaaniejszych toskanskich win czerwonych, produkowane wokoł starozytnego miasta Montepulciano.', 'ff00bf'),
(99, 'Sunset Rum', 6, NULL, 'Jeden z najsolidniejszych rumow na świecie, wyjatkowy smak i moc, 40ml.', 'bf00ff'),
(100, 'Good ol’ Sailor Vodka', 6, NULL, 'Bardzo mocna wodka ze Szwecji, 40ml.', 'ff00ff'),
(101, 'Balkan 176', 6, NULL, 'Mocna, bezbarwna, bez smaku i zapachu - prosto z Balkan, 40ml.', 'ff00bf'),
(102, 'Pincer Vodka', 6, NULL, 'Szkocka, bardzo mocno wodka, 40ml.', 'ff0080'),
(103, 'Bruichladdich X4+1 Quadrupled whisky', 6, NULL, 'Najmocniejsza na swiecie whisky, 40ml.', 'ff0040'),
(104, 'Everclear', 6, NULL, 'Przez wielu uwazany za najmocniejszy alkohol, jest przezroczysty, bez zapachu i smaku, 40ml.', '40ff00'),
(105, 'Spirytus rektyfikowany', 6, NULL, 'Polskiej produkcji spirytus, tylko dla najodwazniejszych, 40ml.', '00ff00'),
(106, 'Spaghetti Con Piselli', 7, NULL, 'Makaron spaghetti w sosie pomidorowo-miesnym z groszkiem.', '40ff00'),
(107, 'Spaghetti Diablo', 7, NULL, 'Makaron spaghetti w ostrym sosie pomidorowo-miesnym z kabanosem, papryka jalapeno i dodatkiem bazylii.', '00ff00'),
(108, 'Spaghetti Zapiekane', 7, NULL, 'Makaron spaghetti w sosie pomidorowo-miesnym z dodatkiem bazylii, zapiekane z serem i smietana.', '00ff40'),
(109, 'Spaghetti Special', 7, NULL, 'Makaron spaghetti w sosie pomidorowo-miesnym z kabanosem, cebula i czosnkiem.', '40ff00'),
(110, 'Penne Cztery sery', 7, NULL, 'Makaron penne w sosie z 4 rodzajow sera z dodatkiem smietany i czosnku.', '00ff00'),
(111, 'Penne Broccoli', 7, NULL, 'Makaron penne z brokulami w sosie smietanowym.', 'ff0080'),
(112, 'Penne Grzybowe', 7, NULL, 'Makaron penne w sosie smietanowo-grzybowym.', 'ff0040'),
(113, 'Penne Carbonara', 7, NULL, 'Makaron penne w sosie smietanowym z dodatkiem boczku i cebuli.', 'ff4000'),
(114, 'Grecka', 8, NULL, 'Salata lodowa, pomidor, ogorek, cebula, ser feta, oliwki, sos winegret.', '0040ff'),
(115, 'Petromea', 8, NULL, 'Salata lodowa, pomidor, ogorek, cebula, papryka, mieso drobiowe, sos czosnkowy.', '0000ff'),
(116, 'Turecka', 8, NULL, 'Salata lodowa, pomidor, ogorek, cebula, kebab, sos czosnkowy.', '4000ff'),
(117, 'Luksor', 8, NULL, 'Salata lodowa, pomidor, ogorek, cebula, tunczyk, grzanki, sos winegret.', '00ffff'),
(118, 'Paryska', 8, NULL, 'Salata lodowa, cebula, pomidor, ogorek, grillowany filet z kurczaka, ser lazur, sos winegret.', '00ff40'),
(119, 'Francuska', 8, NULL, 'Salata lodowa, ananas, kukurydza, grillowany filet z kurczaka, ser lazur, sos winegret.', 'ff4000'),
(120, 'Caprese', 8, NULL, 'Salata lodowa, pomidor, biala mozzarella, swieza bazylia, oliwa z oliwek.', '00bfff'),
(121, 'Parmeńska', 9, NULL, 'Sos, ser, szynka dojrzewajaca, pomidorki koktajlowe, biala mozzarella, bazylia, rukola, pieprz mlotkowany, pizza na cienkim wloskim ciescie.', 'ff8000'),
(122, 'Włoska', 9, NULL, 'Sos, ser, salami, pomidorki koktajlowe-plasterki, biala mozzarella, cebula, oliwki, pieprz mlotkowany, pizza na cienkim włoskim ciescie.', 'ff4000'),
(123, 'Funghi', 9, NULL, 'Sos, ser, pieczarki.', 'ff8000'),
(124, 'Spinaci', 9, NULL, 'Sos, ser, szpinak.', '4000ff'),
(125, 'Vesuvio', 9, NULL, 'Sos, ser, szynka.', '8000ff'),
(126, 'Salami', 9, NULL, 'Sos, ser, salami.', 'bf00ff'),
(127, 'Genua', 9, NULL, 'Sos, ser, tunczyk, salami, cebula, kukurydza.', 'ff00ff'),
(128, 'Wegetariańska', 9, NULL, 'Sos, ser, papryka, pieczarki, kukurydza, cebula, oliwki, kapary.', 'ff00bf'),
(129, 'Boczolini', 9, NULL, 'Sos, ser, grillowany boczek, cebula, papryka.', '8000ff'),
(130, 'Cztery pory roku', 9, NULL, 'Sos, ser, szynka, pieczarki, salami, tunczyk.', 'bf00ff'),
(131, 'Carbonara', 9, NULL, 'Sos smietanowy, ser, boczek, cebula.', 'ff00ff'),
(132, 'Kebab', 9, NULL, 'Sos, ser, kebab, cebula, sos czosnkowy.', 'ff00bf'),
(133, 'Rzeźnicka', 9, NULL, 'Sos, ser, szynka, salami, kabanos, baleron.', '00ff00'),
(134, 'Cztery sery', 9, NULL, 'Sos, ser, cztery gatunki sera.', '00ff40'),
(135, 'Czarna DILMAH', 10, NULL, 'Oryginalna herbata DILMAH, 250ml.', 'ffff00'),
(136, 'Czarna EARL GREY', 10, NULL, 'Oryginalna herbata EARL GREY, 250ml.', 'bfff00'),
(137, 'Zielona JAPOŃSKA ŚWIĄTYNIA', 10, NULL, 'Herbata zielona, zaparzana w optymalnej temperaturze o wyjatkowym smaku, 250ml.', '80ff00'),
(138, 'Zielona BRZOSKWINIOWY SAD', 10, NULL, 'Herbata zielona z dodatkiem aromatu owocowego, zaparzana w optymalnej temperaturze, 250ml.', 'ff4000'),
(139, 'Zielona JAŚMINOWA', 10, NULL, 'Herbata zielona, zaparzana w optymalnej temperaturze z dodatkiem kwiatow jasminu, 250ml.', 'ff8000'),
(140, 'Zielona NATURALNA', 10, NULL, 'Herbata zielona, zaparzana w optymalnej temperaturze, smak zielonej herbaty bez dodatkow, 250ml.', 'ffbf00'),
(141, 'Owocowa WIŚNIA Z BANANEM', 10, NULL, 'Herbata owocowa, wyjatkowe polaczenie smaku wisni i banana, 250ml.', '0040ff'),
(142, 'Barszcz czysty', 11, NULL, 'Barszcz czerowny.', '4000ff'),
(143, 'Barszcz z pasztecikiem', 11, NULL, 'Barszcz czerowny z dodatkiem pasztecikow.', '8000ff'),
(144, 'Gulaszowa', 11, NULL, 'Zupa gulaszowa z miesem wolowym.', 'bf00ff'),
(145, 'Żurek', 11, NULL, 'Tradycyjny zurek z jajkiem i biala kielbasa.', 'ff00ff'),
(146, 'Krem grzybowy', 11, NULL, 'Krem zrobiony z borowikow.', 'ff00bf'),
(147, 'Sernik z brzoskwiniami', 12, NULL, 'Znane wszystkim ciasto z dodatkiem brzoskwin, 200g.', 'ff0040'),
(148, 'Creme brulee', 12, NULL, 'Zapiekany deser, przygotowywany ze smietanki, zoltek, cukru, uwienczony warstwa skarmelizowanego cukru, 100g.', 'ff4000'),
(149, 'Szarlotka z lodami', 12, NULL, 'Znane ciasto z doadkiem lodow, 220g.', 'ff8000'),
(150, 'Shake waniliowy', 12, NULL, 'Lody waniliowe zmieszane z mlekiem, 400ml.', 'ffbf00'),
(151, 'Gałka lodów GRYCAN', 12, NULL, 'Oryginalne lody GRYCAN, w wielu smakach 45g.', '00ffff'),
(152, 'Mus czekoladowy', 12, NULL, 'Gorzka czekolada przerobiona w mus, 60g.', '00bfff'),
(153, 'Deser BAILEYS', 12, NULL, 'Kawoy deser z dodatkiem znanej whiskey, 90g.', 'ffbf00'),
(154, 'Krążki cebulowe', 13, NULL, 'Smazone krazki cebulowe, 200g.', 'bf00ff'),
(155, 'Falafel', 13, NULL, 'Smazone kulki z przyprawionej ciecierzycy, 200g.', 'ff00ff'),
(156, 'Kalmary panierowane', 13, NULL, 'Smazone kalmary, 170g, dodatkowo sos.', 'ff00bf'),
(157, 'Jalapenos', 13, NULL, 'Bardzo ostre papryczki.', 'bfff00'),
(158, 'Śledź marynowany', 13, NULL, 'Sledz marynowany w soku z kiszonych burakow, 250g.', '80ff00'),
(159, 'Peper stek', 14, NULL, 'Wołowina przygotowana z duza iloscia pieprzu, z dodatkiem frytek, 510g.', '99FFCC'),
(160, 'Stek argentyński', 14, NULL, 'Wołowina przygotowana zgodnie z receptura argentyjska, z dodatkiem frytek, 520g.', 'CCFF33'),
(161, 'Stek urugwajski', 14, NULL, 'Wołowina przygotowana wedlug urugwanskiej receptury dodatkiem frytek, 510g.', 'FFCC33'),
(162, 'Stek amerykański', 14, NULL, 'Wołowina przygotowana zgodnie z receptura amerykanska, z dodatkiem frytek, 510g.', 'FFFF33'),
(163, 'Polędwica', 14, NULL, 'Wołowina przygotowana w tradycyjny sposob, z dodatkiem frytek, 520g.', '0000ff'),
(164, 'Kebeb drobiowy', 14, NULL, 'Mieso drobiowe upieczone na pionowym roznie, z dodatkiem frytek, warzyw i sosow.', '4000ff'),
(165, 'Kebeb wołowy', 14, NULL, 'Mieso wolowe upieczone na pionowym roznie, z dodatkiem frytek, warzyw i sosow.', '02E6F2'),
(166, 'Gulasz z jelenia', 14, NULL, 'Wyjatkowy gulasz z dziczyzny podany z ziemniakami.', 'ff8000'),
(167, 'Żeberka wieprzowe', 14, NULL, 'Zeberka wieprzowe z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 'ffbf00'),
(168, 'Sandacz (filet)', 15, NULL, 'Filet rybny z sandacza, pokropiony sokiem z cytryny, 100g.', 'ff8000'),
(169, 'Okoń (filet)', 15, NULL, 'Filet rybny z okonia, pokropiony sokiem z cytryny, 100g.', 'ffbf00'),
(170, 'Pstrąg (filet)', 15, NULL, 'Filet rybny z pstraga, pokropiony sokiem z cytryny, 100g.', 'ffff00'),
(171, 'Karp', 15, NULL, 'Ryba karp, smazona, pokropiona sokiem z cytryny, 100g.', 'bfff00'),
(172, 'Halibut', 15, NULL, 'Ryba halibut, smazona, pokropiona sokiem z cytryny, 100g.', '80ff00'),
(173, 'Łosoś (filet)', 15, NULL, 'Filet rybny z lososia, pokropiony sokiem z cytryny, 100g.', '00bfff'),
(174, 'Flądra', 15, NULL, 'Ryba fladra, 100g.', '0040ff'),
(175, 'Ryba maślana', 15, NULL, 'Ryba maslana, pokropiona sokiem z cytryny, 100g.', 'ff8000'),
(176, 'Miętus królewski (filet)', 15, NULL, 'Filet rybny z mietusa, pokropiony sokiem z cytryny, 100g.', '00ffff'),
(177, 'Ryż curry', 16, NULL, 'Porcja ryzu z dodatkiem przyprawy curry.', '80ff00'),
(178, 'Ziemniaki smażone na złoto', 16, NULL, 'Porcja ziemniakow, zasmazanych na zloty kolor, 250g.', '40ff00'),
(179, 'Zestaw surówek', 16, NULL, 'Mix trzech surowek.', '00ff00'),
(180, 'Buraczki', 16, NULL, 'Buraczki przygotowane wedlug tradycyjnej receptury.', '00ffbf'),
(181, 'Kapusta kwaszona z boczkiem', 16, NULL, 'Porcja kapusty z dodatkiem boczku.', '0040ff'),
(182, 'Warzywa czosnkowe', 16, NULL, 'Mieszanka warzyw z dodatkiem czosnku, o wyrazistym smaku.', 'ff8000'),
(183, 'Zestaw trzech sosów', 16, NULL, 'Sosy w naczyniach (czosnkowy, koktajlowy, cebulowy-ostry).', '00ffff'),
(185, 'Strogonow', 17, NULL, 'Pyszne mieso wolowe z dodatkiem warzyw.', '4D5AD1'),
(186, 'Burger', 18, NULL, 'Burger wolowy z dodatkiem warzyw.', 'ff4000'),
(187, 'Bekonburger', 18, NULL, 'Burger wolowy z dodatkiem bekonu.', 'ff8000'),
(188, 'Lazurburger', 18, NULL, 'Burger wolowy z dodatkiem sera Lazur.', '00ffbf'),
(189, 'Cheeseburger', 18, NULL, 'Burger wolowy z dodatkowa porcja sera.', 'FF99FF'),
(190, 'Kebab w bułce', 18, NULL, 'Mieso upieczone na pionowym roznie, wrzucone w bulke z dodatkiem warzyw i sosow.', '99FFCC'),
(191, 'Doner w bułce', 18, NULL, 'Baranina upieczona na pionowym roznie, wrzucone w bulke z dodatkiem warzyw i sosow.', '00ff40'),
(192, 'Kebab tortilla', 18, NULL, 'Mieso upieczone na pionowym roznie, wrzucone w placek tortilla, z dodatkiem warzyw i sosow.', '00ff80'),
(193, 'Doner tortilla', 18, NULL, 'Baranina upieczona na pionowym roznie, wrzucone w placek tortille, z dodatkiem warzyw i sosow.', '00ffbf'),
(194, 'Bułka wegetariańska', 18, NULL, 'Bulka pelna warzyw z dodatkiem sosow, wegetarianska', 'FF66CC'),
(195, 'Risotto Gamberi', 19, NULL, 'Tradycyjne wloskie risotto z krewetkami tygrysimi, posypane pietruszka i serem Grana Padano.', '8000ff'),
(196, 'Risotto Con Gamberi E Asparagi', 19, NULL, 'Tradycyjne wloskie risotto z krewetkami tygrysimi i zielonymi szparagami, posypane serem Grana Padano.', 'ff0080');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `07_vat`
--

CREATE TABLE `07_vat` (
  `ID_Vat` int(11) NOT NULL,
  `StawkaVAT` float NOT NULL,
  `Dotyczy` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `07_vat`
--

INSERT INTO `07_vat` (`ID_Vat`, `StawkaVAT`, `Dotyczy`) VALUES
(1, 0.23, NULL),
(2, 0.05, NULL),
(3, 0.08, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `08_pozycjamenu`
--

CREATE TABLE `08_pozycjamenu` (
  `ID_PM` int(11) NOT NULL,
  `Produkt` int(11) DEFAULT NULL,
  `CenaBrutto` float NOT NULL DEFAULT '0',
  `Vat` int(11) NOT NULL,
  `DataWprow` datetime DEFAULT NULL,
  `DataArch` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `08_pozycjamenu`
--

INSERT INTO `08_pozycjamenu` (`ID_PM`, `Produkt`, `CenaBrutto`, `Vat`, `DataWprow`, `DataArch`) VALUES
(9, 1, 3.99, 1, '2017-11-04 00:00:00', NULL),
(10, 2, 29.99, 3, '2017-11-01 00:00:00', NULL),
(11, 3, 6, 2, NULL, NULL),
(12, 4, 15, 3, NULL, NULL),
(14, 5, 6.99, 1, '2017-11-14 00:00:00', NULL),
(15, 20, 20, 1, NULL, NULL),
(16, 24, 13.9, 3, NULL, NULL),
(17, 39, 5.9, 2, NULL, NULL),
(18, 30, 4, 3, NULL, NULL),
(19, 44, 24.9, 1, NULL, NULL),
(20, 8, 4.99, 3, NULL, NULL),
(21, 16, 10, 1, NULL, NULL),
(22, 37, 6.99, 2, NULL, NULL),
(23, 48, 9, 3, NULL, NULL),
(24, 29, 33, 1, NULL, NULL),
(25, 15, 10, 1, NULL, NULL),
(26, 43, 17, 3, NULL, NULL),
(27, 51, 19, 3, NULL, NULL),
(28, 6, 5, 3, NULL, NULL),
(29, 7, 1.5, 3, NULL, NULL),
(30, 9, 6.99, 3, NULL, NULL),
(31, 10, 6.99, 3, NULL, NULL),
(32, 11, 12, 1, NULL, NULL),
(33, 12, 11, 1, NULL, NULL),
(34, 13, 13, 1, NULL, NULL),
(35, 14, 10, 1, NULL, NULL),
(36, 17, 49.99, 1, NULL, NULL),
(37, 18, 15, 1, NULL, NULL),
(38, 19, 19, 1, NULL, NULL),
(39, 21, 25, 1, NULL, NULL),
(40, 22, 29.9, 3, NULL, NULL),
(41, 23, 23.9, 3, NULL, NULL),
(42, 25, 11.9, 3, NULL, NULL),
(43, 26, 7.99, 3, NULL, NULL),
(44, 27, 15.99, 1, NULL, NULL),
(45, 28, 24.99, 1, NULL, NULL),
(46, 31, 5, 3, NULL, NULL),
(47, 32, 4.5, 3, NULL, NULL),
(48, 33, 12, 2, NULL, NULL),
(49, 34, 13, 2, NULL, NULL),
(50, 35, 13.5, 2, NULL, NULL),
(51, 36, 7.99, 2, NULL, NULL),
(52, 38, 11.99, 3, NULL, NULL),
(53, 40, 8.88, 2, NULL, NULL),
(54, 41, 15.9, 2, NULL, NULL),
(55, 42, 14.9, 3, NULL, NULL),
(56, 45, 21.9, 1, NULL, NULL),
(57, 46, 27.9, 1, NULL, NULL),
(58, 47, 6.5, 3, NULL, NULL),
(59, 49, 7, 3, NULL, NULL),
(60, 50, 11.49, 3, NULL, NULL),
(61, 52, 9.99, 1, NULL, NULL),
(62, 53, 26.99, 3, NULL, NULL),
(63, 54, 24.49, 3, NULL, NULL),
(64, 55, 21.99, 3, NULL, NULL),
(65, 58, 34.99, 3, NULL, NULL),
(66, 78, 10, 1, NULL, NULL),
(67, 79, 21, 1, NULL, NULL),
(68, 80, 13, 1, NULL, NULL),
(69, 81, 10, 1, NULL, NULL),
(70, 82, 10, 1, NULL, NULL),
(71, 83, 11, 1, NULL, NULL),
(72, 84, 11, 1, NULL, NULL),
(73, 85, 12, 1, NULL, NULL),
(74, 86, 12, 1, NULL, NULL),
(75, 87, 12, 1, NULL, NULL),
(76, 88, 14, 1, NULL, NULL),
(77, 89, 15, 1, NULL, NULL),
(78, 90, 12, 1, NULL, NULL),
(79, 91, 13, 1, NULL, NULL),
(80, 92, 11, 1, NULL, NULL),
(81, 59, 6, 1, NULL, NULL),
(82, 60, 6, 1, NULL, NULL),
(83, 61, 6, 1, NULL, NULL),
(84, 62, 6, 1, NULL, NULL),
(85, 63, 6, 1, NULL, NULL),
(86, 64, 4, 1, NULL, NULL),
(87, 65, 9.99, 1, NULL, NULL),
(88, 66, 5.5, 1, NULL, NULL),
(89, 67, 5.99, 3, NULL, NULL),
(90, 68, 7.99, 3, NULL, NULL),
(91, 69, 9.99, 3, NULL, NULL),
(92, 70, 14.99, 1, NULL, NULL),
(93, 71, 16, 1, NULL, NULL),
(94, 72, 15, 1, NULL, NULL),
(95, 73, 19, 1, NULL, NULL),
(96, 74, 12.34, 1, NULL, NULL),
(97, 75, 11.99, 1, NULL, NULL),
(98, 76, 14.5, 1, NULL, NULL),
(99, 93, 35.99, 1, NULL, NULL),
(100, 94, 57.99, 1, NULL, NULL),
(101, 95, 42.99, 1, NULL, NULL),
(102, 96, 59.9, 1, NULL, NULL),
(103, 97, 39.99, 1, NULL, NULL),
(104, 98, 46.9, 1, NULL, NULL),
(105, 99, 18, 1, NULL, NULL),
(106, 100, 17, 1, NULL, NULL),
(107, 101, 21, 1, NULL, NULL),
(108, 102, 23, 1, NULL, NULL),
(109, 103, 27, 1, NULL, NULL),
(110, 104, 18, 1, NULL, NULL),
(111, 105, 15, 1, NULL, NULL),
(112, 106, 21.9, 3, NULL, NULL),
(113, 107, 32, 3, NULL, NULL),
(114, 108, 25, 3, NULL, NULL),
(115, 109, 29.99, 3, NULL, NULL),
(116, 113, 22.9, 3, NULL, NULL),
(117, 112, 27.9, 3, NULL, NULL),
(118, 111, 25.55, 3, NULL, NULL),
(119, 110, 24.5, 3, NULL, NULL),
(120, 114, 14.9, 3, NULL, NULL),
(121, 120, 11.9, 3, NULL, NULL),
(122, 119, 10.99, 3, NULL, NULL),
(123, 118, 14.9, 3, NULL, NULL),
(124, 117, 17.9, 3, NULL, NULL),
(125, 116, 15.9, 3, NULL, NULL),
(126, 115, 12.9, 3, NULL, NULL),
(127, 134, 31, 1, NULL, NULL),
(128, 133, 29, 1, NULL, NULL),
(129, 132, 25.5, 1, NULL, NULL),
(130, 131, 25.99, 1, NULL, NULL),
(131, 130, 29.9, 1, NULL, NULL),
(132, 129, 31.31, 1, NULL, NULL),
(133, 128, 19.99, 1, NULL, NULL),
(134, 127, 24.9, 1, NULL, NULL),
(135, 126, 23.5, 1, NULL, NULL),
(136, 125, 27.8, 1, NULL, NULL),
(137, 124, 19.99, 1, NULL, NULL),
(138, 123, 20.9, 1, NULL, NULL),
(139, 122, 24.6, 1, NULL, NULL),
(140, 121, 34.99, 1, NULL, NULL),
(141, 141, 6.99, 3, NULL, NULL),
(142, 140, 5, 3, NULL, NULL),
(143, 139, 5.55, 3, NULL, NULL),
(144, 138, 5.9, 3, NULL, NULL),
(145, 137, 6.99, 3, NULL, NULL),
(146, 136, 4, 3, NULL, NULL),
(147, 135, 4, 3, NULL, NULL),
(148, 146, 14.99, 2, NULL, NULL),
(149, 145, 12.99, 2, NULL, NULL),
(150, 144, 13.5, 2, NULL, NULL),
(151, 143, 12.9, 2, NULL, NULL),
(152, 142, 11, 2, NULL, NULL),
(153, 147, 10.9, 2, NULL, NULL),
(154, 148, 12.99, 3, NULL, NULL),
(155, 149, 11.9, 2, NULL, NULL),
(156, 150, 6.5, 3, NULL, NULL),
(157, 151, 2.5, 3, NULL, NULL),
(158, 152, 5.99, 3, NULL, NULL),
(159, 153, 13.9, 3, NULL, NULL),
(160, 154, 9.99, 2, NULL, NULL),
(161, 155, 8.5, 2, NULL, NULL),
(162, 156, 9.9, 2, NULL, NULL),
(163, 157, 5, 2, NULL, NULL),
(164, 158, 12.99, 2, NULL, NULL),
(165, 159, 43, 3, NULL, NULL),
(166, 167, 29.99, 3, NULL, NULL),
(167, 166, 32.5, 3, NULL, NULL),
(168, 165, 26.99, 3, NULL, NULL),
(169, 164, 23.99, 3, NULL, NULL),
(170, 163, 35, 3, NULL, NULL),
(171, 162, 39.99, 3, NULL, NULL),
(172, 161, 45, 3, NULL, NULL),
(173, 160, 49, 3, NULL, NULL),
(174, 176, 12.5, 1, NULL, NULL),
(175, 175, 11, 1, NULL, NULL),
(176, 174, 9.9, 1, NULL, NULL),
(177, 173, 15.9, 1, NULL, NULL),
(178, 172, 15.99, 1, NULL, NULL),
(179, 171, 9.9, 1, NULL, NULL),
(180, 170, 11, 1, NULL, NULL),
(181, 169, 19, 1, NULL, NULL),
(182, 168, 18, 1, NULL, NULL),
(183, 183, 5, 3, NULL, NULL),
(184, 182, 8.9, 3, NULL, NULL),
(185, 181, 4.5, 3, NULL, NULL),
(186, 180, 4.44, 3, NULL, NULL),
(187, 179, 5.99, 3, NULL, NULL),
(188, 178, 6.7, 3, NULL, NULL),
(189, 177, 5.5, 3, NULL, NULL),
(190, 185, 29.99, 1, NULL, NULL),
(191, 186, 9, 1, NULL, NULL),
(192, 187, 10.5, 1, NULL, NULL),
(193, 188, 11, 1, NULL, NULL),
(194, 189, 10.99, 1, NULL, NULL),
(195, 190, 12.9, 1, NULL, NULL),
(196, 191, 13.9, 1, NULL, NULL),
(197, 192, 14.5, 1, NULL, NULL),
(198, 193, 15.5, 1, NULL, NULL),
(199, 194, 12.9, 1, NULL, NULL),
(200, 195, 29.99, 3, NULL, NULL),
(201, 196, 33.99, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `09_pozycjazam`
--

CREATE TABLE `09_pozycjazam` (
  `Zamowienie` int(11) NOT NULL,
  `PozycjaMenu` int(11) NOT NULL,
  `LiczbaPM` int(11) DEFAULT '0',
  `StanRealiz` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `09_pozycjazam`
--

INSERT INTO `09_pozycjazam` (`Zamowienie`, `PozycjaMenu`, `LiczbaPM`, `StanRealiz`) VALUES
(2, 10, 2, NULL),
(3, 9, 5, NULL),
(3, 11, 10, NULL),
(4, 12, 4, NULL),
(5, 37, 2, NULL),
(5, 38, 1, NULL),
(5, 102, 1, NULL),
(6, 100, 1, NULL),
(6, 102, 1, NULL),
(6, 104, 1, NULL),
(7, 99, 1, NULL),
(7, 102, 1, NULL),
(7, 104, 1, NULL),
(8, 9, 4, NULL),
(8, 26, 3, NULL),
(8, 30, 1, NULL),
(8, 91, 1, NULL),
(8, 154, 2, NULL),
(8, 158, 1, NULL),
(11, 102, 1, NULL),
(13, 107, 3, NULL),
(13, 167, 2, NULL),
(14, 113, 36, NULL),
(17, 102, 1, NULL),
(20, 102, 26, NULL),
(20, 37, 2, NULL),
(22, 102, 21, NULL),
(26, 40, 1, NULL),
(26, 41, 5, NULL),
(26, 102, 1, NULL),
(26, 112, 1, NULL),
(27, 102, 18, NULL),
(29, 102, 3, NULL),
(29, 186, 2, NULL),
(32, 102, 18, NULL),
(34, 15, 1, NULL),
(34, 38, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `10_sektory`
--

CREATE TABLE `10_sektory` (
  `ID_Sk` int(11) NOT NULL,
  `NazwaSk` varchar(255) DEFAULT NULL,
  `Aktywny` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `10_sektory`
--

INSERT INTO `10_sektory` (`ID_Sk`, `NazwaSk`, `Aktywny`) VALUES
(1, 'patio', 1),
(2, 'piwnica', 0),
(3, 'sala główna', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `11_stoliki`
--

CREATE TABLE `11_stoliki` (
  `ID_Stolika` int(11) NOT NULL,
  `NazwaSt` varchar(255) DEFAULT NULL,
  `LiczbaMiejsc` int(11) NOT NULL,
  `Sektor` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `11_stoliki`
--

INSERT INTO `11_stoliki` (`ID_Stolika`, `NazwaSt`, `LiczbaMiejsc`, `Sektor`) VALUES
(1, 'pat6', 6, 1),
(2, 'piw6', 6, 2),
(3, 'pat8', 8, 1),
(4, 'sgl3', 3, 3),
(5, 'sgl12', 12, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `01_role`
--
ALTER TABLE `01_role`
  ADD PRIMARY KEY (`ID_R`);

--
-- Indexes for table `02_pracownicy`
--
ALTER TABLE `02_pracownicy`
  ADD PRIMARY KEY (`ID_Prac`);

--
-- Indexes for table `03_obsluga`
--
ALTER TABLE `03_obsluga`
  ADD PRIMARY KEY (`ID_O`);

--
-- Indexes for table `03_obsługa`
--
ALTER TABLE `03_obsługa`
  ADD PRIMARY KEY (`ID_O`);

--
-- Indexes for table `04_zamowienia`
--
ALTER TABLE `04_zamowienia`
  ADD PRIMARY KEY (`ID_Z`);

--
-- Indexes for table `05_kategorie`
--
ALTER TABLE `05_kategorie`
  ADD PRIMARY KEY (`ID_Kat`);

--
-- Indexes for table `06_produkty`
--
ALTER TABLE `06_produkty`
  ADD PRIMARY KEY (`ID_Prod`);

--
-- Indexes for table `07_vat`
--
ALTER TABLE `07_vat`
  ADD PRIMARY KEY (`ID_Vat`);

--
-- Indexes for table `08_pozycjamenu`
--
ALTER TABLE `08_pozycjamenu`
  ADD PRIMARY KEY (`ID_PM`);

--
-- Indexes for table `09_pozycjazam`
--
ALTER TABLE `09_pozycjazam`
  ADD PRIMARY KEY (`Zamowienie`,`PozycjaMenu`);

--
-- Indexes for table `10_sektory`
--
ALTER TABLE `10_sektory`
  ADD PRIMARY KEY (`ID_Sk`);

--
-- Indexes for table `11_stoliki`
--
ALTER TABLE `11_stoliki`
  ADD PRIMARY KEY (`ID_Stolika`),
  ADD KEY `ID_Stolika` (`ID_Stolika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `01_role`
--
ALTER TABLE `01_role`
  MODIFY `ID_R` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `02_pracownicy`
--
ALTER TABLE `02_pracownicy`
  MODIFY `ID_Prac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `03_obsluga`
--
ALTER TABLE `03_obsluga`
  MODIFY `ID_O` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `03_obsługa`
--
ALTER TABLE `03_obsługa`
  MODIFY `ID_O` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `04_zamowienia`
--
ALTER TABLE `04_zamowienia`
  MODIFY `ID_Z` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `05_kategorie`
--
ALTER TABLE `05_kategorie`
  MODIFY `ID_Kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `06_produkty`
--
ALTER TABLE `06_produkty`
  MODIFY `ID_Prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT dla tabeli `07_vat`
--
ALTER TABLE `07_vat`
  MODIFY `ID_Vat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `08_pozycjamenu`
--
ALTER TABLE `08_pozycjamenu`
  MODIFY `ID_PM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT dla tabeli `10_sektory`
--
ALTER TABLE `10_sektory`
  MODIFY `ID_Sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `11_stoliki`
--
ALTER TABLE `11_stoliki`
  MODIFY `ID_Stolika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Baza danych: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Zrzut danych tabeli `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'PO.MySQL', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktura tabeli @TABLE@\",\"latex_structure_continued_caption\":\"Struktura tabeli @TABLE@ (kontynuacja)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"ZawartoÅ›Ä‡ tabeli @TABLE@\",\"latex_data_continued_caption\":\"ZawartoÅ›Ä‡ tabeli @TABLE@ (kontynuacja)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Zrzut danych tabeli `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"users\",\"table\":\"bilety\"},{\"db\":\"users\",\"table\":\"users\"},{\"db\":\"users\",\"table\":\"data_wystawienia\"},{\"db\":\"users\",\"table\":\"miejsca\"},{\"db\":\"users\",\"table\":\"spektakl\"},{\"db\":\"users\",\"table\":\"sale\"},{\"db\":\"users\",\"table\":\"sektory\"},{\"db\":\"users\",\"table\":\"Sale\"},{\"db\":\"movedb\",\"table\":\"04_zamowienia\"},{\"db\":\"users\",\"table\":\"Spektakl\"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Zrzut danych tabeli `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'movedb', '02_pracownicy', '[]', '2017-12-12 11:20:11'),
('root', 'movedb', '04_zamowienia', '{\"sorted_col\":\"`ID_Z` ASC\"}', '2018-01-08 20:11:42'),
('root', 'movedb', '09_pozycjazam', '[]', '2018-01-09 13:50:00'),
('root', 'users', 'data_wystawienia', '{\"sorted_col\":\"`Data` ASC, `Godzina` ASC, `Sala` ASC\"}', '2018-01-20 16:21:40'),
('root', 'users', 'miejsca', '{\"sorted_col\":\"`IdM` ASC\"}', '2018-01-20 21:20:45');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Zrzut danych tabeli `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-11-23 10:48:18', '{\"lang\":\"pl\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Baza danych: `pr_rest`
--
CREATE DATABASE IF NOT EXISTS `pr_rest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pr_rest`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abc`
--

CREATE TABLE `abc` (
  `DSFFD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Baza danych: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Baza danych: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bilety`
--

CREATE TABLE `bilety` (
  `IdB` int(11) NOT NULL,
  `DataWyst` int(11) NOT NULL,
  `Miejsce` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `bilety`
--

INSERT INTO `bilety` (`IdB`, `DataWyst`, `Miejsce`) VALUES
(1, 2, 371),
(2, 2, 444),
(3, 2, 544),
(4, 2, 600),
(11, 2, 430),
(12, 2, 431),
(13, 2, 432),
(14, 2, 478),
(15, 2, 572),
(16, 2, 573),
(17, 2, 445),
(18, 2, 446),
(19, 2, 460),
(20, 2, 461),
(21, 2, 462),
(22, 2, 476),
(23, 2, 477),
(24, 2, 492),
(25, 2, 493),
(26, 2, 494),
(27, 2, 412),
(28, 2, 413),
(29, 2, 414),
(30, 2, 426),
(31, 2, 427),
(32, 2, 428),
(33, 2, 429),
(34, 2, 534),
(35, 2, 535),
(36, 2, 536),
(37, 2, 552),
(38, 2, 553),
(39, 2, 595),
(40, 2, 596),
(41, 2, 618),
(42, 2, 619),
(43, 2, 435),
(44, 2, 436),
(45, 2, 437),
(46, 2, 438),
(47, 2, 439),
(48, 2, 440),
(49, 2, 441),
(50, 2, 442),
(51, 2, 512),
(52, 2, 513),
(53, 2, 519),
(54, 2, 520),
(55, 2, 528),
(56, 2, 529),
(57, 2, 563),
(58, 2, 564),
(59, 2, 565),
(60, 2, 566),
(61, 2, 567),
(62, 2, 568),
(63, 2, 569),
(64, 3, 371),
(65, 3, 515),
(66, 3, 574);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `data_wystawienia`
--

CREATE TABLE `data_wystawienia` (
  `IdDW` int(11) NOT NULL,
  `Spektakl` int(11) NOT NULL,
  `Sala` int(11) NOT NULL,
  `Godzina` time NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `data_wystawienia`
--

INSERT INTO `data_wystawienia` (`IdDW`, `Spektakl`, `Sala`, `Godzina`, `Data`) VALUES
(1, 1, 1, '20:30:00', '2018-01-22'),
(2, 4, 1, '12:00:00', '2018-01-22'),
(3, 4, 1, '12:00:00', '2018-01-27'),
(4, 1, 1, '20:30:00', '2018-01-25'),
(5, 2, 1, '20:00:00', '2018-01-24'),
(6, 3, 1, '22:00:00', '2018-01-24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejsca`
--

CREATE TABLE `miejsca` (
  `IdM` int(11) NOT NULL,
  `NrM` int(11) NOT NULL,
  `Rzad` int(11) NOT NULL,
  `RodzajM` int(11) NOT NULL,
  `SektorM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `miejsca`
--

INSERT INTO `miejsca` (`IdM`, `NrM`, `Rzad`, `RodzajM`, `SektorM`) VALUES
(371, 1, 1, 1, 1),
(372, 2, 1, 1, 1),
(373, 3, 1, 1, 1),
(374, 4, 1, 1, 1),
(375, 5, 1, 1, 1),
(376, 6, 1, 1, 1),
(377, 7, 1, 1, 1),
(378, 8, 1, 1, 1),
(379, 9, 1, 1, 1),
(380, 10, 1, 1, 1),
(381, 11, 1, 1, 1),
(382, 12, 1, 1, 1),
(383, 13, 1, 1, 1),
(384, 14, 1, 1, 1),
(385, 15, 1, 1, 1),
(386, 16, 1, 1, 1),
(387, 1, 2, 1, 1),
(388, 2, 2, 1, 1),
(389, 3, 2, 1, 1),
(390, 4, 2, 1, 1),
(391, 5, 2, 1, 1),
(392, 6, 2, 1, 1),
(393, 7, 2, 1, 1),
(394, 8, 2, 1, 1),
(395, 9, 2, 1, 1),
(396, 10, 2, 1, 1),
(397, 11, 2, 1, 1),
(398, 12, 2, 1, 1),
(399, 13, 2, 1, 1),
(400, 14, 2, 1, 1),
(401, 15, 2, 1, 1),
(402, 16, 2, 1, 1),
(403, 1, 3, 1, 1),
(404, 2, 3, 1, 1),
(405, 3, 3, 1, 1),
(406, 4, 3, 1, 1),
(407, 5, 3, 1, 1),
(408, 6, 3, 1, 1),
(409, 7, 3, 1, 1),
(410, 8, 3, 1, 1),
(411, 9, 3, 1, 1),
(412, 10, 3, 1, 1),
(413, 11, 3, 1, 1),
(414, 12, 3, 1, 1),
(415, 13, 3, 1, 1),
(416, 14, 3, 1, 1),
(417, 15, 3, 1, 1),
(418, 16, 3, 1, 1),
(419, 1, 4, 1, 1),
(420, 2, 4, 1, 1),
(421, 3, 4, 1, 1),
(422, 4, 4, 1, 1),
(423, 5, 4, 1, 1),
(424, 6, 4, 1, 1),
(425, 7, 4, 1, 1),
(426, 8, 4, 1, 1),
(427, 9, 4, 1, 1),
(428, 10, 4, 1, 1),
(429, 11, 4, 1, 1),
(430, 12, 4, 1, 1),
(431, 13, 4, 1, 1),
(432, 14, 4, 1, 1),
(433, 15, 4, 1, 1),
(434, 16, 4, 1, 1),
(435, 1, 5, 2, 1),
(436, 2, 5, 2, 1),
(437, 3, 5, 2, 1),
(438, 4, 5, 2, 1),
(439, 5, 5, 2, 1),
(440, 6, 5, 2, 1),
(441, 7, 5, 2, 1),
(442, 8, 5, 2, 1),
(443, 9, 5, 2, 1),
(444, 10, 5, 2, 1),
(445, 11, 5, 2, 1),
(446, 12, 5, 2, 1),
(447, 13, 5, 2, 1),
(448, 14, 5, 2, 1),
(449, 15, 5, 2, 1),
(450, 16, 5, 2, 1),
(451, 1, 6, 2, 1),
(452, 2, 6, 2, 1),
(453, 3, 6, 2, 1),
(454, 4, 6, 2, 1),
(455, 5, 6, 2, 1),
(456, 6, 6, 2, 1),
(457, 7, 6, 2, 1),
(458, 8, 6, 2, 1),
(459, 9, 6, 2, 1),
(460, 10, 6, 2, 1),
(461, 11, 6, 2, 1),
(462, 12, 6, 2, 1),
(463, 13, 6, 2, 1),
(464, 14, 6, 2, 1),
(465, 15, 6, 2, 1),
(466, 16, 6, 2, 1),
(467, 1, 7, 2, 1),
(468, 2, 7, 2, 1),
(469, 3, 7, 2, 1),
(470, 4, 7, 2, 1),
(471, 5, 7, 2, 1),
(472, 6, 7, 2, 1),
(473, 7, 7, 2, 1),
(474, 8, 7, 2, 1),
(475, 9, 7, 2, 1),
(476, 10, 7, 2, 1),
(477, 11, 7, 2, 1),
(478, 12, 7, 2, 1),
(479, 13, 7, 2, 1),
(480, 14, 7, 2, 1),
(481, 15, 7, 2, 1),
(482, 16, 7, 2, 1),
(483, 1, 8, 2, 1),
(484, 2, 8, 2, 1),
(485, 3, 8, 2, 1),
(486, 4, 8, 2, 1),
(487, 5, 8, 2, 1),
(488, 6, 8, 2, 1),
(489, 7, 8, 2, 1),
(490, 8, 8, 2, 1),
(491, 9, 8, 2, 1),
(492, 10, 8, 2, 1),
(493, 11, 8, 2, 1),
(494, 12, 8, 2, 1),
(495, 13, 8, 2, 1),
(496, 14, 8, 2, 1),
(497, 15, 8, 2, 1),
(498, 16, 8, 2, 1),
(499, 1, 1, 1, 2),
(500, 2, 1, 1, 2),
(501, 3, 1, 1, 2),
(502, 4, 1, 1, 2),
(503, 5, 1, 1, 2),
(504, 6, 1, 1, 2),
(505, 7, 1, 1, 2),
(506, 8, 1, 1, 2),
(507, 1, 2, 1, 2),
(508, 2, 2, 1, 2),
(509, 3, 2, 1, 2),
(510, 4, 2, 1, 2),
(511, 5, 2, 1, 2),
(512, 6, 2, 1, 2),
(513, 7, 2, 1, 2),
(514, 8, 2, 1, 2),
(515, 1, 3, 2, 2),
(516, 2, 3, 2, 2),
(517, 3, 3, 2, 2),
(518, 4, 3, 2, 2),
(519, 5, 3, 2, 2),
(520, 6, 3, 2, 2),
(521, 7, 3, 2, 2),
(522, 8, 3, 2, 2),
(523, 1, 4, 2, 2),
(524, 2, 4, 2, 2),
(525, 3, 4, 2, 2),
(526, 4, 4, 2, 2),
(527, 5, 4, 2, 2),
(528, 6, 4, 2, 2),
(529, 7, 4, 2, 2),
(530, 8, 4, 2, 2),
(531, 1, 5, 2, 2),
(532, 2, 5, 2, 2),
(533, 3, 5, 2, 2),
(534, 4, 5, 2, 2),
(535, 5, 5, 2, 2),
(536, 6, 5, 2, 2),
(537, 7, 5, 2, 2),
(538, 8, 5, 2, 2),
(539, 1, 6, 3, 2),
(540, 2, 6, 3, 2),
(541, 3, 6, 3, 2),
(542, 4, 6, 3, 2),
(543, 5, 6, 3, 2),
(544, 6, 6, 3, 2),
(545, 7, 6, 3, 2),
(546, 8, 6, 3, 2),
(547, 1, 7, 3, 2),
(548, 2, 7, 3, 2),
(549, 3, 7, 3, 2),
(550, 4, 7, 3, 2),
(551, 5, 7, 3, 2),
(552, 6, 7, 3, 2),
(553, 7, 7, 3, 2),
(554, 8, 7, 3, 2),
(555, 1, 8, 3, 2),
(556, 2, 8, 3, 2),
(557, 3, 8, 3, 2),
(558, 4, 8, 3, 2),
(559, 5, 8, 3, 2),
(560, 6, 8, 3, 2),
(561, 7, 8, 3, 2),
(562, 8, 8, 3, 2),
(563, 1, 1, 3, 3),
(564, 2, 1, 3, 3),
(565, 3, 1, 3, 3),
(566, 4, 1, 3, 3),
(567, 5, 1, 3, 3),
(568, 6, 1, 3, 3),
(569, 7, 1, 3, 3),
(570, 8, 1, 3, 3),
(571, 9, 1, 3, 3),
(572, 10, 1, 3, 3),
(573, 11, 1, 3, 3),
(574, 12, 1, 3, 3),
(575, 13, 1, 3, 3),
(576, 14, 1, 3, 3),
(577, 15, 1, 3, 3),
(578, 16, 1, 3, 3),
(579, 17, 1, 3, 3),
(580, 18, 1, 3, 3),
(581, 19, 1, 3, 3),
(582, 20, 1, 3, 3),
(583, 21, 1, 3, 3),
(584, 22, 1, 3, 3),
(585, 23, 1, 3, 3),
(586, 24, 1, 3, 3),
(587, 1, 2, 3, 3),
(588, 2, 2, 3, 3),
(589, 3, 2, 3, 3),
(590, 4, 2, 3, 3),
(591, 5, 2, 3, 3),
(592, 6, 2, 3, 3),
(593, 7, 2, 3, 3),
(594, 8, 2, 3, 3),
(595, 9, 2, 3, 3),
(596, 10, 2, 3, 3),
(597, 11, 2, 3, 3),
(598, 12, 2, 3, 3),
(599, 13, 2, 3, 3),
(600, 14, 2, 3, 3),
(601, 15, 2, 3, 3),
(602, 16, 2, 3, 3),
(603, 17, 2, 3, 3),
(604, 18, 2, 3, 3),
(605, 19, 2, 3, 3),
(606, 20, 2, 3, 3),
(607, 21, 2, 3, 3),
(608, 22, 2, 3, 3),
(609, 23, 2, 3, 3),
(610, 24, 2, 3, 3),
(611, 1, 3, 3, 3),
(612, 2, 3, 3, 3),
(613, 3, 3, 3, 3),
(614, 4, 3, 3, 3),
(615, 5, 3, 3, 3),
(616, 6, 3, 3, 3),
(617, 7, 3, 3, 3),
(618, 8, 3, 3, 3),
(619, 9, 3, 3, 3),
(620, 10, 3, 3, 3),
(621, 11, 3, 3, 3),
(622, 12, 3, 3, 3),
(623, 13, 3, 3, 3),
(624, 14, 3, 3, 3),
(625, 15, 3, 3, 3),
(626, 16, 3, 3, 3),
(627, 17, 3, 3, 3),
(628, 18, 3, 3, 3),
(629, 19, 3, 3, 3),
(630, 20, 3, 3, 3),
(631, 21, 3, 3, 3),
(632, 22, 3, 3, 3),
(633, 23, 3, 3, 3),
(634, 24, 3, 3, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sale`
--

CREATE TABLE `sale` (
  `IdS` int(11) NOT NULL,
  `SalaS` int(11) NOT NULL,
  `SektorS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `sale`
--

INSERT INTO `sale` (`IdS`, `SalaS`, `SektorS`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sektory`
--

CREATE TABLE `sektory` (
  `IdS` int(11) NOT NULL,
  `NazwaS` varchar(20) NOT NULL,
  `MKlV` int(11) NOT NULL,
  `MKl1` int(11) NOT NULL,
  `MKl2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `sektory`
--

INSERT INTO `sektory` (`IdS`, `NazwaS`, `MKlV`, `MKl1`, `MKl2`) VALUES
(1, 'Sala główna', 72, 72, 0),
(2, 'Balkon I', 0, 0, 64),
(3, 'Balkon II', 12, 12, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `spektakl`
--

CREATE TABLE `spektakl` (
  `Kod` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `spektakl`
--

INSERT INTO `spektakl` (`Kod`, `Nazwa`, `Cena`) VALUES
(1, 'Upiór w operze', 80),
(2, 'Zemsta nietoperza', 60),
(3, 'Anna Karenina', 40),
(4, 'Pchła szachrajka', 30),
(5, 'Poławiacze pereł', 120);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `haslo` varchar(30) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `uprawnienia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `haslo`, `imie`, `nazwisko`, `uprawnienia`) VALUES
(1, 'ka', 'sle', 'Kacper', 'Śledź', 'Kasjer'),
(3, 'jan', 'kow', 'Jan', 'Kowalski', 'Kasjer');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `bilety`
--
ALTER TABLE `bilety`
  ADD PRIMARY KEY (`IdB`);

--
-- Indexes for table `data_wystawienia`
--
ALTER TABLE `data_wystawienia`
  ADD PRIMARY KEY (`IdDW`);

--
-- Indexes for table `miejsca`
--
ALTER TABLE `miejsca`
  ADD PRIMARY KEY (`IdM`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`IdS`);

--
-- Indexes for table `sektory`
--
ALTER TABLE `sektory`
  ADD PRIMARY KEY (`IdS`);

--
-- Indexes for table `spektakl`
--
ALTER TABLE `spektakl`
  ADD PRIMARY KEY (`Kod`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `bilety`
--
ALTER TABLE `bilety`
  MODIFY `IdB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT dla tabeli `data_wystawienia`
--
ALTER TABLE `data_wystawienia`
  MODIFY `IdDW` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `miejsca`
--
ALTER TABLE `miejsca`
  MODIFY `IdM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT dla tabeli `sale`
--
ALTER TABLE `sale`
  MODIFY `IdS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sektory`
--
ALTER TABLE `sektory`
  MODIFY `IdS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `spektakl`
--
ALTER TABLE `spektakl`
  MODIFY `Kod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
