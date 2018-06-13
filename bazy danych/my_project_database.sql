-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2018 at 07:37 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_project_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blokady`
--

CREATE TABLE `blokady` (
  `id_blokady` int(11) NOT NULL,
  `data_wprowadzenia` int(11) NOT NULL,
  `data_wycofania` datetime NOT NULL,
  `powod` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_pozycji_menu` int(11) NOT NULL,
  `id_pracownika` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blokady`
--

INSERT INTO `blokady` (`id_blokady`, `data_wprowadzenia`, `data_wycofania`, `powod`, `id_pozycji_menu`, `id_pracownika`) VALUES
(1, 2018, '2018-03-16 00:00:00', 'Brak składników', 21, 6);

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kategorii` int(11) NOT NULL,
  `nazwa_kategorii` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kolor_kategorii` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id_kategorii`, `nazwa_kategorii`, `kolor_kategorii`) VALUES
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
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180524213349'),
('20180524213535'),
('20180524213740'),
('20180524214200'),
('20180524215114'),
('20180524215449');

-- --------------------------------------------------------

--
-- Table structure for table `obsluga`
--

CREATE TABLE `obsluga` (
  `id_rachunku` int(11) NOT NULL,
  `id_pracownika` int(11) NOT NULL,
  `data_otwarcia` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `obsluga`
--

INSERT INTO `obsluga` (`id_rachunku`, `id_pracownika`, `data_otwarcia`) VALUES
(2, 4, '0000-00-00 00:00:00'),
(2, 5, '0000-00-00 00:00:00'),
(4, 5, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `osoba`
--

CREATE TABLE `osoba` (
  `id_osoby` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nazwisko` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plec` tinyint(1) NOT NULL,
  `nr_telefonu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_urodzenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `osoba`
--

INSERT INTO `osoba` (`id_osoby`, `email`, `imie`, `nazwisko`, `plec`, `nr_telefonu`, `data_urodzenia`) VALUES
(1, 'janek.k@gmial.com', 'Janek', 'Kubik', 0, '0', '0000-00-00'),
(2, 'robkow@wp.pl', 'Robert', 'Kowalski', 0, '0', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pozycje_menu`
--

CREATE TABLE `pozycje_menu` (
  `id_pozycji_menu` int(11) NOT NULL,
  `cena_brutto` double NOT NULL,
  `data_wprowadzenia` datetime NOT NULL,
  `data_wycofania` datetime NOT NULL,
  `id_produktu` int(11) NOT NULL,
  `id_vat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pozycje_menu`
--

INSERT INTO `pozycje_menu` (`id_pozycji_menu`, `cena_brutto`, `data_wprowadzenia`, `data_wycofania`, `id_produktu`, `id_vat`) VALUES
(9, 3.99, '2017-11-04 00:00:00', '0000-00-00 00:00:00', 1, 1),
(10, 29.99, '2017-11-01 00:00:00', '0000-00-00 00:00:00', 2, 3),
(11, 6, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 3, 2),
(12, 15, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 4, 3),
(14, 6.99, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 5, 1),
(15, 20, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 20, 1),
(16, 13.9, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 24, 3),
(17, 5.9, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 39, 2),
(18, 4, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 30, 3),
(19, 24.9, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 44, 1),
(20, 4.99, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 8, 3),
(21, 10, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 16, 1),
(22, 6.99, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 37, 2),
(23, 9, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 48, 3),
(24, 33, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 29, 1),
(25, 10, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 15, 1),
(26, 17, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 43, 3),
(27, 19, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 51, 3),
(28, 5, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 6, 3),
(29, 1.5, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 7, 3),
(30, 6.99, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 9, 3),
(31, 6.99, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 10, 3),
(32, 12, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 11, 1),
(33, 11, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 12, 1),
(35, 10, '2017-11-14 00:00:00', '0000-00-00 00:00:00', 14, 1),
(36, 49.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 17, 1),
(37, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 1),
(38, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 19, 1),
(39, 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 21, 1),
(40, 29.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 22, 3),
(41, 23.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 23, 3),
(42, 11.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 25, 3),
(43, 7.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 26, 3),
(44, 15.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 27, 1),
(45, 24.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 28, 1),
(46, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 31, 3),
(47, 4.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 32, 3),
(48, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 33, 2),
(49, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 34, 2),
(50, 13.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 35, 2),
(51, 7.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 36, 2),
(52, 11.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 38, 3),
(53, 8.88, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 40, 2),
(54, 15.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 41, 2),
(55, 14.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 42, 3),
(56, 21.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 45, 1),
(57, 27.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46, 1),
(58, 6.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 47, 3),
(59, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 49, 3),
(60, 11.49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 50, 3),
(61, 9.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 52, 1),
(62, 26.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 53, 3),
(63, 24.49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 54, 3),
(64, 21.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 55, 3),
(65, 34.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 58, 3),
(66, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 78, 1),
(67, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 79, 1),
(68, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 80, 1),
(69, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 81, 1),
(70, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 82, 1),
(71, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 83, 1),
(72, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 84, 1),
(73, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 85, 1),
(74, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 86, 1),
(75, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 87, 1),
(76, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 88, 1),
(77, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 89, 1),
(78, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 90, 1),
(79, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 91, 1),
(80, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 92, 1),
(81, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 59, 1),
(82, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 60, 1),
(83, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 61, 1),
(84, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 62, 1),
(85, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 63, 1),
(86, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 64, 1),
(87, 9.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 65, 1),
(88, 5.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 66, 1),
(89, 5.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 67, 3),
(90, 7.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 68, 3),
(91, 9.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 69, 3),
(92, 14.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 70, 1),
(93, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 71, 1),
(94, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 72, 1),
(95, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 73, 1),
(96, 12.34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 74, 1),
(97, 11.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 75, 1),
(98, 14.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 76, 1),
(99, 35.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 93, 1),
(100, 57.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 94, 1),
(101, 42.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 95, 1),
(102, 59.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 96, 1),
(103, 39.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 97, 1),
(104, 46.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 98, 1),
(105, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 99, 1),
(106, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 1),
(107, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 101, 1),
(108, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 102, 1),
(109, 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 103, 1),
(110, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 104, 1),
(111, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 105, 1),
(112, 21.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 106, 3),
(113, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 107, 3),
(114, 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 108, 3),
(115, 29.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 109, 3),
(116, 22.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 113, 3),
(117, 27.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 112, 3),
(118, 25.55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 111, 3),
(119, 24.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 110, 3),
(120, 14.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 114, 3),
(121, 11.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 120, 3),
(122, 10.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 119, 3),
(123, 14.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 118, 3),
(124, 17.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 117, 3),
(125, 15.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 116, 3),
(126, 12.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 115, 3),
(127, 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 134, 1),
(128, 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 133, 1),
(129, 25.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 132, 1),
(130, 25.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 131, 1),
(131, 29.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 130, 1),
(132, 31.31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 129, 1),
(133, 19.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 128, 1),
(134, 24.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 127, 1),
(135, 23.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 126, 1),
(136, 27.8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 125, 1),
(137, 19.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 124, 1),
(138, 20.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 123, 1),
(139, 24.6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 122, 1),
(140, 34.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 121, 1),
(141, 6.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 141, 3),
(142, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 140, 3),
(143, 5.55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 139, 3),
(144, 5.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 138, 3),
(145, 6.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 137, 3),
(146, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 136, 3),
(147, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 135, 3),
(148, 14.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 146, 2),
(149, 12.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 145, 2),
(150, 13.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 144, 2),
(151, 12.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 143, 2),
(152, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 142, 2),
(153, 10.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 147, 2),
(154, 12.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, 3),
(155, 11.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, 2),
(156, 6.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 150, 3),
(157, 2.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 151, 3),
(158, 5.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 152, 3),
(159, 13.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 153, 3),
(160, 9.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 154, 2),
(161, 8.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 155, 2),
(162, 9.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 156, 2),
(163, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 157, 2),
(164, 12.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 158, 2),
(165, 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 159, 3),
(166, 29.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 167, 3),
(167, 32.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 166, 3),
(168, 26.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 165, 3),
(169, 23.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 164, 3),
(170, 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 163, 3),
(171, 39.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 162, 3),
(172, 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 161, 3),
(173, 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 160, 3),
(174, 12.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 176, 1),
(175, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 175, 1),
(176, 9.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 174, 1),
(177, 15.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 173, 1),
(178, 15.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 172, 1),
(179, 9.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 171, 1),
(180, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 170, 1),
(181, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 169, 1),
(182, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 168, 1),
(183, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 183, 3),
(184, 8.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 182, 3),
(185, 4.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 181, 3),
(186, 4.44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 180, 3),
(187, 5.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 179, 3),
(188, 6.7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 178, 3),
(189, 5.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 177, 3),
(190, 29.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 185, 1),
(191, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 186, 1),
(192, 10.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 187, 1),
(193, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 188, 1),
(194, 10.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 189, 1),
(195, 12.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 190, 1),
(196, 13.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 191, 1),
(197, 14.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 192, 1),
(198, 15.5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 193, 1),
(199, 12.9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 194, 1),
(200, 29.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 195, 3),
(201, 33.99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 196, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pozycje_zamowienia`
--

CREATE TABLE `pozycje_zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_pozycji_menu` int(11) NOT NULL,
  `liczba_produktow` int(11) NOT NULL,
  `stan_realizacji` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pozycje_zamowienia`
--

INSERT INTO `pozycje_zamowienia` (`id_zamowienia`, `id_pozycji_menu`, `liczba_produktow`, `stan_realizacji`) VALUES
(2, 10, 2, ''),
(3, 9, 5, ''),
(3, 11, 10, ''),
(4, 12, 4, ''),
(5, 37, 2, ''),
(5, 38, 1, ''),
(5, 102, 1, ''),
(6, 100, 1, ''),
(6, 102, 1, ''),
(6, 104, 1, ''),
(7, 99, 1, ''),
(7, 102, 1, ''),
(7, 104, 1, ''),
(8, 9, 4, ''),
(8, 26, 3, ''),
(8, 30, 1, ''),
(8, 91, 1, ''),
(8, 154, 2, ''),
(8, 158, 1, ''),
(11, 102, 1, ''),
(13, 107, 3, ''),
(13, 167, 2, ''),
(14, 113, 36, ''),
(17, 102, 1, ''),
(20, 37, 2, ''),
(20, 102, 26, ''),
(22, 102, 21, ''),
(26, 40, 1, ''),
(26, 41, 5, ''),
(26, 102, 1, ''),
(26, 112, 1, ''),
(27, 102, 18, ''),
(29, 102, 3, ''),
(29, 186, 2, ''),
(32, 102, 18, ''),
(34, 15, 1, ''),
(34, 38, 1, ''),
(92, 1, 1, '1'),
(92, 6, 1, '1'),
(92, 9, 1, '1'),
(92, 19, 12, '1'),
(92, 20, 1, '1'),
(92, 33, 1, '1'),
(92, 154, 1, '1'),
(92, 155, 1, '1'),
(92, 159, 1, '1'),
(94, 9, 1, '4'),
(94, 85, 1, '1'),
(94, 100, 1, '1'),
(94, 106, 1, '1'),
(94, 149, 1, '1'),
(96, 9, 1, '1'),
(96, 15, 2, '1'),
(96, 20, 1, '1'),
(96, 28, 4, '1'),
(96, 81, 1, '1'),
(96, 85, 1, '4'),
(96, 147, 3, '1'),
(97, 9, 1, '1'),
(99, 9, 1, '1'),
(100, 9, 8, '1'),
(108, 9, 10, '1'),
(108, 15, 10, '1'),
(108, 20, 1, '1'),
(108, 24, 10, '1'),
(108, 28, 1, '1'),
(108, 48, 5, '1'),
(108, 82, 1, '1'),
(109, 9, 3, '1'),
(109, 28, 2, '1'),
(109, 29, 2, '1'),
(109, 81, 2, '1'),
(109, 82, 2, '1'),
(109, 83, 2, '1'),
(109, 84, 2, '1'),
(109, 85, 2, '1'),
(109, 86, 2, '1'),
(109, 87, 2, '1'),
(109, 88, 2, '1'),
(110, 9, 6, '1'),
(110, 28, 1, '1'),
(110, 81, 1, '1'),
(110, 82, 2, '1'),
(111, 9, 3, '1'),
(111, 82, 1, '1'),
(112, 9, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownika` int(11) NOT NULL,
  `pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_roli` int(11) NOT NULL,
  `id_osoby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownika`, `pin`, `id_roli`, `id_osoby`) VALUES
(3, '4607', 1, 0),
(4, '2802', 2, 0),
(5, '9136', 3, 0),
(6, '1834', 4, 0),
(7, '9760', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produkty`
--

CREATE TABLE `produkty` (
  `id_produktu` int(11) NOT NULL,
  `nazwa_produktu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `przepis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_kategorii` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id_produktu`, `nazwa_produktu`, `przepis`, `opis`, `id_kategorii`) VALUES
(1, 'CocaCola', '', 'Napoj CocaCola, 500ml.', 1),
(2, 'Spaghetti Bolognese', 'daasdsad', 'Makaron typu spaghetti, sos bolognese, czosnek, zioła, parmezan.', 7),
(3, 'Piwo', 'Warka, Lech, Tyskie', 'Nalewane prosto z beczki do zmrozonego kufla (0,5L).', 5),
(4, 'Schabowy', '', 'Kotlet wieprzowy z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 14),
(5, 'Zapiekanka', '', 'Zapiekana bulka z serem i pieczarkami, 250g.', 18),
(6, 'Sok', '', 'Podany w wysokiej szkance, do wyboru wiele smakow 300ml.', 1),
(7, 'Tymbark', '', 'Napoj Tymbark, smak do wyboru, 250ml.', 1),
(8, 'Espresso', 'ekspres', 'Oryginalna wloska kawa, mocna, wyrazista.', 2),
(9, 'Latte', 'ekspres', 'Kawa latte, esspresso z duza iloscia mleka i warstwa spienionego mleka.', 2),
(10, 'Mrożona', '', 'Kawa z mlekiem i kostkami lodu.', 2),
(11, 'Mojito', '40 ml białego rumu\r\n20 ml syropu cukrowego lub cukier biały / brązowy cukier trzcinowy\r\n2 ćwiartki limonki\r\n6 liści mięty\r\n40 ml wody gazowanej\r\nkruszony lód', 'Koktajl alkoholowy, pochodzenia kubanskiego na bazie bialego rumu o orzezwiajacym smaku.', 3),
(12, 'Martini', '90 ml ginu\r\n30 ml wytrawnego wermutu\r\nlód', 'Drink zrobiony z ginu i niewielkiej ilosci wytrawnego wermutu.', 3),
(13, 'Pina colada', '30 ml białego rumu\r\n30 ml słodkiej śmietanki kokosowej\r\n90 ml soku ananasowego\r\nkruszony lód.', 'Slodki karaibski koktajl alkoholowy, podawany jest z lodem i plastrem cytryny.', 3),
(14, 'Luxusowa', '', 'Shot Finlandii w kieliszku 40 ml.', 4),
(15, 'Jack Daniel\'s', '', 'Shot Jacka Daniel\'sa w kieliszku 40 ml.', 4),
(16, 'Finlandia', '', 'Shot Finlandii w kieliszku 40 ml.', 4),
(17, 'Wino Olaria Tinto', '', 'Wytrawne, krystalicznie czyste wino o kolorze granatu, aromacie dojrzalych owocow i lagodnym posmaku.', 5),
(18, 'Nalewki', '', 'Do wyboru malinowa, truskawkowa i pigwowa.', 5),
(19, 'Absynt', '', 'Oslawiony trunek artystow, 40ml.', 6),
(20, 'Bacardi 151', '', 'Bardzo mocny alkohol 75,5%, podany w kieliszku 30ml.', 6),
(21, 'Devil Springs Vodka (płonąca)', '', 'Drink jest podawany w kieliszku 40ml, po podaniu jest podpalany przez obsługe.', 6),
(22, 'Spaghetti z klopsikami', '', 'Makaron spaghetti z dodatkiem klopsikow miesnych.', 7),
(23, 'Makaron z pesto', '', 'Makaron spaghetti z dodatkiem zielonego pesto, bazylii i oregano.', 7),
(24, 'Cezar', '', 'Salata lodowa, smazona piers z kurczaka, pomidor, ogorek, cebula, sos winegret.', 8),
(25, 'Ryżowa z czosniekm', '', 'Ryz, czosnek, majonez.', 8),
(26, 'Warzywna', '', 'Ziemniaki, ogorek, kukurydza, papryka, majonez.', 8),
(27, 'Margharitta', '', 'Sos, ser, oregano.', 9),
(28, 'Peperone', '', 'Sos, ser, salami, papryczki peperone.', 9),
(29, 'Hawajska', '', 'Sos, ser, ananas.', 9),
(30, 'Czarna LIPTON', '', 'Oryginalna herbata LIPTON, 250ml.', 10),
(31, 'Zielona KWIAT LOTOSU', '', 'Herbata zielona, zaparzana w optymalnej temperaturze z dodatkiem kwiatow lotosu, 250ml.', 10),
(32, 'Owocowa LIPTON', '', 'Oryginalna herbata owocowa LIPTON, smak do wyboru 250ml.', 10),
(33, 'Rosół', '', 'Tradycyjny wywar z kury.', 11),
(34, 'Pomidorowa', '', 'Zupa z pomidorami.', 11),
(35, 'Ogórkowa', '', 'Zupa z ogorkami.', 11),
(36, 'Szarlotka', '', 'Tradycyjne ciasto z jabkiem, 150g.', 12),
(37, 'Firmowe', '', 'Specjalnosc restauracji, 125g.', 12),
(38, 'Lody w pucharze', '', 'Do wyboru smaki galek, podane w pucharku, 200g.', 12),
(39, 'Chleb czosnkowy', '', 'Pieczywo o smaku czosnkowym, 4 kromki.', 13),
(40, 'Koreczki', '', 'Koreczki z mięsem i warzywami, 8 sztuk.', 13),
(41, 'Kasztany jadalne', '', 'Specjal z Francji, 200g.', 13),
(42, 'Pierś z kurczaka', '', 'Kotlet drobiowy z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 14),
(43, 'Karkówka', '', 'Kotlet z karkowki z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 14),
(44, 'Dorsz (filet)', '', 'Filet rybny z dorsza, pokropiony sokiem z cytryny, 200g.', 15),
(45, 'Sum', '', 'Ryba sum, smazona, pokropiona sokiem z cytryny, 100g.', 15),
(46, 'Lin (filet)', '', 'Filet rybny z lina, pokropiony sokiem z cytryny, 200g.', 15),
(47, 'Pieczarki faszerowane', '', 'Pieczarki z nadzieniem, 150g.', 16),
(48, 'Frytki', '', 'Smazone na glebokim oleju, 200g.', 16),
(49, 'Kopytka', '', 'Tradycyjne polskie danie, 200g.', 16),
(50, 'Zupa kalafiorowa', '', 'Tradycyjna zupa kalafiorowa, z ziemniakami i marchewka.', 17),
(51, 'Karkówka wołowa, ziemniaki, surówka jasna', '', 'Doskonale przyrzadzona wołowina (200g), , gotowane ziemniaki i surowka z kapusty.', 17),
(52, 'Nuggetsy', '', 'Bezkostne mieso drobiowe, 150g.', 18),
(53, 'Risotto Pollo', '', 'Tradycyjne wloskie risotto z pikantnym kurczakiem i groszkiem, posypane pietruszka i serem Grana Padano.', 19),
(54, 'Risotto Con Tallegio', '', 'Tradycyjne wloskie risotto z serem Taleggio, grzybami lesnymi i pasta truflowa, posypane natka pietruszki i serem Grana Padano.', 19),
(55, 'Risotto Parma E Pistacchio', '', 'Tradycyjne wloskie risotto z pesto pistacjowym, szynka prosciutto, marynowana gruszka, serem Gorgonzola i kruszonymi pistacjami.', 19),
(58, 'Pieczona kaczka z ziemniakami w mundurkach', 'piekarnik i ziemniaki', 'Pieczona kaczka, dużo ziemniakow upieczonych w mundurkach.', 17),
(59, 'Pepsi', '', 'Napoj Pepsi, 500ml.', 1),
(60, 'Mirinda', '', 'Napoj Mirinda, 500ml.', 1),
(61, 'Nestea', '', 'Napoj Nestea, 500ml.', 1),
(62, '7up', '', 'Napoj 7up, 500ml.', 1),
(63, 'Sprite', '', 'Napoj Sprite, 500ml.', 1),
(64, 'Woda mineralna', '', 'Podana w wysokiej szkance, marka do wyboru 300ml.', 1),
(65, 'Sok ze świeżych cytrusów', '', 'Wyciskany na piejscu, pomarancza lub grapefruit, 250ml.', 1),
(66, 'Nektar bananowy', '', 'Podany w wysokiej szkance, 300ml.', 1),
(67, 'Americano', '', 'Kawa americano, esspresso z duza iloscia wody.', 2),
(68, 'White', '', 'Kawa white, esspresso z duza iloscia mleka.', 2),
(69, 'Cappuccino', '', 'Kawa cappuccino, esspresso z mlekiem i warstwa spienionego na kremowa konsystencje mleka.', 2),
(70, 'Mrożona z lodami waniliowymi', '', 'Kawa z kostkami lodu, dodatkowo sa lody waniliowe.', 2),
(71, 'Long Island Ice Tea', 'Żubrówka Biała 20 ml, Bombay Sapphire 20 ml, Rum Bacardi Carta Blanca 20 ml, Tequila Sierra Silver 20 ml, Triple Sec 20 ml, sok z cytryny, Pepsi', 'Koktajl alkoholowy przygotowywany z wodki, ginu, tequili i rumu z dodatkiem soku cytrynowego, zmieszanych z cola.', 3),
(72, 'Blue Lagoon', 'Żubrówka Biała 40 ml, Bols Blue 20 ml, sok z cytryny, sok jabłkowy, cytryna', ' Koktajl alkoholowy łaczacy wodke, blue curacao i lemoniade.', 3),
(73, 'Sphinx', 'Żubrówka Biała 40 ml, sok jabłkowy, sok pomarańczowy, sok z cytryny, syrop grenadyna, pomarańcza', 'Koktajl alkoholowy łaczacy wodke, sok jablkowy, cytrynowy, pomaranczowy i syrop z grenadiny.', 3),
(74, 'Green Line', 'Żołądkowa Gorzka 40 ml, sok jabłkowy, sok z cytryny, świeży ogórek, 7up', 'Koktajl alkoholowy łaczacy wodke, sok cytrynowy, ananasowy, sprite i plastry ogorka.', 3),
(75, 'Cuba Libre', 'Rum Bacardi Carta Oro 40 ml, Pepsi, limonka', 'Koktajl alkoholowy łaczacy rum, cole i limonke.', 3),
(76, 'Sex on the beach', 'Żubrówka Biała 40 ml, Bols Peach 20 ml, sok żurawinowy, sok pomarańczowy, pomarańcza', 'Koktajl alkoholowy przygotowywany z wodki, sznapsu brzoskwiniowego oraz wiecej niz jednego soku owocowego.', 3),
(78, 'Wyborowa', '', 'Shot Belvedera w kieliszku 40 ml.', 4),
(79, 'Belvedere', '', 'Shot Finlandii w kieliszku 40 ml.', 4),
(80, 'Grey Goose', '', 'Shot Zoładkowej Gorzkiej w kieliszku 40 ml.', 4),
(81, 'Żołądkowa Gorzka', '', 'Shot Finlandii w kieliszku 40 ml.', 4),
(82, 'Żubrówka Biała', '', 'Shot Zubrowka Bialej w kieliszku 40 ml.', 4),
(83, 'Żubrówka Bison Grass', '', 'Shot Zubrowki Bison Grass w kieliszku 40 ml.', 4),
(84, 'Żubrówka Kora Dębu', '', 'Shot Zubrowki Kora Debu w kieliszku 40 ml.', 4),
(85, 'Dewar’s White Label', '', 'Shot Dewar’sa w kieliszku 40 ml.', 4),
(86, 'Ballantine’s Finest', '', 'Shot Ballantine’sa w kieliszku 40 ml.', 4),
(87, 'Johnnie Walker Red', '', 'Shot Johnnie Walkera Red w kieliszku 40 ml.', 4),
(88, 'Jack Daniel’s Single Barrel', '', 'Shot Jacka Daniel’sa Single Barrel w kieliszku 40 ml.', 4),
(89, 'Glenfiddich 12YO', '', 'Shot Glenfiddicha w kieliszku 40 ml.', 4),
(90, 'Metaxa *****', '', 'Shot Metaxa w kieliszku 40 ml.', 4),
(91, 'Hennessy VS', '', 'Shot Luxusowej w kieliszku 40 ml.', 4),
(92, 'Jägermeister', '', 'Shot Jagermeistera w kieliszku 40 ml.', 4),
(93, 'Las Montañas Cabernet Sauvignon', '', 'Wytrawne wino o dobrze zbudowanym bukiecie i głebokim, ciemnym kolorze oraz aromacie i smaku czarnej porzeczki.', 5),
(94, 'Chianti Classico Villa Campobello', '', 'Wytrawne wino o zywym rubinowym kolorze, owocowym zapachu z nuta fiolkow, wisni i dzikich czerwonych jagod.', 5),
(95, 'Monteiro Tempranillo', '', 'Wytrawne, głeboko czerwone wino, powstajace z najwazniejszej odmiany winorosli w Hiszpanii, charakteryzujące się delikatnym ziołowym aromatem.', 5),
(96, 'Castillo de Albai Crianza Rioja', '', 'Wytrawne wino o purpurowym kolorze, w zapachu wyczuwalne aromaty dojrzalych czerwonych owocow: malin i sliwek.', 5),
(97, 'Primitivo Marchesi del Salento', '', 'Wytrawne wino o głebokim, ciemnym kolorze, z silnie wyczuwalnymi nutami przypraw i zurawiny.', 5),
(98, 'Mossiere Vino Nobile di Montepulciano', '', 'Wytrawne, jedno z najwaaniejszych toskanskich win czerwonych, produkowane wokoł starozytnego miasta Montepulciano.', 5),
(99, 'Sunset Rum', '', 'Jeden z najsolidniejszych rumow na świecie, wyjatkowy smak i moc, 40ml.', 6),
(100, 'Good ol’ Sailor Vodka', '', 'Bardzo mocna wodka ze Szwecji, 40ml.', 6),
(101, 'Balkan 176', '', 'Mocna, bezbarwna, bez smaku i zapachu - prosto z Balkan, 40ml.', 6),
(102, 'Pincer Vodka', '', 'Szkocka, bardzo mocno wodka, 40ml.', 6),
(103, 'Bruichladdich X4+1 Quadrupled whisky', '', 'Najmocniejsza na swiecie whisky, 40ml.', 6),
(104, 'Everclear', '', 'Przez wielu uwazany za najmocniejszy alkohol, jest przezroczysty, bez zapachu i smaku, 40ml.', 6),
(105, 'Spirytus rektyfikowany', '', 'Polskiej produkcji spirytus, tylko dla najodwazniejszych, 40ml.', 6),
(106, 'Spaghetti Con Piselli', '', 'Makaron spaghetti w sosie pomidorowo-miesnym z groszkiem.', 7),
(107, 'Spaghetti Diablo', '', 'Makaron spaghetti w ostrym sosie pomidorowo-miesnym z kabanosem, papryka jalapeno i dodatkiem bazylii.', 7),
(108, 'Spaghetti Zapiekane', '', 'Makaron spaghetti w sosie pomidorowo-miesnym z dodatkiem bazylii, zapiekane z serem i smietana.', 7),
(109, 'Spaghetti Special', '', 'Makaron spaghetti w sosie pomidorowo-miesnym z kabanosem, cebula i czosnkiem.', 7),
(110, 'Penne Cztery sery', '', 'Makaron penne w sosie z 4 rodzajow sera z dodatkiem smietany i czosnku.', 7),
(111, 'Penne Broccoli', '', 'Makaron penne z brokulami w sosie smietanowym.', 7),
(112, 'Penne Grzybowe', '', 'Makaron penne w sosie smietanowo-grzybowym.', 7),
(113, 'Penne Carbonara', '', 'Makaron penne w sosie smietanowym z dodatkiem boczku i cebuli.', 7),
(114, 'Grecka', '', 'Salata lodowa, pomidor, ogorek, cebula, ser feta, oliwki, sos winegret.', 8),
(115, 'Petromea', '', 'Salata lodowa, pomidor, ogorek, cebula, papryka, mieso drobiowe, sos czosnkowy.', 8),
(116, 'Turecka', '', 'Salata lodowa, pomidor, ogorek, cebula, kebab, sos czosnkowy.', 8),
(117, 'Luksor', '', 'Salata lodowa, pomidor, ogorek, cebula, tunczyk, grzanki, sos winegret.', 8),
(118, 'Paryska', '', 'Salata lodowa, cebula, pomidor, ogorek, grillowany filet z kurczaka, ser lazur, sos winegret.', 8),
(119, 'Francuska', '', 'Salata lodowa, ananas, kukurydza, grillowany filet z kurczaka, ser lazur, sos winegret.', 8),
(120, 'Caprese', '', 'Salata lodowa, pomidor, biala mozzarella, swieza bazylia, oliwa z oliwek.', 8),
(121, 'Parmeńska', '', 'Sos, ser, szynka dojrzewajaca, pomidorki koktajlowe, biala mozzarella, bazylia, rukola, pieprz mlotkowany, pizza na cienkim wloskim ciescie.', 9),
(122, 'Włoska', '', 'Sos, ser, salami, pomidorki koktajlowe-plasterki, biala mozzarella, cebula, oliwki, pieprz mlotkowany, pizza na cienkim włoskim ciescie.', 9),
(123, 'Funghi', '', 'Sos, ser, pieczarki.', 9),
(124, 'Spinaci', '', 'Sos, ser, szpinak.', 9),
(125, 'Vesuvio', '', 'Sos, ser, szynka.', 9),
(126, 'Salami', '', 'Sos, ser, salami.', 9),
(127, 'Genua', '', 'Sos, ser, tunczyk, salami, cebula, kukurydza.', 9),
(128, 'Wegetariańska', '', 'Sos, ser, papryka, pieczarki, kukurydza, cebula, oliwki, kapary.', 9),
(129, 'Boczolini', '', 'Sos, ser, grillowany boczek, cebula, papryka.', 9),
(130, 'Cztery pory roku', '', 'Sos, ser, szynka, pieczarki, salami, tunczyk.', 9),
(131, 'Carbonara', '', 'Sos smietanowy, ser, boczek, cebula.', 9),
(132, 'Kebab', '', 'Sos, ser, kebab, cebula, sos czosnkowy.', 9),
(133, 'Rzeźnicka', '', 'Sos, ser, szynka, salami, kabanos, baleron.', 9),
(134, 'Cztery sery', '', 'Sos, ser, cztery gatunki sera.', 9),
(135, 'Czarna DILMAH', '', 'Oryginalna herbata DILMAH, 250ml.', 10),
(136, 'Czarna EARL GREY', '', 'Oryginalna herbata EARL GREY, 250ml.', 10),
(137, 'Zielona JAPOŃSKA ŚWIĄTYNIA', '', 'Herbata zielona, zaparzana w optymalnej temperaturze o wyjatkowym smaku, 250ml.', 10),
(138, 'Zielona BRZOSKWINIOWY SAD', '', 'Herbata zielona z dodatkiem aromatu owocowego, zaparzana w optymalnej temperaturze, 250ml.', 10),
(139, 'Zielona JAŚMINOWA', '', 'Herbata zielona, zaparzana w optymalnej temperaturze z dodatkiem kwiatow jasminu, 250ml.', 10),
(140, 'Zielona NATURALNA', '', 'Herbata zielona, zaparzana w optymalnej temperaturze, smak zielonej herbaty bez dodatkow, 250ml.', 10),
(141, 'Owocowa WIŚNIA Z BANANEM', '', 'Herbata owocowa, wyjatkowe polaczenie smaku wisni i banana, 250ml.', 10),
(142, 'Barszcz czysty', '', 'Barszcz czerowny.', 11),
(143, 'Barszcz z pasztecikiem', '', 'Barszcz czerowny z dodatkiem pasztecikow.', 11),
(144, 'Gulaszowa', '', 'Zupa gulaszowa z miesem wolowym.', 11),
(145, 'Żurek', '', 'Tradycyjny zurek z jajkiem i biala kielbasa.', 11),
(146, 'Krem grzybowy', '', 'Krem zrobiony z borowikow.', 11),
(147, 'Sernik z brzoskwiniami', '', 'Znane wszystkim ciasto z dodatkiem brzoskwin, 200g.', 12),
(148, 'Creme brulee', '', 'Zapiekany deser, przygotowywany ze smietanki, zoltek, cukru, uwienczony warstwa skarmelizowanego cukru, 100g.', 12),
(149, 'Szarlotka z lodami', '', 'Znane ciasto z doadkiem lodow, 220g.', 12),
(150, 'Shake waniliowy', '', 'Lody waniliowe zmieszane z mlekiem, 400ml.', 12),
(151, 'Gałka lodów GRYCAN', '', 'Oryginalne lody GRYCAN, w wielu smakach 45g.', 12),
(152, 'Mus czekoladowy', '', 'Gorzka czekolada przerobiona w mus, 60g.', 12),
(153, 'Deser BAILEYS', '', 'Kawoy deser z dodatkiem znanej whiskey, 90g.', 12),
(154, 'Krążki cebulowe', '', 'Smazone krazki cebulowe, 200g.', 13),
(155, 'Falafel', '', 'Smazone kulki z przyprawionej ciecierzycy, 200g.', 13),
(156, 'Kalmary panierowane', '', 'Smazone kalmary, 170g, dodatkowo sos.', 13),
(157, 'Jalapenos', '', 'Bardzo ostre papryczki.', 13),
(158, 'Śledź marynowany', '', 'Sledz marynowany w soku z kiszonych burakow, 250g.', 13),
(159, 'Peper stek', '', 'Wołowina przygotowana z duza iloscia pieprzu, z dodatkiem frytek, 510g.', 14),
(160, 'Stek argentyński', '', 'Wołowina przygotowana zgodnie z receptura argentyjska, z dodatkiem frytek, 520g.', 14),
(161, 'Stek urugwajski', '', 'Wołowina przygotowana wedlug urugwanskiej receptury dodatkiem frytek, 510g.', 14),
(162, 'Stek amerykański', '', 'Wołowina przygotowana zgodnie z receptura amerykanska, z dodatkiem frytek, 510g.', 14),
(163, 'Polędwica', '', 'Wołowina przygotowana w tradycyjny sposob, z dodatkiem frytek, 520g.', 14),
(164, 'Kebeb drobiowy', '', 'Mieso drobiowe upieczone na pionowym roznie, z dodatkiem frytek, warzyw i sosow.', 14),
(165, 'Kebeb wołowy', '', 'Mieso wolowe upieczone na pionowym roznie, z dodatkiem frytek, warzyw i sosow.', 14),
(166, 'Gulasz z jelenia', '', 'Wyjatkowy gulasz z dziczyzny podany z ziemniakami.', 14),
(167, 'Żeberka wieprzowe', '', 'Zeberka wieprzowe z dodatkiem frytek lub ziemniakow i zestawu sorowek.', 14),
(168, 'Sandacz (filet)', '', 'Filet rybny z sandacza, pokropiony sokiem z cytryny, 100g.', 15),
(169, 'Okoń (filet)', '', 'Filet rybny z okonia, pokropiony sokiem z cytryny, 100g.', 15),
(170, 'Pstrąg (filet)', '', 'Filet rybny z pstraga, pokropiony sokiem z cytryny, 100g.', 15),
(171, 'Karp', '', 'Ryba karp, smazona, pokropiona sokiem z cytryny, 100g.', 15),
(172, 'Halibut', '', 'Ryba halibut, smazona, pokropiona sokiem z cytryny, 100g.', 15),
(173, 'Łosoś (filet)', '', 'Filet rybny z lososia, pokropiony sokiem z cytryny, 100g.', 15),
(174, 'Flądra', '', 'Ryba fladra, 100g.', 15),
(175, 'Ryba maślana', '', 'Ryba maslana, pokropiona sokiem z cytryny, 100g.', 15),
(176, 'Miętus królewski (filet)', '', 'Filet rybny z mietusa, pokropiony sokiem z cytryny, 100g.', 15),
(177, 'Ryż curry', '', 'Porcja ryzu z dodatkiem przyprawy curry.', 16),
(178, 'Ziemniaki smażone na złoto', '', 'Porcja ziemniakow, zasmazanych na zloty kolor, 250g.', 16),
(179, 'Zestaw surówek', '', 'Mix trzech surowek.', 16),
(180, 'Buraczki', '', 'Buraczki przygotowane wedlug tradycyjnej receptury.', 16),
(181, 'Kapusta kwaszona z boczkiem', '', 'Porcja kapusty z dodatkiem boczku.', 16),
(182, 'Warzywa czosnkowe', '', 'Mieszanka warzyw z dodatkiem czosnku, o wyrazistym smaku.', 16),
(183, 'Zestaw trzech sosów', '', 'Sosy w naczyniach (czosnkowy, koktajlowy, cebulowy-ostry).', 16),
(185, 'Strogonow', '', 'Pyszne mieso wolowe z dodatkiem warzyw.', 17),
(186, 'Burger', '', 'Burger wolowy z dodatkiem warzyw.', 18),
(187, 'Bekonburger', '', 'Burger wolowy z dodatkiem bekonu.', 18),
(188, 'Lazurburger', '', 'Burger wolowy z dodatkiem sera Lazur.', 18),
(189, 'Cheeseburger', '', 'Burger wolowy z dodatkowa porcja sera.', 18),
(190, 'Kebab w bułce', '', 'Mieso upieczone na pionowym roznie, wrzucone w bulke z dodatkiem warzyw i sosow.', 18),
(191, 'Doner w bułce', '', 'Baranina upieczona na pionowym roznie, wrzucone w bulke z dodatkiem warzyw i sosow.', 18),
(192, 'Kebab tortilla', '', 'Mieso upieczone na pionowym roznie, wrzucone w placek tortilla, z dodatkiem warzyw i sosow.', 18),
(193, 'Doner tortilla', '', 'Baranina upieczona na pionowym roznie, wrzucone w placek tortille, z dodatkiem warzyw i sosow.', 18),
(194, 'Bułka wegetariańska', '', 'Bulka pelna warzyw z dodatkiem sosow, wegetarianska', 18),
(195, 'Risotto Gamberi', '', 'Tradycyjne wloskie risotto z krewetkami tygrysimi, posypane pietruszka i serem Grana Padano.', 19),
(196, 'Risotto Con Gamberi E Asparagi', '', 'Tradycyjne wloskie risotto z krewetkami tygrysimi i zielonymi szparagami, posypane serem Grana Padano.', 19);

-- --------------------------------------------------------

--
-- Table structure for table `rachunki`
--

CREATE TABLE `rachunki` (
  `id_rachunku` int(11) NOT NULL,
  `na_imie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `liczba_osob` int(11) NOT NULL,
  `data_otwarcia` datetime NOT NULL,
  `data_zamkniecia` datetime NOT NULL,
  `uwagi_pracownika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uwagi_goscia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_stolika` int(11) NOT NULL,
  `id_stalego_klienta` int(11) NOT NULL,
  `platnosc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `znizka` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rachunki`
--

INSERT INTO `rachunki` (`id_rachunku`, `na_imie`, `liczba_osob`, `data_otwarcia`, `data_zamkniecia`, `uwagi_pracownika`, `uwagi_goscia`, `id_stolika`, `id_stalego_klienta`, `platnosc`, `znizka`) VALUES
(2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 3, 0, '', 0),
(3, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 1, 0, '', 0),
(4, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 2, 0, '', 0),
(5, '', 0, '2018-01-15 23:36:23', '0000-00-00 00:00:00', '', '', 1, 0, '', 0),
(6, '', 0, '2018-01-16 12:16:09', '0000-00-00 00:00:00', '', '', 1, 0, '', 0),
(7, '', 0, '2018-01-16 09:51:03', '0000-00-00 00:00:00', '', '', 1, 0, '', 0),
(8, '', 0, '2018-01-16 10:51:35', '0000-00-00 00:00:00', '', '', 1, 0, '', 0),
(9, '', 0, '2018-01-16 10:54:44', '0000-00-00 00:00:00', '', '', 1, 0, '', 0),
(10, '', 0, '2018-01-16 10:55:28', '0000-00-00 00:00:00', '', '', 1, 0, '', 0),
(11, '', 0, '2018-01-16 10:55:38', '0000-00-00 00:00:00', '', '', 1, 0, '', 0),
(12, '', 0, '2018-01-16 11:09:27', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(13, '', 0, '2018-01-16 13:30:23', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(14, '', 0, '2018-01-16 13:35:12', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(15, '', 0, '2018-01-17 10:25:04', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(16, '', 0, '2018-01-17 10:40:19', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(17, '', 0, '2018-01-17 10:41:46', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(18, '', 0, '2018-01-17 11:06:25', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(19, '', 0, '2018-01-17 13:26:15', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(20, '', 0, '2018-01-17 14:02:01', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(21, '', 0, '2018-01-17 14:11:05', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(22, '', 0, '2018-01-17 14:34:16', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(23, '', 0, '2018-01-17 20:44:37', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(24, '', 0, '2018-01-22 22:10:41', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(25, '', 0, '2018-01-22 22:44:12', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(26, '', 0, '2018-01-23 11:49:36', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(27, '', 0, '2018-01-23 11:50:38', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(28, '', 0, '2018-01-23 11:53:56', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(29, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(30, '', 0, '2018-01-23 13:26:04', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(31, '', 0, '2018-01-23 13:50:05', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(32, '', 0, '2018-01-23 14:04:43', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(33, '', 0, '2018-01-23 14:10:02', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(34, '', 0, '2018-02-23 20:10:59', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(35, '', 0, '2018-02-23 20:21:52', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(36, '', 0, '2018-03-07 23:03:45', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(37, '', 0, '2018-03-07 23:19:21', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(38, '', 0, '2018-03-07 23:24:46', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(39, '', 0, '2018-03-08 12:02:36', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(40, 'Kacper', 6, '2018-03-22 23:45:57', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(41, 'Kacper', 6, '2018-03-22 23:46:27', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(42, 'Kacper', 6, '2018-03-22 23:48:10', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(43, 'Kacper', 6, '2018-03-22 23:51:31', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(44, 'Kacper', 6, '2018-03-22 23:58:19', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(45, 'Kacper', 6, '2018-03-22 23:59:16', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(46, 'Kacper', 6, '2018-03-22 23:59:49', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(47, 'Kacper', 11, '2018-03-23 00:09:15', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(48, 'Kacper', 11, '2018-03-23 00:11:30', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(49, 'Kacper', 11, '2018-03-23 00:16:54', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(50, 'Kacper', 11, '2018-03-23 00:18:43', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(51, 'Kacper', 11, '2018-03-23 00:19:49', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(52, 'Kacper', 11, '2018-03-23 00:20:46', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(53, 'Kacper', 11, '2018-03-23 00:23:17', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(54, 'Kacper', 11, '2018-03-23 00:24:17', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(55, 'Kacper', 11, '2018-03-23 00:25:55', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(56, 'Kacper', 11, '2018-03-23 00:28:50', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(57, 'Kacper', 11, '2018-03-23 00:29:51', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(58, 'Kacper', 11, '2018-03-23 00:31:15', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(59, 'Kacper', 11, '2018-03-23 00:34:26', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(60, 'Kacper', 11, '2018-03-23 00:34:44', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(61, 'Kacper', 11, '2018-03-23 00:37:16', '0000-00-00 00:00:00', '', '', 5, 0, '', 0),
(62, 'Bartek', 2, '2018-03-23 00:38:50', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(63, 'Kacper', 3, '2018-03-23 08:08:55', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(64, 'Kacper', 2, '2018-03-23 10:21:54', '0000-00-00 00:00:00', '', '', 0, 0, '', 0),
(65, 'Kacper', 2, '2018-03-23 10:23:04', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(66, 'Kecper', 3, '2018-03-23 10:44:44', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(67, 'k', 3, '2018-03-23 11:20:52', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(68, 'k', 2, '2018-03-23 11:23:36', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(69, 'k', 2, '2018-03-23 11:29:23', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(70, 'k', 2, '2018-03-23 11:29:28', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(71, 'k', 2, '2018-03-23 11:31:07', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(72, 'k', 2, '2018-03-23 11:31:08', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(73, 'k', 2, '2018-03-23 11:31:11', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(74, 'k', 2, '2018-03-23 11:31:12', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(75, 'k', 2, '2018-03-23 11:31:14', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(76, 'k', 2, '2018-03-23 11:32:02', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(77, 'k', 2, '2018-03-23 11:32:23', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(78, 'k', 2, '2018-03-23 11:33:28', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(79, 'Kacper', 2, '2018-03-23 11:33:51', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(80, 'k', 2, '2018-03-23 12:05:48', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(81, 'Kacper', 2, '2018-03-23 12:05:58', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(82, 'Kacper', 2, '2018-03-23 12:11:55', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(83, 'k', 2, '2018-03-23 12:12:31', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(84, 'Kacper', 3, '2018-03-23 12:16:06', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(85, 'Kacper', 3, '2018-03-24 16:27:56', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(86, 'Kacper', 6, '2018-05-10 13:07:32', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(87, 'Kacper', 6, '2018-05-11 11:25:28', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(88, 'KAcper', 6, '2018-05-17 12:34:42', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(89, 'Kacper', 6, '2018-05-17 16:11:17', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(90, 'Kacper', 6, '2018-05-17 16:15:04', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(91, 'alkfnlk', 6, '2018-05-17 16:15:33', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(92, 'Kacper', 3, '2018-05-17 22:22:33', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(93, 'Kuba', 3, '2018-05-18 00:34:19', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(94, 'Marek', 3, '2018-05-18 00:37:52', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(95, 'kacper', 3, '2018-05-18 00:49:56', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(96, 'Kacper', 3, '2018-05-18 00:50:34', '0000-00-00 00:00:00', '', '', 4, 0, 'gotówka', 0),
(97, 'Robert', 3, '2018-05-18 07:43:32', '0000-00-00 00:00:00', '', '', 4, 0, 'gotówka', 0),
(98, 'Jan', 3, '2018-05-18 08:07:10', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(99, 'Janek', 3, '2018-05-18 08:07:32', '0000-00-00 00:00:00', '', '', 4, 0, 'karta', 0),
(100, 'Kacper', 3, '2018-05-18 10:06:00', '0000-00-00 00:00:00', '', '', 4, 0, 'karta', 0),
(101, 'Kacper', 3, '2018-05-18 10:16:36', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(102, 'Kacper', 3, '2018-05-18 10:24:09', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(103, 'Kacper', 3, '2018-05-18 10:33:17', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(104, 'Kacper', 3, '2018-05-18 10:36:19', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(105, 'Kacper', 3, '2018-05-18 10:37:56', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(106, 'Kacper', 3, '2018-05-18 10:44:23', '0000-00-00 00:00:00', '', '', 4, 0, '', 0),
(108, 'Kacper', 3, '2018-05-18 10:54:26', '0000-00-00 00:00:00', '', '', 4, 0, 'karta', 0),
(109, 'Kacper', 3, '2018-05-18 17:08:26', '0000-00-00 00:00:00', '', '', 4, 0, 'gotówka', 0),
(110, 'Kacper', 3, '2018-05-18 17:10:54', '0000-00-00 00:00:00', '', '', 4, 0, 'gotówka', 0),
(112, 'Kacper', 3, '2018-05-18 17:36:18', '0000-00-00 00:00:00', '', '', 4, 0, 'gotówka', 0),
(113, 'Krzys', 6, '2018-05-25 01:03:12', '0000-00-00 00:00:00', '', '', 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id_rezerwacji` int(11) NOT NULL,
  `data_rezerwacji` datetime NOT NULL,
  `stolik_wybrany` tinyint(1) NOT NULL,
  `id_rachunku` int(11) NOT NULL,
  `id_stalego_klienta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rezerwacje`
--

INSERT INTO `rezerwacje` (`id_rezerwacji`, `data_rezerwacji`, `stolik_wybrany`, `id_rachunku`, `id_stalego_klienta`) VALUES
(1, '2018-03-15 00:00:00', 0, 84, 2);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_roli` int(11) NOT NULL,
  `nazwa_roli` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opis_roli` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_roli`, `nazwa_roli`, `opis_roli`) VALUES
(1, 'Menager', ''),
(2, 'Kucharz', ''),
(3, 'Barman', ''),
(4, 'Kelner', 'Podgląd aktualnych zamówień'),
(5, 'Kierownik zmiany', '');

-- --------------------------------------------------------

--
-- Table structure for table `sektory`
--

CREATE TABLE `sektory` (
  `id_sektora` int(11) NOT NULL,
  `nazwa_sektora` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aktywny` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sektory`
--

INSERT INTO `sektory` (`id_sektora`, `nazwa_sektora`, `aktywny`) VALUES
(1, 'patio', 1),
(2, 'piwnica', 0),
(3, 'sala główna', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stalyklient`
--

CREATE TABLE `stalyklient` (
  `id_stalego_klienta` int(11) NOT NULL,
  `informacja_handlowa` tinyint(1) NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `znizka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_osoby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stalyklient`
--

INSERT INTO `stalyklient` (`id_stalego_klienta`, `informacja_handlowa`, `password`, `znizka`, `id_osoby`) VALUES
(1, 0, '', '', 1),
(2, 0, '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stoliki`
--

CREATE TABLE `stoliki` (
  `id_stolika` int(11) NOT NULL,
  `nazwa_stolika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kod_stolika` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `liczba_miejsc` int(11) NOT NULL,
  `zajety` tinyint(1) NOT NULL,
  `id_sektora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stoliki`
--

INSERT INTO `stoliki` (`id_stolika`, `nazwa_stolika`, `kod_stolika`, `liczba_miejsc`, `zajety`, `id_sektora`) VALUES
(1, 'Patio 6', 'pt6', 6, 0, 1),
(2, 'Piwnica 6', 'pw6', 6, 0, 2),
(3, 'Patio 8', 'pt8', 8, 0, 1),
(4, 'Główna 3', 'gl3', 3, 0, 3),
(5, 'Główna 12', 'gl12', 12, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vat`
--

CREATE TABLE `vat` (
  `id_vat` int(11) NOT NULL,
  `stawka_vat` int(11) NOT NULL,
  `dotyczy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vat`
--

INSERT INTO `vat` (`id_vat`, `stawka_vat`, `dotyczy`) VALUES
(1, 7, ''),
(2, 8, ''),
(3, 23, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C2502824F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_C2502824E7927C74` (`email`);

--
-- Indexes for table `blokady`
--
ALTER TABLE `blokady`
  ADD PRIMARY KEY (`id_blokady`);

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kategorii`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `obsluga`
--
ALTER TABLE `obsluga`
  ADD PRIMARY KEY (`id_rachunku`,`id_pracownika`);

--
-- Indexes for table `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`id_osoby`);

--
-- Indexes for table `pozycje_menu`
--
ALTER TABLE `pozycje_menu`
  ADD PRIMARY KEY (`id_pozycji_menu`);

--
-- Indexes for table `pozycje_zamowienia`
--
ALTER TABLE `pozycje_zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`,`id_pozycji_menu`);

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indexes for table `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produktu`);

--
-- Indexes for table `rachunki`
--
ALTER TABLE `rachunki`
  ADD PRIMARY KEY (`id_rachunku`);

--
-- Indexes for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id_rezerwacji`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_roli`);

--
-- Indexes for table `sektory`
--
ALTER TABLE `sektory`
  ADD PRIMARY KEY (`id_sektora`);

--
-- Indexes for table `stalyklient`
--
ALTER TABLE `stalyklient`
  ADD PRIMARY KEY (`id_stalego_klienta`);

--
-- Indexes for table `stoliki`
--
ALTER TABLE `stoliki`
  ADD PRIMARY KEY (`id_stolika`);

--
-- Indexes for table `vat`
--
ALTER TABLE `vat`
  ADD PRIMARY KEY (`id_vat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blokady`
--
ALTER TABLE `blokady`
  MODIFY `id_blokady` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kategorii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `osoba`
--
ALTER TABLE `osoba`
  MODIFY `id_osoby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pozycje_menu`
--
ALTER TABLE `pozycje_menu`
  MODIFY `id_pozycji_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_produktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `rachunki`
--
ALTER TABLE `rachunki`
  MODIFY `id_rachunku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id_rezerwacji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_roli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sektory`
--
ALTER TABLE `sektory`
  MODIFY `id_sektora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stalyklient`
--
ALTER TABLE `stalyklient`
  MODIFY `id_stalego_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stoliki`
--
ALTER TABLE `stoliki`
  MODIFY `id_stolika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vat`
--
ALTER TABLE `vat`
  MODIFY `id_vat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
