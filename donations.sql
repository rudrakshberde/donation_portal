-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 12:58 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donations`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `date` date NOT NULL,
  `organisation` varchar(30) DEFAULT NULL,
  `eventtitle` varchar(50) DEFAULT NULL,
  `date_time` varchar(25) NOT NULL DEFAULT current_timestamp(),
  `eventdesc` varchar(400) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`date`, `organisation`, `eventtitle`, `date_time`, `eventdesc`, `image`) VALUES
('2021-11-27', 'rudraksh.5869', 'this is event title', '2021-11-28 23:36:37', 'bbbbdhhdd', '61a3c52d645165.55006350.jpg'),
('2021-12-03', 'soham.5577', 'atharva', '2021-11-30 18:49:12', 'we are awesome', '61a624d0cde196.27166203.jpg'),
('2021-12-16', 'soham.5577', 'nnn', '2021-12-01 17:04:48', 'tttt', '61a75dd7e47b98.23279933.jpg'),
('2021-12-17', 'soham.5577', 'this is the newest', '2021-12-01 17:07:31', 'thiss', '61a75e7bb33cd9.05310919.jpg'),
('2021-12-25', 'soham.5577', 'this is event title', '2021-12-01 17:08:50', 'ttt', '61a75ec9e324f5.51233503.jpg'),
('2021-12-02', 'soham.5577', 'this is final', '2021-12-01 17:12:19', 'ttttt', '61a75f9b8c3216.31710325.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(13, 'rb', 'rb.7576', '1a79a4d60de6718e8e5b326e338ae533', 'example@gmail.com'),
(25, 'RB', 'rb.4341', '900150983cd24fb0d6963f7d28e17f72', 'abc@gmail.com'),
(26, 'SOHAM', 'soham.5577', '1a79a4d60de6718e8e5b326e338ae533', 'rudraksh.berde@gmail.com'),
(27, 'organisation', 'organisation.808', '1a79a4d60de6718e8e5b326e338ae533', 'abc123@gmail.com'),
(28, 'organisation 1', 'organisation 1.1187', '1a79a4d60de6718e8e5b326e338ae533', 'abd1@gmail.com'),
(29, 'rudraksh', 'rudraksh.5869', '1a79a4d60de6718e8e5b326e338ae533', 'abcdef@gmail'),
(30, 'rudraksh', 'rudraksh.2405', '1a79a4d60de6718e8e5b326e338ae533', 'abcdefg@gmail'),
(31, 'NSS', 'nss.1364', '1a79a4d60de6718e8e5b326e338ae533', 'nss@abc.com');

-- --------------------------------------------------------

--
-- Table structure for table `discarded`
--

CREATE TABLE `discarded` (
  `id` int(20) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(12) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `donationtype` varchar(22) DEFAULT NULL,
  `organisation` varchar(50) DEFAULT NULL,
  `file_name` varchar(225) NOT NULL,
  `time` varchar(50) NOT NULL,
  `reason` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discarded`
--

INSERT INTO `discarded` (`id`, `fullname`, `email`, `contactno`, `address`, `donationtype`, `organisation`, `file_name`, `time`, `reason`) VALUES
(17, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  nss', '61378e5f71e904.15732114.jpg', '2021-09-07 21:37:59', 'NOT NULL'),
(18, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  nss', '6137ae241532e3.10084054.jpg', '2021-09-07 23:53:32', NULL),
(19, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  nss', '6137aef5cf0283.92825383.jpg', '2021-09-07 23:57:01', NULL),
(27, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  soham.5577', '619c9331439112.87913430.jpg', '2021-11-23 12:37:29', 'this is the one used to check'),
(28, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'paper', '  soham.5577', '619c911d151a67.95197708.jpg', '2021-11-23 12:28:37', 'this is used to decline'),
(29, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  soham.5577', '61a4f903bd1f00.02152836.jpg', '2021-11-29 21:30:03', 'this is the reason'),
(30, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  soham.5577', '61a4f94a8aafa0.73858985.jpg', '2021-11-29 21:31:14', 'this is the reason'),
(31, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'money', '  soham.5577', '61a4f952442971.17709679.jpg', '2021-11-29 21:31:22', 'this'),
(32, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'E-waste', '  soham.5577', '61a4f959ea3877.26967823.jpg', '2021-11-29 21:31:29', 'this'),
(33, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'PLastic', '  soham.5577', '61a4fa5b0804f2.69731857.jpg', '2021-11-29 21:35:47', ''),
(34, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'other', '  soham.5577', '61a4fbc3e4e801.83686781.jpg', '2021-11-29 21:41:47', '<script> prom;</script>'),
(35, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'other', '  soham.5577', '61a51e5b6ec140.95531805.jpg', '2021-11-30 00:09:23', '<script> prom;</script>'),
(36, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  soham.5577', '61a51e3f4ab286.25103434.jpg', '2021-11-30 00:08:55', '<script>document.writeln(prom);</script>'),
(37, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'E-waste', '  soham.5577', '61a51e507793a0.24349927.jpg', '2021-11-30 00:09:12', ''),
(47, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  soham.5577', '61a535b0224fc8.48538417.jpg', '2021-11-30 01:48:56', ''),
(48, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'paper', '  soham.5577', '61a535b7a38433.44044230.jpg', '2021-11-30 01:49:03', ''),
(49, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', '  soham.5577', '61a63e76a2b730.03632469.jpg', '2021-11-30 20:38:38', ''),
(50, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'paper', '  soham.5577', '61a63e8c9efa52.73636625.jpg', '2021-11-30 20:39:00', ''),
(51, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', '  soham.5577', '61a643825ddb56.28989267.jpg', '2021-11-30 21:00:10', ''),
(52, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', '  soham.5577', '61a64387041a98.06035204.jpg', '2021-11-30 21:00:15', 'this'),
(53, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'E-waste', '  soham.5577', '61a66702816c86.00513575.jpg', '2021-11-30 23:31:38', 'this is the reason'),
(54, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', '  soham.5577', '61a6438b4ca7e5.50803656.jpg', '2021-11-30 21:00:19', 'this'),
(55, '  rudraksh Berde', 'rudraksh.berde@gmail.com', '	9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'E-waste', '  soham.5577', '61a675c6c0eb95.95758216.jpg', '2021-12-01 00:34:38', 'this');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(20) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(12) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `donationtype` varchar(22) DEFAULT NULL,
  `organisation` varchar(50) DEFAULT NULL,
  `file_name` varchar(225) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `fullname`, `email`, `contactno`, `address`, `donationtype`, `organisation`, `file_name`, `time`, `status`) VALUES
(54, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', 'nss', '6144cb9b7019e1.13931693.jpg', '2021-09-17 22:38:43', 'pending'),
(55, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', '', '6144cd62b10ed0.13368756.jpg', '2021-09-17 22:46:18', 'pending'),
(56, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', '', '', '6144eb901fea37.92835152.jpg', '2021-09-18 00:55:04', 'pending'),
(79, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'money', 'rb.7576', '615c299abce263.08948119.jpg', '2021-10-05 16:01:54', 'pending'),
(80, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'paper', 'rb.4341', '619bd269d32444.52548703.jpg', '2021-11-22 22:54:57', 'pending'),
(81, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', 'soham.5577', '619c6347447918.66591487.jpg', '2021-11-23 09:13:03', 'completed'),
(83, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'money', 'organisation.808', '619c6b79edace3.61555079.jpg', '2021-11-23 09:48:01', 'completed'),
(84, 'hello', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', 'rb.7576', '619c903b74d031.33438823.jpg', '2021-11-23 12:24:51', 'pending'),
(85, 'hello', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'money', 'rb.4341', '619c90cae2d182.16358440.jpg', '2021-11-23 12:27:15', 'pending'),
(87, 'hello', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', 'rb.4341', '619c9139c09015.54658668.jpg', '2021-11-23 12:29:05', 'pending'),
(88, 'hello', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', 'rb.7576', '619c92e0b85714.40746696.jpg', '2021-11-23 12:36:08', 'pending'),
(96, 'hjhhh', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'paper', 'organisation.808', '619c9887a48744.32751707.jpg', '2021-11-23 13:00:15', 'pending'),
(97, 'hjhhh', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'paper', 'organisation.808', '619c98bfd15c75.87621877.jpg', '2021-11-23 13:01:11', 'pending'),
(98, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'fooditems', 'rb.4341', '61a0f3f3dfe198.97678052.jpg', '2021-11-26 20:19:23', 'pending'),
(121, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', 'soham.5577', '61a63e9392bcf7.58667127.jpg', '2021-11-30 20:39:07', 'completed'),
(127, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', 'soham.5577', '61a7162baefd50.07227321.jpg', '2021-12-01 11:58:59', 'pending'),
(128, 'rudraksh Berde', 'rudraksh.berde@gmail.com', '9820752709', '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'clothes', 'soham.5577', '61a71647c7e842.19712875.jpg', '2021-12-01 11:59:27', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `experience` varchar(20) DEFAULT NULL,
  `org` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `nss` varchar(10) DEFAULT NULL,
  `dt` varchar(20) NOT NULL DEFAULT current_timestamp(),
  `event` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`ID`, `firstname`, `lastname`, `experience`, `org`, `email`, `number`, `address`, `nss`, `dt`, `event`) VALUES
(1, 'atharva', 'suryawashi', 'no', 'nss', 'this@this.com', 1122334458, 'hello my firend', 'yes', '2021-09-19 22:18:32', ''),
(2, 'sbcbc', 'lastname', 'yes', 'nss', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '0000-00-00 00:00:00', ''),
(3, 'sbcbc', 'lastname', 'yes', 'nss', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '0000-00-00 00:00:00', ''),
(4, 'sbcbc', 'lastname', 'yes', 'nss', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '0000-00-00 00:00:00', ''),
(5, 'sbcbc', 'lastname', 'yes', 'nss', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '0000-00-00 00:00:00', ''),
(6, 'sbcbc', 'lastname', 'yes', 'nss', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-09-21 13:09:56', ''),
(7, 'sbcbc', 'lastname', 'yes', 'admin1', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-09-21 22:50:50', ''),
(8, 'sbcbc', 'lastname', 'yes', 'rb.7576', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-10-05 16:04:42', ''),
(9, 'sbcbc', 'lastname', 'no', 'rb.4341', 'm m', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-11-22 21:47:07', ''),
(10, 'sbcbc', 'lastname', 'yes', 'rb.7576', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-11-22 22:55:55', ''),
(11, 'sbcbc', 'lastname', 'yes', 'soham.5577', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-11-23 09:13:29', ''),
(12, 'example', 'cdcdc', 'no', 'organisation.808', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-11-23 12:39:38', ''),
(13, 'example', 'lastname', 'yes', 'rb.7576', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-11-26 20:24:13', ''),
(14, 'rudraksh', 'berde', 'no', 'rb.4341', 'acs@gmail.com', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-11-28 16:56:58', 'food distribution drive'),
(15, 'sbcbc', 'lastname', '', 'Array', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'no', '2021-11-29 00:10:43', 'medical camp'),
(16, 'sbcbc', 'lastname', 'yes', 'rudraksh', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-11-29 00:13:48', 'clothes distribution'),
(17, 'sbcbc', 'lastname', 'yes', 'rudraksh.5869', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'no', '2021-11-29 00:16:09', 'clothes distribution'),
(18, 'example', 'cdcdc', '', 'medical camp', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'no', '2021-12-01 11:12:30', ''),
(19, 'example', 'lastname', 'yes', 'rudraksh.5869', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-12-01 11:17:23', 'medical camp'),
(20, 'sbcbc', 'lastname', 'yes', 'soham.5577', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'no', '2021-12-01 15:06:02', 'clothes distribution'),
(21, 'example', 'lastname', 'yes', 'soham.5577', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'no', '2021-12-01 15:20:54', 'clothes distribution'),
(22, 'sbcbc', 'lastname', 'yes', 'soham.5577', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-12-01 16:18:01', 'the second one'),
(23, 'sbcbc', 'lastname', 'yes', 'soham.5577', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-12-01 16:23:44', 'third one'),
(24, 'sbcbc', 'lastname', 'yes', 'soham.5577', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-12-01 16:31:45', 'this is fourth one'),
(25, 'sbcbc', 'lastname', 'yes', 'soham.5577', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-12-01 16:38:40', 'medical camp'),
(26, 'sbcbc', 'lastname', 'yes', 'soham.5577', 'rudraksh.berde@gmail', 2147483647, '604,PRABHAVINAYAK CHS,NEW PRABHADEVI ROAD', 'yes', '2021-12-01 16:56:39', 'this is newest');

-- --------------------------------------------------------

--
-- Table structure for table `volunteering_advertisement`
--

CREATE TABLE `volunteering_advertisement` (
  `organisation` varchar(50) DEFAULT NULL,
  `volunteering_add` varchar(500) DEFAULT NULL,
  `deadline` date NOT NULL,
  `no` int(11) NOT NULL,
  `eventtitle` varchar(60) NOT NULL,
  `id` int(255) NOT NULL,
  `date_time` varchar(30) NOT NULL DEFAULT current_timestamp(),
  `eventdate` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteering_advertisement`
--

INSERT INTO `volunteering_advertisement` (`organisation`, `volunteering_add`, `deadline`, `no`, `eventtitle`, `id`, `date_time`, `eventdate`) VALUES
('rudraksh.5869', 'this is new one', '2021-11-25', 9, 'clothes distribution', 2, '2021-11-29 02:14:51', NULL),
('rudraksh.5869', 'this is newest request', '2021-11-26', 9, 'medicine distribution', 3, '2021-11-29 02:14:51', NULL),
('nss.1364', 'bbbbbbb', '2021-12-26', 50, 'vaccination drive', 4, '2021-11-29 02:14:51', NULL),
('rudraksh.5869', 'this is the new one', '2021-12-11', 50, 'medical camp', 5, '2021-11-29 02:19:04', '21/12/11'),
('nss.1364', 'this is the nss new one', '2021-12-11', 54, 'clothes distribution', 6, '2021-11-29 02:20:00', '21/12/11'),
('soham.5577', 'this si ', '2021-12-25', 7, 'this is newest', 14, '2021-12-01 16:39:31', '21/12/11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discarded`
--
ALTER TABLE `discarded`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `volunteering_advertisement`
--
ALTER TABLE `volunteering_advertisement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `discarded`
--
ALTER TABLE `discarded`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `volunteering_advertisement`
--
ALTER TABLE `volunteering_advertisement`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
