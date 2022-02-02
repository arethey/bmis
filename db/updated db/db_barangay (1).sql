-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 01:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity`
--

CREATE TABLE `tblactivity` (
  `id` int(11) NOT NULL,
  `dateofactivity` date NOT NULL,
  `activity` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblactivity`
--

INSERT INTO `tblactivity` (`id`, `dateofactivity`, `activity`, `description`) VALUES
(10, '2017-01-03', 'activity', 'Description'),
(11, '2017-01-28', 'teets', 'sdfsdfsdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `tblactivityphoto`
--

CREATE TABLE `tblactivityphoto` (
  `id` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `filename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblactivityphoto`
--

INSERT INTO `tblactivityphoto` (`id`, `activityid`, `filename`) VALUES
(18, 7, '1485255503893ChibiMaker.jpg'),
(19, 7, '1485255504014dental.jpg'),
(20, 7, '1485255504108images.jpg'),
(21, 8, '1485255608251dfxfxfxdfxfxfxdf.png'),
(22, 8, '1485255608315easy-nail-art-designs-for-beginners-youtube.jpg'),
(23, 8, '1485255608404Easy-Winter-Nail-Art-Tutorials-2013-2014-For-Beginners-Learners-10.jpg'),
(24, 8, '1485255608513motherboard.png'),
(25, 9, '148525575293111041019_1012143402147589_9043399646875097729_n.jpg'),
(26, 9, '1485255753089bg.PNG'),
(33, 10, '1485267649364bg.PNG'),
(34, 10, '1485267649563motherboard.png'),
(36, 10, '1485530481111bicycle-1280x720.jpg'),
(38, 11, '1485530620716user2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL,
  `yearRecorded` varchar(4) NOT NULL,
  `dateRecorded` date NOT NULL,
  `complainant` text NOT NULL,
  `cage` int(11) NOT NULL,
  `caddress` text NOT NULL,
  `ccontact` int(11) NOT NULL,
  `personToComplain` text NOT NULL,
  `page` int(11) NOT NULL,
  `paddress` text NOT NULL,
  `pcontact` int(11) NOT NULL,
  `complaint` text NOT NULL,
  `actionTaken` varchar(50) NOT NULL,
  `sStatus` varchar(50) NOT NULL,
  `locationOfIncidence` text NOT NULL,
  `recordedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `yearRecorded`, `dateRecorded`, `complainant`, `cage`, `caddress`, `ccontact`, `personToComplain`, `page`, `paddress`, `pcontact`, `complaint`, `actionTaken`, `sStatus`, `locationOfIncidence`, `recordedby`) VALUES
(3, '2016', '2016-10-15', 'sda, as das', 2132, 'asda', 213, '11', 3213, 'dasda', 2123, '213asd', '', 'Solved', 'asdsa', 'admin'),
(4, '2021', '2021-11-27', 'P., Bacolod Ronnel', 22, 'Tugas, Madridejos, Cebu', 92020, '12', 19, 'Tugas, Madridejos, Cebu', 90182, 'sumbagay', '', 'Unsolved', 'Tarong', 'admin'),
(8, '2021', '2021-12-18', 'Quijano, Alfonso Gonjuran', 22, 'Tugas,Madridejos,Cebu', 989832, '18', 23, 'Tugas,Madridejos,Cebu', 20932, 'suay', '', 'Unsolved', 'Crossing Tugas', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblclearance`
--

CREATE TABLE `tblclearance` (
  `id` int(11) NOT NULL,
  `clearanceNo` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `findings` text NOT NULL,
  `Clearance` text NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `typeofClearance` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclearance`
--

INSERT INTO `tblclearance` (`id`, `clearanceNo`, `residentid`, `findings`, `Clearance`, `orNo`, `samount`, `dateRecorded`, `recordedBy`, `status`, `typeofClearance`) VALUES
(8, 0, 11, '', 'asd', 5656, 60, '2017-01-20', 'User1', 'Approved', ''),
(9, 0, 15, '', 'Barangay Clearance', 12, 3434, '2017-01-22', 'admin', 'Approved', ''),
(11, 0, 11, 'none', 'Barangay Clearance', 1, 120, '2021-11-27', 'User1', 'Approved', ''),
(12, 0, 16, '', 'Barangay Indigency', 0, 120, '2021-11-27', 'admin', 'Approved', ''),
(13, 0, 11, '', 'Barangay Clearance', 92923, 120, '2021-11-27', 'admin', 'Approved', ''),
(15, 0, 15, '', 'Barangay Clearance', 12344, 2343, '2021-11-27', 'admin', 'Approved', ''),
(16, 0, 11, 'no type of clearance', '', 0, 0, '2021-11-27', 'User1', 'Disapproved', ''),
(20, 0, 16, '', 'Barangay Clearance', 123, 123, '2021-11-27', 'admin', 'Approved', ''),
(24, 0, 11, '', 'Barangay Clearance', 0, 0, '2021-11-27', 'User1', 'New', ''),
(30, 0, 11, '', 'Barangay Clearance', 0, 0, '2021-11-27', 'User1', 'New', ''),
(31, 0, 11, '', 'Barangay Indigence', 0, 0, '2021-11-27', 'User1', 'New', ''),
(32, 0, 15, '', 'Barangay Indigency', 12345, 1234, '2021-11-27', 'admin', 'Approved', ''),
(33, 0, 11, '', 'Barangay Indigency', 13, 90, '2021-11-28', 'admin', 'Approved', ''),
(34, 0, 12, '', 'Barangay Indigence', 0, 0, '2021-11-28', 'as', 'New', ''),
(35, 0, 11, '', 'Barangay Clearance', 0, 0, '2021-12-01', 'User1', 'New', ''),
(46, 0, 0, '', 'Barangay Indigency', 12, 345, '2021-12-02', 'admin', 'Approved', ''),
(49, 0, 20, '', 'Barangay Clearance', 0, 0, '2021-12-16', 'Nadnad', 'New', ''),
(50, 0, 23, '', 'Barangay Clearance', 0, 0, '2021-12-17', 'Jose', 'New', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblhousehold`
--

CREATE TABLE `tblhousehold` (
  `id` int(11) NOT NULL,
  `householdno` int(11) NOT NULL,
  `zone` varchar(11) NOT NULL,
  `totalhouseholdmembers` int(2) NOT NULL,
  `headoffamily` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhousehold`
--

INSERT INTO `tblhousehold` (`id`, `householdno`, `zone`, `totalhouseholdmembers`, `headoffamily`) VALUES
(3, 2, '2', 0, '12'),
(4, 3, 'Purok Rosas', 0, '13'),
(5, 4, '21', 0, '18'),
(7, 1, '5', 0, '11'),
(8, 7, '7', 0, '24');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `logdate` datetime NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`id`, `user`, `logdate`, `action`) VALUES
(2, 'asd', '2017-01-04 00:00:00', 'Added Resident namedjayjay, asd asd'),
(3, 'asd', '2017-01-04 19:13:40', 'Update Resident named Sample1, User1 Brgy1'),
(4, 'sad', '2017-01-05 13:22:10', 'Update Official named eliezer a. vacalares, jr.'),
(7, 'sad', '2017-01-05 13:54:40', 'Update Household Number 1'),
(8, 'sad', '2017-01-05 14:00:08', 'Update Blotter Request sda, as das'),
(9, 'sad', '2017-01-05 14:15:39', 'Update Clearance with clearance number of 123131'),
(10, 'sad', '2017-01-05 14:25:03', 'Update Permit with business name of asda'),
(11, 'sad', '2017-01-05 14:25:25', 'Update Resident named Sample1, User1 Brgy1'),
(12, 'Administrator', '2017-01-24 16:32:40', 'Added Permit with business name of hahaha'),
(13, 'Administrator', '2017-01-24 16:35:41', 'Added Clearance with clearance number of 123'),
(14, 'Administrator', '2017-01-24 18:43:35', 'Added Activity sad'),
(15, 'Administrator', '2017-01-24 18:45:49', 'Added Activity qwe'),
(16, 'Administrator', '2017-01-24 18:46:20', 'Added Activity ss'),
(17, 'Administrator', '2017-01-24 18:47:39', 'Added Activity e'),
(18, 'Administrator', '2017-01-24 18:55:20', 'Added Activity activity'),
(19, 'Administrator', '2017-01-24 18:58:23', 'Added Activity Activity'),
(20, 'Administrator', '2017-01-24 19:00:07', 'Added Activity activity'),
(21, 'Administrator', '2017-01-24 19:02:32', 'Added Activity Activity'),
(22, 'Administrator', '2017-01-24 19:04:54', 'Added Activity activity'),
(23, 'Administrator', '2017-01-24 19:08:40', 'Update Activity activity'),
(24, 'Administrator', '2017-01-27 23:23:40', 'Added Activity teets'),
(25, 'Administrator', '2017-01-27 23:24:14', 'Update Resident named Sample1, User1 Brgy1'),
(26, 'Administrator', '2017-01-27 23:25:10', 'Update Resident named sda, as das'),
(27, 'Administrator', '2017-01-30 10:45:13', 'Added Resident named 2, 2 2'),
(28, 'Administrator', '2017-01-30 10:45:54', 'Added Resident named 2, 2 2'),
(29, 'Administrator', '2017-02-06 08:58:23', 'Update Resident named sda, as das'),
(30, 'Administrator', '2017-02-06 09:00:14', 'Update Resident named sda, as das'),
(31, 'Administrator', '2017-02-06 09:03:57', 'Added Household Number 2'),
(32, 'Administrator', '2017-02-06 09:04:25', 'Added Household Number 2'),
(33, 'Administrator', '2021-11-27 18:48:05', 'Update Official named Chavez, Alen Gido'),
(34, 'Administrator', '2021-11-27 18:56:34', 'Added Official named Masuangat Ian Anthony'),
(35, 'Administrator', '2021-11-27 19:11:17', 'Added Resident named P., Bacolod Ronnel'),
(36, 'Administrator', '2021-11-27 19:14:45', 'Added Permit with business name of sira-sira store'),
(37, 'Administrator', '2021-11-27 19:16:45', 'Added Clearance with clearance number of '),
(38, 'Administrator', '2021-11-27 19:58:52', 'Update Official named Marfa Alicia M.'),
(39, 'Administrator', '2021-11-27 19:59:11', 'Update Official named Rebusit, Gomer'),
(40, 'Administrator', '2021-11-27 19:59:37', 'Update Official named Tayactac, Marisa'),
(41, 'Administrator', '2021-11-27 20:00:24', 'Update Official named Fernandez Gina '),
(42, 'Administrator', '2021-11-27 20:01:04', 'Update Official named Batasin-in Brendo'),
(43, 'Administrator', '2021-11-27 20:01:28', 'Update Official named Chavez, Evelyn'),
(44, 'Administrator', '2021-11-27 20:01:56', 'Update Official named Potayre, Roberto'),
(45, 'Administrator', '2021-11-27 20:02:18', 'Update Official named Marfa, Alicia M.'),
(46, 'Administrator', '2021-11-27 20:02:31', 'Update Official named Fernandez, Gina '),
(47, 'Administrator', '2021-11-27 20:02:50', 'Update Official named Batasin-in, Brendo'),
(48, 'Administrator', '2021-11-27 20:03:03', 'Update Official named Masuangat, Ian Anthony'),
(49, 'Administrator', '2021-11-27 20:19:11', 'Added Household Number 3'),
(50, 'Administrator', '2021-11-27 20:20:18', 'Added Permit with business name of MotorParts'),
(51, 'Administrator', '2021-11-27 20:21:28', 'Added Blotter Request by P., Bacolod Ronnel'),
(52, 'Administrator', '2021-11-27 21:27:37', 'Update Clearance with clearance number of '),
(53, 'Administrator', '2021-11-27 21:28:14', 'Update Clearance with clearance number of '),
(54, 'Administrator', '2021-11-27 21:31:40', 'Added Clearance with clearance number of '),
(55, 'Administrator', '2021-11-27 21:32:43', 'Added Clearance with clearance number of '),
(56, 'Administrator', '2021-11-27 21:33:20', 'Update Clearance with clearance number of '),
(57, 'Administrator', '2021-11-27 21:37:10', 'Added Clearance with clearance number of '),
(58, 'Administrator', '2021-11-27 22:02:44', 'Added Clearance with clearance number of '),
(59, 'Administrator', '2021-11-27 22:47:51', 'Update Clearance with clearance number of '),
(60, 'Administrator', '2021-11-27 22:48:02', 'Update Clearance with clearance number of '),
(61, 'Administrator', '2021-11-27 22:48:10', 'Update Clearance with clearance number of '),
(62, 'Administrator', '2021-11-27 22:48:18', 'Update Clearance with clearance number of '),
(63, 'Administrator', '2021-11-27 22:48:26', 'Update Clearance with clearance number of '),
(64, 'Administrator', '2021-11-27 23:13:19', 'Added Clearance with clearance number of '),
(65, 'Administrator', '2021-11-28 11:03:26', 'Added Clearance with clearance number of '),
(66, 'Administrator', '2021-11-28 12:32:44', 'Update Clearance with clearance number of '),
(67, 'Administrator', '2021-11-28 12:32:58', 'Update Clearance with clearance number of '),
(68, 'Administrator', '2021-11-28 12:33:22', 'Update Clearance with clearance number of '),
(69, 'Administrator', '2021-11-28 12:35:22', 'Update Clearance with clearance number of '),
(70, 'Administrator', '2021-11-28 12:35:34', 'Update Clearance with clearance number of '),
(71, 'Administrator', '2021-11-28 12:35:43', 'Update Clearance with clearance number of '),
(72, 'Administrator', '2021-11-28 15:13:44', 'Added Resident named Torro, Mark Gila'),
(73, 'Administrator', '2021-11-28 15:15:04', 'Added Household Number 4'),
(74, 'Administrator', '2021-12-01 18:04:29', 'Added Household Number '),
(75, 'Administrator', '2021-12-01 18:07:06', 'Added Household Number 2'),
(76, 'Administrator', '2021-12-01 18:08:01', 'Added Official named '),
(77, 'Administrator', '2021-12-02 07:52:47', 'Added Clearance with clearance number of '),
(78, 'Administrator', '2021-12-02 07:57:22', 'Added Clearance with clearance number of '),
(79, 'Administrator', '2021-12-02 08:38:24', 'Added Clearance with clearance number of '),
(80, 'Administrator', '2021-12-02 08:39:54', 'Added Clearance with clearance number of '),
(81, 'Administrator', '2021-12-02 08:41:00', 'Added Clearance with clearance number of '),
(82, 'Administrator', '2021-12-02 09:09:11', 'Added Clearance with clearance number of '),
(83, 'Administrator', '2021-12-02 09:12:08', 'Added Clearance with clearance number of '),
(84, 'Administrator', '2021-12-02 09:16:32', 'Added Clearance with clearance number of '),
(85, 'Administrator', '2021-12-02 09:17:41', 'Added Clearance with clearance number of '),
(86, 'Administrator', '2021-12-02 09:19:46', 'Added Clearance with clearance number of '),
(87, 'Administrator', '2021-12-02 09:26:15', 'Update Clearance with clearance number of '),
(88, 'Administrator', '2021-12-02 09:44:37', 'Added Blotter Request by '),
(89, 'Administrator', '2021-12-02 10:25:24', 'Added Blotter Request by '),
(90, 'Administrator', '2021-12-02 10:32:08', 'Added Blotter Request by '),
(91, 'Administrator', '2021-12-02 12:59:06', 'Added Zone number '),
(92, 'Administrator', '2021-12-02 15:05:32', 'Added Staff with name of Marfa, Alicia M.'),
(93, 'Administrator', '2021-12-11 09:22:59', 'Added Household Number 2'),
(94, 'Administrator', '2021-12-11 09:23:44', 'Added Household Number 1'),
(95, 'Administrator', '2021-12-11 09:26:34', 'Update Resident named sda, as das'),
(96, 'Administrator', '2021-12-11 17:03:29', 'Added Resident named Quijano, Alfonso Gonjuran'),
(97, 'Administrator', '2021-12-11 17:06:50', 'Added Resident named Quijano, Nadnad Gonjuran'),
(98, 'Administrator', '2021-12-11 17:10:13', 'Added Resident named Marfa, Niel Maru'),
(99, 'Administrator', '2021-12-11 17:12:17', 'Added Staff with name of Chavez, Alen G.'),
(100, 'Administrator', '2021-12-11 17:13:41', 'Added Staff with name of Rebusit, Gomer'),
(101, 'Administrator', '2021-12-11 17:14:41', 'Added Staff with name of Chavez,Evilyn'),
(102, 'Administrator', '2021-12-11 17:15:31', 'Added Staff with name of Tayactac,Marisa'),
(103, 'Administrator', '2021-12-11 17:17:42', 'Update Staff with name of Chavez, Alen G.'),
(104, 'Administrator', '2021-12-11 17:21:44', 'Update Staff with name of Chavez, Alen G.'),
(105, 'Administrator', '2021-12-11 17:22:12', 'Update Blotter Request by sda, as das'),
(106, 'Administrator', '2021-12-16 23:52:04', 'Added Resident named fslj, fkajsk jkjk'),
(107, 'Administrator', '2021-12-16 23:52:25', 'Update Resident named Quijano, Nadnad Gonjuran'),
(108, 'Administrator', '2021-12-16 23:55:38', 'Added Resident named Marfa, Jose Quijano'),
(109, 'Administrator', '2021-12-16 23:58:53', 'Update Resident named fslj, fkajsk jkjk'),
(110, 'Administrator', '2021-12-16 23:59:28', 'Update Resident named Marfa, Jose Quijano'),
(111, 'Administrator', '2021-12-17 00:00:25', 'Update Resident named Marfa, Jose Quijano'),
(112, 'Administrator', '2021-12-17 00:07:42', 'Update Resident named a, asd das'),
(113, 'Administrator', '2021-12-17 00:14:44', 'Update Resident named Quijano, Alfonso Gonjuran'),
(114, 'Administrator', '2021-12-17 00:28:53', 'Update Resident named fslj, fkajsk jkjk'),
(115, 'Administrator', '2021-12-17 00:29:26', 'Update Resident named a, asd das'),
(116, 'Administrator', '2021-12-17 00:30:21', 'Update Resident named Marfa, Jose Quijano'),
(117, 'Administrator', '2021-12-17 19:17:14', 'Added Resident named Ferrer, Antonette Marfa'),
(118, 'Administrator', '2021-12-17 19:17:47', 'Added Resident named Ferrer, Antonette Marfa'),
(119, 'Administrator', '2021-12-17 19:23:08', 'Added Resident named Ferrer, Antonette Marfa'),
(120, 'Administrator', '2021-12-17 19:27:21', 'Added Resident named Ferrer, Antonette Marfa'),
(121, 'Administrator', '2021-12-17 19:32:17', 'Added Resident named Ferrer, Antonette Marfa'),
(122, 'Administrator', '2021-12-17 19:32:51', 'Update Resident named a, asd das'),
(123, 'Administrator', '2021-12-17 19:34:27', 'Added Resident named fakj, fjkajk jkj'),
(124, 'Administrator', '2021-12-17 19:35:29', 'Added Resident named fakj, fjkajk jkj'),
(125, 'Administrator', '2021-12-17 19:39:42', 'Added Resident named Ferrer, Antonette Marfa'),
(126, 'Administrator', '2021-12-17 19:44:13', 'Added Resident named Ferrer, Antonette Marfa'),
(127, 'Administrator', '2021-12-17 19:51:46', 'Added Resident named Oflas , Jenevev Negro'),
(128, 'Administrator', '2021-12-17 19:52:48', 'Added Household Number 7'),
(129, 'Administrator', '2021-12-17 19:56:19', 'Added Resident named Arellano, Megmeg Maru'),
(130, 'Administrator', '2021-12-18 18:31:43', 'Added Zone number 5'),
(131, 'Administrator', '2021-12-18 18:53:19', 'Added Blotter Request by Quijano, Alfonso Gonjuran'),
(132, 'Administrator', '2021-12-18 18:56:09', 'Added Resident named Ending , Rica Mae Arellano'),
(133, 'Administrator', '2021-12-18 19:00:17', 'Added Resident named Arellano, Edison Maru');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficial`
--

CREATE TABLE `tblofficial` (
  `id` int(11) NOT NULL,
  `sPosition` varchar(50) NOT NULL,
  `completeName` text NOT NULL,
  `pcontact` varchar(20) NOT NULL,
  `paddress` text NOT NULL,
  `termStart` date NOT NULL,
  `termEnd` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblofficial`
--

INSERT INTO `tblofficial` (`id`, `sPosition`, `completeName`, `pcontact`, `paddress`, `termStart`, `termEnd`, `status`) VALUES
(4, 'Captain', 'Chavez, Alen Gido', '8978768761', 'Tugas, Madridejos, Cebu', '2016-10-03', '2016-10-06', 'Ongoing Term'),
(5, 'Kagawad(Peace and Order)', 'Marfa, Alicia M.', '4234', 'Tugas, Madridejos, Cebu', '2016-10-31', '2016-11-17', 'Ongoing Term'),
(6, 'Kagawad(Religious Affairs)', 'Rebusit, Gomer', '234234', 'Veto, Bantayan, Cebu', '2016-10-31', '2016-11-24', 'Ongoing Term'),
(7, 'Kagawad(Health)', 'Tayactac, Marisa', '67567', 'Tugas, Madridejos, Cebu', '2016-11-13', '2016-12-01', 'Ongoing Term'),
(8, 'Kagawad(Budget & Finance)', 'Fernandez, Gina ', '35454', 'Tugas, Madridejos, Cebu', '2016-11-06', '2016-11-30', 'Ongoing Term'),
(9, 'Kagawad(Socio-Cultural Affairs)', 'Batasin-in, Brendo', '3453545', 'sfsfds', '2016-11-06', '2016-11-22', 'Ongoing Term'),
(10, 'Kagawad(Education)', 'Chavez, Evelyn', '4245', 'Tugas, Madridejos, Cebu', '2016-11-06', '2016-11-25', 'Ongoing Term'),
(11, 'Kagawad(Infrastracture)', 'Potayre, Roberto', '231', 'Tugas, Madridejos, Cebu', '2016-10-31', '2016-11-28', 'Ongoing Term'),
(12, 'SK Chairman', 'Masuangat, Ian Anthony', '089282', 'Tugas,Madridejos,Cebu', '2021-11-18', '2021-11-18', 'Ongoing Term'),
(13, 'Barangay Secretary', 'Taves, Angel', '29920', 'Negros', '2021-11-23', '2021-11-30', 'Ongoing Term'),
(14, 'Barangay Treasurer', 'Rossell, Renato', '089282', 'Tugas,Madridejos,Cebu', '2021-11-26', '2021-11-30', 'Ongoing Term');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `businessName` text NOT NULL,
  `businessAddress` text NOT NULL,
  `typeOfBusiness` varchar(50) NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `residentid`, `businessName`, `businessAddress`, `typeOfBusiness`, `orNo`, `samount`, `dateRecorded`, `recordedBy`, `status`) VALUES
(2, 11, 'test', 'test', 'Option 2', 213, 2132131, '2016-10-15', '', 'Disapproved'),
(3, 11, 'asda', 'sdfs', 'Option 1', 43434, 45454, '2016-10-15', 'admin', 'Approved'),
(4, 11, '23', 'asda', 'Option 1', 342, 434543, '2016-10-15', 'admin', 'Approved'),
(5, 11, 'Business ', 'Address', 'Option 1', 0, 0, '2016-12-04', 'a', 'New'),
(6, 11, 'sa', 'sa', 'Option 1', 2, 12, '2017-01-20', 'a', 'Approved'),
(7, 11, 'sad', 'asd', 'Option 2', 0, 0, '2017-01-20', 'a', 'New'),
(8, 12, 'hahaha', 'hehe', 'Option 1', 1234, 1234, '2017-01-24', 'admin', 'Approved'),
(9, 17, 'sira-sira store', 'Tugas, Madridejos, Cebu', '', 21, 150, '2021-11-27', 'admin', 'Approved'),
(10, 14, 'MotorParts', 'Tugas, Madridejos, Cebu', '', 1, 150, '2021-11-27', 'admin', 'Approved'),
(11, 13, 'Axies Trading', 'tugas', '', 0, 0, '2021-11-28', '1', 'New'),
(12, 13, '', '', '', 0, 0, '2021-12-03', '1', 'New'),
(13, 20, 'karenderya store', 'Tugas, Madridejos, Cebu', '', 0, 0, '2021-12-16', 'Nadz', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `bdate` varchar(20) NOT NULL,
  `bplace` text NOT NULL,
  `age` int(11) NOT NULL,
  `barangay` varchar(120) NOT NULL,
  `zone` varchar(5) NOT NULL,
  `totalhousehold` int(5) NOT NULL,
  `differentlyabledperson` varchar(100) NOT NULL,
  `relationtohead` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `bloodtype` varchar(10) NOT NULL,
  `civilstatus` varchar(20) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `monthlyincome` int(12) NOT NULL,
  `householdnum` int(11) NOT NULL,
  `lengthofstay` int(11) NOT NULL,
  `region` varchar(50) NOT NULL,
  `Citizenship` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `skills` text NOT NULL,
  `igpitID` int(11) NOT NULL,
  `philhealthNo` int(12) NOT NULL,
  `highestEducationalAttainment` varchar(50) NOT NULL,
  `houseOwnershipStatus` varchar(50) NOT NULL,
  `landOwnershipStatus` varchar(20) NOT NULL,
  `dwellingtype` varchar(20) NOT NULL,
  `waterUsage` varchar(20) NOT NULL,
  `lightningFacilities` varchar(20) NOT NULL,
  `sanitaryToilet` varchar(20) NOT NULL,
  `formerAddress` text NOT NULL,
  `Municipality` text NOT NULL,
  `image` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `lname`, `fname`, `mname`, `bdate`, `bplace`, `age`, `barangay`, `zone`, `totalhousehold`, `differentlyabledperson`, `relationtohead`, `province`, `bloodtype`, `civilstatus`, `occupation`, `monthlyincome`, `householdnum`, `lengthofstay`, `region`, `Citizenship`, `gender`, `skills`, `igpitID`, `philhealthNo`, `highestEducationalAttainment`, `houseOwnershipStatus`, `landOwnershipStatus`, `dwellingtype`, `waterUsage`, `lightningFacilities`, `sanitaryToilet`, `formerAddress`, `Municipality`, `image`, `username`, `password`) VALUES
(11, 'Sample1', 'User1', 'Brgy1', '2017-01-01', 'dfsd1', 1, 'asdf', '2', 3, 'asdf', 'asdf', 'saf', 'sadf', 'fsd', 'adfs', 1, 1, 7, 'asd', 'asd', 'Female', 'asda1', 2, 2211, 'Doctorate degree', 'Live with Parents/Re', '1st Option', '1st Option', 'dsad11', '2211', 'dsfs11', 'ddsfd111', 'fdgfd11', '1482037013441_bg.PNG', 'a', 'a'),
(13, 'a', 'asd', 'das', '2016-12-31', 'asdf', 4, 'Tugas', '0', 8, '', '', 'Cebu', '', 'Single', 'none', 0, 3, 1, 'asd', 'asdf', 'Male', '', 0, 0, 'No schooling completed', '', '', '', '', '', '', 'asdf', 'Bantayan', 'default.png', '1', '1'),
(14, 'sdf', 'das', 'das', '2016-01-01', 'dsf', 2, '', '0', 0, '', '', '', '', '', '', 234, 2, 3, 'asdf', 'asdf', 'Male', 'asf', 2, 2, 'No schooling completed', 'Own Home', '1st Option', '1st Option', 'asf', 'sdf', 'asdf', 'asdf', 'asd', '1482037013441_bg.PNG', 'asdf', 'asdf'),
(15, 'jay', 'dsf', 'asdf', '2017-01-19', 'sdfa', 2, 'sdaf', '23', 23, 'sdf', 'adf', 'asd', 'asdf', 'adf', 'adsf', 23123, 23, 23, 'asd', 'dsf', 'Male', 'asdf', 23, 23, 'No schooling completed', 'Own Home', 'Owned', '1st Option', 'Faucet', 'Electric', 'Water-sealed', 'asdfa', 'asfa', 'default.png', 'qwe', 'qwe'),
(16, 'jayjay', 'asd', 'asd', '2017-01-02', 'sad', 23, 'asd', '23', 23, 'ad', 'asd', 'asd', 'as', 'asd', 'asd', 43, 23, 23, 'asd', 'asd', 'Male', 'sad', 23, 23, 'No schooling completed', 'Own Home', 'Owned', '1st Option', 'Faucet', 'Electric', 'Water-sealed', 'asd', 'asd', 'default.png', 'a', 'sa'),
(17, 'P.', 'Bacolod', 'Ronnel', '2021-11-26', 'Tugas, Madridejos, Cebu', 0, 'Tugas', 'Purok', 5, '', '', 'Cebu', '', 'single', 'student', 0, 21, 0, 'VII', 'Filipino', 'Male', '', 0, 0, 'College, undergrad', '', '', '', '', '', '', 'Tugas, Madridejos, Cebu', 'Madridejos', '1638011477837_1.jpg', 'Ronnel', 'pitu'),
(18, 'Torro', 'Mark', 'Gila', '1999-12-05', 'Tugas, Madridejos, Cebu', 21, 'Tugas', '21', 5, '', '', 'Cebu', '', 'Maried', 'konsehal', 0, 4, 0, 'VII', 'Filipino', '', '', 0, 0, 'College, undergrad', '', '', '', '', '', '', 'Tugas, Madridejos, Cebu', 'Madridejos', '1638083624214_4.jpg', 'nothing', '123'),
(19, 'Quijano', 'Alfonso', 'Gonjuran', '1999-10-22', 'Tugas, Madridejos,Cebu', 22, 'Tugas,Madridejos,Cebu', '3', 8, '', '', '', '', 'Maried', 'None', 0, 10, 8, 'VII', 'Filipino', 'Male', '', 0, 0, 'College, undergrad', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639213409385_20190110_124238.jpg', 'alfonso', '123'),
(20, 'Quijano', 'Nadnad', 'Gonjuran', '2021-12-15', 'Tugas, Madridejos,Cebu', 0, 'Tugas,Madridejos,Cebu', '5', 9, '', '', '', '', 'Maried', 'Driver', 0, 4, 6, '', 'Filipino', '', '', 0, 0, 'High school graduate', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639213610077_20190110_124708.jpg', 'Nadz', 'nadz123'),
(21, 'Marfa', 'Niel', 'Maru', '1999-07-14', 'Tugas, Madridejos,Cebu', 22, 'Tugas,Madridejos,Cebu', '7', 4, '', '', 'Cebu', '', 'Maried', 'Electrical', 0, 6, 0, 'VII', 'Filipino', 'Male', '', 0, 0, 'College, undergrad', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639213813874_20190110_162620.jpg', 'Niel', 'Marfa'),
(22, 'fslj', 'fkajsk', 'jkjk', '1999-03-23', 'Kabangbang,Bantayan,Ceby', 22, 'fsfsd', '7', 8, '', '', 'Cebu', '', 'fkjakj', 'None', 0, 6, 8, 'VII', 'Filipino', 'Male', '', 0, 0, 'Elementary', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'lfjksj', '1639669924793_20190108_133309.jpg', 'marfa', 'q'),
(23, 'Marfa', 'Jose', 'Quijano', '2021-12-09', 'Kabangbang,Bantayan,Ceby', 0, 'Tugas,Madridejos,Cebu', '7', 8, '', '', 'Cebu', '', 'Maried', 'None', 0, 6, 8, 'VII', 'Filipino', 'Male', '', 0, 0, 'Elementary', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639670138614_20190110_124708.jpg', 'Jose', 'q'),
(24, 'Ferrer', 'Antonette', 'Marfa', '2010-01-02', 'Tugas, Madridejos,Cebu', 11, 'Tugas,Madridejos,Cebu', '7', 5, '', '', 'Cebu', '', 'single', 'Student', 0, 7, 0, 'VII', 'Filipino', 'Female', '', 0, 0, 'Elementary', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639741453548_20190110_124201.jpg', 'Tonet', 'net123'),
(25, 'Oflas ', 'Jenevev', 'Negro', '2008-02-12', 'Tugas, Madridejos,Cebu', 13, 'Tugas,Madridejos,Cebu', '7', 9, '', '', 'Cebu', '', 'single', 'Student', 0, 8, 0, 'VII', 'Filipino', 'Female', '', 0, 0, 'High school, undergrad', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639741906156_20190110_124201.jpg', 'Vejoy', 'joy'),
(26, 'Arellano', 'Megmeg', 'Maru', '2010-03-25', 'Tugas, Madridejos,Cebu', 11, 'Tugas,Madridejos,Cebu', '7', 8, '', '', 'Cebu', '', 'single', 'Student', 0, 9, 0, 'VII', 'Filipino', 'Male', '', 0, 0, 'Elementary', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639742179148_20190110_162620.jpg', 'megmeg', 'megs21'),
(27, 'Ending ', 'Rica Mae', 'Arellano', '1998-03-12', 'Tugas, Madridejos,Cebu', 23, 'Tugas,Madridejos,Cebu', '7', 3, '', '', 'Cebu', '', 'Maried', 'None', 0, 9, 0, 'VII', 'Filipino', 'Female', '', 0, 0, 'High school, undergrad', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639824969247_20190110_162952.jpg', 'Rica', 'ending'),
(28, 'Arellano', 'Edison', 'Maru', '2000-02-07', 'Tugas, Madridejos,Cebu', 21, 'Tugas,Madridejos,Cebu', '5', 8, '', '', 'Cebu', '', 'single', 'Student', 0, 10, 0, 'VII', 'Filipino', 'Male', '', 0, 0, 'College, undergrad', '', '', '', '', '', '', 'Tugas,Madridejos,Cebu', 'Madridejos', '1639825217257_20190110_124238.jpg', 'edison', 'son');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`id`, `name`, `username`, `password`) VALUES
(2, 'Marfa, Alicia M.', 'Alice', 'marfa'),
(3, 'Chavez, Alen G.', 'alen', 'chavez'),
(4, 'Rebusit, Gomer', 'Gomer', 'rebusit'),
(5, 'Chavez,Evilyn', 'Chavez', 'evilyn'),
(6, 'Tayactac,Marisa', 'Marisa', 'tayactac');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 'administrator'),
(2, 'zone', 'zone', 'zoneleader');

-- --------------------------------------------------------

--
-- Table structure for table `tblzone`
--

CREATE TABLE `tblzone` (
  `id` int(5) NOT NULL,
  `zone` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblzone`
--

INSERT INTO `tblzone` (`id`, `zone`, `username`, `password`) VALUES
(0, '5', 'b', 'b'),
(2, '4', 'a', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivity`
--
ALTER TABLE `tblactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblotter`
--
ALTER TABLE `tblblotter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclearance`
--
ALTER TABLE `tblclearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblofficial`
--
ALTER TABLE `tblofficial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpermit`
--
ALTER TABLE `tblpermit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresident`
--
ALTER TABLE `tblresident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblzone`
--
ALTER TABLE `tblzone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivity`
--
ALTER TABLE `tblactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblactivityphoto`
--
ALTER TABLE `tblactivityphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblblotter`
--
ALTER TABLE `tblblotter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblclearance`
--
ALTER TABLE `tblclearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tblofficial`
--
ALTER TABLE `tblofficial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblpermit`
--
ALTER TABLE `tblpermit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblresident`
--
ALTER TABLE `tblresident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
