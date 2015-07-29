-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2013 at 06:08 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_usr`
--

CREATE TABLE IF NOT EXISTS `admin_usr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_by` varchar(100) NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_usr`
--

INSERT INTO `admin_usr` (`id`, `username`, `password`, `isactive`, `isdeleted`, `added_on`, `added_by`, `modified_on`, `modified_by`) VALUES
(1, 'luckfove', '607f4c56adb7e3a2b261c28889cfa0f86ac57b85', 1, 0, '2013-10-17 13:04:26', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE IF NOT EXISTS `colleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isdeleted` tinyint(4) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL DEFAULT '',
  `modified_on` datetime DEFAULT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=501 ;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`, `isactive`, `isdeleted`, `added_on`, `added_by`, `modified_on`, `modified_by`) VALUES
(1, 'Acharya N.G. Ranga Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(2, 'Acharya Nagarjuna University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(3, 'Adikavi Nannaya University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(4, 'Ahmedabad University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(5, 'Alagappa University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(6, 'Aliah University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(7, 'Aligarh Muslim University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(8, 'All India Institute of Medical Sciences	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(9, 'Alliance University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(10, 'Amity University	\r\n', 1, 0, '2013-10-10 03:39:10', '', NULL, ''),
(11, 'Amrita Vishwa Vidyapeetham	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(12, 'Anand Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(13, 'Andhra University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(14, 'Anna University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(15, 'Annamalai University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(16, 'Apeejay Stya University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(17, 'Arni University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(18, 'Aryabhatta Knowledge University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(19, 'Assam Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(20, 'Assam Don Bosco University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(21, 'Assam University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(22, 'Avinashilingam University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(23, 'Awadhesh Pratap Singh University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(24, 'Ayush and Health Sciences University of Chhattisgarh	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(25, 'Azim Premji University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(26, 'B.R. Ambedkar Bihar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(27, 'B.S. Abdur Rahman University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(28, 'Baba Farid University of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(29, 'Baba Ghulam Shah Badhshah University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(30, 'Babasaheb Bhimrao Ambedkar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(31, 'Babu Banarasi Das University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(32, 'Baddi University of Emerging Sciences and Technologies	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(33, 'BAHRA University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(34, 'Banaras Hindu University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(35, 'Banasthali Vidyapith	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(36, 'Bangalore University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(37, 'Barkatullah University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(38, 'Bastar Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(39, 'Bengal Engineering and Science University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(40, 'Berhampur University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(41, 'Bhagat Phool Singh Mahila Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(42, 'Bhagwant University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(43, 'Bharat Ratna Dr. B.R. Ambedkar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(44, 'Bharathiar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(45, 'Bharathidasan University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(46, 'Bharati Vidyapeeth University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(47, 'Bhatkhande Music Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(48, 'Bhupendra Narayan Mandal University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(49, 'Bidhan Chandra Krishi Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(50, 'Biju Patnaik University Of Technology, Orissa	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(51, 'Birla Institute of Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(52, 'Birla Institute of Technology and Science	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(53, 'Birsa Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(54, 'Bundelkhand University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(55, 'Central Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(56, 'Central Institute of Fisheries Education	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(57, 'Central University of Bihar	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(58, 'Central University of Gujarat	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(59, 'Central University of Haryana	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(60, 'Central University of Himachal Pradesh	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(61, 'Central University of Jharkhand	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(62, 'Central University of Karnataka	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(63, 'Central University of Kashmir	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(64, 'Central University of Kerala	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(65, 'Central University of Orissa	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(66, 'Central University of Punjab	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(67, 'Central University of Rajasthan	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(68, 'Central University of Tamil Nadu	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(69, 'Central University of Tibetan Studies	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(70, 'Centurion University of Technology and Management	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(71, 'CEPT University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(72, 'Chanakya National Law University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(73, 'Chandra Shekhar Azad University of Agriculture & Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(74, 'Charotar University of Science & Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(75, 'Chaudhary Charan Singh Haryana Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(76, 'Chaudhary Charan Singh University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(77, 'Chaudhary Devi Lal University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(78, 'Chennai Mathematical Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(79, 'Chhatrapati Shahuji Maharaj Medical University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(80, 'Chhatrapati Shahuji Maharaj University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(81, 'Chhattisgarh Swami Vivekananda Technical University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(82, 'Chitkara University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(83, 'Cochin University of Science and Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(84, 'CSK Himachal Pradesh Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(85, 'Damodaram Sanjivayya National Law University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(86, 'Datta Meghe Institute of Medical Sciences	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(87, 'Davangere University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(88, 'Dayalbagh Educational Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(89, 'Deccan College Post-Graduate and Research Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(90, 'Deen Dayal Upadhyay Gorakhpur University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(91, 'Deenbandhu Chhotu Ram University of Science and Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(92, 'Delhi Technological University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(93, 'Dev Sanskriti Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(94, 'Devi Ahilya Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(95, 'Dharmsinh Desai University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(96, 'Dhirubhai Ambani Institute of Information & Communication Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(97, 'Dibrugarh University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(98, 'Doon University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(99, 'Dr K.N. Modi University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(100, 'Dr. B R Ambedkar National Institute of Technology Jalandhar	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(101, 'Dr. B.R. Ambedkar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(102, 'Dr. B.R. Ambedkar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(103, 'Dr. Babasaheb Ambedkar Marathwada University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(104, 'Dr. Babasaheb Ambedkar Technological University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(105, 'Dr. Balasaheb Sawant Konkan Krishi Vidyapeeth	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(106, 'Dr. C.V. Raman University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(107, 'Dr. Hari Singh Gour University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(108, 'Dr. Panjabrao Deshmukh Krishi Vidyapeeth	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(109, 'Dr. Ram Manohar Lohia Avadh University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(110, 'Dr. Ram Manohar Lohiya National Law University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(111, 'Dr. Shakuntala Misra Rehabilitation University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(112, 'Dr. Y.S. Parmar University of Horticulture and Forestry	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(113, 'Dravidian University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(114, 'EIILM University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(115, 'Eternal University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(116, 'Fakir Mohan University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(117, 'Forest Research Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(118, 'Galgotias University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(119, 'Gandhi Institute of Technology and Management	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(120, 'Gandhigram Rural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(121, 'Ganpat University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(122, 'Gauhati University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(123, 'Gautam Buddha University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(124, 'GLA University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(125, 'Goa University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(126, 'Gokhale Institute of Politics and Economics	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(127, 'Govind Ballabh Pant University of Agriculture & Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(128, 'Gujarat Ayurved University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(129, 'Gujarat Forensic Sciences University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(130, 'Gujarat National Law University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(131, 'Gujarat Technological University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(132, 'Gujarat University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(133, 'Gujarat Vidyapith	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(134, 'Gulbarga University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(135, 'Guru Angad Dev Veterinary and Animal Sciences University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(136, 'Guru Ghasidas Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(137, 'Guru Gobind Singh Indraprastha University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(138, 'Guru Jambheshwar University of Science & Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(139, 'Guru Nanak Dev University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(140, 'Hemchandracharya North Gujarat University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(141, 'Hemwati Nandan Bahuguna Garhwal University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(142, 'Hidayatullah National Law University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(143, 'Himachal Pradesh University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(144, 'Himgiri ZEE University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(145, 'Hindustan University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(146, 'Homi Bhabha National Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(147, 'ICFAI University, Dehradun	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(148, 'ICFAI University, Jharkhand	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(149, 'ICFAI University, Tripura	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(150, 'IFHE Hyderabad	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(151, 'IFTM University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(152, 'Indian Agricultural Research Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(153, 'Indian Institute of Foreign Trade	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(154, 'Indian Institute of Information Technology Allahabad	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(155, 'Indian Institute of Information Technology and Management Gwalior	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(156, 'Indian Institute of Information Technology, Design and Manufacturing	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(157, 'Indian Institute of Science	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(158, 'Indian Institute of Space Science and Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(159, 'Indian Institute of Technology Bhubaneswar	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(160, 'Indian Institute of Technology Bombay	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(161, 'Indian Institute of Technology Delhi	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(162, 'Indian Institute of Technology Gandhinagar	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(163, 'Indian Institute of Technology Guwahati	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(164, 'Indian Institute of Technology Hyderabad	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(165, 'Indian Institute of Technology Kanpur	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(166, 'Indian Institute of Technology Kharagpur	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(167, 'Indian Institute of Technology Madras	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(168, 'Indian Institute of Technology Patna	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(169, 'Indian Institute of Technology Roorkee	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(170, 'Indian Institute of Technology Ropar	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(171, 'Indian Maritime University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(172, 'Indian School of Mines	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(173, 'Indian Statistical Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(174, 'Indian Veterinary Research Institute	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(175, 'Indira Gandhi Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(176, 'Indira Gandhi Institute of Development Research	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(177, 'Indira Gandhi National Tribal University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(178, 'Indira Kala Sangit Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(179, 'Indraprastha Institute of Information Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(180, 'Indus International University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(181, 'Institute of Chemical Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(182, 'Integral University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(183, 'International Institute for Population Sciences	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(184, 'International Institute of Information Technology Bangalore	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(185, 'International Institute of Information Technology, Hyderabad	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(186, 'Invertis University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(187, 'Islamic University of Science and Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(188, 'ITM University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(189, 'Jadavpur University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(190, 'Jagadguru Ramanandacharya Rajasthan Sanskrit University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(191, 'Jagan Nath University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(192, 'Jagdishprasad Jhabarmal Tibrewala University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(193, 'Jai Narain Vyas University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(194, 'Jai Prakash Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(195, 'Jain Vishva Bharati University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(196, 'Jaipur National University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(197, 'Jamia Hamdard	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(198, 'Jamia Millia Islamia	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(199, 'Jawaharlal Institute of Postgraduate Medical Education & Research	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(200, 'Jawaharlal Nehru Architecture and Fine Arts University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(201, 'Jawaharlal Nehru Centre for Advanced Scientific Research	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(202, 'Jawaharlal Nehru Krishi Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(203, 'Jawaharlal Nehru Technological University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(204, 'Jawaharlal Nehru Technological University, Anantapur	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(205, 'Jawaharlal Nehru Technological University, Kakinada	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(206, 'Jawaharlal Nehru University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(207, 'Jaypee University of Engineering & Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(208, 'Jaypee University of Information Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(209, 'Jiwaji University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(210, 'Jodhpur National University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(211, 'JSS University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(212, 'Junagadh Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(213, 'K L University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(214, 'Kadi Sarva VishwaVidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(215, 'Kakatiya University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(216, 'Kameshwar Singh Darbhanga Sanskrit University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(217, 'Kannada University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(218, 'Kannur University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(219, 'Karnatak University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(220, 'Karnataka State Law University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(221, 'Karnataka Veterinary, Animal and Fisheries Sciences University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(222, 'Karunya University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(223, 'Kavikulguru Kalidas Sanskrit University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(224, 'Kerala Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(225, 'Kerala Kalamandalam	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(226, 'Kerala University of Fisheries and Ocean Studies	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(227, 'Kerala University of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(228, 'Kerala Veterinary and Animal Sciences University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(229, 'KIIT University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(230, 'KLE University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(231, 'Kolhan University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(232, 'Krantiguru Shyamji Krishna Verma Kachchh University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(233, 'Krishna University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(234, 'Kumaun University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(235, 'Kurukshetra University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(236, 'Kushabhau Thakre Patrakarita Avam Jansanchar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(237, 'Kuvempu University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(238, 'Lakshmibai National Institute of Physical Education	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(239, 'Lalit Narayan Mithila University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(240, 'Lovely Professional University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(241, 'Madhya Pradesh Pashu-Chikitsa Vigyan Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(242, 'Madurai Kamaraj University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(243, 'Magadh University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(244, 'Mahamaya Technical University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(245, 'Maharaja Ganga Singh University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(246, 'Maharaja Krishnakumarsinhji Bhavnagar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(247, 'Maharana Pratap University of Agriculture and Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(248, 'Maharashtra Animal and Fishery Sciences University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(249, 'Maharashtra University of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(250, 'Maharishi Dayanand University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(251, 'Maharishi Mahesh Yogi Vedic Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(252, 'Maharishi Panini Sanskrit Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(253, 'Maharishi University of Management and Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(254, 'Maharshi Dayanand Saraswati University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(255, 'Mahatma Gandhi Antarrashtriya Hindi Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(256, 'Mahatma Gandhi Chitrakoot Gramoday Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(257, 'Mahatma Gandhi Kashi Vidyapeeth	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(258, 'Mahatma Gandhi University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(259, 'Mahatma Gandhi University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(260, 'Mahatma Gandhi University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(261, 'Mahatma Jyoti Rao Phoole University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(262, 'Mahatma Jyotiba Phule Rohilkhand University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(263, 'Mahatma Phule Krishi Vidyapeeth	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(264, 'Makhanlal Chaturvedi Rashtriya Patrakarita Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(265, 'Malaviya National Institute of Technology, Jaipur	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(266, 'Manav Bharti University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(267, 'Mangalayatan University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(268, 'Mangalore University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(269, 'Manipal University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(270, 'Manipur University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(271, 'Manonmaniam Sundaranar University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(272, 'Marathwada Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(273, 'Martin Luther Christian University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(274, 'MATS University	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(275, 'Maulana Azad National Institute of Technology	\r\n', 1, 0, '2013-10-10 03:39:11', '', NULL, ''),
(276, 'Maulana Azad National Urdu University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(277, 'Maulana Mazharul Haque Arabic and Persian University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(278, 'Mewar University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(279, 'MGM Institute of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(280, 'Mizoram University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(281, 'Mohammad Ali Jauhar University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(282, 'Mohanlal Sukhadia University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(283, 'Motilal Nehru National Institute of Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(284, 'Nagaland University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(285, 'NALSAR University of Law	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(286, 'Narendra Dev University of Agriculture and Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(287, 'Narsee Monjee Institute of Management and Higher Studies	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(288, 'National Dairy Research Institute	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(289, 'National Institute of Design	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(290, 'National Institute of Fashion Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(291, 'National Institute of Mental Health and Neuro Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(292, 'National Institute of Pharmaceutical Education and Research	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(293, 'National Institute of Pharmaceutical Education and Research, Guwahati	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(294, 'National Institute of Pharmaceutical Education and Research, Hajipur	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(295, 'National Institute of Pharmaceutical Education and Research, Hyderabad	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(296, 'National Institute of Pharmaceutical Education and Research, Rae Bareli	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(297, 'National Institute of Technology Calicut	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(298, 'National Institute of Technology Karnataka	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(299, 'National Institute of Technology Raipur	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(300, 'National Institute of Technology, Agartala	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(301, 'National Institute of Technology, Durgapur	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(302, 'National Institute of Technology, Hamirpur	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(303, 'National Institute of Technology, Jamshedpur	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(304, 'National Institute of Technology, Kurukshetra	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(305, 'National Institute of Technology, Patna	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(306, 'National Institute of Technology, Rourkela	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(307, 'National Institute of Technology, Silchar	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(308, 'National Institute of Technology, Srinagar	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(309, 'National Institute of Technology, Tiruchirappalli	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(310, 'National Institute of Technology, Warangal	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(311, 'National Law Institute University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(312, 'National Law School of India University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(313, 'National Law University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(314, 'National Law University, Jodhpur	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(315, 'National Law University, Orissa	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(316, 'National University of Educational Planning and Administration	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(317, 'National University of Study and Research in Law	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(318, 'Navsari Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(319, 'Netaji Subhas Institute of Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(320, 'Nilamber-Pitamber University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(321, 'NIMS University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(322, 'Nirma University of Science and Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(323, 'NITTE University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(324, 'Noida International University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(325, 'North Eastern Hill University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(326, 'North Eastern Regional Institute of Science and Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(327, 'North Maharashtra University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(328, 'North Orissa University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(329, 'NTR University of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(330, 'O.P. Jindal Global University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(331, 'Orissa University of Agriculture and Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(332, 'Osmania University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(333, 'Pacific University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(334, 'Padmashree Dr. D.Y. Patil Vidyapith	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(335, 'Palamuru University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(336, 'Pandit Deendayal Petroleum University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(337, 'Pandit Ravishankar Shukla University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(338, 'Panjab University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(339, 'Patna University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(340, 'PDPM Indian Institute of Information Technology, Design & Manufacturing	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(341, 'PEC University of Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(342, 'Periyar Maniammai University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(343, 'Pondicherry University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(344, 'Post Graduate Institute of Medical Education and Research	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(345, 'Potti Sreeramulu Telugu University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(346, 'Pravara Institute of Medical Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(347, 'Presidency University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(348, 'Pt. B. D. Sharma University of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(349, 'Punjab Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(350, 'Punjab Technical University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(351, 'Punjabi University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(352, 'Rabindra Bharati University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(353, 'Raffles University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(354, 'Rajasthan Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(355, 'Rajasthan Ayurved University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(356, 'Rajasthan Technical University Kota	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(357, 'Rajasthan University of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(358, 'Rajendra Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(359, 'Rajiv Gandhi National University of Law	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(360, 'Rajiv Gandhi Proudyogiki Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(361, 'Rajiv Gandhi University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(362, 'Rajiv Gandhi University of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(363, 'Ramakrishna Mission Vivekananda University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(364, 'Ranchi University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(365, 'Rani Channamma University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(366, 'Rani Durgavati Vishwavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(367, 'Rashtrasant Tukadoji Maharaj Nagpur University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(368, 'Rashtriya Sanskrit Sansthan	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(369, 'Rashtriya Sanskrit Vidyapeetha	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(370, 'Ravenshaw University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(371, 'Rayalaseema University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(372, 'Sam Higginbottom Institute of Agriculture, Technology and Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(373, 'Sambalpur University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(374, 'Sampurnanand Sanskrit Vishvavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(375, 'Sanjay Gandhi Post Graduate Institute of Medical Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(376, 'Sant Gadge Baba Amravati University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(377, 'Sant Longowal Institute of Engineering and Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(378, 'Sardar Patel University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(379, 'Sardar Vallabhbhai National Institute of Technology, Surat	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(380, 'Sardar Vallabhbhai Patel University of Agriculture and Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(381, 'Sardarkrushinagar Dantiwada Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(382, 'Sarguja University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(383, 'SASTRA University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(384, 'Satavahana University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(385, 'Sathyabama University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(386, 'Saurashtra University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(387, 'School of Planning and Architecture, Delhi	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(388, 'Sharda University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(389, 'Sher-e-Kashmir University of Agricultural Sciences and Technology of Kashmir	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(390, 'Shiv Nadar University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(391, 'Shivaji University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(392, 'Shoolini University of Biotechnology and Management Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(393, 'Shree Somnath Sanskrit University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(394, 'Shri Guru Ram Rai Education Mission	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(395, 'Shri Jagannath Sanskrit Vishvavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(396, 'Shri Lal Bahadur Shastri Rashtriya Sanskrit Vidyapeetha	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(397, 'Shri Mata Vaishno Devi University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(398, 'Shri Venkateshwara University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(399, 'Shridhar University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(400, 'Sidho Kanho Birsha University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(401, 'Sido Kanhu Murmu University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(402, 'Sikkim Manipal University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(403, 'Sikkim University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(404, 'Singhania University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(405, 'Sir Padampat Singhania University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(406, 'South Asian University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(407, 'Sree Chitra Thirunal Institute of Medical Sciences and Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(408, 'Sree Sankaracharya University of Sanskrit	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(409, 'Sri Chandrasekharendra Saraswathi Viswa Mahavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(410, 'Sri Guru Granth Sahib World University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(411, 'Sri Krishnadevaraya University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(412, 'Sri Padmavati Mahila Visvavidyalayam	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(413, 'Sri Ramachandra University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(414, 'Sri Sai University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(415, 'Sri Venkateswara Institute of Medical Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(416, 'Sri Venkateswara University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(417, 'Sri Venkateswara Vedic University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(418, 'Sri Venkateswara Veterinary University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(419, 'SRM University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(420, 'Subharti University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(421, 'SunRise University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(422, 'Suresh Gyan Vihar University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(423, 'Swami Ramanand Teerth Marathwada University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(424, 'Symbiosis International University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(425, 'Tamil Nadu Agricultural University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(426, 'Tamil Nadu Dr Ambedkar Law University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(427, 'Tamil Nadu Dr. M.G.R.Medical University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(428, 'Tamil Nadu Physical Education and Sports University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(429, 'Tamil Nadu Teacher Education University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(430, 'Tamil Nadu Veterinary and Animal Sciences University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(431, 'Tamil University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(432, 'Tata Institute of Fundamental Research	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(433, 'Tata Institute of Social Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(434, 'Teerthanker Mahaveer University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(435, 'Telangana University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(436, 'TERI University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(437, 'Tezpur University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(438, 'Thapar University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(439, 'The English and Foreign Languages University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(440, 'The Indian Law Institute	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(441, 'The LNM Institute of Information Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(442, 'The Maharaja Sayajirao University of Baroda	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(443, 'The National University of Advanced Legal Studies	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(444, 'The WB National University of Juridical Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(445, 'Thiruvalluvar University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(446, 'Tilka Manjhi Bhagalpur University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(447, 'Tripura University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(448, 'Tumkur University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(449, 'University of Agricultural Sciences, Bangalore	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(450, 'University of Agricultural Sciences, Dharwad	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(451, 'University of Allahabad	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(452, 'University of Burdwan	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(453, 'University of Calcutta	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(454, 'University of Calicut	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(455, 'University of Delhi	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(456, 'University of Gour Banga	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(457, 'University of Hyderabad	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(458, 'University of Jammu	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(459, 'University of Kalyani	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(460, 'University of Kashmir	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(461, 'University of Kerala	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(462, 'University of Kota	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(463, 'University of Lucknow	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(464, 'University of Madras	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(465, 'University of Mumbai	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(466, 'University of Mysore	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(467, 'University of North Bengal	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(468, 'University of Petroleum and Energy Studies	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(469, 'University of Pune	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(470, 'University of Rajasthan	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(471, 'University of Science and Technology, Meghalaya	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(472, 'University of Solapur	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(473, 'University of Technology & Management	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(474, 'Utkal University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(475, 'Utkal University of Culture	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(476, 'Uttar Banga Krishi Viswavidyalaya	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(477, 'Uttar Pradesh Technical University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(478, 'Uttarakhand Technical University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(479, 'Uttaranchal Sanskrit University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(480, 'Veer Bahadur Singh Purvanchal University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(481, 'Veer Kunwar Singh University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(482, 'Veer Narmad South Gujarat University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(483, 'Veer Surendra Sai University of Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(484, 'Vidyasagar University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(485, 'Vijayanagara Sri Krishnadevaraya University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(486, 'Vikram University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(487, 'Vikrama Simhapuri University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(488, 'Vinayaka Missions Sikkim University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(489, 'Vinoba Bhave University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(490, 'Visva Bharati University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(491, 'Visvesvaraya National Institute of Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(492, 'Visvesvaraya Technological University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(493, 'VIT University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(494, 'West Bengal State University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(495, 'West Bengal University of Animal and Fishery Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(496, 'West Bengal University of Health Sciences	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(497, 'West Bengal University of Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(498, 'YMCA University of Science and Technology	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(499, 'Yogi Vemana University	\r\n', 1, 0, '2013-10-10 03:39:12', '', NULL, ''),
(500, 'others', 1, 0, '0000-00-00 00:00:00', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(50) NOT NULL,
  `event_category_id` int(2) NOT NULL,
  `about` text NOT NULL,
  `rules` text NOT NULL,
  `contacts` text NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `clink` varchar(150) NOT NULL,
  `isactive` int(1) NOT NULL DEFAULT '1',
  `isdeleted` int(1) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_name` (`event_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_category_id`, `about`, `rules`, `contacts`, `start`, `end`, `clink`, `isactive`, `isdeleted`, `added_on`, `added_by`, `modified_on`, `modified_by`) VALUES
(1, 'Alkhwarizm', 1, 'Online event , hosted on codechef. Solo event. International participation. Etc.', '\r\n', 'Aditya Chaturvedi<br>\r\nDivanshu Garg<br>\r\nAman Chaudhary<br>\r\nShubham Sharma<br>\r\nShiva Bhalla', '2013-10-21 00:00:00', '2013-10-21 00:35:00', 'http://www.codechef.com/ALKH013/', 1, 0, '2013-10-18 00:47:11', 'luckfove', '2013-10-19 22:36:37', 'luckfove'),
(2, 'Webkriti', 1, 'Onsite Website Development Event of 6 hours duration. Theme will be provided on the spot on the day of the contest.', '<p style=''padding-bottom: 5px;''>1. You have to register through the form provided.<br></p> \r\n<p style=''padding-bottom: 5px;''>\r\n2. You have to design a website on a theme which will be given to you on the day of event. Time limit is 6 hours. <br></p><p style=''padding-bottom: 5px;''>\r\n3. You will be provided half an hour initially to plan out and download from the internet all the necessary stuff you need. (Note: Copying of some other person''s work is strictly not allowed and the team getting involved into such activities will be disqualified on the spot).<br></p><p style=''padding-bottom: 5px;''>\r\n4. Pre-made templates are not allowed. Contest entries that use a pre-made template will be disqualified. A contestant can create his/her own template from scratch, save it, and reuse it for each page.<br></p><p style=''padding-bottom: 5px;''> \r\n5. Operating Systems provided: Windows <br></p><p style=''padding-bottom: 5px;''>\r\n6. The only application software provided and allowed is Adobe Dreamweaver.<br> </p><p style=''padding-bottom: 5px;''>\r\n7. WAMP installed systems will be provided(which includes apache, MYSQL PHP and phpMyAdmin). <br></p><p style=''padding-bottom: 5px;''>\r\n8. Winners will be decided on UI design, cross-platform behavior and cross-browser performance of their website. <br></p><p style=''padding-bottom: 5px;''>\r\n9. You are open to use any language but the use of Adobe Flash software is NOT allowed. <br></p><p style=''padding-bottom: 5px;''>\r\n10. Website should be fully functional in Internet Explorer 8.0 and above, Firefox 3.0 and above and Chrome 20 and above.<br> </p><p style=''padding-bottom: 5px;''>\r\n11. You may NOT provide any links to personal websites or personal social media pages. You may NOT include ï¿½email meï¿½ links. These rules are to protect your privacy.<br></p>', '<p style=''padding-bottom: 5px;''>Name : Anuj Srivastava<br></p><p style=''padding-bottom: 5px;''>\r\nContact No. : 9044462057<br><br></p>\r\n<p style=''padding-bottom: 5px;''>\r\nName : Shubham Sharma<br></p><p style=''padding-bottom: 5px;''>\r\nContact No. : 9559039231<br></p>', '2013-10-22 10:00:00', '2013-10-21 16:00:00', '', 1, 0, '2013-10-18 03:22:01', 'luckfove', '2013-10-19 22:36:40', 'luckfove'),
(3, 'perpluxuz', 4, 'ASn', 'Kgi', 'khgj', '2013-10-23 00:00:00', '1970-01-01 00:00:00', 'jv', 1, 0, '2013-10-18 03:37:48', 'luckfove', '2013-10-19 22:43:17', 'luckfove'),
(4, 'Platzen', 1, '<p style=\\''padding-bottom: 5px;\\''>This is an event of numbers and ciphers.</p><p style=\\''padding-bottom: 5px;\\''>You will be given an encrypted message and a key and a little bit of our support via hint of the problem. </p><p style=\\''padding-bottom: 5px;\\''>You have to figure out the original message.</p><p style=\\''padding-bottom: 5px;\\''>So get ready to enter into this cryptoworld soon.</p>', '<p style=\\''padding-bottom: 5px;\\''>1) All participants need to register prior to the event beginning</p><p style=\\''padding-bottom: 5px;\\''>\r\n2) Any user found indulging in foul play will be disqualified immediately. </p><p style=\\''padding-bottom: 5px;\\''>\r\n3) To be eligible for winning prizes the user must be currently registered in a university. Non students are welcome to participate.</p><p style=\\''padding-bottom: 5px;\\''>\r\n4) Organizers decision shall be treated as final.</p>', '<p style=\\''padding-bottom: 5px;\\''>Name : Prabhat Kulratna</p><p style=\\''padding-bottom: 5px;\\''>\r\nContact No. : +917376679474\r\n</p><br><p style=\\''padding-bottom: 5px;\\''>\r\nName : Jatin Mehta</p><p style=\\''padding-bottom: 5px;\\''>\r\nContact No. : 8115945284</p>', '2013-10-24 11:00:00', '2013-10-21 00:00:00', '', 1, 0, '2013-10-18 22:56:11', 'luckfove', '2013-10-19 22:36:46', 'luckfove'),
(5, 'Rock Night', 7, 'Rock Night is a night for metal heads. Bang your heads sadas dasdasd asd asda sdasd asd asd asdasd asdas das das dasd', '<p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p>\r\n<p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>1.asda sdasd as d<p>', '<p style=\\\\\\''padding-bottom: 2px;\\\\\\''>asda sdasd as d<p><br>\r\n<p style=\\\\\\''padding-bottom: 2px;\\\\\\''>asda sdasd as d<p><br><p style=\\\\\\''padding-bottom: 2px;\\\\\\''>asda sdasd as d<p><br>', '2013-10-23 00:00:00', '1970-01-01 00:00:00', '', 1, 0, '2013-10-19 00:03:26', 'luckfove', '2013-10-20 23:19:55', 'luckfove'),
(6, 'ACM', 4, '<p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p>\r\n<p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p>\r\n<p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p><p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p><p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p><p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p><p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p><p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p><p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p><p style=''padding-bottom: 5px;''>ACM ICPC-Amritapuri Online Round.</p>', '<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n<p style=''padding-bottom: 5px;''> Online Round.</p>\r\n', 'Anuj Srivastava', '2013-10-25 12:00:00', '2013-10-22 12:30:00', '', 1, 0, '2013-10-20 11:23:05', 'luckfove', '2013-10-20 11:26:39', 'luckfove'),
(7, 'CounterStrike 1.6', 6, 'CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6CounterStrike 1.6', '', '', '2013-10-20 20:00:00', '2013-10-24 00:00:00', '', 1, 0, '2013-10-20 23:31:05', 'luckfove', '2013-10-20 23:33:20', 'luckfove');

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE IF NOT EXISTS `event_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isdeleted` tinyint(4) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `event_categories`
--

INSERT INTO `event_categories` (`id`, `name`, `isactive`, `isdeleted`, `added_on`, `added_by`, `modified_on`, `modified_by`) VALUES
(1, 'technical', 1, 0, '2013-10-17 19:38:00', 'admin', '2013-10-17 19:38:00', 'admin'),
(2, 'cultural', 1, 0, '2013-10-17 19:38:00', 'admin', '2013-10-17 19:39:00', 'admin'),
(3, 'informal', 1, 0, '2013-10-17 19:39:17', 'admin', '2013-10-17 19:39:56', 'admin'),
(4, 'online', 1, 0, '2013-10-17 19:39:17', 'admin', '2013-10-17 19:39:56', 'admin'),
(5, 'management', 1, 0, '2013-10-17 19:41:37', 'admin', '2013-10-17 19:41:37', 'admin'),
(6, 'gamers', 1, 0, '2013-10-17 19:41:37', 'admin', '2013-10-17 19:41:37', 'admin'),
(7, 'pro-nights', 1, 0, '2013-10-17 19:41:37', 'admin', '2013-10-17 19:41:37', 'admin'),
(8, 'literary', 1, 0, '2013-10-17 19:41:37', 'admin', '2013-10-17 19:41:37', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `log_login_sessions`
--

CREATE TABLE IF NOT EXISTS `log_login_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `log_login_sessions`
--

INSERT INTO `log_login_sessions` (`id`, `username`, `ip`, `login_time`) VALUES
(4, 'test', '127.0.0.1', '2013-10-12 23:05:26'),
(5, 'jatin', '172.31.1.4', NULL),
(6, 'jatin', '172.31.1.4', NULL),
(7, 'dsfds', '172.31.1.4', NULL),
(8, 'jatin1', '172.31.1.4', NULL),
(9, 'fvnkj', '122.163.203.186', NULL),
(10, 'jatin', '172.31.1.4', NULL),
(11, 'jatin', '172.31.1.4', NULL),
(12, 'ims2012074', '172.31.1.6', NULL),
(13, 'Amba Khare', '117.199.16.214', NULL),
(14, 'ksam', '117.197.76.192', NULL),
(15, 'er.anirudh', '1.38.21.29', NULL),
(16, 'ram.k.chauhan', '1.38.21.29', NULL),
(17, 'Sujeet', '117.214.131.172', NULL),
(18, 'sparsh agrawal', '27.97.98.146', NULL),
(19, 'cooldav4', '117.216.89.130', NULL),
(20, 'error404', '123.237.121.79', NULL),
(21, 'harrysid', '27.97.186.59', NULL),
(22, 'skm12', '14.98.37.9', NULL),
(23, 'piyush5', '117.223.1.7', NULL),
(24, 'akashthegr8', '117.244.109.128', NULL),
(25, 'gohan95', '101.63.179.57', NULL),
(26, 'anujkhator', '202.191.232.67', NULL),
(27, 'avinish', '117.244.108.207', NULL),
(28, 'abhishek kushwaha', '117.244.108.207', NULL),
(29, 'tarun', '115.241.209.116', NULL),
(30, 'ROI', '122.168.55.169', NULL),
(31, '!dmn', '14.139.249.194', NULL),
(32, 'Anupam', '117.197.24.225', NULL),
(33, 'Tushar Chopra', '120.59.76.10', NULL),
(34, 'pppppp', '172.31.1.4', NULL),
(35, 'jays23', '111.125.237.6', NULL),
(36, 'ankit.saha', '106.67.35.74', NULL),
(37, 'bazinga_', '101.63.1.160', NULL),
(38, 'shobhitmittal', '122.176.131.136', NULL),
(39, 'soum92', '172.19.18.136', NULL),
(40, 'ims2013044', '172.31.1.4', NULL),
(41, 'akky1024', '117.210.187.175', NULL),
(42, 'ankur927', '117.214.128.107', NULL),
(43, 'rivudas', '180.215.197.42', NULL),
(44, 'test', '172.31.1.4', NULL),
(45, 'anirudhagrawal421', '115.114.107.35', NULL),
(46, 'himalay_jor', '49.202.117.137', NULL),
(47, 'akshat.sood', '101.62.244.93', NULL),
(48, 'spharish', '172.31.1.4', NULL),
(49, 'shobhita agrahari', '37.228.104.21', NULL),
(50, 'Vartul', '172.31.1.4', NULL),
(51, 'Brigi', '115.242.175.151', NULL),
(52, 'himanshu', '172.31.1.4', NULL),
(53, 'Himanshu Sharma', '101.213.242.182', NULL),
(54, 'akkyb1024', '117.225.143.39', NULL),
(55, 'ekaggrata', '14.98.184.246', NULL),
(56, 'hemantnonstop', '101.215.3.203', NULL),
(57, 'thegurupritam', '172.31.1.4', NULL),
(58, 'aakash_candid', '14.139.240.252', NULL),
(59, 'priyanshu jaiswal', '1.38.22.130', NULL),
(60, 'upraity93', '182.156.255.25', NULL),
(61, 'upraity.amol93', '182.156.250.4', NULL),
(62, 'amol.93', '182.156.250.4', NULL),
(63, 'nitish', '14.139.187.161', NULL),
(64, 'ankur2', '117.199.144.167', NULL),
(65, 'MISHRA', '14.139.187.161', NULL),
(66, 'sohail531', '112.79.44.71', NULL),
(67, 'sud273', '14.139.231.82', NULL),
(68, 'sudh273', '14.139.231.82', NULL),
(69, 'rajatjaiswal', '180.211.80.170', NULL),
(70, 'chacha778', '14.139.187.161', NULL),
(71, 'test', '172.31.1.4', NULL),
(72, 'nirajk42', '172.31.1.4', NULL),
(73, 'lazy', '210.212.53.139', NULL),
(74, 'gagan8765', '210.212.53.139', NULL),
(75, 'meadf', '::1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mad_registrations`
--

CREATE TABLE IF NOT EXISTS `mad_registrations` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `team_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mad_teams`
--

CREATE TABLE IF NOT EXISTS `mad_teams` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) NOT NULL,
  `register_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(3) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `link` text NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isdeleted` tinyint(4) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `event_id`, `heading`, `content`, `link`, `isactive`, `isdeleted`, `added_on`, `added_by`, `modified_on`, `modified_by`) VALUES
(1, 2, 'News1', 'news newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews news', '', 1, 0, '2013-10-20 02:08:51', 'admin', '0000-00-00 00:00:00', ''),
(2, 1, 'News2', 'news newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews news', '', 1, 0, '2013-10-20 02:08:51', 'admin', '0000-00-00 00:00:00', ''),
(3, 1, 'News3', 'news newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews news', '', 1, 0, '0000-00-00 00:00:00', 'admin', '0000-00-00 00:00:00', ''),
(4, 4, 'News4', 'news newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews news', '', 1, 0, '2013-10-20 02:10:54', 'admin', '0000-00-00 00:00:00', ''),
(5, 0, 'news newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsn', 'News 5', '', 0, 1, '2013-10-20 11:04:53', 'luckfove', '0000-00-00 00:00:00', ''),
(6, 6, 'News 5', 'news newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews newsnews news', '', 1, 0, '2013-10-20 11:09:06', 'luckfove', '0000-00-00 00:00:00', ''),
(7, 4, 'ACM', 'Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri ', '', 1, 0, '2013-10-20 12:37:30', 'luckfove', '0000-00-00 00:00:00', ''),
(8, 6, 'ACM', 'Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri Online Amritapuri ', '', 1, 0, '2013-10-20 12:39:04', 'luckfove', '0000-00-00 00:00:00', ''),
(9, 0, 'DFS', 'dfs bfsdfs abcde dfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcdedfs bfsdfs abcde', '', 1, 0, '2013-10-20 12:41:26', 'luckfove', '0000-00-00 00:00:00', ''),
(10, 4, 'Platzen', 'This is an event of numbers and ciphers.\nYou will be given an encrypted message and a key and a little bit of our support via hint of the problem.\nYou have to figure out the original message.\nSo get ready to enter into this cryptoworld soon.', '', 1, 0, '2013-10-20 12:45:43', 'luckfove', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `organisers`
--

CREATE TABLE IF NOT EXISTS `organisers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roll_num` varchar(10) NOT NULL,
  `event_id` int(3) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isdeleted` tinyint(4) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE IF NOT EXISTS `registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `event_id` int(3) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isdeleted` tinyint(1) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique` (`user_id`,`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `user_id`, `event_id`, `isactive`, `isdeleted`, `added_on`, `added_by`, `modified_on`, `modified_by`) VALUES
(1, 65, 1, 1, 0, '2013-10-19 22:45:39', 'luckfove', '0000-00-00 00:00:00', ''),
(2, 65, 5, 1, 0, '2013-10-19 22:45:50', 'luckfove', '0000-00-00 00:00:00', ''),
(3, 65, 2, 1, 0, '2013-10-20 17:08:33', 'luckfove', '0000-00-00 00:00:00', ''),
(4, 65, 4, 1, 0, '2013-10-20 17:08:36', 'luckfove', '0000-00-00 00:00:00', ''),
(5, 65, 6, 1, 0, '2013-10-20 17:08:38', 'luckfove', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `code` varchar(100) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '0',
  `isdeleted` tinyint(1) NOT NULL DEFAULT '0',
  `issent` int(11) NOT NULL DEFAULT '0',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(30) NOT NULL DEFAULT 'admin',
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `code`, `isactive`, `isdeleted`, `issent`, `added_on`, `added_by`, `modified_on`, `modified_by`) VALUES
(1, 'jatin', '1f653cdb6b798b421734af14ebe1b9599a9c26af', 'iit2011103@iiita.ac.in', 'b7c20c0684fe95d5ddf8b1448f31b199e2ca7bc5', 1, 0, 0, '2013-10-14 22:33:37', 'admin', '0000-00-00 00:00:00', ''),
(2, 'ims2012074', '0d9b25387cbc822f63649c6c4a0c3041d67d5221', 'ims2012074@iiita.ac.in', '489bb7fbd2418b82d75f5542fff1f4eedfb36ae2', 0, 0, 0, '2013-10-15 05:33:03', 'admin', '0000-00-00 00:00:00', ''),
(3, 'Amba Khare', 'fc6bd0771cafbfb9b8edd7d5c7dd80ec33e397d5', 'ambakhare410@gmail.com', '65d44b70d3c2c20b957e5c4a6528323cd62be23d', 0, 0, 0, '2013-10-15 06:15:37', 'admin', '0000-00-00 00:00:00', ''),
(4, 'ksam', '79f3e262d1057ded909116648694f8fcf19d06aa', 'kumarsanyam05@gmail.com', 'a69592615ae41e6af2b7925a18f4c3d7b517a8e4', 1, 0, 0, '2013-10-15 07:37:13', 'admin', '0000-00-00 00:00:00', ''),
(5, 'er.anirudh', '58720f6d729ed19610446a4099bd470fdea7e1ef', 'singhanirudh1991@gmail.com', 'e3ec2d9783610d988bba2b9bbf24278118c8267d', 0, 0, 0, '2013-10-15 08:50:43', 'admin', '0000-00-00 00:00:00', ''),
(6, 'ram.k.chauhan', 'd665f87688c43c7e469b1310d2d0d135c460d07c', 'ram.18.chauhan@gmail.com', '341670f279419fc85da76f2189d4b29dd5a9cedd', 0, 0, 0, '2013-10-15 08:53:07', 'admin', '0000-00-00 00:00:00', ''),
(7, 'Sujeet', 'a2f81dc2f45aa0b052d8454abb38b026f38a6ed0', 'sujeet2106@rediffmail.com', '439383881906e4409094a8d46f24fb0dd7af3d92', 1, 0, 0, '2013-10-15 09:03:29', 'admin', '0000-00-00 00:00:00', ''),
(8, 'sparsh agrawal', 'a022cd9149cc9e77d4fc80985646721f33f8f549', 'sparsh992.agrawal@gmail.com', 'dda7be5d2cda42b06a764fe47ae14f098dd32676', 1, 0, 0, '2013-10-15 11:03:48', 'admin', '0000-00-00 00:00:00', ''),
(9, 'cooldav4', '8643590a4b7bdd1d949445eec1cd89a515526ccd', 'johndav444@gmail.com', 'd8788a85f9877bbb195dbd97a020f414995b0931', 1, 0, 0, '2013-10-15 11:07:29', 'admin', '0000-00-00 00:00:00', ''),
(10, 'error404', '4114730c7420b5702384100cc6f88ebf7d45f8e7', 'nomailfacebook@gmail.com', 'b3949d921587232c0a397a0b160e2202dede3555', 1, 0, 0, '2013-10-15 11:19:11', 'admin', '0000-00-00 00:00:00', ''),
(11, 'harrysid', '9590d403fe6ff91111c4a87b451d51bdd9f9dfcc', 'harisalg92@gmail.com', '92ec01520f034a5075cd2640ce4d65ef5093bccf', 1, 0, 0, '2013-10-15 11:30:40', 'admin', '0000-00-00 00:00:00', ''),
(12, 'skm12', 'f641bd300da7a2595ccf47cabfd8de8d200412fd', 'shwetknit@gmail.com', '94878a6048f1eb4d1eaee93da3e73b6aa72af660', 0, 0, 0, '2013-10-15 11:34:43', 'admin', '0000-00-00 00:00:00', ''),
(13, 'piyush5', '18120a061c02603c113da3920123d0b1d59e5cc9', 'mahajanpiyush8@gmail.com', '109961dcdbe1e06a156c67fdf274ab986bbb5799', 0, 0, 0, '2013-10-15 12:39:15', 'admin', '0000-00-00 00:00:00', ''),
(14, 'akashthegr8', 'e324f3615db6a1e1e516fa5d2b8a1b1819657e55', 'akashsrivastava1234@gmail.com', 'af13064e49800fbcd50cf32e8f1629a4ed79e53c', 0, 0, 0, '2013-10-15 12:45:54', 'admin', '0000-00-00 00:00:00', ''),
(15, 'gohan95', '560e47b9be648a6914ef614c1da005555d909e3d', '95.gohan@gmail.com', 'cd5a1c2fddd2696f84afb4809fe293af1ad4c05d', 1, 0, 0, '2013-10-15 13:37:02', 'admin', '0000-00-00 00:00:00', ''),
(16, 'anujkhator', 'ee16aad5f09234f77640f606ebf4c5dc6e0befaf', 'anuj.p12@imi.edu', 'ef35327ea2477b02f2effae391214ee2bda4ab10', 0, 0, 0, '2013-10-15 13:57:55', 'admin', '0000-00-00 00:00:00', ''),
(17, 'avinish', 'b20262172fcbbe11e7938cb766cddfec54fffe38', 'avinish.sharma007@gmail.com', '7062b00172f273d9555cff25abbbc1c915547916', 0, 0, 0, '2013-10-15 14:19:01', 'admin', '0000-00-00 00:00:00', ''),
(18, 'abhishek kushwaha', '1d0bf1829c4225c8745cae2bcc950f7a2458faf5', 'abhi786.kush@gmail.com', 'edb7bce540a504cacf638145526be2c52aa3c4ce', 0, 0, 0, '2013-10-15 14:20:41', 'admin', '0000-00-00 00:00:00', ''),
(19, 'tarun', '3811cea5c620a5eb7799dc56a16764e86cc360a2', 'ravi25me@gmail.com', '7de5f1626a44aaeb7a44e309ed3bf4baaec07736', 0, 0, 0, '2013-10-15 15:00:34', 'admin', '0000-00-00 00:00:00', ''),
(20, 'ROI', '9c3dbe6c406983fb4b5bc25d2bfb9b43b00a6184', 'priyansh004@gmail.com', 'b9759e50a128889e8b528d120f1338d2c05430ae', 0, 0, 0, '2013-10-15 15:19:26', 'admin', '0000-00-00 00:00:00', ''),
(21, '!dmn', '265ec96a81904f2c7fc764d463b73346eb4265f0', 'abhinavmishra3520mnnit@gmail.com', '5bb1d3d49a615f9640e9cce7ce6a5c50361ca618', 0, 0, 0, '2013-10-15 16:08:27', 'admin', '0000-00-00 00:00:00', ''),
(22, 'Anupam', 'c1bd14762a70701b7e882cbae29e2f56fdc71c8a', 'anupamchatterjee93@gmail.com', '96be4965bf976512ffdba73a2ff41db240657de1', 0, 0, 0, '2013-10-15 16:09:06', 'admin', '0000-00-00 00:00:00', ''),
(23, 'Tushar Chopra', '063a56b419c765441d340b1fc9cb47ece2ceb60b', 'tusharchoprabtech@gmail.com', '8aadf3af532bd6af2a32e9cb127f3510993a99ea', 0, 0, 0, '2013-10-15 16:50:49', 'admin', '0000-00-00 00:00:00', ''),
(25, 'jays23', '080207c66b45f956667b4db3cb8843e8ee61de02', 'jayant.saraf23@gmail.com', '24ea96c9ae6f9fd41b5737941198673ed38aa970', 0, 0, 0, '2013-10-15 17:01:37', 'admin', '0000-00-00 00:00:00', ''),
(26, 'ankit.saha', '52880dcf0b8e366b455c4600aaf8963b648c41f0', 'ankit.shoubhik.saha@gmail.com', '4f315edb3633a9f96ec015185b60dcd9759efb14', 0, 0, 0, '2013-10-15 19:16:22', 'admin', '0000-00-00 00:00:00', ''),
(27, 'bazinga_', 'f4fa96c5dfde2c86e1dfba3971fb80f099c16fd5', 'piyushniranjanhbti@gmail.com', '7ba3628c5f6fa6f92344c592fb011cebaa86c778', 0, 0, 0, '2013-10-15 21:06:35', 'admin', '0000-00-00 00:00:00', ''),
(28, 'shobhitmittal', 'a0f20c047912b01ce68679d533758c42cd5b716a', 'shobhitmittal250@gmail.com', 'daa90dc88fbda8b1b4728792f59b79d583615379', 0, 0, 0, '2013-10-15 23:35:29', 'admin', '0000-00-00 00:00:00', ''),
(29, 'soum92', '767021d94063393715f578926f17b1ccfb2bd54e', 'soumyarka08@gmail.com', '7bbe1d61a940d404e3f5b964837d734cd4e32eba', 0, 0, 0, '2013-10-16 05:22:54', 'admin', '0000-00-00 00:00:00', ''),
(30, 'ims2013044', '15a6fa455a4d58ea717f2247119f4fe9af0bcd0e', 'rajnish.raaj@gmail.com', 'a95d9637bfb2420a5ec9f03bfbcfc77e185fca6f', 0, 0, 0, '2013-10-16 06:05:25', 'admin', '0000-00-00 00:00:00', ''),
(31, 'akky1024', '02bff78e20631e3204ed9332c7cb40814a3b5dc1', 'akshay.bhardwaj512@gmail.com', 'a5776c19d9c6cc5a88aeedc6d3553a526c8b5e27', 0, 0, 0, '2013-10-16 06:05:44', 'admin', '0000-00-00 00:00:00', ''),
(32, 'ankur927', '89a76860b6be977ffa2fb51bdd13570c3ef8ff5e', 'ankurjaiswal35@gmail.com', '1a7e1cfed8549d0e3a4009f54b78a100ea8993ea', 0, 0, 0, '2013-10-16 06:18:45', 'admin', '0000-00-00 00:00:00', ''),
(33, 'rivudas', '53eee3d6ac13e4cfd1a77d71d7cac5e6a3860e29', 'rivudas1995@gmail.com', '21a33a2ad95cf680fa3fba4c3e055a4923b9e503', 1, 0, 0, '2013-10-16 06:56:36', 'admin', '0000-00-00 00:00:00', ''),
(35, 'anirudhagrawal421', '95a4a1a6067663377f32026fb594d918f3850d0c', 'anirudhagrawal421@gmail.com', '254cf1c77cd798b7d78fa98bf91bb996268be8e0', 0, 0, 0, '2013-10-16 10:03:53', 'admin', '0000-00-00 00:00:00', ''),
(36, 'himalay_jor', '098dd22dae48cf14f7e45994da07412c898d9dbc', 'himalayjoriwal@gmail.com', '61a3d660ce23a3ddad967162b992fd774c67d56f', 0, 0, 0, '2013-10-16 11:34:41', 'admin', '0000-00-00 00:00:00', ''),
(37, 'akshat.sood', '89b049b21d17851adb295fba73a52cec3a3a8c2b', 'akshat.sood@yahoo.co.in', '5623927f7cfa44cac0b77442fb94be578da7458d', 0, 0, 0, '2013-10-16 12:33:47', 'admin', '0000-00-00 00:00:00', ''),
(38, 'spharish', 'd8b4d4db6ce3590922294c7f6a8a954aabec9321', 'iit2013134', '4b33b3a538b58b8657ebdceb84db5878f741fed5', 0, 0, 0, '2013-10-16 13:30:48', 'admin', '0000-00-00 00:00:00', ''),
(39, 'shobhita agrahari', 'cf06c62067f7b3ae01fd1b67a8041ebddee8d894', 'agraharishobhita93@gmail.com', 'e5a4acdf788ffd89ad7c8bf6185aa71060ce31ca', 0, 0, 0, '2013-10-16 14:01:44', 'admin', '0000-00-00 00:00:00', ''),
(40, 'Vartul', '5adf6d760278289e44965c14c4816ef1f3efaae1', 'vartul14@gmail.com', '0309fe2d59ce9205da1a4b8be1a933e3ff12d0c3', 0, 0, 0, '2013-10-16 14:29:45', 'admin', '0000-00-00 00:00:00', ''),
(41, 'Brigi', '8a03528f867fcbe6d0a312eed3e7ae205177e0f7', 'sairamjnkr@gmail.com', '223e21a07a15e00b3576f81d6d6bd235c33a70c4', 0, 0, 0, '2013-10-16 16:33:52', 'admin', '0000-00-00 00:00:00', ''),
(42, 'himanshu', '101cd2c0312ed98051a81bda6c9d199c448fcd16', 'himanshututeja.ht@gmail.com', '21698339d8de8931960e9da4550e6134d48657a7', 0, 0, 0, '2013-10-16 16:42:57', 'admin', '0000-00-00 00:00:00', ''),
(43, 'Himanshu Sharma', '65b8f63583c2797747ef06763aa2536cde5a35bb', 'himanshu.sharma.2403@gmail.com', '05648c8851e9c2cf4d02b5b056251d0e768d3c36', 0, 0, 0, '2013-10-16 17:15:13', 'admin', '0000-00-00 00:00:00', ''),
(44, 'akkyb1024', '02bff78e20631e3204ed9332c7cb40814a3b5dc1', 'akshaybhardwaj512@hotmail.co.uk', '37340c52fcc67f1b6ce252a2ced5781bee6abc10', 0, 0, 0, '2013-10-16 17:25:38', 'admin', '0000-00-00 00:00:00', ''),
(45, 'ekaggrata', 'db65c0423217381e370147913c1725888ca63ec8', '0023aditya@gmail.com', 'e2d9c7a01209c01ddb2ec25e62229ad4429cd5a6', 0, 0, 0, '2013-10-16 18:00:20', 'admin', '0000-00-00 00:00:00', ''),
(46, 'hemantnonstop', '0f8d90542a64c87052ff06ff2feeb69d3193b576', 'hemantnonstop@gmail.com', '3c13b704dea5ae47492ca26e0e9beab8e7826fb0', 0, 0, 0, '2013-10-16 18:16:01', 'admin', '0000-00-00 00:00:00', ''),
(47, 'thegurupritam', 'a0929a3a9529a73a386e78377de7903034a89a79', 'pretamjayaswal@gmail.com', '82671ea2274043b0815ccd3b19b49632e4a3cdaf', 0, 0, 0, '2013-10-16 20:04:41', 'admin', '0000-00-00 00:00:00', ''),
(48, 'aakash_candid', '61defedf0de753e8df581233d7197d16ae750489', 'aakashkh284@gmail.com', '56980b7e556af9e7f87aa4c3b4c8dfc59ef8a13e', 0, 0, 0, '2013-10-16 20:13:35', 'admin', '0000-00-00 00:00:00', ''),
(49, 'priyanshu jaiswal', '1d547f46d5cc7a5948b6910aafea00e31f5e8d6e', 'priyanshujaiswal786@gmail.com', 'a5aa03b1135369d4929389ac5ff201daa1afaa4b', 0, 0, 0, '2013-10-17 00:15:37', 'admin', '0000-00-00 00:00:00', ''),
(50, 'upraity93', '98808e9e2b6ec64fad1b1b28204285421268cf40', 'amol.upraity93@gmail.com', '2c51b9721340a3e747d92ab7fa21f63d69ae581c', 0, 0, 0, '2013-10-17 04:07:55', 'admin', '0000-00-00 00:00:00', ''),
(51, 'upraity.amol93', '98808e9e2b6ec64fad1b1b28204285421268cf40', 'bachelor.amol2002@gmail.com', 'a07e2dde1583cd0bff2641b964abf2109d80c886', 0, 0, 0, '2013-10-17 04:27:56', 'admin', '0000-00-00 00:00:00', ''),
(52, 'amol.93', '98808e9e2b6ec64fad1b1b28204285421268cf40', 'irm2013010@iiita.ac.in', 'd9aba6164cde0458db4582bf8a4aa5bca22fb1ea', 0, 0, 0, '2013-10-17 04:50:13', 'admin', '0000-00-00 00:00:00', ''),
(53, 'nitish', '1312aeb524acddc0406f646b85593a24f45e64c9', 'nitishkmr750@gmail.com', '0abfc7d615dc589868a8df90f087cd6481144025', 0, 0, 0, '2013-10-17 05:13:26', 'admin', '0000-00-00 00:00:00', ''),
(54, 'ankur2', '900b37e60c2512337680f4c2f57dd848beb743aa', 'ankurjaiswal36@gmail.com', '6525a42dd601dc554b07aed6842d80c09a9d972c', 0, 0, 0, '2013-10-17 05:30:41', 'admin', '0000-00-00 00:00:00', ''),
(55, 'MISHRA', '6fef05f6192db77d7ee85704571a0971d1d00569', 'nitishkmr057@gmail.com', '0f3c1a3380539340fba1ca7b69502c0945115746', 0, 0, 0, '2013-10-17 05:34:46', 'admin', '0000-00-00 00:00:00', ''),
(56, 'sohail531', '21b61d2ffc464a16874a6b65899fcb4cdc16f3ba', 'sohailakram531@gmail.com', '1e830a7f9234614dd49f4cfa2d486e4904fcc172', 0, 0, 0, '2013-10-17 05:56:58', 'admin', '0000-00-00 00:00:00', ''),
(57, 'sud273', '3ed5171c8c098329c60342e5c92d9d7dafefd6cb', 'sudhanshus30@gmail.com', '0bfea700c45b4d0fa1ad73403408d684a8a57296', 0, 0, 0, '2013-10-17 06:36:25', 'admin', '0000-00-00 00:00:00', ''),
(58, 'sudh273', '3ed5171c8c098329c60342e5c92d9d7dafefd6cb', 'sudhanshus30@yahoo.com', 'adda46b063070d7ba858cdbc5f519dedada78364', 0, 0, 0, '2013-10-17 06:46:50', 'admin', '0000-00-00 00:00:00', ''),
(59, 'rajatjaiswal', '6a31d15557d47fbbce45257d982394c2d0388aa0', 'rajat.rajatjaiswal10@gmail.com', '259f0f8c60dcdaf6c8145e7ddff5ea1e3f81241b', 0, 0, 0, '2013-10-17 06:58:36', 'admin', '0000-00-00 00:00:00', ''),
(60, 'chacha778', '1312aeb524acddc0406f646b85593a24f45e64c9', 'awakash777@gmail.com', '0cb8aafacadf2da61220a2929c8036b90a9a6041', 0, 0, 0, '2013-10-17 08:20:17', 'admin', '0000-00-00 00:00:00', ''),
(61, 'test', '1f653cdb6b798b421734af14ebe1b9599a9c26af', 'j.mehtaaa@gmail.com', 'bdb471aeecaa7b16ed5d56a7a7b6053c1397c746', 0, 0, 0, '2013-10-17 08:21:12', 'admin', '0000-00-00 00:00:00', ''),
(62, 'nirajk42', '6f2421462cb398fbc66aef006232294aab426ee1', 'nirajk42@gmail.com', 'f2a5346ae9226cb1b063d352b81a8634112d57d2', 0, 0, 0, '2013-10-17 08:42:11', 'admin', '0000-00-00 00:00:00', ''),
(63, 'lazy', 'f43e88077a63389864f2d8b85654cfed6d642b21', 'rit2011020@iiita.ac.in', '0e90c4d90111afb1f6f670daca75b7ccbd257710', 1, 0, 0, '2013-10-17 09:59:22', 'admin', '0000-00-00 00:00:00', ''),
(64, 'gagan8765', '7efdd8611e6d8ee228b2452224c61b6d0270ab81', 'gagan.sharma61@gmail.com', 'c259f8e3a3c52cca03519ba9e80bc5af19fd9b83', 0, 0, 0, '2013-10-17 10:47:07', 'admin', '0000-00-00 00:00:00', ''),
(65, 'luckfove', '0551d44dbf54bab2d23a7c2257fc77ba9c345d15', 'anuj.sixstrings@gmail.com', '4b8d51e35542fea0f35ab540c7c98553ea098be5', 1, 0, 1, '2013-10-17 11:44:34', 'admin', '0000-00-00 00:00:00', ''),
(66, 'meadf', '3811cea5c620a5eb7799dc56a16764e86cc360a2', 'iit2012087@iiita.ac.in', 'b5c04281f14fa25e8da39cf1b02b37eaa8677ec2', 0, 1, 0, '2013-10-20 11:54:38', 'admin', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `college_id` int(5) NOT NULL DEFAULT '0',
  `contact` varchar(24) NOT NULL DEFAULT '',
  `profession` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(10) NOT NULL DEFAULT '',
  `accommodation` tinyint(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `reg_id` varchar(13) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isdeleted` tinyint(1) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL DEFAULT 'admin',
  `modified_on` datetime DEFAULT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT '',
  `locked` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `name`, `college_id`, `contact`, `profession`, `gender`, `accommodation`, `address`, `reg_id`, `isactive`, `isdeleted`, `added_on`, `added_by`, `modified_on`, `modified_by`, `locked`) VALUES
(1, 1, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 04:03:37', 'admin', NULL, '', 0),
(2, 2, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 11:03:03', 'admin', NULL, '', 0),
(3, 3, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 11:45:37', 'admin', NULL, '', 0),
(4, 4, 'Kumar Sanyam', 154, '8953322927', 'Student', 'male', 0, ' 418,BH-2, IIITA, JHALWA,Allahabad.', 'EFFE201310004', 1, 0, '2013-10-15 13:07:13', 'admin', '2013-10-15 13:52:21', '', 1),
(5, 5, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 14:20:44', 'admin', NULL, '', 0),
(6, 6, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 14:23:07', 'admin', NULL, '', 0),
(7, 7, 'Sujeet Kumar', 154, '9125626779', 'Student', 'male', 0, '200 L.I.G Govindpur \r\nAllahabad, U.P', 'EFFE201310007', 1, 0, '2013-10-15 14:33:29', 'admin', '2013-10-15 22:00:48', '', 1),
(8, 8, 'sparsh agrawal', 477, '9161246164', 'b.tech', 'male', 0, '335,old katra ,allahabad', 'EFFE201310008', 1, 0, '2013-10-15 16:33:48', 'admin', '2013-10-17 16:08:44', '', 1),
(9, 9, 'john roy', 260, '8592040787', 'student', 'male', 0, ' kadukutty', 'EFFE201310009', 1, 0, '2013-10-15 16:37:29', 'admin', '2013-10-15 16:39:48', '', 1),
(10, 10, 'Anand Prajapati', 500, '9506977797', 'Gamer', 'male', 0, ' 2A/159 Azad Nagar, Kanpur', 'EFFE201310010', 1, 0, '2013-10-15 16:49:11', 'admin', '2013-10-15 16:51:46', '', 1),
(11, 11, 'Mohd Haris Siddiqui', 7, '9808688026', 'Student', 'male', 1, ' ', 'EFFE201310011', 1, 0, '2013-10-15 17:00:40', 'admin', '2013-10-15 17:04:01', '', 1),
(12, 12, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 17:04:43', 'admin', NULL, '', 0),
(13, 13, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 18:09:16', 'admin', NULL, '', 0),
(14, 14, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 18:15:54', 'admin', NULL, '', 0),
(15, 15, 'K Ashwin', 154, '8953345669', 'Student', 'male', 0, ' ', 'EFFE201310015', 1, 0, '2013-10-15 19:07:02', 'admin', '2013-10-15 19:08:11', '', 1),
(16, 16, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 19:27:55', 'admin', NULL, '', 0),
(17, 17, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 19:49:01', 'admin', NULL, '', 0),
(18, 18, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 19:50:41', 'admin', NULL, '', 0),
(19, 19, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 20:30:34', 'admin', NULL, '', 0),
(20, 20, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 20:49:26', 'admin', NULL, '', 0),
(21, 21, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 21:38:27', 'admin', NULL, '', 0),
(22, 22, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 21:39:06', 'admin', NULL, '', 0),
(23, 23, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 22:20:49', 'admin', NULL, '', 0),
(25, 25, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-15 22:31:37', 'admin', NULL, '', 0),
(26, 26, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 00:46:22', 'admin', NULL, '', 0),
(27, 27, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 02:36:35', 'admin', NULL, '', 0),
(28, 28, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 05:05:29', 'admin', NULL, '', 0),
(29, 29, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 10:52:54', 'admin', NULL, '', 0),
(30, 30, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 11:35:25', 'admin', NULL, '', 0),
(31, 31, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 11:35:44', 'admin', NULL, '', 0),
(32, 32, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 11:48:45', 'admin', NULL, '', 0),
(33, 33, 'RIVU DAS', 154, '9818385207', 'STUDENT', 'male', 1, ' N-308, Sector-25, Jal Vayu Vihar, Noida, Uttar Pradesh', 'EFFE201310033', 1, 0, '2013-10-16 12:26:36', 'admin', '2013-10-16 12:31:53', '', 1),
(35, 35, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 15:33:53', 'admin', NULL, '', 0),
(36, 36, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 17:04:41', 'admin', NULL, '', 0),
(37, 37, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 18:03:47', 'admin', NULL, '', 0),
(38, 38, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 19:00:48', 'admin', NULL, '', 0),
(39, 39, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 19:31:44', 'admin', NULL, '', 0),
(40, 40, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 19:59:45', 'admin', NULL, '', 0),
(41, 41, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 22:03:52', 'admin', NULL, '', 0),
(42, 42, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 22:12:57', 'admin', NULL, '', 0),
(43, 43, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 22:45:13', 'admin', NULL, '', 0),
(44, 44, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 22:55:38', 'admin', NULL, '', 0),
(45, 45, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 23:30:20', 'admin', NULL, '', 0),
(46, 46, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-16 23:46:01', 'admin', NULL, '', 0),
(47, 47, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 01:34:41', 'admin', NULL, '', 0),
(48, 48, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 01:43:35', 'admin', NULL, '', 0),
(49, 49, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 05:45:37', 'admin', NULL, '', 0),
(50, 50, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 09:37:55', 'admin', NULL, '', 0),
(51, 51, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 09:57:56', 'admin', NULL, '', 0),
(52, 52, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 10:20:14', 'admin', NULL, '', 0),
(53, 53, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 10:43:26', 'admin', NULL, '', 0),
(54, 54, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 11:00:41', 'admin', NULL, '', 0),
(55, 55, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 11:04:46', 'admin', NULL, '', 0),
(56, 56, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 11:26:58', 'admin', NULL, '', 0),
(57, 57, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 12:06:25', 'admin', NULL, '', 0),
(58, 58, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 12:16:50', 'admin', NULL, '', 0),
(59, 59, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 12:28:36', 'admin', NULL, '', 0),
(60, 60, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 13:50:17', 'admin', NULL, '', 0),
(61, 61, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 13:51:13', 'admin', NULL, '', 0),
(62, 62, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 14:12:11', 'admin', NULL, '', 0),
(63, 63, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 15:29:22', 'admin', NULL, '', 0),
(64, 64, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-17 16:17:07', 'admin', NULL, '', 0),
(65, 65, 'Anuj', 154, '9044462057', 'Student', 'male', 0, 'sdas  ', 'EFFE201310065', 1, 0, '2013-10-17 00:00:00', 'admin', '2013-10-17 17:30:16', '', 1),
(66, 66, '', 0, '', '', '', 0, '', '', 1, 0, '2013-10-20 17:24:38', 'admin', NULL, '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
