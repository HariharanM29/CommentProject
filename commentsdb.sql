-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2022 at 08:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commentsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `usercomments`
--

CREATE TABLE `usercomments` (
  `User_ID` varchar(10) NOT NULL,
  `Comments` varchar(256) NOT NULL,
  `ActiveStatus` varchar(15) NOT NULL,
  `CreatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercomments`
--

INSERT INTO `usercomments` (`User_ID`, `Comments`, `ActiveStatus`, `CreatedDate`) VALUES
('1', 'Good Comments', 'Active', '2022-02-14 00:31:22'),
('1', 'Bad Comments', 'Active', '2022-02-14 00:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `User_ID` varchar(10) NOT NULL,
  `EmailID` varchar(25) NOT NULL,
  `SecretCode` varchar(25) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `ActiveStatus` varchar(15) NOT NULL,
  `CreatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`User_ID`, `EmailID`, `SecretCode`, `Password`, `ActiveStatus`, `CreatedDate`) VALUES
('1', 'harisiva@gmail.com', 'Paswword', 'Passowrd', 'Active', '2022-02-14 00:30:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usercomments`
--
ALTER TABLE `usercomments`
  ADD KEY `UserComm` (`User_ID`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`User_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usercomments`
--
ALTER TABLE `usercomments`
  ADD CONSTRAINT `UserComm` FOREIGN KEY (`User_ID`) REFERENCES `userdetails` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
