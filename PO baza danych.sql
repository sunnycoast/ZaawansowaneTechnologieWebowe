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
-- Baza danych: `users`
--

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
