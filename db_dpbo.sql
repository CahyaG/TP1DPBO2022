-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 01:54 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dpbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_author`
--

CREATE TABLE `tb_author` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_author`
--

INSERT INTO `tb_author` (`id`, `nama`, `jumlah_buku`, `img`) VALUES
(4, 'Tere Liye', 58, '22033004410131_tereliye.jpg'),
(5, 'Cahya Gumilang', 7772, '220330044639339_cahya.jpg'),
(6, 'Mark Manson', 92, '220330045225325_mark.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `des` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `id_author`, `penerbit`, `des`, `img`) VALUES
(13, 4, 'Gramedia', 'Judulnya Bumi', '220330044552352_bumi.jpg'),
(14, 4, 'Gramedia', 'Ini Judulnya Matahari', '220330044952352_matahari.jpg'),
(15, 5, 'Entah', 'Iya', '220330045036336_th.jpg'),
(16, 6, 'Ai', 'Will', '220330045342342_will.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_author`
--
ALTER TABLE `tb_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_author` (`id_author`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_author`
--
ALTER TABLE `tb_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD CONSTRAINT `tb_buku_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `tb_author` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
