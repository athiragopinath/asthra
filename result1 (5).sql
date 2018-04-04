-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 07:32 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `result1`
--

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `file` varchar(500) NOT NULL,
  `year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `s_id`, `file`, `year`) VALUES
(6, 12, 'photo/15072270900.txt', '0000-00-00'),
(7, 11, 'photo/15074862940.txt', '0000-00-00'),
(11, 23, 'photo/15211816142.txt', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `status`) VALUES
(1, 'admin', 1),
(2, 'school', 1),
(3, 'student', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_district`
--

CREATE TABLE `r_district` (
  `dist_id` int(11) NOT NULL,
  `dist_name` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_district`
--

INSERT INTO `r_district` (`dist_id`, `dist_name`) VALUES
(1, 'Ernakulam'),
(2, 'Kottayam');

-- --------------------------------------------------------

--
-- Table structure for table `r_feedback`
--

CREATE TABLE `r_feedback` (
  `f_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_result`
--

CREATE TABLE `r_result` (
  `result_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `tot_marks` int(11) NOT NULL,
  `grade` varchar(65) NOT NULL,
  `pub_year` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `pub_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_result`
--

INSERT INTO `r_result` (`result_id`, `roll_no`, `tot_marks`, `grade`, `pub_year`, `pub_status`) VALUES
(1, 100002, 887, 'A', '2017-12-31 18:30:00', 1),
(2, 100011, 209, 'F', '0000-00-00 00:00:00', 1),
(3, 100020, 945, 'A+', '2018-01-31 18:30:00', 1),
(4, 100029, 125, 'F', '0000-00-00 00:00:00', 1),
(5, 100038, 139, 'F', '0000-00-00 00:00:00', 1),
(6, 100047, 706, 'B+', '0000-00-00 00:00:00', 1),
(7, 100056, 216, 'F', '0000-00-00 00:00:00', 1),
(8, 100065, 627, 'B', '0000-00-00 00:00:00', 1),
(9, 100074, 855, 'A', '0000-00-00 00:00:00', 1),
(10, 100083, 273, 'F', '0000-00-00 00:00:00', 1),
(11, 100092, 344, 'F', '0000-00-00 00:00:00', 1),
(12, 100101, 762, 'B+', '0000-00-00 00:00:00', 1),
(13, 100110, 462, 'F', '0000-00-00 00:00:00', 1),
(14, 101263, 290, 'F', '0000-00-00 00:00:00', 1),
(15, 101272, 304, 'F', '0000-00-00 00:00:00', 1),
(16, 101281, 509, 'C', '0000-00-00 00:00:00', 1),
(17, 101290, 972, 'O', '2017-10-10 18:30:00', 1),
(18, 101299, 160, 'F', '0000-00-00 00:00:00', 1),
(19, 101308, 653, 'B', '0000-00-00 00:00:00', 1),
(20, 101317, 433, 'F', '0000-00-00 00:00:00', 1),
(21, 164600, 621, 'B', '0000-00-00 00:00:00', 1),
(22, 164609, 488, 'F', '0000-00-00 00:00:00', 1),
(23, 164618, 619, 'B', '0000-00-00 00:00:00', 1),
(24, 164627, 154, 'F', '0000-00-00 00:00:00', 1),
(25, 164636, 414, 'F', '0000-00-00 00:00:00', 1),
(26, 164645, 946, 'A+', '0000-00-00 00:00:00', 1),
(27, 164654, 168, 'F', '0000-00-00 00:00:00', 1),
(28, 164663, 797, 'B+', '0000-00-00 00:00:00', 1),
(29, 164672, 239, 'F', '0000-00-00 00:00:00', 1),
(30, 164681, 618, 'B', '0000-00-00 00:00:00', 1),
(31, 164690, 879, 'A', '0000-00-00 00:00:00', 1),
(32, 164699, 409, 'F', '0000-00-00 00:00:00', 1),
(33, 164708, 132, 'F', '0000-00-00 00:00:00', 1),
(34, 164717, 628, 'B', '0000-00-00 00:00:00', 1),
(35, 164726, 153, 'F', '0000-00-00 00:00:00', 1),
(36, 164735, 974, 'O', '0000-00-00 00:00:00', 1),
(37, 164744, 120, 'F', '0000-00-00 00:00:00', 1),
(38, 164753, 205, 'F', '0000-00-00 00:00:00', 1),
(39, 164762, 779, 'B+', '0000-00-00 00:00:00', 1),
(40, 164771, 760, 'B+', '0000-00-00 00:00:00', 1),
(41, 164780, 227, 'F', '0000-00-00 00:00:00', 1),
(42, 164789, 272, 'F', '0000-00-00 00:00:00', 1),
(43, 164798, 297, 'F', '0000-00-00 00:00:00', 1),
(44, 164807, 114, 'F', '0000-00-00 00:00:00', 1),
(45, 164816, 252, 'F', '0000-00-00 00:00:00', 1),
(46, 164825, 937, 'A+', '0000-00-00 00:00:00', 1),
(47, 164834, 304, 'F', '0000-00-00 00:00:00', 1),
(48, 164843, 270, 'F', '0000-00-00 00:00:00', 1),
(49, 164852, 436, 'F', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_resultreport`
--

CREATE TABLE `r_resultreport` (
  `report_id` int(11) NOT NULL,
  `pass_percent` int(11) NOT NULL,
  `fail_percent` int(11) NOT NULL,
  `count_A+` int(11) NOT NULL,
  `count_A` int(11) NOT NULL,
  `count_B+` int(11) NOT NULL,
  `count_B` int(11) NOT NULL,
  `count_C` int(11) NOT NULL,
  `count_F` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_resultreport`
--

INSERT INTO `r_resultreport` (`report_id`, `pass_percent`, `fail_percent`, `count_A+`, `count_A`, `count_B+`, `count_B`, `count_C`, `count_F`) VALUES
(1, 41, 59, 3, 3, 5, 6, 1, 29),
(2, 41, 59, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `r_school`
--

CREATE TABLE `r_school` (
  `s_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `name` varchar(65) NOT NULL,
  `dist` varchar(65) NOT NULL,
  `subdist` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `phno` int(11) NOT NULL,
  `file` varchar(500) NOT NULL,
  `sec_code` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `upload_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_school`
--

INSERT INTO `r_school` (`s_id`, `log_id`, `name`, `dist`, `subdist`, `email`, `phno`, `file`, `sec_code`, `status`, `upload_status`) VALUES
(25, 34, 'ChinmayaVidyalaya', '', '', 'cv@gmail.com', 1234567890, '', 800171, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `r_student`
--

CREATE TABLE `r_student` (
  `roll_no` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `name` varchar(65) NOT NULL,
  `phno` varchar(65) NOT NULL,
  `email_id` varchar(65) NOT NULL,
  `sent_status` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_student`
--

INSERT INTO `r_student` (`roll_no`, `log_id`, `name`, `phno`, `email_id`, `sent_status`, `status`) VALUES
(111111, 4, 'Athira Gopinath', '8086729338', 'athiragopinath@gmail.com', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_subdist`
--

CREATE TABLE `r_subdist` (
  `subdist_id` int(11) DEFAULT NULL,
  `dist_id` int(11) NOT NULL,
  `subdist_name` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_subdist`
--

INSERT INTO `r_subdist` (`subdist_id`, `dist_id`, `subdist_name`) VALUES
(NULL, 1, 'pokjtpo43jtkpo4');

-- --------------------------------------------------------

--
-- Table structure for table `r_userlogin`
--

CREATE TABLE `r_userlogin` (
  `log_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_userlogin`
--

INSERT INTO `r_userlogin` (`log_id`, `role_id`, `status`, `username`, `password`) VALUES
(1, 1, 1, 'admin', 'QrUgcNdRjaE74hfEIeThKa/RaqA9N/KpBI+X7VeiyfE='),
(34, 2, 1, 'ChinmayaVidyalaya', 'jADJa9IdFiSeZghRsIH0NjxsEFzueZNfyGQ6p3Aqnyg=');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `r_district`
--
ALTER TABLE `r_district`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `r_result`
--
ALTER TABLE `r_result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `r_resultreport`
--
ALTER TABLE `r_resultreport`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `r_school`
--
ALTER TABLE `r_school`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `r_student`
--
ALTER TABLE `r_student`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `r_userlogin`
--
ALTER TABLE `r_userlogin`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `r_district`
--
ALTER TABLE `r_district`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `r_result`
--
ALTER TABLE `r_result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `r_resultreport`
--
ALTER TABLE `r_resultreport`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `r_school`
--
ALTER TABLE `r_school`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `r_userlogin`
--
ALTER TABLE `r_userlogin`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
