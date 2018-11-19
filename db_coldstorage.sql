-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 04:36 PM
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
  `owner_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `storage_location` varchar(50) NOT NULL,
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
  `storage_temperature` varchar(50) DEFAULT NULL,
  `space_booked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `storage_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_reg_client`
--
ALTER TABLE `storage_reg_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_reg_owner`
--
ALTER TABLE `storage_reg_owner`
  MODIFY `own_id` int(11) NOT NULL AUTO_INCREMENT;
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
