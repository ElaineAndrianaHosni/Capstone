-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 05:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konser`
--

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE `concerts` (
  `concertId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `genre` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `venueURL` varchar(255) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `type` enum('Online','Offline','','') NOT NULL,
  `rate` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`concertId`, `name`, `description`, `company`, `date`, `time`, `genre`, `venue`, `city`, `imageURL`, `venueURL`, `longitude`, `latitude`, `type`, `rate`) VALUES
(1, 'Coldplay Live', '', '', '2023-07-15', '16:00:00', 'Rock', 'Gelora Bung Karno', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 1),
(2, 'Dua Lipa Concert', '', '', '2023-08-10', '18:00:00', 'Rock', 'Sentul International Convention Center', 'Sentul', '', '', '0.000000', '0.000000', 'Online', 2),
(3, 'Justin Bieber Live', '', '', '2023-09-05', '15:00:00', 'Pop', 'ICE BSD', 'Tangerang', '', '', '0.000000', '0.000000', 'Online', 3),
(4, 'The Weeknd Tour', '', '', '2023-09-20', '18:00:00', 'R&B', 'Balai Sidang Jakarta Convention Center', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(5, 'Ariana Grande Live', '', '', '2023-10-01', '19:00:00', 'Pop', 'Indonesia Convention Exhibition', 'Tangerang', '', '', '0.000000', '0.000000', 'Online', 2),
(6, 'Blackpink Concert', '', '', '2023-10-15', '18:00:00', 'K-Pop', 'ICE BSD', 'Tangerang', '', '', '0.000000', '0.000000', 'Online', 5),
(7, 'Maroon 5 Tour', '', '', '2023-11-01', '16:00:00', 'Pop', 'Gelora Bung Karno', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(8, 'Post Malone Live', '', '', '2023-11-15', '20:00:00', 'Hip-hop', 'Indonesia Convention Exhibition', 'Tangerang', '', '', '0.000000', '0.000000', 'Online', 4),
(9, 'BTS World Tour', '', '', '2023-12-01', '17:00:00', 'K-Pop', 'Gelora Bung Karno', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(10, 'Shawn Mendes Live', '', '', '2023-12-15', '17:00:00', 'Pop', 'Sentul International Convention Center', 'Sentul', '', '', '0.000000', '0.000000', 'Online', 5),
(11, 'Elton John Live', '', '', '2023-12-15', '18:00:00', 'Pop', 'Istora Senayan', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(12, 'Isyana Sarasvati', '', '', '2023-06-10', '18:30:00', 'Pop', 'Balai Sarbini', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(13, 'Bunga Citra Lestari', '', '', '2023-07-20', '17:00:00', 'Pop', 'JIEXPO', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(14, 'Slank', '', '', '2023-08-05', '19:30:00', 'Rock', 'Gor Pahlawan', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 2),
(15, 'Noah', '', '', '2023-09-01', '20:00:00', 'Rock', 'Istora Senayan', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(16, 'Tulus', '', '', '2023-09-15', '19:30:00', 'Pop', 'Graha Bhakti Budaya', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 1),
(17, 'Sheila On 7', '', '', '2023-10-10', '17:30:00', 'Pop', 'Lapangan Pamedan', 'Medan', '', '', '0.000000', '0.000000', 'Online', 4),
(18, 'Afgan', '', '', '2023-12-05', '18:30:00', 'Pop', 'Plenary Hall Jakarta Convention Center', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(19, 'Judika', '', '', '2023-12-20', '17:00:00', 'Pop', 'Kridosono Stadium', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 2),
(20, 'Jessie J Goes to Campus', '', '', '2023-12-08', '15:00:00', 'Jazz', 'Universitas Indonesia', 'Depok', '', '', '0.000000', '0.000000', 'Online', 3),
(21, 'Kahitna Concert', '', '', '2023-10-10', '18:00:00', 'Jazz', 'ICE BSD', 'Tanggerang', '', '', '0.000000', '0.000000', 'Online', 4),
(22, 'Gigi Concert', '', '', '2023-12-01', '19:00:00', 'Pop', 'Solo Square', 'Solo', '', '', '0.000000', '0.000000', 'Online', 5),
(23, 'Ayu Ting Ting Festival', '', '', '2023-08-05', '20:00:00', 'Dangdut', 'Surabaya Carnival', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 5),
(24, 'Rock Fest', '', '', '2023-11-12', '20:00:00', 'Rock', 'Bandung Supermall', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 5),
(25, 'EDM Night', '', '', '2023-07-08', '20:30:00', 'Disco', 'Trans Studio Bandung', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 3),
(26, 'Bruno Mars', '', '', '2023-06-10', '18:30:00', 'Pop', 'Gelora Bung Karno', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(27, 'Red Hot Chili Peppers', '', '', '2023-07-15', '18:30:00', 'Rock', 'East Coast Center Surabaya', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 5),
(28, 'John Mayer', '', '', '2023-08-20', '19:00:00', 'Blues', 'Sasana Budaya Ganesha', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 5),
(29, 'Calvin Harris', '', '', '2023-09-30', '18:00:00', 'Electronic', 'Garuda Wisnu Kencana ', 'Bali', '', '', '0.000000', '0.000000', 'Online', 4),
(30, 'Andrea Bocelli', '', '', '2023-10-25', '18:30:00', 'Classical', 'Jogja Expo Center', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(31, 'Ed Sheeran', '', '', '2023-06-10', '19:15:00', 'Pop', 'ICE BSD', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(32, 'The Weeknd', '', '', '2023-07-15', '19:20:00', 'R&B', 'Graha Cakrawala Surabaya', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 3),
(33, 'Dangdut Showcase', '', '', '2023-11-25', '16:00:00', 'Dangdut', 'Palembang Sport Center', 'Palembang', '', '', '0.000000', '0.000000', 'Online', 2),
(34, 'Ayu Ting Ting Live', '', '', '2023-06-01', '18:00:00', 'Dangdut', 'Jakarta Convention Center', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 2),
(35, 'Martin Garrix', '', '', '2023-09-30', '21:00:00', 'Electronic', 'Garuda Wisnu Kencana ', 'Bali', '', '', '0.000000', '0.000000', 'Online', 2),
(36, 'Yo-Yo Ma', '', '', '2023-10-25', '16:00:00', 'Classical', 'Jogja Expo Center', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(37, 'David Guetta', '', '', '2023-09-10', '20:00:00', 'Electronic', 'LXXY Bali', 'Bali', '', '', '0.000000', '0.000000', 'Online', 4),
(38, 'Lang Lang', '', '', '2023-10-20', '16:00:00', 'Classical', 'Kridosono Stadium', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(39, 'Metallica', '', '', '2023-08-28', '19:30:00', 'Heavy Metal', 'Graha Manggala Siliwangi', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 2),
(40, 'Armin van Buuren', '', '', '2023-09-15', '20:30:00', 'Electronic', 'Finns Beach Club', 'Bali', '', '', '0.000000', '0.000000', 'Online', 3),
(41, 'Andrea Bocelli', '', '', '2023-10-30', '20:00:00', 'Classical', 'Jogja Expo Center', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(42, 'Fourtwnty', '', '', '2023-06-15', '19:00:00', 'Indie Pop', 'Parkir Timur', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(43, 'RAN', '', '', '2023-07-15', '18:10:00', 'Pop', 'Kartika Expo', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 4),
(44, 'Payung Teduh', '', '', '2023-08-19', '17:45:00', 'Indie Folk', 'Gedung Sate', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 4),
(45, 'Naif', '', '', '2023-09-30', '17:10:00', 'Pop/Rock', 'Tennis Indoor', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(46, 'GAC', '', '', '2023-07-20', '18:00:00', 'Pop', 'Graha Manggala', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 3),
(47, 'We The Fest', '', '', '2023-07-24', '19:00:00', 'Pop', 'JIExpo Kemayoran', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(48, 'HIVI!', '', '', '2023-08-25', '16:20:00', 'R&B', 'Sutos', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 2),
(49, 'Sore', '', '', '2023-09-10', '17:20:00', 'Indie Folk', 'Societet Militair', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(50, 'Maliq & D`Essentials', '', '', '2023-10-20', '18:00:00', 'R&B', 'Tennis Indoor', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 1),
(51, 'Nidji', '', '', '2023-06-18', '19:00:00', 'Pop/Rock', 'Sabuga', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 3),
(52, 'Kahitna', '', '', '2023-07-22', '17:30:00', 'Pop', 'Graha Bhakti', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(53, 'Rizky Febian', '', '', '2023-09-15', '15:00:00', 'Pop/R&B', 'Balai Sarbini', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(54, 'The Adams', '', '', '2023-10-30', '16:45:00', 'Pop', 'Joglo Plawang', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 2),
(55, '/rif', '', '', '2023-08-28', '17:00:00', 'Rock', 'Gor Padjajaran', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 3),
(56, 'K-Pop Mania', '', '', '2023-05-01', '19:00:00', 'K-Pop', 'ICE BSD', 'Tanggerang', '', '', '0.000000', '0.000000', 'Online', 4),
(57, 'Love Yourself World Tour', '', '', '2023-01-06', '19:00:00', 'K-Pop', 'Gelora Bung Karno', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(58, 'TWICE ', '', '', '2023-09-05', '19:30:00', 'K-Pop', 'Sentul International Convention Center', 'Bogor', '', '', '0.000000', '0.000000', 'Online', 4),
(59, 'Red Velvet: La Rouge', '', '', '2023-10-10', '19:30:00', 'K-Pop', 'Jakarta Convention Center', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(60, 'Jakarta Philharmonic Orchestra', '', '', '2023-09-15', '20:00:00', 'Classical', 'Aula Simfonia Jakarta', 'Jakarta ', '', '', '0.000000', '0.000000', 'Online', 5),
(61, 'Yogyakarta Symphony Orchestra', '', '', '2023-10-20', '18:15:00', 'Classical', 'Gedung Kesenian Yogyakarta', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(62, 'Surabaya Symphony Orchestra', '', '', '2023-11-05', '19:00:00', 'Classical', 'Surabaya Convention Hall', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 4),
(63, 'Bali Philharmonic Orchestra', '', '', '2023-12-10', '19:15:00', 'Classical', 'Taman Budaya Art Center', 'Denpasar', '', '', '0.000000', '0.000000', 'Online', 4),
(64, 'John Legend', '', '', '2023-06-15', '18:00:00', 'R&B', 'Jakarta Convention Center', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(65, 'Alicia Keys', '', '', '2023-08-20', '19:00:00', 'R&B', 'The Kasablanka Hall', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(66, 'H.E.R.', '', '', '2023-09-05', '20:00:00', 'R&B', 'Ciputra Artpreneur Theater', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(67, 'Daniel Caesar', '', '', '2023-10-10', '17:00:00', 'R&B', 'Bandung Convention Center', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 2),
(68, 'Kendrick Lamar', '', '', '2023-06-19', '19:00:00', 'Hip-hop', 'Istora Senayan', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(69, 'Travis Scott', '', '', '2023-08-30', '19:15:00', 'Hip-hop', 'ICE BSD City', 'Tangerang', '', '', '0.000000', '0.000000', 'Online', 4),
(70, 'J. Cole', '', '', '2023-09-05', '20:30:00', 'Hip-hop', 'GOR Saparua', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 4),
(71, 'Cardi B', '', '', '2023-10-23', '20:00:00', 'Hip-hop', 'Kridosono Stadium', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(72, 'Tessa Violet', '', '', '2023-06-16', '19:00:00', 'Indie Folk ', 'Soehanna Hall', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(73, 'Conan Gray', '', '', '2023-09-06', '19:15:00', 'Indie Folk ', 'The Kasablanka Hall', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(74, 'Oh Wonder', '', '', '2023-10-24', '18:00:00', 'Indie Folk ', 'Bali Nusa Dua Convention Center', 'Nusa Dua', '', '', '0.000000', '0.000000', 'Online', 5),
(75, 'LANY', '', '', '2023-12-12', '18:15:00', 'Indie Folk ', 'Surabaya Convention Center', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 4),
(76, 'Metallica', '', '', '2023-06-15', '19:30:00', 'Heavy Metal', 'Gelora Bung Karno Stadium', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(77, 'Iron Maiden', '', '', '2023-08-25', '20:00:00', 'Heavy Metal', 'JIExpo Kemayoran', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(78, 'Slayer', '', '', '2023-09-19', '20:15:00', 'Heavy Metal', 'Gor Sritex Arena', 'Solo', '', '', '0.000000', '0.000000', 'Online', 4),
(79, 'Behemoth', '', '', '2023-10-17', '19:45:00', 'Heavy Metal', 'Lapangan D Senayan', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(80, 'Slipknot', '', '', '2023-11-15', '20:00:00', 'Heavy Metal', 'Sabuga', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 2),
(81, 'Padi Reunion', '', '', '2023-06-10', '19:00:00', 'Pop/Rock', 'Tennis Indoor', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(82, 'Sisitipsi', '', '', '2023-07-17', '20:30:00', 'Indie Folk', 'Sabuga', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 5),
(83, 'Tipe-X', '', '', '2023-09-30', '20:00:00', 'Ska', 'Graha Manggala', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 5),
(84, 'Barasuara', '', '', '2023-08-25', '20:30:00', 'Indie Pop', 'Tennis Indoor', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(85, 'Seringai', '', '', '2023-09-10', '21:00:00', 'Hard Rock', 'Societet Militair', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(86, 'AC/DC', '', '', '2023-07-15', '19:30:00', 'Hard Rock', 'Sabuga', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 5),
(87, 'Sia', '', '', '2023-08-30', '21:00:00', 'Pop', 'Societet Militair', 'Yogyakarta', '', '', '0.000000', '0.000000', 'Online', 5),
(88, 'INXS', '', '', '2023-06-15', '20:30:00', 'Rock', 'Taman Budaya Art Center', 'Denpasar', '', '', '0.000000', '0.000000', 'Online', 3),
(89, 'Gotye', '', '', '2023-07-20', '19:00:00', 'Indie Pop', 'JIExpo Kemayoran', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 3),
(90, 'Tash Sultana', '', '', '2023-08-25', '21:00:00', 'Alternative', 'Gor Sritex Arena', 'Solo', '', '', '0.000000', '0.000000', 'Online', 2),
(91, 'The Amity Affliction', '', '', '2023-09-10', '20:00:00', 'Metalcore', 'ICE BSD City', 'Tangerang', '', '', '0.000000', '0.000000', 'Online', 4),
(92, 'The Changcuters', '', '', '2023-07-20', '19:00:00', 'Pop/Rock', 'Graha Manggala', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 4),
(93, 'D’Masiv', '', '', '2023-08-25', '21:00:00', 'Pop', 'Tennis Indoor', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(94, 'Armada', '', '', '2023-08-25', '16:50:00', 'Pop', 'Sutos', 'Surabaya', '', '', '0.000000', '0.000000', 'Online', 3),
(95, 'Geisha', '', '', '2023-05-01', '19:00:00', 'Pop', 'ICE BSD', 'Tanggerang', '', '', '0.000000', '0.000000', 'Online', 4),
(96, 'Kangen Band', '', '', '2023-07-28', '18:15:00', 'Pop', 'Graha Manggala', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 1),
(97, 'Dewa 19', '', '', '2023-08-09', '17:00:00', 'Pop/Rock', 'GOR Saparua', 'Bandung', '', '', '0.000000', '0.000000', 'Online', 3),
(98, 'Koes Plus', '', '', '2023-06-16', '19:15:00', 'Rock', 'Soehanna Hall', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 2),
(99, 'Radja', '', '', '2023-07-12', '20:15:00', 'Pop/Rock', 'Tennis Indoor', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 4),
(100, 'Repvblik', '', '', '2023-07-27', '19:30:00', 'Rock', 'Jakarta Convention Center', 'Jakarta', '', '', '0.000000', '0.000000', 'Online', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticketId` int(11) NOT NULL,
  `concertId` int(11) NOT NULL,
  `type` enum('gold','silver','bronze','') NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `availableQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`concertId`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `concertId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
