-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2013 at 07:47 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qt`
--

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE IF NOT EXISTS `peserta` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`no`, `nama`, `alamat`) VALUES
(1, 'ibnu', 'jogja'),
(2, 'ibnu342', 'jogja'),
(3, 'ibnu65464', 'jogja'),
(4, 'ibnu1231', 'jogja'),
(5, 'ibnu67', 'jogja'),
(6, 'ibnu32', 'jogja'),
(7, 'ibnu6454', 'jogja'),
(8, 'ibnu967', 'jogja'),
(9, 'ibnu1214', 'jogja'),
(10, 'ibnu452', 'jogja');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
