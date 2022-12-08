-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 08, 2022 at 07:16 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `donar`
--

DROP TABLE IF EXISTS `donar`;
CREATE TABLE IF NOT EXISTS `donar` (
  `DONAR_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `MOBILE` int(11) DEFAULT NULL,
  `FIRSTNAME` varchar(20) DEFAULT NULL,
  `LASTNAME` varchar(20) DEFAULT NULL,
  `GENDER` varchar(5) DEFAULT NULL,
  `DATEOFBIRTH` date DEFAULT NULL,
  `AATHAAR` int(11) DEFAULT NULL,
  `PAN` int(11) DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DONAR_ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
CREATE TABLE IF NOT EXISTS `donate` (
  `DONATE_ID` int(11) NOT NULL,
  `ITEM` varchar(20) DEFAULT NULL,
  `DONAR_ID` int(11) DEFAULT NULL,
  `CATEGORY` varchar(20) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `DONATIONDATE` date DEFAULT NULL,
  PRIMARY KEY (`DONATE_ID`),
  KEY `DONAR_ID` (`DONAR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `take`
--

DROP TABLE IF EXISTS `take`;
CREATE TABLE IF NOT EXISTS `take` (
  `TAKE_ID` int(11) NOT NULL,
  `TAKER_ID` int(11) DEFAULT NULL,
  `DONATE_ID` int(11) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `REQUIREDDATE` date DEFAULT NULL,
  `CATEGORY` varchar(20) DEFAULT NULL,
  `ITEM` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TAKE_ID`),
  KEY `TAKER_ID` (`TAKER_ID`),
  KEY `DONATE_ID` (`DONATE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taker`
--

DROP TABLE IF EXISTS `taker`;
CREATE TABLE IF NOT EXISTS `taker` (
  `TAKER_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `MOBILE` int(11) DEFAULT NULL,
  `LASTNAME` varchar(20) DEFAULT NULL,
  `FIRSTNAME` varchar(20) DEFAULT NULL,
  `GENDER` varchar(5) DEFAULT NULL,
  `DATEOFBIRTH` date DEFAULT NULL,
  `AATHAAR` int(11) DEFAULT NULL,
  `PAN` int(11) DEFAULT NULL,
  `NATIONALITY` varchar(10) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`TAKER_ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
