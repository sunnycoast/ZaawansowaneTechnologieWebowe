-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Mar 2018, 21:28
-- Wersja serwera: 10.1.30-MariaDB
-- Wersja PHP: 7.2.2

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
CREATE DATABASE IF NOT EXISTS `projekt_restauracja` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `projekt_restauracja`;
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `IdKategorii` int(11) NOT NULL,
  `NazwaKategorii` varchar(32) DEFAULT NULL,
  `KolorKategorii` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`IdKategorii`, `NazwaKategorii`, `KolorKategorii`) VALUES
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
  `IdObslugi` int(11) NOT NULL,
  `IdZamowienia` int(11) DEFAULT NULL,
  `IdPracownika` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `obsluga`
--

INSERT INTO `obsluga` (`IdObslugi`, `IdZamowienia`, `IdPracownika`) VALUES
(2, 2, 5),
(3, 2, 4),
(4, 4, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `IdPracownika` int(11) NOT NULL,
  `Nazwisko` varchar(32) DEFAULT NULL,
  `Imie` varchar(32) DEFAULT NULL,
  `PIN` char(4) DEFAULT NULL,
  `IdRoli` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`IdPracownika`, `Nazwisko`, `Imie`, `PIN`, `IdRoli`) VALUES
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
  `IdProduktu` int(11) NOT NULL,
  `NazwaProduktu` varchar(64) DEFAULT NULL,
  `Przepis` varchar(255) DEFAULT NULL,
  `Opis` varchar(255) DEFAULT NULL,
  `IdKategorii` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`IdProduktu`, `NazwaProduktu`, `Przepis`, `Opis`, `IdKategorii`) VALUES
(1, 'CocaCola', NULL, 'Napoj CocaCola, 500ml.', 1),
(2, 'Spaghetti Bolognese', 'daasdsad', 'Makaron typu spaghetti, sos bolognese, czosnek, zioła, parmezan.', 7),
(3, 'Piwo', 'Warka, Lech, Tyskie', 'Nalewane prosto z beczki do zmrozonego kufla (0,5L).', 5),
(4, 'Schabowy', NULL, 'Kotlet wieprzowy z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 14),
(5, 'Zapiekanka', NULL, 'Zapiekana bulka z serem i pieczarkami, 250g.', 18),
(6, 'Sok', NULL, 'Podany w wysokiej szkance, do wyboru wiele smakow 300ml.', 1),
(7, 'Tymbark', NULL, 'Napoj Tymbark, smak do wyboru, 250ml.', 1),
(8, 'Espresso', 'ekspres', 'Oryginalna wloska kawa, mocna, wyrazista.', 2),
(9, 'Latte', 'ekspres', 'Kawa latte, esspresso z duza iloscia mleka i warstwa spienionego mleka.', 2),
(10, 'Mrożona', NULL, 'Kawa z mlekiem i kostkami lodu.', 2),
(11, 'Mojito', '40 ml białego rumu\r\n20 ml syropu cukrowego lub cukier biały / brązowy cukier trzcinowy\r\n2 ćwiartki limonki\r\n6 liści mięty\r\n40 ml wody gazowanej\r\nkruszony lód', 'Koktajl alkoholowy, pochodzenia kubanskiego na bazie bialego rumu o orzezwiajacym smaku.', 3),
(12, 'Martini', '90 ml ginu\r\n30 ml wytrawnego wermutu\r\nlód', 'Drink zrobiony z ginu i niewielkiej ilosci wytrawnego wermutu.', 3),
(13, 'Pina colada', '30 ml białego rumu\r\n30 ml słodkiej śmietanki kokosowej\r\n90 ml soku ananasowego\r\nkruszony lód.', 'Slodki karaibski koktajl alkoholowy, podawany jest z lodem i plastrem cytryny.', 3),
(14, 'Luxusowa', NULL, 'Shot Finlandii w kieliszku 40 ml.', 4),
(15, 'Jack Daniel\'s', NULL, 'Shot Jacka Daniel\'sa w kieliszku 40 ml.', 4),
(16, 'Finlandia', NULL, 'Shot Finlandii w kieliszku 40 ml.', 4),
(17, 'Wino Olaria Tinto', NULL, 'Wytrawne, krystalicznie czyste wino o kolorze granatu, aromacie dojrzalych owocow i lagodnym posmaku.', 5),
(18, 'Nalewki', NULL, 'Do wyboru malinowa, truskawkowa i pigwowa.', 5),
(19, 'Absynt', NULL, 'Oslawiony trunek artystow, 40ml.', 6),
(20, 'Bacardi 151', NULL, 'Bardzo mocny alkohol 75,5%, podany w kieliszku 30ml.', 6),
(21, 'Devil Springs Vodka (płonąca)', NULL, 'Drink jest podawany w kieliszku 40ml, po podaniu jest podpalany przez obsługe.', 6),
(22, 'Spaghetti z klopsikami', NULL, 'Makaron spaghetti z dodatkiem klopsikow miesnych.', 7),
(23, 'Makaron z pesto', NULL, 'Makaron spaghetti z dodatkiem zielonego pesto, bazylii i oregano.', 7),
(24, 'Cezar', NULL, 'Salata lodowa, smazona piers z kurczaka, pomidor, ogorek, cebula, sos winegret.', 8),
(25, 'Ryżowa z czosniekm', NULL, 'Ryz, czosnek, majonez.', 8),
(26, 'Warzywna', NULL, 'Ziemniaki, ogorek, kukurydza, papryka, majonez.', 8),
(27, 'Margharitta', NULL, 'Sos, ser, oregano.', 9),
(28, 'Peperone', NULL, 'Sos, ser, salami, papryczki peperone.', 9),
(29, 'Hawajska', NULL, 'Sos, ser, ananas.', 9),
(30, 'Czarna LIPTON', NULL, 'Oryginalna herbata LIPTON, 250ml.', 10),
(31, 'Zielona KWIAT LOTOSU', NULL, 'Herbata zielona, zaparzana w optymalnej temperaturze z dodatkiem kwiatow lotosu, 250ml.', 10),
(32, 'Owocowa LIPTON', NULL, 'Oryginalna herbata owocowa LIPTON, smak do wyboru 250ml.', 10),
(33, 'Rosół', NULL, 'Tradycyjny wywar z kury.', 11),
(34, 'Pomidorowa', NULL, 'Zupa z pomidorami.', 11),
(35, 'Ogórkowa', NULL, 'Zupa z ogorkami.', 11),
(36, 'Szarlotka', NULL, 'Tradycyjne ciasto z jabkiem, 150g.', 12),
(37, 'Firmowe', NULL, 'Specjalnosc restauracji, 125g.', 12),
(38, 'Lody w pucharze', NULL, 'Do wyboru smaki galek, podane w pucharku, 200g.', 12),
(39, 'Chleb czosnkowy', NULL, 'Pieczywo o smaku czosnkowym, 4 kromki.', 13),
(40, 'Koreczki', NULL, 'Koreczki z mięsem i warzywami, 8 sztuk.', 13),
(41, 'Kasztany jadalne', NULL, 'Specjal z Francji, 200g.', 13),
(42, 'Pierś z kurczaka', NULL, 'Kotlet drobiowy z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 14),
(43, 'Karkówka', NULL, 'Kotlet z karkowki z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 14),
(44, 'Dorsz (filet)', NULL, 'Filet rybny z dorsza, pokropiony sokiem z cytryny, 200g.', 15),
(45, 'Sum', NULL, 'Ryba sum, smazona, pokropiona sokiem z cytryny, 100g.', 15),
(46, 'Lin (filet)', NULL, 'Filet rybny z lina, pokropiony sokiem z cytryny, 200g.', 15),
(47, 'Pieczarki faszerowane', NULL, 'Pieczarki z nadzieniem, 150g.', 16),
(48, 'Frytki', NULL, 'Smazone na glebokim oleju, 200g.', 16),
(49, 'Kopytka', NULL, 'Tradycyjne polskie danie, 200g.', 16),
(50, 'Zupa kalafiorowa', NULL, 'Tradycyjna zupa kalafiorowa, z ziemniakami i marchewka.', 17),
(51, 'Karkówka wołowa, ziemniaki, surówka jasna', NULL, 'Doskonale przyrzadzona wołowina (200g), , gotowane ziemniaki i surowka z kapusty.', 17),
(52, 'Nuggetsy', NULL, 'Bezkostne mieso drobiowe, 150g.', 18),
(53, 'Risotto Pollo', NULL, 'Tradycyjne wloskie risotto z pikantnym kurczakiem i groszkiem, posypane pietruszka i serem Grana Padano.', 19),
(54, 'Risotto Con Tallegio', NULL, 'Tradycyjne wloskie risotto z serem Taleggio, grzybami lesnymi i pasta truflowa, posypane natka pietruszki i serem Grana Padano.', 19),
(55, 'Risotto Parma E Pistacchio', NULL, 'Tradycyjne wloskie risotto z pesto pistacjowym, szynka prosciutto, marynowana gruszka, serem Gorgonzola i kruszonymi pistacjami.', 19),
(58, 'Pieczona kaczka z ziemniakami w mundurkach', 'piekarnik i ziemniaki', 'Pieczona kaczka, dużo ziemniakow upieczonych w mundurkach.', 17),
(59, 'Pepsi', NULL, 'Napoj Pepsi, 500ml.', 1),
(60, 'Mirinda', NULL, 'Napoj Mirinda, 500ml.', 1),
(61, 'Nestea', NULL, 'Napoj Nestea, 500ml.', 1),
(62, '7up', NULL, 'Napoj 7up, 500ml.', 1),
(63, 'Sprite', NULL, 'Napoj Sprite, 500ml.', 1),
(64, 'Woda mineralna', NULL, 'Podana w wysokiej szkance, marka do wyboru 300ml.', 1),
(65, 'Sok ze świeżych cytrusów', NULL, 'Wyciskany na piejscu, pomarancza lub grapefruit, 250ml.', 1),
(66, 'Nektar bananowy', NULL, 'Podany w wysokiej szkance, 300ml.', 1),
(67, 'Americano', NULL, 'Kawa americano, esspresso z duza iloscia wody.', 2),
(68, 'White', NULL, 'Kawa white, esspresso z duza iloscia mleka.', 2),
(69, 'Cappuccino', NULL, 'Kawa cappuccino, esspresso z mlekiem i warstwa spienionego na kremowa konsystencje mleka.', 2),
(70, 'Mrożona z lodami waniliowymi', NULL, 'Kawa z kostkami lodu, dodatkowo sa lody waniliowe.', 2),
(71, 'Long Island Ice Tea', 'Żubrówka Biała 20 ml, Bombay Sapphire 20 ml, Rum Bacardi Carta Blanca 20 ml, Tequila Sierra Silver 20 ml, Triple Sec 20 ml, sok z cytryny, Pepsi', 'Koktajl alkoholowy przygotowywany z wodki, ginu, tequili i rumu z dodatkiem soku cytrynowego, zmieszanych z cola.', 3),
(72, 'Blue Lagoon', 'Żubrówka Biała 40 ml, Bols Blue 20 ml, sok z cytryny, sok jabłkowy, cytryna', ' Koktajl alkoholowy łaczacy wodke, blue curacao i lemoniade.', 3),
(73, 'Sphinx', 'Żubrówka Biała 40 ml, sok jabłkowy, sok pomarańczowy, sok z cytryny, syrop grenadyna, pomarańcza', 'Koktajl alkoholowy łaczacy wodke, sok jablkowy, cytrynowy, pomaranczowy i syrop z grenadiny.', 3),
(74, 'Green Line', 'Żołądkowa Gorzka 40 ml, sok jabłkowy, sok z cytryny, świeży ogórek, 7up', 'Koktajl alkoholowy łaczacy wodke, sok cytrynowy, ananasowy, sprite i plastry ogorka.', 3),
(75, 'Cuba Libre', 'Rum Bacardi Carta Oro 40 ml, Pepsi, limonka', 'Koktajl alkoholowy łaczacy rum, cole i limonke.', 3),
(76, 'Sex on the beach', 'Żubrówka Biała 40 ml, Bols Peach 20 ml, sok żurawinowy, sok pomarańczowy, pomarańcza', 'Koktajl alkoholowy przygotowywany z wodki, sznapsu brzoskwiniowego oraz wiecej niz jednego soku owocowego.', 3),
(78, 'Wyborowa', NULL, 'Shot Belvedera w kieliszku 40 ml.', 4),
(79, 'Belvedere', NULL, 'Shot Finlandii w kieliszku 40 ml.', 4),
(80, 'Grey Goose', NULL, 'Shot Zoładkowej Gorzkiej w kieliszku 40 ml.', 4),
(81, 'Żołądkowa Gorzka', NULL, 'Shot Finlandii w kieliszku 40 ml.', 4),
(82, 'Żubrówka Biała', NULL, 'Shot Zubrowka Bialej w kieliszku 40 ml.', 4),
(83, 'Żubrówka Bison Grass', NULL, 'Shot Zubrowki Bison Grass w kieliszku 40 ml.', 4),
(84, 'Żubrówka Kora Dębu', NULL, 'Shot Zubrowki Kora Debu w kieliszku 40 ml.', 4),
(85, 'Dewar’s White Label', NULL, 'Shot Dewar’sa w kieliszku 40 ml.', 4),
(86, 'Ballantine’s Finest', NULL, 'Shot Ballantine’sa w kieliszku 40 ml.', 4),
(87, 'Johnnie Walker Red', NULL, 'Shot Johnnie Walkera Red w kieliszku 40 ml.', 4),
(88, 'Jack Daniel’s Single Barrel', NULL, 'Shot Jacka Daniel’sa Single Barrel w kieliszku 40 ml.', 4),
(89, 'Glenfiddich 12YO', NULL, 'Shot Glenfiddicha w kieliszku 40 ml.', 4),
(90, 'Metaxa *****', NULL, 'Shot Metaxa w kieliszku 40 ml.', 4),
(91, 'Hennessy VS', NULL, 'Shot Luxusowej w kieliszku 40 ml.', 4),
(92, 'Jägermeister', NULL, 'Shot Jagermeistera w kieliszku 40 ml.', 4),
(93, 'Las Montañas Cabernet Sauvignon', NULL, 'Wytrawne wino o dobrze zbudowanym bukiecie i głebokim, ciemnym kolorze oraz aromacie i smaku czarnej porzeczki.', 5),
(94, 'Chianti Classico Villa Campobello', NULL, 'Wytrawne wino o zywym rubinowym kolorze, owocowym zapachu z nuta fiolkow, wisni i dzikich czerwonych jagod.', 5),
(95, 'Monteiro Tempranillo', NULL, 'Wytrawne, głeboko czerwone wino, powstajace z najwazniejszej odmiany winorosli w Hiszpanii, charakteryzujące się delikatnym ziołowym aromatem.', 5),
(96, 'Castillo de Albai Crianza Rioja', NULL, 'Wytrawne wino o purpurowym kolorze, w zapachu wyczuwalne aromaty dojrzalych czerwonych owocow: malin i sliwek.', 5),
(97, 'Primitivo Marchesi del Salento', NULL, 'Wytrawne wino o głebokim, ciemnym kolorze, z silnie wyczuwalnymi nutami przypraw i zurawiny.', 5),
(98, 'Mossiere Vino Nobile di Montepulciano', NULL, 'Wytrawne, jedno z najwaaniejszych toskanskich win czerwonych, produkowane wokoł starozytnego miasta Montepulciano.', 5),
(99, 'Sunset Rum', NULL, 'Jeden z najsolidniejszych rumow na świecie, wyjatkowy smak i moc, 40ml.', 6),
(100, 'Good ol’ Sailor Vodka', NULL, 'Bardzo mocna wodka ze Szwecji, 40ml.', 6),
(101, 'Balkan 176', NULL, 'Mocna, bezbarwna, bez smaku i zapachu - prosto z Balkan, 40ml.', 6),
(102, 'Pincer Vodka', NULL, 'Szkocka, bardzo mocno wodka, 40ml.', 6),
(103, 'Bruichladdich X4+1 Quadrupled whisky', NULL, 'Najmocniejsza na swiecie whisky, 40ml.', 6),
(104, 'Everclear', NULL, 'Przez wielu uwazany za najmocniejszy alkohol, jest przezroczysty, bez zapachu i smaku, 40ml.', 6),
(105, 'Spirytus rektyfikowany', NULL, 'Polskiej produkcji spirytus, tylko dla najodwazniejszych, 40ml.', 6),
(106, 'Spaghetti Con Piselli', NULL, 'Makaron spaghetti w sosie pomidorowo-miesnym z groszkiem.', 7),
(107, 'Spaghetti Diablo', NULL, 'Makaron spaghetti w ostrym sosie pomidorowo-miesnym z kabanosem, papryka jalapeno i dodatkiem bazylii.', 7),
(108, 'Spaghetti Zapiekane', NULL, 'Makaron spaghetti w sosie pomidorowo-miesnym z dodatkiem bazylii, zapiekane z serem i smietana.', 7),
(109, 'Spaghetti Special', NULL, 'Makaron spaghetti w sosie pomidorowo-miesnym z kabanosem, cebula i czosnkiem.', 7),
(110, 'Penne Cztery sery', NULL, 'Makaron penne w sosie z 4 rodzajow sera z dodatkiem smietany i czosnku.', 7),
(111, 'Penne Broccoli', NULL, 'Makaron penne z brokulami w sosie smietanowym.', 7),
(112, 'Penne Grzybowe', NULL, 'Makaron penne w sosie smietanowo-grzybowym.', 7),
(113, 'Penne Carbonara', NULL, 'Makaron penne w sosie smietanowym z dodatkiem boczku i cebuli.', 7),
(114, 'Grecka', NULL, 'Salata lodowa, pomidor, ogorek, cebula, ser feta, oliwki, sos winegret.', 8),
(115, 'Petromea', NULL, 'Salata lodowa, pomidor, ogorek, cebula, papryka, mieso drobiowe, sos czosnkowy.', 8),
(116, 'Turecka', NULL, 'Salata lodowa, pomidor, ogorek, cebula, kebab, sos czosnkowy.', 8),
(117, 'Luksor', NULL, 'Salata lodowa, pomidor, ogorek, cebula, tunczyk, grzanki, sos winegret.', 8),
(118, 'Paryska', NULL, 'Salata lodowa, cebula, pomidor, ogorek, grillowany filet z kurczaka, ser lazur, sos winegret.', 8),
(119, 'Francuska', NULL, 'Salata lodowa, ananas, kukurydza, grillowany filet z kurczaka, ser lazur, sos winegret.', 8),
(120, 'Caprese', NULL, 'Salata lodowa, pomidor, biala mozzarella, swieza bazylia, oliwa z oliwek.', 8),
(121, 'Parmeńska', NULL, 'Sos, ser, szynka dojrzewajaca, pomidorki koktajlowe, biala mozzarella, bazylia, rukola, pieprz mlotkowany, pizza na cienkim wloskim ciescie.', 9),
(122, 'Włoska', NULL, 'Sos, ser, salami, pomidorki koktajlowe-plasterki, biala mozzarella, cebula, oliwki, pieprz mlotkowany, pizza na cienkim włoskim ciescie.', 9),
(123, 'Funghi', NULL, 'Sos, ser, pieczarki.', 9),
(124, 'Spinaci', NULL, 'Sos, ser, szpinak.', 9),
(125, 'Vesuvio', NULL, 'Sos, ser, szynka.', 9),
(126, 'Salami', NULL, 'Sos, ser, salami.', 9),
(127, 'Genua', NULL, 'Sos, ser, tunczyk, salami, cebula, kukurydza.', 9),
(128, 'Wegetariańska', NULL, 'Sos, ser, papryka, pieczarki, kukurydza, cebula, oliwki, kapary.', 9),
(129, 'Boczolini', NULL, 'Sos, ser, grillowany boczek, cebula, papryka.', 9),
(130, 'Cztery pory roku', NULL, 'Sos, ser, szynka, pieczarki, salami, tunczyk.', 9),
(131, 'Carbonara', NULL, 'Sos smietanowy, ser, boczek, cebula.', 9),
(132, 'Kebab', NULL, 'Sos, ser, kebab, cebula, sos czosnkowy.', 9),
(133, 'Rzeźnicka', NULL, 'Sos, ser, szynka, salami, kabanos, baleron.', 9),
(134, 'Cztery sery', NULL, 'Sos, ser, cztery gatunki sera.', 9),
(135, 'Czarna DILMAH', NULL, 'Oryginalna herbata DILMAH, 250ml.', 10),
(136, 'Czarna EARL GREY', NULL, 'Oryginalna herbata EARL GREY, 250ml.', 10),
(137, 'Zielona JAPOŃSKA ŚWIĄTYNIA', NULL, 'Herbata zielona, zaparzana w optymalnej temperaturze o wyjatkowym smaku, 250ml.', 10),
(138, 'Zielona BRZOSKWINIOWY SAD', NULL, 'Herbata zielona z dodatkiem aromatu owocowego, zaparzana w optymalnej temperaturze, 250ml.', 10),
(139, 'Zielona JAŚMINOWA', NULL, 'Herbata zielona, zaparzana w optymalnej temperaturze z dodatkiem kwiatow jasminu, 250ml.', 10),
(140, 'Zielona NATURALNA', NULL, 'Herbata zielona, zaparzana w optymalnej temperaturze, smak zielonej herbaty bez dodatkow, 250ml.', 10),
(141, 'Owocowa WIŚNIA Z BANANEM', NULL, 'Herbata owocowa, wyjatkowe polaczenie smaku wisni i banana, 250ml.', 10),
(142, 'Barszcz czysty', NULL, 'Barszcz czerowny.', 11),
(143, 'Barszcz z pasztecikiem', NULL, 'Barszcz czerowny z dodatkiem pasztecikow.', 11),
(144, 'Gulaszowa', NULL, 'Zupa gulaszowa z miesem wolowym.', 11),
(145, 'Żurek', NULL, 'Tradycyjny zurek z jajkiem i biala kielbasa.', 11),
(146, 'Krem grzybowy', NULL, 'Krem zrobiony z borowikow.', 11),
(147, 'Sernik z brzoskwiniami', NULL, 'Znane wszystkim ciasto z dodatkiem brzoskwin, 200g.', 12),
(148, 'Creme brulee', NULL, 'Zapiekany deser, przygotowywany ze smietanki, zoltek, cukru, uwienczony warstwa skarmelizowanego cukru, 100g.', 12),
(149, 'Szarlotka z lodami', NULL, 'Znane ciasto z doadkiem lodow, 220g.', 12),
(150, 'Shake waniliowy', NULL, 'Lody waniliowe zmieszane z mlekiem, 400ml.', 12),
(151, 'Gałka lodów GRYCAN', NULL, 'Oryginalne lody GRYCAN, w wielu smakach 45g.', 12),
(152, 'Mus czekoladowy', NULL, 'Gorzka czekolada przerobiona w mus, 60g.', 12),
(153, 'Deser BAILEYS', NULL, 'Kawoy deser z dodatkiem znanej whiskey, 90g.', 12),
(154, 'Krążki cebulowe', NULL, 'Smazone krazki cebulowe, 200g.', 13),
(155, 'Falafel', NULL, 'Smazone kulki z przyprawionej ciecierzycy, 200g.', 13),
(156, 'Kalmary panierowane', NULL, 'Smazone kalmary, 170g, dodatkowo sos.', 13),
(157, 'Jalapenos', NULL, 'Bardzo ostre papryczki.', 13),
(158, 'Śledź marynowany', NULL, 'Sledz marynowany w soku z kiszonych burakow, 250g.', 13),
(159, 'Peper stek', NULL, 'Wołowina przygotowana z duza iloscia pieprzu, z dodatkiem frytek, 510g.', 14),
(160, 'Stek argentyński', NULL, 'Wołowina przygotowana zgodnie z receptura argentyjska, z dodatkiem frytek, 520g.', 14),
(161, 'Stek urugwajski', NULL, 'Wołowina przygotowana wedlug urugwanskiej receptury dodatkiem frytek, 510g.', 14),
(162, 'Stek amerykański', NULL, 'Wołowina przygotowana zgodnie z receptura amerykanska, z dodatkiem frytek, 510g.', 14),
(163, 'Polędwica', NULL, 'Wołowina przygotowana w tradycyjny sposob, z dodatkiem frytek, 520g.', 14),
(164, 'Kebeb drobiowy', NULL, 'Mieso drobiowe upieczone na pionowym roznie, z dodatkiem frytek, warzyw i sosow.', 14),
(165, 'Kebeb wołowy', NULL, 'Mieso wolowe upieczone na pionowym roznie, z dodatkiem frytek, warzyw i sosow.', 14),
(166, 'Gulasz z jelenia', NULL, 'Wyjatkowy gulasz z dziczyzny podany z ziemniakami.', 14),
(167, 'Żeberka wieprzowe', NULL, 'Zeberka wieprzowe z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 14),
(168, 'Sandacz (filet)', NULL, 'Filet rybny z sandacza, pokropiony sokiem z cytryny, 100g.', 15),
(169, 'Okoń (filet)', NULL, 'Filet rybny z okonia, pokropiony sokiem z cytryny, 100g.', 15),
(170, 'Pstrąg (filet)', NULL, 'Filet rybny z pstraga, pokropiony sokiem z cytryny, 100g.', 15),
(171, 'Karp', NULL, 'Ryba karp, smazona, pokropiona sokiem z cytryny, 100g.', 15),
(172, 'Halibut', NULL, 'Ryba halibut, smazona, pokropiona sokiem z cytryny, 100g.', 15),
(173, 'Łosoś (filet)', NULL, 'Filet rybny z lososia, pokropiony sokiem z cytryny, 100g.', 15),
(174, 'Flądra', NULL, 'Ryba fladra, 100g.', 15),
(175, 'Ryba maślana', NULL, 'Ryba maslana, pokropiona sokiem z cytryny, 100g.', 15),
(176, 'Miętus królewski (filet)', NULL, 'Filet rybny z mietusa, pokropiony sokiem z cytryny, 100g.', 15),
(177, 'Ryż curry', NULL, 'Porcja ryzu z dodatkiem przyprawy curry.', 16),
(178, 'Ziemniaki smażone na złoto', NULL, 'Porcja ziemniakow, zasmazanych na zloty kolor, 250g.', 16),
(179, 'Zestaw surówek', NULL, 'Mix trzech surowek.', 16),
(180, 'Buraczki', NULL, 'Buraczki przygotowane wedlug tradycyjnej receptury.', 16),
(181, 'Kapusta kwaszona z boczkiem', NULL, 'Porcja kapusty z dodatkiem boczku.', 16),
(182, 'Warzywa czosnkowe', NULL, 'Mieszanka warzyw z dodatkiem czosnku, o wyrazistym smaku.', 16),
(183, 'Zestaw trzech sosów', NULL, 'Sosy w naczyniach (czosnkowy, koktajlowy, cebulowy-ostry).', 16),
(185, 'Strogonow', NULL, 'Pyszne mieso wolowe z dodatkiem warzyw.', 17),
(186, 'Burger', NULL, 'Burger wolowy z dodatkiem warzyw.', 18),
(187, 'Bekonburger', NULL, 'Burger wolowy z dodatkiem bekonu.', 18),
(188, 'Lazurburger', NULL, 'Burger wolowy z dodatkiem sera Lazur.', 18),
(189, 'Cheeseburger', NULL, 'Burger wolowy z dodatkowa porcja sera.', 18),
(190, 'Kebab w bułce', NULL, 'Mieso upieczone na pionowym roznie, wrzucone w bulke z dodatkiem warzyw i sosow.', 18),
(191, 'Doner w bułce', NULL, 'Baranina upieczona na pionowym roznie, wrzucone w bulke z dodatkiem warzyw i sosow.', 18),
(192, 'Kebab tortilla', NULL, 'Mieso upieczone na pionowym roznie, wrzucone w placek tortilla, z dodatkiem warzyw i sosow.', 18),
(193, 'Doner tortilla', NULL, 'Baranina upieczona na pionowym roznie, wrzucone w placek tortille, z dodatkiem warzyw i sosow.', 18),
(194, 'Bułka wegetariańska', NULL, 'Bulka pelna warzyw z dodatkiem sosow, wegetarianska', 18),
(195, 'Risotto Gamberi', NULL, 'Tradycyjne wloskie risotto z krewetkami tygrysimi, posypane pietruszka i serem Grana Padano.', 19),
(196, 'Risotto Con Gamberi E Asparagi', NULL, 'Tradycyjne wloskie risotto z krewetkami tygrysimi i zielonymi szparagami, posypane serem Grana Padano.', 19);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role`
--

CREATE TABLE `role` (
  `IdRoli` int(11) NOT NULL,
  `NazwaRoli` varchar(32) DEFAULT NULL,
  `OpisRoli` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `role`
--

INSERT INTO `role` (`IdRoli`, `NazwaRoli`, `OpisRoli`) VALUES
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
  `IdSektora` int(11) NOT NULL,
  `NazwaSektora` varchar(32) DEFAULT NULL,
  `Aktywny` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `sektory`
--

INSERT INTO `sektory` (`IdSektora`, `NazwaSektora`, `Aktywny`) VALUES
(1, 'patio', 1),
(2, 'piwnica', 0),
(3, 'sala główna', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stali_klienci`
--

CREATE TABLE `stali_klienci` (
  `IdStalegoKlienta` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Haslo` varchar(20) NOT NULL,
  `Imie` varchar(32) NOT NULL,
  `Nazwisko` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `stali_klienci`
--

INSERT INTO `stali_klienci` (`IdStalegoKlienta`, `Email`, `Haslo`, `Imie`, `Nazwisko`) VALUES
(1, 'janek.k@gmial.com', '1234', 'Janek', 'Kubik'),
(2, 'robkow@wp.pl', 'robi', 'Robert', 'Kowalski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stoliki`
--

CREATE TABLE `stoliki` (
  `IdStolika` int(11) NOT NULL,
  `NazwaStolika` varchar(32) DEFAULT NULL,
  `KodStolika` varchar(8) NOT NULL,
  `LiczbaMiejsc` int(11) NOT NULL,
  `IdSektora` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `stoliki`
--

INSERT INTO `stoliki` (`IdStolika`, `NazwaStolika`, `KodStolika`, `LiczbaMiejsc`, `IdSektora`) VALUES
(1, 'Patio 6', 'pt6', 6, 1),
(2, 'Piwnica 6', 'pw6', 6, 2),
(3, 'Patio 8', 'pt8', 8, 1),
(4, 'Główna 3', 'gl3', 3, 3),
(5, 'Główna 12', 'gl13', 12, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vat`
--

CREATE TABLE `vat` (
  `IdVAT` int(11) NOT NULL,
  `StawkaVAT` int(6) NOT NULL,
  `Dotyczy` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `vat`
--

INSERT INTO `vat` (`IdVAT`, `StawkaVAT`, `Dotyczy`) VALUES
(1, 7, NULL),
(2, 8, NULL),
(3, 23, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `IdZamowienia` int(11) NOT NULL,
  `UwagiPracownika` varchar(255) DEFAULT NULL,
  `UwagiGoscia` varchar(255) DEFAULT NULL,
  `DataOtwarcia` datetime DEFAULT NULL,
  `DataZamkniecia` datetime DEFAULT NULL,
  `IdStolika` int(11) DEFAULT NULL,
  `IdStegoKlienta` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`IdZamowienia`, `UwagiPracownika`, `UwagiGoscia`, `DataOtwarcia`, `DataZamkniecia`, `IdStolika`, `IdStegoKlienta`) VALUES
(2, NULL, NULL, NULL, NULL, 3, 0),
(3, NULL, NULL, NULL, NULL, 1, 0),
(4, NULL, NULL, NULL, NULL, 2, 0),
(5, NULL, NULL, '2018-01-15 23:36:23', NULL, 1, 0),
(6, NULL, NULL, '2018-01-16 12:16:09', NULL, 1, 0),
(7, NULL, NULL, '2018-01-16 09:51:03', NULL, 1, 0),
(8, NULL, NULL, '2018-01-16 10:51:35', NULL, 1, 0),
(9, NULL, NULL, '2018-01-16 10:54:44', NULL, 1, 0),
(10, NULL, NULL, '2018-01-16 10:55:28', NULL, 1, 0),
(11, NULL, NULL, '2018-01-16 10:55:38', NULL, 1, 0),
(12, NULL, NULL, '2018-01-16 11:09:27', NULL, 4, 0),
(13, NULL, NULL, '2018-01-16 13:30:23', NULL, 4, 0),
(14, NULL, NULL, '2018-01-16 13:35:12', NULL, 5, 0),
(15, NULL, NULL, '2018-01-17 10:25:04', NULL, 4, 0),
(16, NULL, NULL, '2018-01-17 10:40:19', NULL, 4, 0),
(17, NULL, NULL, '2018-01-17 10:41:46', NULL, 4, 0),
(18, NULL, NULL, '2018-01-17 11:06:25', NULL, 4, 0),
(19, NULL, NULL, '2018-01-17 13:26:15', NULL, 5, 0),
(20, NULL, NULL, '2018-01-17 14:02:01', NULL, 4, 0),
(21, NULL, NULL, '2018-01-17 14:11:05', NULL, 4, 0),
(22, NULL, NULL, '2018-01-17 14:34:16', NULL, 4, 0),
(23, NULL, NULL, '2018-01-17 20:44:37', NULL, 4, 0),
(24, NULL, NULL, '2018-01-22 22:10:41', NULL, 4, 0),
(25, NULL, NULL, '2018-01-22 22:44:12', NULL, 4, 0),
(26, NULL, NULL, '2018-01-23 11:49:36', NULL, 4, 0),
(27, NULL, NULL, '2018-01-23 11:50:38', NULL, 4, 0),
(28, NULL, NULL, '2018-01-23 11:53:56', NULL, 4, 0),
(29, NULL, NULL, '0000-00-00 00:00:00', NULL, 4, 0),
(30, NULL, NULL, '2018-01-23 13:26:04', NULL, 4, 0),
(31, NULL, NULL, '2018-01-23 13:50:05', NULL, 4, 0),
(32, NULL, NULL, '2018-01-23 14:04:43', NULL, 4, 0),
(33, NULL, NULL, '2018-01-23 14:10:02', NULL, 4, 0),
(34, NULL, NULL, '2018-02-23 20:10:59', NULL, 4, 0),
(35, NULL, NULL, '2018-02-23 20:21:52', NULL, 4, 0),
(36, NULL, NULL, '2018-03-07 23:03:45', NULL, 4, 0),
(37, NULL, NULL, '2018-03-07 23:19:21', NULL, 4, 0),
(38, NULL, NULL, '2018-03-07 23:24:46', NULL, 4, 0),
(39, NULL, NULL, '2018-03-08 12:02:36', NULL, 4, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`IdKategorii`);

--
-- Indeksy dla tabeli `obsluga`
--
ALTER TABLE `obsluga`
  ADD PRIMARY KEY (`IdObslugi`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`IdPracownika`),
  ADD UNIQUE KEY `Haslo` (`PIN`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`IdProduktu`);

--
-- Indeksy dla tabeli `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`IdRoli`);

--
-- Indeksy dla tabeli `sektory`
--
ALTER TABLE `sektory`
  ADD PRIMARY KEY (`IdSektora`),
  ADD UNIQUE KEY `NazwaSkektoru` (`NazwaSektora`);

--
-- Indeksy dla tabeli `stali_klienci`
--
ALTER TABLE `stali_klienci`
  ADD PRIMARY KEY (`IdStalegoKlienta`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indeksy dla tabeli `stoliki`
--
ALTER TABLE `stoliki`
  ADD PRIMARY KEY (`IdStolika`),
  ADD UNIQUE KEY `KodStolika` (`KodStolika`),
  ADD UNIQUE KEY `NazwaStolika` (`NazwaStolika`),
  ADD KEY `IdStolika` (`IdStolika`);

--
-- Indeksy dla tabeli `vat`
--
ALTER TABLE `vat`
  ADD PRIMARY KEY (`IdVAT`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`IdZamowienia`),
  ADD KEY `IdStegoKlienta` (`IdStegoKlienta`),
  ADD KEY `IdStolika` (`IdStolika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `obsluga`
--
ALTER TABLE `obsluga`
  MODIFY `IdObslugi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `IdPracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `role`
--
ALTER TABLE `role`
  MODIFY `IdRoli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `stali_klienci`
--
ALTER TABLE `stali_klienci`
  MODIFY `IdStalegoKlienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `IdZamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
