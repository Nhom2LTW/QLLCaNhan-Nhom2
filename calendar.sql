-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2016 at 03:00 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_length` bigint(20) NOT NULL,
  `event_pid` int(11) NOT NULL,
  `rec_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `start_date`, `end_date`, `event_length`, `event_pid`, `rec_type`, `color`, `uid`) VALUES
(46, '123', '2016-12-15 00:00:00', '2016-12-15 00:05:00', 0, 0, '', '', 1),
(47, '456', '2016-12-09 00:00:00', '2016-12-09 00:05:00', 0, 0, '', '', 1),
(48, 'asd', '2016-12-29 00:00:00', '2016-12-29 00:05:00', 0, 0, '', '#E6B800', 17),
(49, 'AAA', '2016-12-29 00:00:00', '2016-12-29 00:05:00', 0, 0, '', '', 18);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `uid` int(11) NOT NULL,
  `pdf` varchar(10) NOT NULL,
  `minc` varchar(10) NOT NULL,
  `agenda` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`uid`, `pdf`, `minc`, `agenda`) VALUES
(1, 'pdfA', 'mcA', 'agA'),
(17, 'pdfA', 'mcA', 'agA'),
(18, 'pdfA', 'mcA', 'agA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `firstname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cpassword` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `numberphone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'check user active or not',
  `position` varchar(10) NOT NULL COMMENT 'check user Admin or normal user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `firstname`, `lastname`, `username`, `cpassword`, `ngaysinh`, `email`, `numberphone`, `status`, `position`) VALUES
(1, 'Tran', 'Hieu', 'supernova_606', 'thanhhieu', '06/06/1996', 'tranthanhhieu96@gmail.com', '01682071158', 'A', 'A'),
(17, 'asd', 'asd', 'asd', 'asdasd', '06/06/1996', 'ltphu@gmail.com', '0125849251', 'A', 'U'),
(18, 'Tran', 'Thanh Hieu', 'supernova_96', '123456', '06/06/1996', 'thsd@gmail.com', '0124751358', 'A', 'U');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
