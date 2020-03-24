-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2019 at 02:18 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sum`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_code` varchar(500) NOT NULL,
  `class_tutor` varchar(500) NOT NULL,
  `class_day` varchar(500) NOT NULL,
  `class_time` varchar(500) NOT NULL,
  `room_code` varchar(60) NOT NULL,
  PRIMARY KEY (`class_code`),
  KEY `room_code` (`room_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_code`, `class_tutor`, `class_day`, `class_time`, `room_code`) VALUES
('1', 'Beth Lyons', 'Monday', '9am', '1C'),
('2', 'Jake Smith', 'Tuesday', '9am', '1C'),
('3', 'Molly Luke', 'Wednesday', '9am', '1C'),
('4', 'Richard Longworth', 'Monday', '1pm', '204'),
('5', 'Richard Longworth', 'Wednesday', '9am', '10'),
('6', 'Rebert Lewis', 'Friday', '9am', '11'),
('C7', 'Fran D?Silva', 'Monday', '1pm', '1C'),
('C8', 'Ken Power', 'Tuesday', '1pm', '10');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
CREATE TABLE IF NOT EXISTS `level` (
  `level_code` varchar(20) NOT NULL,
  `duration` int(10) NOT NULL,
  PRIMARY KEY (`level_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_code`, `duration`) VALUES
('L1', 10),
('L2', 10),
('L3', 5),
('L4', 5),
('5', 20),
('6', 10),
('7', 20),
('8', 5);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `module_code` varchar(11) NOT NULL,
  `module_title` varchar(50) NOT NULL,
  `level_code` varchar(50) NOT NULL,
  `tutor_name` varchar(100) NOT NULL,
  PRIMARY KEY (`module_code`),
  KEY `level_code` (`level_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_code`, `module_title`, `level_code`, `tutor_name`) VALUES
('1', 'Improvisation', '2', 'Beth Lyons'),
('2', 'Improvisation', '2', 'Jake Smith'),
('3', 'Improvisation', '1', 'Molly Luke'),
('4', 'Alto Saxophone', '1', 'Richard Longworth'),
('M5', 'Baritone Sax', '3', 'Richard Longworth'),
('M6', 'Grade 3 Theory - All Instruments', '2', 'Robert Lewis'),
('M7', 'Trumpet Advanced', '3', 'Fran D?Silva'),
('M8', 'Band leading', '1', 'Ken Power'),
('M9', 'Clarinet Novic', 'L2', 'Sophie Khan');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `room_code` varchar(100) NOT NULL,
  `loaction` varchar(100) NOT NULL,
  `max_no_of_student` varchar(15) NOT NULL,
  PRIMARY KEY (`room_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_code`, `loaction`, `max_no_of_student`) VALUES
('1C', 'Sidari Building', '20'),
('204', 'Foster Court', '21'),
('10', 'Sidari Building', '15'),
('11', 'Giles Porter Building', '15');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
CREATE TABLE IF NOT EXISTS `room_type` (
  `room_typeID` varchar(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`room_typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_typeID`, `type`) VALUES
('R1', 'Practical Music'),
('R2', 'Practical Music'),
('R3', 'Theory'),
('R4', 'Practical Music');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_ID` int(10) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `surname` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(60) DEFAULT NULL,
  `telenumber` float NOT NULL,
  `student_typeID` varchar(100) NOT NULL,
  `module_code` int(11) NOT NULL,
  PRIMARY KEY (`student_ID`),
  KEY `module_code` (`module_code`),
  KEY `student_typeID` (`student_typeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_ID`, `firstname`, `surname`, `email`, `address`, `telenumber`, `student_typeID`, `module_code`) VALUES
(1, 'Carrie', 'Jones', 'jonec@hmail.com', '  ', 7767900000, 'T1', 1),
(2, 'Gemma', 'Riley', 'Gemril126@crzymail.org ', '  ', 9899770000, 'T2', 2),
(3, 'John', 'Maza', 'jmaza@dmail.com', '  ', 7665910000, 'ST3', 3),
(4, 'Rizwan', 'Maya', 'riz@horton.ac.uk', '  ', 7202120000, 'ST4', 4),
(5, 'Mezzi', 'Solent', 'mezzisol@cat.com', '  ', 7677990000, 'ST5', 5),
(6, 'Curtis', 'Palmer', 'cpalmer@hmail.com', '  ', 7343000000, 'ST6', 6),
(7, 'Paul', 'Collier', 'pcolier@hmail.com', '  ', 7343770000, 'ST7', 7),
(8, 'Samia', 'Saleed', 'Ss167@newsoft.co.uk', '  ', 7666100000, 'ST8', 8),
(9, 'Sophie', 'Clarkson', 'Yth87@binternational.uk', '  ', 7767880000, 'ST9', 9),
(10, 'Ibrahiam', 'Goza', 'igoza@hmail.com', '17 Shorefields Lane Wrexham LL13 7TH', 1978780000, '10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `student_module`
--

DROP TABLE IF EXISTS `student_module`;
CREATE TABLE IF NOT EXISTS `student_module` (
  `student_code` varchar(101) NOT NULL,
  `module_code` varchar(101) NOT NULL,
  `result` varchar(50) NOT NULL,
  `startdate` varchar(500) NOT NULL,
  KEY `student_code` (`student_code`),
  KEY `module_code` (`module_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_module`
--

INSERT INTO `student_module` (`student_code`, `module_code`, `result`, `startdate`) VALUES
('1', '1', 'Pass', '01/07/19'),
('2', '2', 'Pass', '01/07/19'),
('3', '3', 'Pass', '01/17/19'),
('4', '4', 'Pass', '14/07/19'),
('5', '5', 'Pass', '14/07/19'),
('6', '6', 'Pass', '07/08/19');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
CREATE TABLE IF NOT EXISTS `tutor` (
  `tutor_code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `specialism` varchar(50) NOT NULL,
  `hourly_rate` varchar(80) NOT NULL,
  `day_rate` varchar(80) NOT NULL,
  PRIMARY KEY (`tutor_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`tutor_code`, `name`, `specialism`, `hourly_rate`, `day_rate`) VALUES
('T1', 'Beth Lyons', 'Improvisation', '£30', '£150'),
('T3', 'Fran D?Silva', 'Trumpet', '£38', '£160'),
('T4', 'Richard Longworth', 'Saxophone', '£30', '£150'),
('T5', 'Robert Lewis', 'Theory', '£30', '£150');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
