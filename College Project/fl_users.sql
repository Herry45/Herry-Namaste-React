-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 06:24 PM
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
-- Database: `fl_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `CityId` int(11) NOT NULL,
  `CityName` varchar(32) DEFAULT NULL,
  `StateId` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`CityId`, `CityName`, `StateId`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 'Surat', 1, '2023-05-05 11:12:29', NULL),
(2, 'Pune', 3, '2023-05-05 11:12:29', NULL),
(3, 'Albany', 6, '2023-05-05 11:12:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `CountryId` int(11) NOT NULL,
  `CountryName` varchar(32) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`CountryId`, `CountryName`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 'India', '2023-05-05 10:52:33', NULL),
(2, 'USA', '2023-05-05 10:52:33', NULL),
(3, 'England', '2023-05-05 10:52:33', '2023-05-05 11:03:52'),
(4, 'China', '2023-05-05 10:52:33', NULL),
(5, 'Russia', '2023-05-05 10:52:33', NULL),
(6, 'Spain', '2023-05-05 10:52:33', NULL),
(7, 'Portugal', '2023-05-05 10:52:33', NULL),
(8, 'France', '2023-05-05 10:52:33', NULL),
(9, 'Canada', '2023-05-05 10:55:27', NULL),
(10, 'Brazil', '2023-05-05 10:55:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `LanguageId` int(11) NOT NULL,
  `LanguageName` varchar(32) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`LanguageId`, `LanguageName`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 'English', '2023-04-19 12:10:28', NULL),
(2, 'Chinese', '2023-04-19 12:10:28', NULL),
(3, 'Hindi', '2023-04-19 12:10:28', NULL),
(4, 'Gujarati', '2023-04-19 12:10:28', NULL),
(5, 'Spanish', '2023-04-19 12:10:28', NULL),
(6, 'French', '2023-04-19 12:10:28', NULL),
(7, 'Portugese', '2023-04-19 12:10:28', NULL),
(8, 'Italian', '2023-04-19 12:10:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `PortfolioId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Title` varchar(64) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `ImageURL` varchar(128) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`PortfolioId`, `UserId`, `Title`, `Description`, `ImageURL`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 1, 'Shopposite website ', 'Shopposite website was one of my best projects . It was mini E-commerce website selling  second hand Electronic products. Was fun to do it.\nNo. of completion days: 6', NULL, '2023-05-26 11:59:12', '2023-05-26 11:59:57'),
(2, 1, 'Mini Mobile Game ', 'CAR DASH is a Mini mobile game with lots of exciting features. Was fun to do it.\r\nNo of completion days: 10', NULL, '2023-05-26 12:01:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `StateId` int(11) NOT NULL,
  `StateName` varchar(32) DEFAULT NULL,
  `CountryId` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`StateId`, `StateName`, `CountryId`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 'Gujarat', 1, '2023-05-05 10:53:17', NULL),
(2, 'Kerala', 1, '2023-05-05 10:53:17', NULL),
(3, 'Maharashtra', 1, '2023-05-05 10:54:56', NULL),
(4, 'Rajasthan', 1, '2023-05-05 10:54:56', NULL),
(5, 'Texas', 2, '2023-05-05 11:03:36', NULL),
(6, 'New York', 2, '2023-05-05 11:03:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlanguages`
--

CREATE TABLE `userlanguages` (
  `UserId` int(11) NOT NULL,
  `LanguageId` int(11) NOT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlanguages`
--

INSERT INTO `userlanguages` (`UserId`, `LanguageId`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 1, '2023-04-19 12:13:06', NULL),
(1, 3, '2023-04-19 12:13:06', NULL),
(1, 4, '2023-04-19 12:13:06', NULL),
(1, 6, '2023-04-19 17:45:01', NULL),
(2, 1, '2023-04-19 12:13:06', NULL),
(2, 3, '2023-04-19 17:45:01', NULL),
(2, 6, '2023-04-19 12:13:06', NULL),
(3, 1, '2023-04-19 12:13:06', NULL),
(3, 3, '2023-04-19 12:13:06', NULL),
(3, 4, '2023-04-19 12:13:06', NULL),
(4, 2, '2023-04-19 12:13:06', NULL),
(4, 7, '2023-04-19 12:13:06', NULL),
(5, 1, '2023-04-19 12:13:06', NULL),
(5, 8, '2023-04-19 12:13:06', NULL),
(24, 1, '2023-05-29 19:00:17', NULL),
(24, 3, '2023-05-29 19:00:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlocation`
--

CREATE TABLE `userlocation` (
  `UserId` int(11) NOT NULL,
  `CityId` int(11) DEFAULT NULL,
  `Pincode` varchar(6) DEFAULT NULL,
  `Address1` varchar(256) DEFAULT NULL,
  `Address2` varchar(256) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlocation`
--

INSERT INTO `userlocation` (`UserId`, `CityId`, `Pincode`, `Address1`, `Address2`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 1, '395001', 'abc', 'xyz', '2023-05-05 11:15:13', NULL),
(2, 3, '12084', 'fefed', 'efedfedf', '2023-05-05 11:15:13', NULL),
(3, 3, '12345', 'fsgsfd', 'vcvxcv', '2023-05-05 11:20:55', NULL),
(4, 1, '395002', 'cvbxcvv', 'cvxcv', '2023-05-05 11:20:55', NULL),
(5, 1, '39502', 'dsdv', 'vdsvsdv', '2023-05-05 11:20:55', NULL),
(6, 2, '411013', 'dvzcv', 'czv', '2023-05-05 11:20:55', NULL),
(24, 2, '411014', '301, sjkdhgskjh sjdhsdk,sajkdhgsaudhjskk\r\nadasfafea', 'sasdasdas,fdafhjk,\r\nPune', '2023-05-29 18:58:54', '2023-05-29 18:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `FirstName` varchar(16) DEFAULT NULL,
  `LastName` varchar(16) DEFAULT NULL,
  `HeadLine` varchar(64) DEFAULT NULL,
  `Summary` varchar(1000) DEFAULT NULL,
  `Company` varchar(256) DEFAULT NULL,
  `Email` varchar(64) DEFAULT NULL,
  `PhNo` varchar(13) DEFAULT NULL,
  `IsVerified` bit(1) DEFAULT NULL,
  `PhotoUrl` varchar(255) DEFAULT NULL,
  `UserRole` char(6) DEFAULT 'User',
  `CreatedDate` datetime DEFAULT current_timestamp(),
  `ModifiedDate` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `FirstName`, `LastName`, `HeadLine`, `Summary`, `Company`, `Email`, `PhNo`, `IsVerified`, `PhotoUrl`, `UserRole`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 'harry', 'dewani', 'Java Developer', 'I am a Java developer currently working at BBD IT Solution, Pune, Maharashtra, India.\nI am looking for new projects to work on as a freelance developer.I am a Java developer currently working at BBD IT Solution, Pune, Maharashtra, India.\nI am looking for new projects to work on as a freelance developers.I am a Java developer currently working at BBD IT Solution, Pune, Maharashtra, India.\nI am looking for new projects to work on as a freelance developer.I am a Java developer currently working at BBD IT Solution, Pune, Maharashtra, India.\nI am looking for new projects to work on as a freelance developer.', 'ABC', 'dewaniharry@gmail.com', '9104709779', b'1', 'https://lh3.googleusercontent.com/a/AGNmyxZ8FE_bBo0K63c9QAsrHyO9S9-Z2zF7ZCUZRv7NKw=s96-c', 'User', '2023-01-03 15:24:27', '2023-05-26 14:45:46'),
(2, 'Nom', 'Khadka', 'Java Developer', 'dsdsafdsafsafsadsdsdsd \n sdczczczcxccccccccccccccccccccccccvffffffffffffffffffffff', 'BBD', 'nom@gmail.com', '8987655855', b'1', NULL, 'User', '2023-03-30 15:24:27', '2023-05-29 18:49:38'),
(3, 'divyesh', 'ghandhi', 'c# Developer', 'Hello . I am working as a React Developer at BBD solutions since 5 years. \nMy other skills are :\n1. Node js\n2. Angular Js\n3. Aws\n4. Java script\n5. Type script\n\nI am here to work flexibely as a full time full stack freelancer.\n ', 'BBD', 'dvs@gmail.com', '34523434321', b'1', 'dcfdafafsaf', 'User', '2023-04-07 12:32:12', '2023-05-29 18:52:07'),
(4, 'miren', 'patel', 'Android Developer', 'hghjbhghjgjsdbnmsndmsdjksjdsmdsmdkjjdfmdfmdklfjldfjldfd', 'abc', 'm@gmail.com', '87343434323', b'1', 'dfgdfdafdfda', 'User', '2023-04-07 12:32:12', '2023-05-03 12:39:57'),
(5, 'Nilay', 'Patel', 'Java Developer', 'iytiuyhlihjklui upvgfhgfgfddngfngfgf', 'BBD', 'nilay@gmail.com', '7878989879', b'1', 'abcpqhghg', 'User', '2023-04-17 17:51:39', '2023-05-29 18:50:25'),
(6, 'Badal', 'Dobariya', 'website Designer', 'gfgvhfgjfjhghghjgg', 'BBD', 'badal@gmail.com', '979797979', b'1', 'jhsjdhsajkdhusdfs', 'User', '2023-04-17 18:05:37', '2023-05-03 12:39:57'),
(24, 'Nomkumari', 'Khadka', 'Angular Developer ', 'I am a Angular developer currently working at BBD IT Solution, Pune, Maharashtra, India.\r\nI am looking for new projects to work on as a freelance developer.I am a Java developer currently working at BBD IT Solution, Pune, Maharashtra, India.\r\nI am looking for new projects to work on as a freelance developers.I am a Java developer currently working at BBD IT Solution, Pune, Maharashtra, India.\r\nI am looking for new projects to work on as a freelance developer .I am a Angular developer currently working at BBD IT Solution, Pune, Maharashtra, India.\r\nI am looking for new projects to work on as a freelance developer.', 'BBD', 'nom.khadka.dcs23@vnsgu.ac.in', '7878675645', b'1', 'https://lh3.googleusercontent.com/a/AGNmyxZ-g2Plkzdr0o_ODe_GeWRuW4U4sISj06zpTFiM=s96-c', 'User', '2023-05-15 23:13:16', '2023-05-29 18:57:26'),
(28, 'Badal', 'Dobariya', NULL, 'Hello . I am working as a React Developer at BBD solutions since 5 years. \nMy other skills are :\n1. Node js\n2. Angular Js\n3. Aws\n4. Java script\n5. Type script\n\nI am here to work flexibely as a full time full stack freelancer.\n ', NULL, 'bthestar07@gmail.com', NULL, NULL, NULL, 'User', '2023-05-15 23:14:47', '2023-05-29 18:50:54'),
(30, 'Herry', 'Dewani', NULL, 'Hello . I am working as a React Developer at BBD solutions since 5 years. \nMy other skills are :\n1. Node js\n2. Angular Js\n3. Aws\n4. Java script\n5. Type script\n\nI am here to work flexibely as a full time full stack freelancer.\n ', NULL, 'herrydewani@gmail.com', NULL, NULL, 'https://lh3.googleusercontent.com/a/AGNmyxb4RiQZiKy9WjGRsW4mQji5v2l-vJzJ8u2BPtA1=s96-c', 'User', '2023-05-15 23:15:47', '2023-05-29 18:50:51'),
(36, 'dewani', 'herry', NULL, 'Hello . I am working as a React Developer at BBD solutions since 5 years. \nMy other skills are :\n1. Node js\n2. Angular Js\n3. Aws\n4. Java script\n5. Type script\n\nI am here to work flexibely as a full time full stack freelancer.\n ', NULL, 'dewani.herry.dcs23@vnsgu.ac.in', NULL, NULL, 'https://lh3.googleusercontent.com/a/AGNmyxaTxYd3-50whK51e0CXowk_mhhuaF3BOsoVbpq6=s96-c', 'Admin', '2023-05-15 23:46:33', '2023-05-29 18:50:58'),
(38, 'Dhruv', 'Khunt', NULL, 'Hello . I am working as a React Developer at BBD solutions since 5 years. \nMy other skills are :\n1. Node js\n2. Angular Js\n3. Aws\n4. Java script\n5. Type script\n\nI am here to work flexibely as a full time full stack freelancer.\n ', NULL, 'dhruvkhunt06@gmail.com', NULL, NULL, 'https://lh3.googleusercontent.com/a/AGNmyxb4f_72sDQ8t6GB414h4GBe99ghenqPqnigYwf2=s96-c', 'User', '2023-05-16 11:53:51', '2023-05-29 18:50:44'),
(42, 'gandhi', 'divyesh', 'React Developer', 'Hello . I am working as a React Developer at BBD solutions since 5 years. \nMy other skills are :\n1. Node js\n2. Angular Js\n3. Aws\n4. Java script\n5. Type script\n\nI am here to work flexibely as a full time full stack freelancer.\n ', 'BBD', 'gandhi.divyesh.dcs23@vnsgu.ac.in', '8866745444', b'1', 'https://lh3.googleusercontent.com/a/AGNmyxZ5hMMGT2d7qHr10K3mHt7w0HzyWNcdqulWD9HA=s96-c', 'User', '2023-05-19 10:47:53', '2023-05-29 18:50:36'),
(44, 'sharma', 'himanshu', NULL, 'Hello . I am working as a React Developer at BBD solutions since 5 years. \nMy other skills are :\n1. Node js\n2. Angular Js\n3. Aws\n4. Java script\n5. Type script\n\nI am here to work flexibely as a full time full stack freelancer.\n ', NULL, 'sharma.himanshu.dcs23@vnsgu.ac.in', NULL, NULL, 'https://lh3.googleusercontent.com/a/AGNmyxb2k85peK-9_auOrwJc598DKqEAbgJAASi_bMYt=s96-c', 'User', '2023-05-19 17:24:22', '2023-05-29 18:50:49'),
(46, 'patel', 'nilay', NULL, 'Hello . I am working as a React Developer at BBD solutions since 5 years. \nMy other skills are :\n1. Node js\n2. Angular Js\n3. Aws\n4. Java script\n5. Type script\n\nI am here to work flexibely as a full time full stack freelancer.\n ', NULL, 'patel.nilay.dcs23@vnsgu.ac.in', NULL, NULL, 'https://lh3.googleusercontent.com/a/AGNmyxYVjW4t99rpXDipRAzfyZPx9efRMtIyudV598bO=s96-c', 'User', '2023-05-22 18:41:48', '2023-05-29 18:50:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`CityId`),
  ADD UNIQUE KEY `CityName` (`CityName`),
  ADD KEY `StateId` (`StateId`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`CountryId`),
  ADD UNIQUE KEY `CountryName` (`CountryName`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`LanguageId`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`PortfolioId`),
  ADD KEY `portfolio_ibfk_1` (`UserId`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`StateId`),
  ADD UNIQUE KEY `StateName` (`StateName`),
  ADD KEY `CountryId` (`CountryId`);

--
-- Indexes for table `userlanguages`
--
ALTER TABLE `userlanguages`
  ADD PRIMARY KEY (`UserId`,`LanguageId`),
  ADD KEY `LanguageId` (`LanguageId`);

--
-- Indexes for table `userlocation`
--
ALTER TABLE `userlocation`
  ADD PRIMARY KEY (`UserId`),
  ADD KEY `userlocation_ibfk_1` (`CityId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `PhNo` (`PhNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `CityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `CountryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `LanguageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `PortfolioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `StateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`StateId`) REFERENCES `states` (`StateId`);

--
-- Constraints for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`CountryId`) REFERENCES `countries` (`CountryId`);

--
-- Constraints for table `userlanguages`
--
ALTER TABLE `userlanguages`
  ADD CONSTRAINT `userlanguages_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userlanguages_ibfk_2` FOREIGN KEY (`LanguageId`) REFERENCES `languages` (`LanguageId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userlocation`
--
ALTER TABLE `userlocation`
  ADD CONSTRAINT `userlocation_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `cities` (`CityId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userlocation_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
