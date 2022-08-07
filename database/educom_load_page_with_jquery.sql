-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 09:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `educom_load_page_with_jquery`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_table`
--

CREATE TABLE `main_table` (
  `sl` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_table`
--

INSERT INTO `main_table` (`sl`, `product_name`) VALUES
(1, 'Mobiles'),
(2, 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `sub_table`
--

CREATE TABLE `sub_table` (
  `sl` int(11) NOT NULL,
  `main_table_sl` int(11) NOT NULL,
  `sub_name` varchar(50) DEFAULT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_table`
--

INSERT INTO `sub_table` (`sl`, `main_table_sl`, `sub_name`, `rate`) VALUES
(1, 1, 'Samsung Mobiles', 4999),
(2, 1, 'Apple Mobiles', 7999),
(3, 1, 'Nokia Mobiles', 3669),
(4, 2, 'Peter England', 1599),
(5, 2, 'Monte Carlo', 1289),
(6, 2, 'Allen Solly', 699),
(7, 2, 'Louis Philippe', 5336);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_table`
--
ALTER TABLE `main_table`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `sub_table`
--
ALTER TABLE `sub_table`
  ADD PRIMARY KEY (`sl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_table`
--
ALTER TABLE `main_table`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_table`
--
ALTER TABLE `sub_table`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
