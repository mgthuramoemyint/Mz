-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 11:34 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mgthura`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `Question` varchar(150) NOT NULL,
  `FileType` varchar(150) NOT NULL,
  `IsActive` int(1) NOT NULL,
  `Subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`Question`, `FileType`, `IsActive`, `Subject`) VALUES
('22', 'aaaaa', 1, 'English2nd'),
('A', 'aa', 1, '301'),
('AA', '.docx', 0, 'Myanmar'),
('is x = y?', 'docx', 1, '302'),
('sdfasdf', 'asdf', 1, 'Myanmar');

-- --------------------------------------------------------

--
-- Table structure for table `uploadedfiles`
--

CREATE TABLE `uploadedfiles` (
  `UploadedFiles` varchar(150) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadedfiles`
--

INSERT INTO `uploadedfiles` (`UploadedFiles`, `Name`, `Subject`) VALUES
('C:\\Users\\mgthu\\source\\repos\\WebApplication2\\UploadFolder\\Myanmar\\mgthuraMyanmar.pdf', 'ThuraMoeMyint', 'Myanmar'),
('C:\\Users\\mgthu\\source\\repos\\WebApplication2\\UploadFolder\\3rdYrS_CS_301\\mgthura33rdYrS_CS_301.pdf', '', '301'),
('C:\\Users\\mgthu\\source\\repos\\WebApplication2\\UploadFolder\\3rdYrS_CS_301\\ataylay3rdYrS_CS_301.pdf', 'Zin Min Htun', '301'),
('C:\\Users\\mgthu\\source\\repos\\WebApplication2\\UploadFolder\\3rdYrS_CS_302\\ataylay3rdYrS_CS_302.pdf', 'Zin Min Htun', '302');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Uid` int(10) NOT NULL,
  `RollNumber` varchar(7) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `Major` varchar(5) NOT NULL,
  `TeacherSUB` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Uid`, `RollNumber`, `Username`, `Password`, `Name`, `Role`, `Class`, `Major`, `TeacherSUB`) VALUES
(1, '1CS-1', 'mgthura', 'heart', 'ThuraMoeMyint', 'Admin', '1st', 'CS', ''),
(2, '', 'mgthura2', 'heart', '', 'Student', '2nd', 'CS', ''),
(3, '', 'mgthura3', 'heart', '', 'Student', '3rd', 'CS', ''),
(5, '', 'mgthurat', 'heart', 'Teacher', 'Teacher', '', '', 'Myanmar'),
(6, '1CS-2', 'mgthuraisgod', 'heart', 'Thura', 'Admin', '', '', ''),
(7, '2CS-3', 'godsoe', 'heart', 'GOD', 'Teacher', '', '', 'CT406'),
(8, '', '01teacher', '01teacher', '01teacher', 'Teacher', '', '', '301'),
(9, '3CS-11', 'ataylay', 'heart', 'Zin Min Htun', 'Student', '3rd', 'CS', ''),
(10, '', 'teacher02', 'teacher02', 'teacher02', 'Teacher', '', '', '302');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `QuizQuestion` (`Question`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Uid`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
