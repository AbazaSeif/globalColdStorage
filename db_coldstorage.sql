-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 10:37 AM
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
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `total_space` varchar(30) NOT NULL,
  `booking_space` varchar(30) NOT NULL,
  `total_bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storage_info`
--

CREATE TABLE `storage_info` (
  `storage_id` int(11) NOT NULL,
  `storage_name` varchar(50) NOT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `storage_location` varchar(50) NOT NULL,
  `payment` int(10) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `storage_capacity` varchar(50) DEFAULT NULL,
  `storage_temperature` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_info`
--

INSERT INTO `storage_info` (`storage_id`, `storage_name`, `product_type`, `storage_location`, `payment`, `contact`, `storage_capacity`, `storage_temperature`) VALUES
(1, 'kkk ltd.', NULL, 'aaaaa', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `storage_reg_client`
--

CREATE TABLE `storage_reg_client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_contact` varchar(50) NOT NULL,
  `client_email` varchar(30) NOT NULL,
  `client_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_reg_client`
--

INSERT INTO `storage_reg_client` (`client_id`, `client_name`, `client_contact`, `client_email`, `client_password`) VALUES
(1, 'imran', '123456789', 'imran@hadid.com', '$2y$10$mONGEF0pQnsVA1FbEuwGXOJl0qTQ4il4wVhpJao1BzqkIyZj6Y6h6');

-- --------------------------------------------------------

--
-- Table structure for table `storage_reg_owner`
--

CREATE TABLE `storage_reg_owner` (
  `storage_id` int(11) NOT NULL,
  `storage_name` varchar(50) NOT NULL,
  `storage_location` varchar(50) NOT NULL,
  `own_id` int(11) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `owner_email` varchar(50) NOT NULL,
  `owner_password` varchar(200) NOT NULL,
  `owner_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_reg_owner`
--

INSERT INTO `storage_reg_owner` (`storage_id`, `storage_name`, `storage_location`, `own_id`, `owner_name`, `owner_email`, `owner_password`, `owner_contact`) VALUES
(1, 'kkk ltd.', 'aaaaa', 1, 'imran', 'admin@example.com', '$2y$10$Ch/Vs1sfRadZIcsgKkbl9OGPw58qbcqteDu7YAU3MNfZOr2BucxXm', '23456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `storage_info`
--
ALTER TABLE `storage_info`
  ADD PRIMARY KEY (`storage_id`);

--
-- Indexes for table `storage_reg_client`
--
ALTER TABLE `storage_reg_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `storage_reg_owner`
--
ALTER TABLE `storage_reg_owner`
  ADD PRIMARY KEY (`own_id`),
  ADD KEY `storage_id` (`storage_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_info`
--
ALTER TABLE `storage_info`
  MODIFY `storage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `storage_reg_client`
--
ALTER TABLE `storage_reg_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `storage_reg_owner`
--
ALTER TABLE `storage_reg_owner`
  MODIFY `own_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `storage_reg_client` (`client_id`);

--
-- Constraints for table `storage_reg_owner`
--
ALTER TABLE `storage_reg_owner`
  ADD CONSTRAINT `storage_reg_owner_ibfk_1` FOREIGN KEY (`storage_id`) REFERENCES `storage_info` (`storage_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
