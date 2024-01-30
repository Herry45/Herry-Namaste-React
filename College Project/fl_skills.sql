-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 07:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fl_skills`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(32) DEFAULT NULL,
  `LogoURl` varchar(128) DEFAULT NULL,
  `IsDeleted` tinyint(1) DEFAULT 0,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryId`, `CategoryName`, `LogoURl`, `IsDeleted`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 'Website, IT and Software', 'sefsdgds', 0, NULL, '2023-05-24 12:27:13'),
(2, 'Mobile Application', 'sdgsdgdsgdshj', 0, NULL, '2023-04-07 11:23:37'),
(3, 'Writing and Content', 'ghjgfn', 0, NULL, '2023-05-24 12:29:39'),
(4, 'Design Media and Architecture', 'gfhrthbdvc e', 0, '2023-03-28 16:36:45', '2023-05-24 12:28:13'),
(5, 'Data Entry & Admin', 'efdvcbnv', 0, '2023-03-28 17:04:20', '2023-04-07 11:23:37'),
(6, 'Sales and Marketing', 'dfdffhtuythtuiukjmngbfgdfgrr', 0, '2023-05-24 12:32:54', NULL),
(7, 'Business, Accounting and Human R', 'fgfgfgfgfgfgjhjghfgjhg', 0, '2023-05-24 12:32:54', '2023-05-24 12:33:52'),
(8, 'Education', 'fgfgfghfjhghfghfjgfhjghghghghggh', 0, '2023-05-24 12:34:48', '2023-05-24 12:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `projectskills`
--

CREATE TABLE `projectskills` (
  `ProjectId` int(11) NOT NULL,
  `SkillId` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projectskills`
--

INSERT INTO `projectskills` (`ProjectId`, `SkillId`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 1, '2023-03-24 16:16:08', NULL),
(1, 4, '2023-03-25 00:00:00', NULL),
(1, 7, '2023-03-30 12:11:47', NULL),
(1, 11, '2023-03-30 13:05:22', NULL),
(1, 12, '2023-03-30 13:05:22', NULL),
(2, 1, '2023-03-24 16:18:27', NULL),
(2, 4, '2023-03-24 16:18:27', NULL),
(2, 5, '2023-03-24 16:18:52', NULL),
(2, 7, '2023-03-24 16:18:52', NULL),
(3, 1, '2023-03-30 14:32:41', NULL),
(3, 5, '2023-04-07 12:06:31', NULL),
(3, 11, '2023-03-30 14:32:41', NULL),
(3, 12, '2023-03-30 14:32:41', NULL),
(4, 6, '2023-04-07 12:06:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `SkillId` int(11) NOT NULL,
  `SkillName` varchar(32) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `IsDeleted` bit(1) DEFAULT b'0',
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`SkillId`, `SkillName`, `CategoryId`, `IsDeleted`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 'C#', 1, b'0', NULL, NULL),
(4, 'Javascript', 1, b'0', NULL, NULL),
(5, 'Android', 2, b'0', NULL, NULL),
(6, 'Flutter', 2, b'0', NULL, NULL),
(7, 'C++', 1, b'0', NULL, NULL),
(8, 'Python', 1, b'0', NULL, NULL),
(10, 'Java', 1, b'0', NULL, '2023-03-29 14:58:12'),
(11, 'Angular JS', 1, b'0', '2023-03-29 11:22:23', '2023-04-28 16:11:48'),
(13, 'Type Script', 1, b'0', '2023-03-29 15:06:35', '2023-03-29 15:30:27'),
(14, 'Node Js', 1, b'0', '2023-04-06 23:27:34', '2023-05-24 12:29:00'),
(15, 'React JS', 1, b'0', '2023-04-06 23:27:34', '2023-05-24 12:28:43'),
(16, 'Excel', 5, b'0', '2023-05-24 12:25:22', NULL),
(17, 'Data Processing', 5, b'0', '2023-05-24 12:25:22', NULL),
(18, 'Article Writing', 3, b'0', '2023-05-24 12:40:44', NULL),
(19, 'Content Writing', 3, b'0', '2023-05-24 12:40:44', NULL),
(20, 'Website Design', 4, b'0', '2023-05-24 12:40:44', NULL),
(21, 'Graphic Design', 4, b'0', '2023-05-24 12:40:44', NULL),
(22, 'Internet Marketing', 6, b'0', '2023-05-24 12:40:44', NULL),
(23, 'Social Media Marketing', 6, b'0', '2023-05-24 12:40:44', NULL),
(24, 'Business Analysis', 7, b'0', '2023-05-24 12:40:44', NULL),
(25, 'Accounting', 7, b'0', '2023-05-24 12:40:44', NULL),
(26, 'Project Management', 7, b'0', '2023-05-24 12:40:44', NULL),
(27, 'Language Tutoring', 8, b'0', '2023-05-24 12:40:44', NULL),
(28, 'College Tutoring', 8, b'0', '2023-05-24 12:40:44', NULL),
(29, 'Academic Advising', 8, b'0', '2023-05-24 12:40:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userskills`
--

CREATE TABLE `userskills` (
  `UserId` int(11) NOT NULL,
  `SkillId` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userskills`
--

INSERT INTO `userskills` (`UserId`, `SkillId`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 1, '2023-03-30 15:25:24', NULL),
(1, 4, '2023-03-31 10:42:16', NULL),
(1, 5, '2023-04-07 12:30:46', NULL),
(1, 10, '2023-03-30 15:25:24', NULL),
(2, 1, '2023-03-30 15:25:37', NULL),
(2, 5, '2023-04-07 12:30:46', NULL),
(2, 10, '2023-03-31 10:42:16', NULL),
(3, 1, '2023-04-28 16:05:12', NULL),
(3, 6, '2023-04-28 16:05:12', NULL),
(3, 7, '2023-04-28 16:05:12', NULL),
(4, 5, '2023-04-28 16:05:12', NULL),
(4, 15, '2023-04-28 16:05:12', NULL),
(5, 8, '2023-04-28 16:05:12', NULL),
(5, 10, '2023-04-28 16:05:12', NULL),
(5, 11, '2023-04-28 16:05:12', NULL),
(6, 6, '2023-04-28 16:06:52', NULL),
(6, 14, '2023-04-28 16:05:12', NULL),
(7, 6, '2023-04-28 16:06:52', NULL),
(24, 5, '2023-05-29 19:01:17', NULL),
(24, 11, '2023-05-29 19:01:17', NULL),
(24, 14, '2023-05-29 19:01:17', NULL),
(24, 16, '2023-05-29 19:01:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryId`),
  ADD UNIQUE KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `projectskills`
--
ALTER TABLE `projectskills`
  ADD PRIMARY KEY (`ProjectId`,`SkillId`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`SkillId`),
  ADD UNIQUE KEY `SkillName` (`SkillName`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Indexes for table `userskills`
--
ALTER TABLE `userskills`
  ADD PRIMARY KEY (`UserId`,`SkillId`),
  ADD KEY `SkillId` (`SkillId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `SkillId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`CategoryId`);

--
-- Constraints for table `userskills`
--
ALTER TABLE `userskills`
  ADD CONSTRAINT `userskills_ibfk_1` FOREIGN KEY (`SkillId`) REFERENCES `skills` (`SkillId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
