-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2018 at 06:01 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_coldstorage`
--

-- --------------------------------------------------------

--
-- Table structure for table `storage_info`
--

CREATE TABLE `storage_info` (
  `id` int(11) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `payment` int(10) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_info`
--

INSERT INTO `storage_info` (`id`, `product_type`, `location`, `payment`, `contact`) VALUES
(1, 'vegetable', 'Bogra', 500, '123456789'),
(2, 'meat', 'Kushtia', 1000, '1245672329'),
(3, 'egg', 'Jessore', 400, '3456765439'),
(4, 'vegetable', 'Cox''s Bazar', 1200, '123456789'),
(5, 'meat', 'Brahmanbaria', 800, '1245672329'),
(6, 'egg', 'Dinajpur', 500, '3456765439'),
(7, 'chicken', 'Sirajganj', 700, '3456765439'),
(8, 'fish', 'Nawabganj', 600, '3456765439'),
(9, 'vegetable', 'Tangail', 400, '123456789'),
(10, 'meat', 'Feni', 600, '1245672329'),
(11, 'chicken', 'Jamalpur', 300, '3456765439'),
(12, 'fruit', 'Pabna', 500, '3456765439'),
(13, 'fish', 'Noakhali', 800, '3456765439'),
(14, 'vegetable', 'Faridpur', 200, '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `storage_info`
--
ALTER TABLE `storage_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `storage_info`
--
ALTER TABLE `storage_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
