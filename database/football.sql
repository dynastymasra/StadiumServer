-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2012 at 04:32 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `football`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `username` varchar(255) NOT NULL,
  `id_event` int(5) NOT NULL,
  `total` int(2) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`username`, `id_event`, `total`, `price`) VALUES
('dynastymasra', 12121, 2, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(5) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `versus` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `date`, `time`, `versus`) VALUES
(12121, '2012-12-30', '15:00:00', 'Liverpool FC VS Chelsea FC');

-- --------------------------------------------------------

--
-- Table structure for table `tribune`
--

CREATE TABLE IF NOT EXISTS `tribune` (
  `tribuneOne` int(10) NOT NULL,
  `tribuneTwo` int(10) NOT NULL,
  `tribuneThree` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tribune`
--

INSERT INTO `tribune` (`tribuneOne`, `tribuneTwo`, `tribuneThree`) VALUES
(20000, 15000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `deposit` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `gender`, `email`, `address`, `deposit`) VALUES
(1111224421, 'didi', 'didi', 'Didi Setyapramono', 'Male', 'didi@gmail.com', 'Jogja', 20000),
(1111224423, 'faizal', 'faizal', 'Faizal Manggrazan', 'Male', 'faizal@yahoo.com', 'Janturan	', 10000),
(1111224424, 'dynastymasra', 'dynasty', 'Dimas Ragil T', 'Male', 'dynatsymasra@gmail.com', 'Glagahsari', 30000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
