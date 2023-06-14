-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 02:06 PM
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
  `type` enum('VIP','Standard') NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `availableQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticketId`, `concertId`, `type`, `price`, `quantity`, `availableQuantity`) VALUES
(1, 1, 'Standard', '250000', 400, 100),
(2, 2, 'Standard', '750000', 600, 300),
(3, 3, 'Standard', '125000', 3400, 500),
(4, 4, 'Standard', '500000', 500, 300),
(5, 5, 'Standard', '1000000', 1000, 500),
(6, 6, 'Standard', '175000', 2000, 500),
(7, 7, 'Standard', '750000', 300, 50),
(8, 8, 'Standard', '100000', 2000, 500),
(9, 9, 'Standard', '600000', 300, 100),
(10, 10, 'Standard', '900000', 150, 30),
(11, 11, 'Standard', '600000', 175, 15),
(12, 12, 'Standard', '250000', 150, 100),
(13, 13, 'Standard', '1500000', 120, 30),
(14, 14, 'Standard', '500000', 500, 100),
(15, 15, 'Standard', '750000', 150, 50),
(16, 16, 'Standard', '1000000', 120, 90),
(17, 17, 'Standard', '750000', 700, 100),
(18, 18, 'Standard', '500000', 1500, 1000),
(19, 19, 'Standard', '1750000', 120, 30),
(20, 20, 'Standard', '50000', 400, 200),
(21, 21, 'Standard', '500000', 200, 100),
(22, 22, 'Standard', '500000', 800, 200),
(23, 23, 'Standard', '200000', 10000, 650),
(24, 24, 'Standard', '150000', 800, 330),
(25, 25, 'Standard', '500000', 80, 39),
(26, 26, 'Standard', '500000', 5000, 3500),
(27, 27, 'Standard', '1000000', 1000, 460),
(28, 28, 'Standard', '400000', 2000, 1500),
(29, 29, 'Standard', '1250000', 500, 320),
(30, 30, 'Standard', '250000', 1000, 580),
(31, 31, 'Standard', '500000', 5000, 3100),
(32, 32, 'Standard', '1000000', 100, 54),
(33, 33, 'Standard', '150000', 100, 81),
(34, 34, 'Standard', '250000', 130, 12),
(35, 35, 'Standard', '1250000', 500, 342),
(36, 36, 'Standard', '250000', 1000, 678),
(37, 37, 'Standard', '750000', 2000, 1234),
(38, 38, 'Standard', '500000', 500, 321),
(39, 39, 'Standard', '1750000', 200, 131),
(40, 40, 'Standard', '600000', 2000, 1765),
(41, 41, 'Standard', '750000', 500, 412),
(42, 42, 'Standard', '60000', 2500, 200),
(43, 43, 'Standard', '150000', 500, 300),
(44, 44, 'Standard', '75000', 2000, 1250),
(45, 45, 'Standard', '125000', 400, 320),
(46, 46, 'Standard', '100000', 300, 219),
(47, 47, 'Standard', '500000', 300, 250),
(48, 48, 'Standard', '75000', 1500, 1001),
(49, 49, 'Standard', '90000', 400, 200),
(50, 50, 'Standard', '125000', 2000, 1234),
(51, 51, 'Standard', '150000', 400, 232),
(52, 52, 'Standard', '75000', 3000, 555),
(53, 53, 'Standard', '100000', 500, 112),
(54, 54, 'Standard', '60000', 800, 213),
(55, 55, 'Standard', '50000', 1000, 342),
(56, 56, 'Standard', '1500000', 200, 180),
(57, 57, 'Standard', '400000', 267, 43),
(58, 58, 'Standard', '250000', 550, 450),
(59, 59, 'Standard', '350000', 328, 54),
(60, 60, 'Standard', '175000', 439, 51),
(61, 61, 'Standard', '400000', 323, 60),
(62, 62, 'Standard', '450000', 490, 10),
(63, 63, 'Standard', '200000', 558, 30),
(64, 64, 'Standard', '250000', 450, 176),
(65, 65, 'Standard', '350000', 543, 176),
(66, 66, 'Standard', '400000', 550, 50),
(67, 67, 'Standard', '275000', 312, 45),
(68, 68, 'Standard', '1000000', 342, 143),
(69, 69, 'Standard', '1250000', 123, 23),
(70, 70, 'Standard', '425000', 213, 54),
(71, 71, 'Standard', '1500000', 234, 45),
(72, 72, 'Standard', '275000', 133, 23),
(73, 73, 'Standard', '150000', 124, 12),
(74, 74, 'Standard', '125000', 80, 32),
(75, 75, 'Standard', '175000', 134, 21),
(76, 76, 'Standard', '175000', 234, 32),
(77, 77, 'Standard', '500000', 321, 5),
(78, 78, 'Standard', '750000', 342, 56),
(79, 79, 'Standard', '275000', 544, 32),
(80, 80, 'Standard', '175000', 235, 25),
(81, 81, 'Standard', '150000', 320, 23),
(82, 82, 'Standard', '125000', 240, 43),
(83, 83, 'Standard', '100000', 300, 60),
(84, 84, 'Standard', '125000', 430, 45),
(85, 85, 'Standard', '100000', 234, 23),
(86, 86, 'Standard', '1500000', 450, 50),
(87, 87, 'Standard', '1200000', 560, 50),
(88, 88, 'Standard', '1350000', 543, 43),
(89, 89, 'Standard', '1150000', 650, 123),
(90, 90, 'Standard', '1450000', 345, 45),
(91, 91, 'Standard', '1100000', 565, 34),
(92, 92, 'Standard', '120000', 465, 23),
(93, 93, 'Standard', '130000', 650, 43),
(94, 94, 'Standard', '115000', 453, 60),
(95, 95, 'Standard', '100000', 345, 45),
(96, 96, 'Standard', '120000', 235, 34),
(97, 97, 'Standard', '125000', 430, 79),
(98, 98, 'Standard', '75000', 460, 80),
(99, 99, 'Standard', '75000', 340, 45),
(100, 100, 'Standard', '100000', 230, 75),
(101, 1, 'VIP', '500000', 100, 40),
(102, 2, 'VIP', '1500000', 50, 20),
(103, 3, 'VIP', '250000', 200, 120),
(104, 4, 'VIP', '1000000', 120, 34),
(105, 5, 'VIP', '2000000', 150, 56),
(106, 6, 'VIP', '350000', 175, 34),
(107, 7, 'VIP', '1500000', 75, 23),
(108, 8, 'VIP', '200000', 80, 12),
(109, 9, 'VIP', '1200000', 50, 21),
(110, 10, 'VIP', '1800000', 25, 12),
(111, 11, 'VIP', '1200000', 30, 21),
(112, 12, 'VIP', '500000', 60, 43),
(113, 13, 'VIP', '3000000', 100, 34),
(114, 14, 'VIP', '1000000', 125, 53),
(115, 15, 'VIP', '1500000', 20, 12),
(116, 16, 'VIP', '2000000', 20, 10),
(117, 17, 'VIP', '1500000', 70, 23),
(118, 18, 'VIP', '1000000', 150, 32),
(119, 19, 'VIP', '3500000', 25, 11),
(120, 20, 'VIP', '100000', 100, 33),
(121, 21, 'VIP', '1000000', 25, 8),
(122, 22, 'VIP', '1000000', 150, 23),
(123, 23, 'VIP', '400000', 200, 34),
(124, 24, 'VIP', '300000', 150, 45),
(125, 25, 'VIP', '1000000', 25, 10),
(126, 26, 'VIP', '1000000', 200, 23),
(127, 27, 'VIP', '2000000', 550, 49),
(128, 28, 'VIP', '800000', 150, 43),
(129, 29, 'VIP', '2500000', 50, 34),
(130, 30, 'VIP', '500000', 120, 23),
(131, 31, 'VIP', '1000000', 125, 43),
(132, 32, 'VIP', '2000000', 25, 8),
(133, 33, 'VIP', '300000', 25, 7),
(134, 34, 'VIP', '500000', 30, 19),
(135, 35, 'VIP', '2500000', 80, 32),
(136, 36, 'VIP', '500000', 45, 15),
(137, 37, 'VIP', '1500000', 120, 68),
(138, 38, 'VIP', '1000000', 30, 10),
(139, 39, 'VIP', '3500000', 20, 5),
(140, 40, 'VIP', '1200000', 120, 32),
(141, 41, 'VIP', '1500000', 120, 42),
(142, 42, 'VIP', '120000', 300, 78),
(143, 43, 'VIP', '300000', 200, 67),
(144, 44, 'VIP', '150000', 120, 56),
(145, 45, 'VIP', '250000', 150, 45),
(146, 46, 'VIP', '200000', 50, 34),
(147, 47, 'VIP', '1000000', 50, 23),
(148, 48, 'VIP', '150000', 75, 13),
(149, 49, 'VIP', '180000', 25, 5),
(150, 50, 'VIP', '250000', 125, 75),
(151, 51, 'VIP', '300000', 20, 4),
(152, 52, 'VIP', '150000', 150, 23),
(153, 53, 'VIP', '200000', 120, 56),
(154, 54, 'VIP', '120000', 60, 34),
(155, 55, 'VIP', '100000', 100, 23),
(156, 56, 'VIP', '3000000', 23, 6),
(157, 57, 'VIP', '800000', 46, 12),
(158, 58, 'VIP', '500000', 59, 41),
(159, 59, 'VIP', '700000', 76, 34),
(160, 60, 'VIP', '350000', 45, 21),
(161, 61, 'VIP', '800000', 23, 6),
(162, 62, 'VIP', '900000', 43, 23),
(163, 63, 'VIP', '400000', 54, 12),
(164, 64, 'VIP', '500000', 35, 14),
(165, 65, 'VIP', '700000', 50, 21),
(166, 66, 'VIP', '800000', 70, 32),
(167, 67, 'VIP', '550000', 30, 12),
(168, 68, 'VIP', '2000000', 45, 29),
(169, 69, 'VIP', '2500000', 45, 25),
(170, 70, 'VIP', '850000', 50, 32),
(171, 71, 'VIP', '3000000', 55, 24),
(172, 72, 'VIP', '550000', 60, 24),
(173, 73, 'VIP', '300000', 23, 11),
(174, 74, 'VIP', '250000', 15, 7),
(175, 75, 'VIP', '350000', 50, 23),
(176, 76, 'VIP', '350000', 80, 43),
(177, 77, 'VIP', '1000000', 56, 23),
(178, 78, 'VIP', '1500000', 45, 12),
(179, 79, 'VIP', '550000', 34, 13),
(180, 80, 'VIP', '350000', 23, 11),
(181, 81, 'VIP', '300000', 20, 10),
(182, 82, 'VIP', '250000', 30, 14),
(183, 83, 'VIP', '200000', 22, 12),
(184, 84, 'VIP', '250000', 50, 23),
(185, 85, 'VIP', '200000', 100, 68),
(186, 86, 'VIP', '3000000', 59, 44),
(187, 87, 'VIP', '2400000', 23, 12),
(188, 88, 'VIP', '2700000', 40, 37),
(189, 89, 'VIP', '2300000', 50, 36),
(190, 90, 'VIP', '2900000', 200, 123),
(191, 91, 'VIP', '2200000', 100, 60),
(192, 92, 'VIP', '240000', 40, 29),
(193, 93, 'VIP', '260000', 50, 39),
(194, 94, 'VIP', '230000', 50, 38),
(195, 95, 'VIP', '200000', 27, 14),
(196, 96, 'VIP', '240000', 70, 65),
(197, 97, 'VIP', '250000', 80, 67),
(198, 98, 'VIP', '150000', 60, 56),
(199, 99, 'VIP', '150000', 100, 70),
(200, 100, 'VIP', '200000', 80, 67);

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
  MODIFY `ticketId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
