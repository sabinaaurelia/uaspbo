-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 03:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbskincare`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc`
--

CREATE TABLE `acc` (
  `id_acc` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acc`
--

INSERT INTO `acc` (`id_acc`, `username`, `password`) VALUES
(1, '1', '1'),
(6, 'hannah', '123'),
(7, 'elle', '321');

-- --------------------------------------------------------

--
-- Table structure for table `skincare`
--

CREATE TABLE `skincare` (
  `id` int(11) NOT NULL,
  `merk` text NOT NULL,
  `nama` text NOT NULL,
  `stok` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skincare`
--

INSERT INTO `skincare` (`id`, `merk`, `nama`, `stok`, `price`, `kategori`) VALUES
(76, 'haple', 'essence', 22, 54, 'Normal'),
(34, 'dear klairs', 'serum', 63, 150, 'Oily'),
(32, 'Skintific', 'Moisturizer', 50, 186000, 'Normal'),
(98, 'NPure', 'Face Wash', 2, 90000, 'Oily'),
(21, 'Cetaphil', 'Cleanser', 100, 194000, 'Oily'),
(22, 'ERHA', 'Facial Wash', 80, 85000, 'Oily'),
(23, 'SKIN GAME', 'Theory Brightening Essence', 60, 163000, 'Oily'),
(77, 'TRUE TO SKIN', 'Glo CBooster Serum', 29, 134000, 'Normal'),
(79, 'BIYU', 'Daily Light Moisturizer', 36, 102000, 'Normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc`
--
ALTER TABLE `acc`
  ADD PRIMARY KEY (`id_acc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc`
--
ALTER TABLE `acc`
  MODIFY `id_acc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
