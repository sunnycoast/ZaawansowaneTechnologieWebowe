-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Mar 2018, 00:04
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
-- Baza danych: `projekt_restauracja`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `ID_Kat` int(11) NOT NULL,
  `NazwaKat` varchar(255) DEFAULT NULL,
  `KolorKat` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`ID_Kat`, `NazwaKat`, `KolorKat`) VALUES
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
-- Struktura tabeli dla tabeli `obsluga`
--

CREATE TABLE `obsluga` (
  `ID_O` int(11) NOT NULL,
  `Zamowienie` int(11) DEFAULT NULL,
  `Pracownik` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `obsluga`
--

INSERT INTO `obsluga` (`ID_O`, `Zamowienie`, `Pracownik`) VALUES
(2, 2, 5),
(3, 2, 4),
(4, 4, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycjamenu`
--

CREATE TABLE `pozycjamenu` (
  `ID_PM` int(11) NOT NULL,
  `Produkt` int(11) DEFAULT NULL,
  `CenaBrutto` float NOT NULL DEFAULT '0',
  `Vat` int(11) NOT NULL,
  `DataWprow` datetime DEFAULT NULL,
  `DataArch` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pozycjamenu`
--

INSERT INTO `pozycjamenu` (`ID_PM`, `Produkt`, `CenaBrutto`, `Vat`, `DataWprow`, `DataArch`) VALUES
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
-- Struktura tabeli dla tabeli `pozycjazam`
--

CREATE TABLE `pozycjazam` (
  `Zamowienie` int(11) NOT NULL,
  `PozycjaMenu` int(11) NOT NULL,
  `LiczbaPM` int(11) DEFAULT '0',
  `StanRealiz` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pozycjazam`
--

INSERT INTO `pozycjazam` (`Zamowienie`, `PozycjaMenu`, `LiczbaPM`, `StanRealiz`) VALUES
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
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `ID_Prac` int(11) NOT NULL,
  `Nazwisko` varchar(255) DEFAULT NULL,
  `Imie` varchar(255) DEFAULT NULL,
  `PIN` char(4) DEFAULT NULL,
  `Rola` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`ID_Prac`, `Nazwisko`, `Imie`, `PIN`, `Rola`) VALUES
(3, 'Kowalski', 'Jan', '4607', 1),
(4, 'Smutek', 'Jerzy', '2802', 2),
(5, 'Wiśniewska', 'Katarzyna', '9136', 3),
(6, 'Nowak', 'Anna', '1834', 4),
(7, 'Kowalik', 'Kuba', '9760', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `ID_Prod` int(11) NOT NULL,
  `NazwaProd` varchar(255) DEFAULT NULL,
  `Kategoria` int(11) DEFAULT NULL,
  `SposPrzyg` varchar(255) DEFAULT NULL,
  `Opis` varchar(255) DEFAULT NULL,
  `KolorProd` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`ID_Prod`, `NazwaProd`, `Kategoria`, `SposPrzyg`, `Opis`, `KolorProd`) VALUES
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
-- Struktura tabeli dla tabeli `role`
--

CREATE TABLE `role` (
  `ID_R` int(11) NOT NULL,
  `NazwaR` varchar(255) DEFAULT NULL,
  `OpisR` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `role`
--

INSERT INTO `role` (`ID_R`, `NazwaR`, `OpisR`) VALUES
(1, 'Menager', NULL),
(2, 'Kucharz', NULL),
(3, 'Barman', NULL),
(4, 'Kelner', 'Podgląd aktualnych zamówień'),
(5, 'Kierownik zmiany', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sektory`
--

CREATE TABLE `sektory` (
  `ID_Sk` int(11) NOT NULL,
  `NazwaSk` varchar(255) DEFAULT NULL,
  `Aktywny` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `sektory`
--

INSERT INTO `sektory` (`ID_Sk`, `NazwaSk`, `Aktywny`) VALUES
(1, 'patio', 1),
(2, 'piwnica', 0),
(3, 'sala główna', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stoliki`
--

CREATE TABLE `stoliki` (
  `ID_Stolika` int(11) NOT NULL,
  `NazwaSt` varchar(255) DEFAULT NULL,
  `LiczbaMiejsc` int(11) NOT NULL,
  `Sektor` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `stoliki`
--

INSERT INTO `stoliki` (`ID_Stolika`, `NazwaSt`, `LiczbaMiejsc`, `Sektor`) VALUES
(1, 'pat6', 6, 1),
(2, 'piw6', 6, 2),
(3, 'pat8', 8, 1),
(4, 'sgl3', 3, 3),
(5, 'sgl12', 12, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `st_klienci`
--

CREATE TABLE `st_klienci` (
  `ID_K` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Haslo` varchar(20) NOT NULL,
  `Imie` varchar(30) NOT NULL,
  `Nazwisko` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `st_klienci`
--

INSERT INTO `st_klienci` (`ID_K`, `Email`, `Haslo`, `Imie`, `Nazwisko`) VALUES
(1, 'janek.k@gmial.com', '1234', 'Janek', 'Kubik'),
(2, 'robkow@wp.pl', 'robi', 'Robert', 'Kowalski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vat`
--

CREATE TABLE `vat` (
  `ID_Vat` int(11) NOT NULL,
  `StawkaVAT` float NOT NULL,
  `Dotyczy` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `vat`
--

INSERT INTO `vat` (`ID_Vat`, `StawkaVAT`, `Dotyczy`) VALUES
(1, 0.23, NULL),
(2, 0.05, NULL),
(3, 0.08, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `ID_Z` int(11) NOT NULL,
  `Stolik` int(11) DEFAULT NULL,
  `UwagiP` varchar(255) DEFAULT NULL,
  `UwagiG` varchar(255) DEFAULT NULL,
  `DataOtw` datetime DEFAULT NULL,
  `DataZamk` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`ID_Z`, `Stolik`, `UwagiP`, `UwagiG`, `DataOtw`, `DataZamk`) VALUES
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
(35, 4, NULL, NULL, '2018-02-23 20:21:52', NULL),
(36, 4, NULL, NULL, '2018-03-07 23:03:45', NULL),
(37, 4, NULL, NULL, '2018-03-07 23:19:21', NULL),
(38, 4, NULL, NULL, '2018-03-07 23:24:46', NULL),
(39, 4, NULL, NULL, '2018-03-08 12:02:36', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`ID_Kat`);

--
-- Indexes for table `obsluga`
--
ALTER TABLE `obsluga`
  ADD PRIMARY KEY (`ID_O`);

--
-- Indexes for table `pozycjamenu`
--
ALTER TABLE `pozycjamenu`
  ADD PRIMARY KEY (`ID_PM`);

--
-- Indexes for table `pozycjazam`
--
ALTER TABLE `pozycjazam`
  ADD PRIMARY KEY (`Zamowienie`,`PozycjaMenu`);

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`ID_Prac`),
  ADD UNIQUE KEY `Haslo` (`PIN`);

--
-- Indexes for table `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`ID_Prod`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID_R`);

--
-- Indexes for table `sektory`
--
ALTER TABLE `sektory`
  ADD PRIMARY KEY (`ID_Sk`);

--
-- Indexes for table `stoliki`
--
ALTER TABLE `stoliki`
  ADD PRIMARY KEY (`ID_Stolika`),
  ADD KEY `ID_Stolika` (`ID_Stolika`);

--
-- Indexes for table `st_klienci`
--
ALTER TABLE `st_klienci`
  ADD PRIMARY KEY (`ID_K`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `vat`
--
ALTER TABLE `vat`
  ADD PRIMARY KEY (`ID_Vat`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`ID_Z`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `obsluga`
--
ALTER TABLE `obsluga`
  MODIFY `ID_O` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `ID_Prac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `role`
--
ALTER TABLE `role`
  MODIFY `ID_R` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `st_klienci`
--
ALTER TABLE `st_klienci`
  MODIFY `ID_K` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `ID_Z` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
