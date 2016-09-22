-- Create onlineshop database
CREATE DATABASE `onlineshop`
       DEFAULT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci';

	   -- Create onlineshopadmin user
GRANT ALL PRIVILEGES ON `onlineshop`.*
      TO 'onlineshopadmin'@'localhost' IDENTIFIED BY 'onlineshopadmin'
      WITH GRANT OPTION;

	   -- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2016 at 11:13 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `description`) VALUES
(1, 'Regional', 'Wide assortment of posters showing local attractions.'),
(2, 'Nature', 'Find beautiful posters with animals or flowers in our Nature department!'),
(3, 'Seasonal', 'Our seasonal posters use unique postal stamp pictures.'),
(4, 'Regional', 'Wide assortment of posters showing local attractions.'),
(5, 'Nature', 'Find beautiful posters with animals or flowers in our Nature department!'),
(6, 'Seasonal', 'Our seasonal posters use unique postal stamp pictures.');

-- --------------------------------------------------------

--
-- Table structure for table `part`
--

CREATE TABLE `part` (
  `part_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `part`
--

INSERT INTO `part` (`part_id`, `name`, `description`) VALUES
(1, 'Tire', 'Rolls car.'),
(2, 'Wheel', 'All for looks!'),
(3, 'Engine', 'Pulls car.'),
(4, 'Door', 'Protects driver.'),
(5, 'Hood', 'Covers the engine!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `part`
--
ALTER TABLE `part`
  ADD PRIMARY KEY (`part_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `part`
--
ALTER TABLE `part`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;











# Privileges for `onlineshopadmin`@`localhost`

GRANT USAGE ON *.* TO 'onlineshopadmin'@'localhost' IDENTIFIED BY PASSWORD '*4311BEF8B82A2ABFC2A9C680717489C96F049344';

GRANT ALL PRIVILEGES ON `onlineshop`.* TO 'onlineshopadmin'@'localhost' WITH GRANT OPTION;