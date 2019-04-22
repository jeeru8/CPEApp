-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 08:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpe`
--

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `color` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color`) VALUES
(0, 'powderBlue');

-- --------------------------------------------------------

--
-- Table structure for table `notice_meeting`
--

CREATE TABLE `notice_meeting` (
  `id` int(11) NOT NULL,
  `announcement` varchar(200) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_meeting`
--

INSERT INTO `notice_meeting` (`id`, `announcement`, `date_posted`) VALUES
(1, 'Meeting Sample', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `office_advisory`
--

CREATE TABLE `office_advisory` (
  `id` int(11) NOT NULL,
  `announcement` varchar(200) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_advisory`
--

INSERT INTO `office_advisory` (`id`, `announcement`, `date_posted`) VALUES
(1, 'Nice', '2019-04-22 05:17:28'),
(2, 'Office Sample', '2019-04-22 05:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `office_memorandum`
--

CREATE TABLE `office_memorandum` (
  `id` int(11) NOT NULL,
  `announcement` varchar(200) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_memorandum`
--

INSERT INTO `office_memorandum` (`id`, `announcement`, `date_posted`) VALUES
(1, 'Memo Sample', '2019-04-22 05:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `id` int(11) NOT NULL,
  `announcement` varchar(200) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`id`, `announcement`, `date_posted`) VALUES
(1, 'Others Sample', '2019-04-22 05:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `school_activity`
--

CREATE TABLE `school_activity` (
  `id` int(11) NOT NULL,
  `announcement` varchar(200) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_activity`
--

INSERT INTO `school_activity` (`id`, `announcement`, `date_posted`) VALUES
(1, 'This is sample.', '2019-04-22 04:51:19'),
(2, 'Nice one', '2019-04-22 04:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `special_order`
--

CREATE TABLE `special_order` (
  `id` int(11) NOT NULL,
  `announcement` varchar(200) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_order`
--

INSERT INTO `special_order` (`id`, `announcement`, `date_posted`) VALUES
(1, 'Special Order Sample', '2019-04-22 05:19:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_meeting`
--
ALTER TABLE `notice_meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_advisory`
--
ALTER TABLE `office_advisory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_memorandum`
--
ALTER TABLE `office_memorandum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_activity`
--
ALTER TABLE `school_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_order`
--
ALTER TABLE `special_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice_meeting`
--
ALTER TABLE `notice_meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `office_advisory`
--
ALTER TABLE `office_advisory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `office_memorandum`
--
ALTER TABLE `office_memorandum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `others`
--
ALTER TABLE `others`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_activity`
--
ALTER TABLE `school_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `special_order`
--
ALTER TABLE `special_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
