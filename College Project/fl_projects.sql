-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 12:35 PM
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
-- Database: `fl_projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `paymenttype`
--

CREATE TABLE `paymenttype` (
  `PaymentTypeId` int(11) NOT NULL,
  `paymentType` varchar(32) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectassignment`
--

CREATE TABLE `projectassignment` (
  `BidId` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectlanguages`
--

CREATE TABLE `projectlanguages` (
  `ProjectId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectId` int(11) NOT NULL,
  `ClientId` int(11) DEFAULT NULL,
  `ProjectName` varchar(64) DEFAULT NULL,
  `ProjectDescription` varchar(232) DEFAULT NULL,
  `IsConfidential` bit(1) DEFAULT NULL,
  `PaymentTypeId` int(11) DEFAULT NULL,
  `BidStartDate` datetime DEFAULT NULL,
  `BidEndDate` datetime DEFAULT NULL,
  `MinPrice` decimal(18,0) DEFAULT NULL,
  `MaxPrice` decimal(18,0) DEFAULT NULL,
  `Status` varchar(32) DEFAULT 'Posted',
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ProjectId`, `ClientId`, `ProjectName`, `ProjectDescription`, `IsConfidential`, `PaymentTypeId`, `BidStartDate`, `BidEndDate`, `MinPrice`, `MaxPrice`, `Status`, `CreatedDate`, `ModifiedDate`) VALUES
(2, 2, 'PHP Project', 'dfghjkdfasfasdasdsadasdvdvdc', b'0', 1, '2023-03-24 12:18:16', '2023-03-31 12:18:16', '4000', '5000', 'Posted', '2023-04-26 18:49:27', '2023-05-03 11:08:17'),
(3, 1, 'PHP Project', 'dfghjkdfasfasdasdsadasd', b'0', 1, '2023-03-24 12:18:16', '2023-03-31 12:18:16', '4000', '5000', 'Posted', '2023-04-12 18:50:07', '2023-05-03 11:08:17'),
(4, 1, 'ASP Project', 'hghgkjgjkhjhjkhjkhkjhkj', b'1', 1, '2023-03-26 12:18:16', '2023-03-28 12:18:16', '6000', '10000', 'Posted', '2023-04-21 18:50:47', '2023-05-03 11:08:17'),
(5, 3, 'Icecream shop website', 'ftrftiuewiwunczmnciw', b'0', 1, '2023-03-26 05:30:00', '2023-03-30 05:30:00', '3000', '8000', 'Posted', '2023-04-26 18:50:47', '2023-05-03 11:08:17'),
(6, 4, 'java application', 'ftrftiuewiwunczmnciw', b'0', 1, '2023-03-29 05:30:00', '2023-04-03 05:30:00', '6000', '13000', 'Posted', '2023-04-26 18:50:47', '2023-05-03 11:08:17'),
(7, 2, 'Website Logo design ', 'egtrfdsfdsgrcfgdgsfgfsgfsgfsgfsgfsf', b'0', 1, '2023-05-05 11:02:27', '2023-05-09 11:02:27', '500', '1000', 'Posted', '2023-05-03 11:04:16', '2023-05-03 11:08:47'),
(8, 3, 'logo design', 'gyughghsgygshdbsjbdkuhjdfdanfjkadhfukdayhfjkdafdajfhasghsd', b'1', 1, '2023-05-05 11:09:12', '2023-05-10 11:09:12', '1000', '2000', 'Posted', '2023-05-03 11:12:16', '2023-05-03 11:13:51'),
(9, 5, 'android application frontend design', 'yufyjgkgsdhtgaukdhnbhmghfjfbdfbhdagfukdahfjadbfndafhgafehadf', b'0', 1, '2023-05-11 11:09:12', '2023-05-13 11:09:12', '2000', '4000', 'Posted', '2023-05-03 11:12:16', '2023-05-03 11:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `RatingId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `ProjectId` int(11) DEFAULT NULL,
  `RatingDescription` varchar(128) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`RatingId`, `UserId`, `ProjectId`, `RatingDescription`, `CreatedDate`, `ModifiedDate`, `Rating`) VALUES
(1, 1, 2, 'very good work', '2023-05-03 10:55:31', NULL, 5),
(2, 2, 3, 'excellent work ', '2023-05-03 10:55:31', NULL, 5),
(3, 4, 6, 'huhudhfkhfq', '2023-05-03 11:15:11', NULL, 3),
(4, 1, 4, 'fadfdagrwgrsdaf', '2023-05-03 11:02:00', NULL, 4),
(5, 6, 8, 'ffasgjkfjadhjka', '2023-05-03 11:16:34', NULL, 4),
(6, 7, 9, 'fdbsffdhdfbdshdfhet', '2023-05-03 11:16:34', NULL, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paymenttype`
--
ALTER TABLE `paymenttype`
  ADD PRIMARY KEY (`PaymentTypeId`);

--
-- Indexes for table `projectassignment`
--
ALTER TABLE `projectassignment`
  ADD PRIMARY KEY (`BidId`);

--
-- Indexes for table `projectlanguages`
--
ALTER TABLE `projectlanguages`
  ADD PRIMARY KEY (`ProjectId`,`LanguageId`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectId`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`RatingId`),
  ADD UNIQUE KEY `ProjectId` (`ProjectId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paymenttype`
--
ALTER TABLE `paymenttype`
  MODIFY `PaymentTypeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `RatingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projectlanguages`
--
ALTER TABLE `projectlanguages`
  ADD CONSTRAINT `projectlanguages_ibfk_1` FOREIGN KEY (`ProjectId`) REFERENCES `projects` (`ProjectId`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`ProjectId`) REFERENCES `projects` (`ProjectId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
