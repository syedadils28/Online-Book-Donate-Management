-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 04:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'Clive Dela Cruz', 'clive@yahoo.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2019-04-11 13:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(11, 'Dr. R. Nageswara Rao', '2025-04-28 09:12:24', NULL),
(12, 'macmillan', '2025-04-28 09:12:39', NULL),
(13, 'Dorling Kindersley', '2025-04-28 09:13:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `donoarid` varchar(1000) DEFAULT NULL,
  `loc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`, `donoarid`, `loc`) VALUES
(9, 'Animal Encyclopedia', 10, 13, 1122, 0, '2025-04-28 09:19:10', NULL, 'SID045', 'book/676360896ANIMAL_ENC.jpg'),
(10, 'Aspirations', 9, 12, 2211, 0, '2025-04-28 09:28:35', NULL, 'SID066', 'book/312307153ENGLISH.jpg'),
(11, 'Quest', 9, 12, 2212, 0, '2025-04-28 09:41:12', NULL, 'SID037', 'book/1732107133ENGLISH2.jpg'),
(12, 'Space Encyclopedia', 10, 13, 1123, 10, '2025-04-28 09:44:17', NULL, 'SID037', 'book/1485397071SPACE_ENC.jpg'),
(13, 'Core Python', 8, 11, 3311, 0, '2025-04-28 09:47:39', NULL, 'SID099', 'book/1698809538PYTHON.jpg'),
(14, 'Nature Encyclopedia', 10, 13, 1124, 0, '2025-04-28 09:49:46', NULL, 'SID099', 'book/1676377935NATURE_ENC.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'programming', 1, '2025-04-28 09:10:39', '0000-00-00 00:00:00'),
(9, 'LANGUAGE(ENGLISH)', 1, '2025-04-28 09:11:18', '0000-00-00 00:00:00'),
(10, 'Encyclopedia', 1, '2025-04-28 09:11:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(10, 9, 'SID045', '2025-04-28 09:20:57', NULL, NULL, NULL),
(11, 10, 'SID066', '2025-04-28 09:36:41', NULL, NULL, NULL),
(12, 11, 'SID037', '2025-04-28 09:42:06', NULL, NULL, NULL),
(13, 12, 'SID037', '2025-04-28 09:45:17', NULL, NULL, NULL),
(14, 13, 'SID099', '2025-04-28 09:51:53', NULL, NULL, NULL),
(15, 14, 'SID099', '2025-04-28 09:52:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(21, 'SID045', 'pooja v', 'pooja@gmail.com', '1236547890', '9cbb6aebcf5ae14a9248b4c08165212e', 1, NULL, '2025-04-28 09:17:45'),
(22, 'SID066', 'Deeksha ', 'deeksha@gmail.com', '1236547899', 'f7de140da031ca1e6e43adcc3b1e920f', 1, NULL, NULL),
(23, 'SID037', 'darshan', 'darshan@gmail.com', '7896541230', '406f84c0877f9574a5295bb8f4d0ee6f', 1, NULL, NULL),
(24, 'SID099', 'adils', 'adil@gmail.com', '9988776655', '5c3bea5d394835b2af9d2cfd632147f8', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
