-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 09:46 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`, `role`) VALUES
(1, 'admin', 'hajumh12@gmail.com', '123', '2016-04-04 20:31:45', '2021-05-03', 'admin'),
(2, 'Hajum', 'hajumh12@gmail.com', '123', '2021-05-03 13:00:12', '0000-00-00', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2016-04-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payNo` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `refNo` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `pay_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payNo`, `firstName`, `lastName`, `emailid`, `refNo`, `room_no`, `cost`, `status`, `pay_date`) VALUES
(8, 'Hassan', 'Mussa', 'hajumh12@gmail.com', '7698165878', '1337', 90000, 'Accepted', '2021-05-29 00:00:15'),
(11, 'JUMA', 'OMARY', 'ally@gmail.com', '1373015234', '899', 90000, NULL, '2021-05-29 19:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(8, 112, 3, 4000, 0, '2016-06-27', 5, 'Bachelor  of Science', 102355, 'Harry', 'projects', 'Singh', 'male', 6786786786, 'Harry@gmail.com', 789632587, 'demo', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2016-06-26 16:31:08', ''),
(12, 1337, 5, 90000, 0, '2021-05-21', 8, 'Bachelor Of Computer Application', 0, 'Peter', 'G', 'Lymo', 'female', 774447679, 'robynextdoor@gmail.com', 112, 'lymo', 'mom', 719700536, 'dodoma', 'dodoma', 'Sikkim', 1234, 'dodoma', 'dodoma', 'Sikkim', 1234, '2021-05-25 23:44:34', ''),
(13, 1337, 5, 90000, 0, '2021-05-13', 3, 'Master of Computer Application', 0, 'Peter', 'G', 'Lymo', 'others', 774447679, 'robynextdoor@gmail.com', 112, 'lymo', 'mom', 719700536, 'dodoma', 'dodoma', 'Sikkim', 1234, 'dodoma', 'dodoma', 'Sikkim', 1234, '2021-05-25 23:55:46', ''),
(14, 1337, 5, 90000, 0, '2021-05-22', 5, 'Bachelor Of commerce ', 0, 'Hassan', 'Hajum', 'Mussa', 'male', 774447441, 'hajumh12@gmail.com', 112, 'lymo', 'dad0', 719700536, 'dodoma', 'dodoma', 'Arunachal Pradesh', 1234, 'dodoma', 'dodoma', 'Arunachal Pradesh', 1234, '2021-05-26 10:04:05', ''),
(15, 899, 2, 90000, 0, '2021-05-18', 4, 'Bachelor  of Technology', 0, 'Peter', 'G', 'Lymo', 'female', 774447679, 'tet@gmail.com', 112, 'lymo', 'mom', 719700536, 'dodoma', 'dodoma', 'Sikkim', 1234, 'dodoma', 'dodoma', 'Sikkim', 1234, '2021-05-29 01:42:38', ''),
(16, 899, 2, 90000, 0, '2021-05-12', 0, 'Bachelor Of commerce ', 0, 'Peter', 'G', 'Lymo', 'others', 8467067344, 'robynextdoor@gmail.com', 112, 'Lymo', 'mom', 719700536, 'dodoma', 'dodoma', 'Sikkim', 1234, 'dodoma', 'dodoma', '0', 1234, '2021-05-29 01:50:25', ''),
(17, 899, 2, 90000, 0, '0000-00-00', 0, 'Bachelor Of Computer Application', 0, 'JUMA', 'ALLY', 'OMARY', 'male', 774447679, 'ally@gmail.com', 112, 'lymo', 'dad0', 719700536, 'dodoma', 'dodoma', 'Sikkim', 1234, 'dodoma', 'dodoma', 'Mbeya', 1234, '2021-05-29 19:38:58', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(5, 5, 132, 2000, '2016-04-12 01:31:15'),
(7, 4, 12, 80000, '2021-05-03 13:16:32'),
(8, 5, 1337, 90000, '2021-05-25 23:42:27'),
(10, 2, 899, 90000, '2021-05-29 01:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Morogoro'),
(2, 'Tanga'),
(3, 'Arusha'),
(4, 'Pwani'),
(5, 'Mwanza'),
(6, 'Kigoma'),
(7, 'Zanzibar'),
(8, 'Mbeya'),
(9, 'Dodoma'),
(10, 'Lindi'),
(11, 'Mtwara'),
(12, 'Shinyanga'),
(13, 'Iringa'),
(14, 'Mara'),
(15, 'Singida'),
(16, 'Kilimanjaro'),
(17, 'Dar es Salaam'),
(18, 'Rukwa'),
(19, 'Ruvuma'),
(20, 'Tabora'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'EPE'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26 15:37:40'),
(6, 20, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 10, 'test@gmail.com', 0x3a3a31, '', '', '2021-05-03 13:02:47'),
(8, 10, 'test@gmail.com', 0x3a3a31, '', '', '2021-05-03 13:10:34'),
(9, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 21:48:52'),
(10, 0, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:20:46'),
(11, 0, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:20:56'),
(12, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:21:42'),
(13, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:21:50'),
(14, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:21:58'),
(15, 0, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:22:56'),
(16, 0, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:23:01'),
(17, 0, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:23:52'),
(18, 0, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:23:59'),
(19, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:24:18'),
(20, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:34:35'),
(21, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:36:33'),
(22, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:42:53'),
(23, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:43:00'),
(24, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:43:15'),
(25, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 22:52:12'),
(26, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-25 23:11:22'),
(27, 26, 'lymo@gmail.com', 0x3a3a31, '', '', '2021-05-26 00:12:24'),
(28, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 00:17:33'),
(29, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 00:43:11'),
(30, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 00:44:55'),
(31, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 00:53:08'),
(32, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 01:08:00'),
(33, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 07:20:08'),
(34, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 08:48:13'),
(35, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 10:02:43'),
(36, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 13:32:06'),
(37, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 14:13:46'),
(38, 26, 'lymo@gmail.com', 0x3a3a31, '', '', '2021-05-26 14:57:39'),
(39, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 16:33:58'),
(40, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 16:41:30'),
(41, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 21:22:38'),
(42, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 21:32:22'),
(43, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 22:52:17'),
(44, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-26 23:31:56'),
(45, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-27 00:09:07'),
(46, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-27 01:12:29'),
(47, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-27 13:35:13'),
(48, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-28 20:55:11'),
(49, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-29 00:04:54'),
(50, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-29 01:33:10'),
(51, 28, 'tet@gmail.com', 0x3a3a31, '', '', '2021-05-29 01:35:45'),
(52, 28, 'tet@gmail.com', 0x3a3a31, '', '', '2021-05-29 01:41:27'),
(53, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-29 01:44:13'),
(54, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-29 16:42:35'),
(55, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-29 17:44:03'),
(56, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-29 18:13:49'),
(57, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-29 18:42:24'),
(58, 10, 'hajumh12@gmail.com', 0x3a3a31, '', '', '2021-05-29 19:25:51'),
(59, 30, 'ally@gmail.com', 0x3a3a31, '', '', '2021-05-29 19:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`, `role`) VALUES
(10, 'T/UDOM/2019/00572', 'Hassan', 'Hajum', 'Mussa', 'male', 774447441, 'hajumh12@gmail.com', '123', '2016-06-22 04:21:33', '26-05-2021 08:06:23', '29-05-2021 10:12:47', 'user'),
(19, '102355', 'Harry', 'projects', 'Singh', 'male', 6786786786, 'Harry@gmail.com', '6786786786', '2016-06-26 16:33:36', '', '', 'user'),
(20, '586952', 'Benjamin', '', 'projects', 'male', 8596185625, 'Benjamin@gmail.com', '8596185625', '2016-06-26 16:40:07', '', '', 'user'),
(21, 'T/UDOM/2019/00572', 'Peter', 'G', 'Lymo', 'male', 774447441, 'robynextdoor@gmail.com', '0774447441', '2021-05-25 22:49:36', '', '', 'user'),
(26, 'T/UDOM/2019/00560', 'Peter', 'G', 'Lymo', 'male', 774447679, 'lymo@gmail.com', '123', '2021-05-26 00:12:04', '', '', 'admin'),
(27, 't123', 'juma', 'ally', 'matimbwa', 'male', 774447679, 'robynextdoor@gmail.com', '123', '2021-05-28 16:46:00', '', '', 'admin'),
(28, 'T/UDOM/2019/00560', 'Peter', 'G', 'Lymo', 'female', 774447679, 'tet@gmail.com', '123', '2021-05-29 01:35:13', '', '', 'user'),
(29, 't123', 'Peter', 'G', 'Lymo', 'others', 8467067344, 'robynextdoor@gmail.com', '8467067344', '2021-05-29 01:50:25', '', '', 'user'),
(30, 'A12', 'JUMA', 'ALLY', 'OMARY', 'male', 774447679, 'ally@gmail.com', '123', '2021-05-29 19:37:49', '', '', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payNo`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
