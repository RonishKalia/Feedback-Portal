-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2014 at 01:12 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `batch`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch_temp`
--

CREATE TABLE IF NOT EXISTS `batch_temp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Batch_ID` varchar(50) NOT NULL,
  `Sub_Name` varchar(50) NOT NULL,
  `Teacher_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `batch_temp`
--

INSERT INTO `batch_temp` (`ID`, `Batch_ID`, `Sub_Name`, `Teacher_ID`) VALUES
(1, 'IT2k12B', 'DAA', 6),
(2, 'IT2k12A', 'DAA', 1),
(3, 'EC2k12', 'MAT4', 2),
(4, 'IT2k12B', 'DBMS', 3),
(5, 'IT2k12B', 'DCOM', 5),
(6, 'IT2k12A', 'DBMS', 3),
(7, 'IT2k12B', 'PPL', 4),
(8, 'IT2k12A', 'PPL', 4),
(9, 'IT2k12B', 'MATP&S', 2),
(10, 'IT2k12A', 'DCOM', 5);

-- --------------------------------------------------------

--
-- Table structure for table `question_feedback`
--

CREATE TABLE IF NOT EXISTS `question_feedback` (
  `teacher_id` varchar(50) NOT NULL,
  `Q1` varchar(50) NOT NULL,
  `Q2` varchar(50) NOT NULL,
  `Q3` varchar(50) NOT NULL,
  `Q4` varchar(50) NOT NULL,
  `Q5` varchar(50) NOT NULL,
  `Q6` varchar(50) NOT NULL,
  `Q7` varchar(50) NOT NULL,
  `Q8` varchar(50) NOT NULL,
  `Q9` varchar(50) NOT NULL,
  `Q10` varchar(50) NOT NULL,
  `Q11` varchar(50) NOT NULL,
  `Q12` varchar(50) NOT NULL,
  `subject_id` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_feedback`
--

INSERT INTO `question_feedback` (`teacher_id`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `Q6`, `Q7`, `Q8`, `Q9`, `Q10`, `Q11`, `Q12`, `subject_id`) VALUES
('SS', 'fghj', 'hf', 'hjh', '', '', '', '', '', '', '', '', '', 'asbv'),
('SS', 'new22', 'new', 'new', '', '', '', '', '', '', '', '', '', 'new'),
('3', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Yes', 'Extraordinary', 'Yes', 'Yes', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'DBMS'),
('OPV', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Yes', 'Extraordinary', 'Yes', 'Yes', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'DBMS'),
('AS', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Extraordinary', 'Yes', 'Extraordinary', 'No', 'Yes', 'Poor', 'Good', 'Extraordinary', 'DCOM');

-- --------------------------------------------------------

--
-- Table structure for table `subject_teacher`
--

CREATE TABLE IF NOT EXISTS `subject_teacher` (
  `Subject` varchar(60) NOT NULL,
  `Teacher` varchar(60) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `subject_teacher`
--

INSERT INTO `subject_teacher` (`Subject`, `Teacher`, `id`) VALUES
('DAA', 'SS', 1),
('OOM', 'SS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `Name`) VALUES
(1, 'SS'),
(2, 'KPS'),
(3, 'OPV'),
(4, 'UST'),
(5, 'AS'),
(6, 'BSS');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
