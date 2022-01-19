-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2022 at 12:48 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'muki', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(100) NOT NULL,
  `ansid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(39, '61e687476234e', '61e68747632f0'),
(40, '61e6874764906', '61e6874764c57'),
(41, '61e6874765f7e', '61e68747661d6'),
(42, '61e6874766d17', '61e6874766f24'),
(46, '61e69f3dd7c52', '61e69f3dd88c8'),
(47, '61e69f3dd92f0', '61e69f3dd96fe');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` varchar(100) NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(100) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(153, '61e687476234e', 'Syntax Errors', '61e68747632ea'),
(154, '61e687476234e', 'Logical Errors', '61e68747632ee'),
(155, '61e687476234e', 'Runtime Errors', '61e68747632ef'),
(156, '61e687476234e', 'Flow Errors', '61e68747632f0'),
(157, '61e6874764906', 'identifier & keyword', '61e6874764c53'),
(158, '61e6874764906', 'identifier', '61e6874764c56'),
(159, '61e6874764906', 'keyword', '61e6874764c57'),
(160, '61e6874764906', 'none of the mentioned', '61e6874764c58'),
(161, '61e6874765f7e', '.js', '61e68747661d2'),
(162, '61e6874765f7e', '.txt', '61e68747661d4'),
(163, '61e6874765f7e', '.class', '61e68747661d5'),
(164, '61e6874765f7e', '.java', '61e68747661d6'),
(165, '61e6874766d17', 'MAVEN_Path', '61e6874766efd'),
(166, '61e6874766d17', 'JavaPATH', '61e6874766f00'),
(167, '61e6874766d17', 'JAVA', '61e6874766f01'),
(168, '61e6874766d17', 'JAVA_HOME', '61e6874766f24'),
(181, '61e69f3dd7c52', 'CPU', '61e69f3dd88c4'),
(182, '61e69f3dd7c52', 'ROM', '61e69f3dd88c7'),
(183, '61e69f3dd7c52', 'Server', '61e69f3dd88c8'),
(184, '61e69f3dd7c52', 'Refrigerator ', '61e69f3dd88c9'),
(185, '61e69f3dd92f0', 'CPU', '61e69f3dd96fe'),
(186, '61e69f3dd92f0', 'ROM', '61e69f3dd9700'),
(187, '61e69f3dd92f0', 'Server', '61e69f3dd9701'),
(188, '61e69f3dd92f0', 'Refrigerator ', '61e69f3dd9702');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` varchar(100) NOT NULL,
  `qid` varchar(100) NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`, `image`) VALUES
(24, '61e685566442e', '61e687476234e', 'Which one is not types of errors which can occur during the execution of a program?', 4, 1, NULL),
(25, '61e685566442e', '61e6874764906', 'Which of these cannot be used for a variable name in Java?', 4, 2, NULL),
(26, '61e685566442e', '61e6874765f7e', 'What is the extension of java code files?', 4, 3, NULL),
(27, '61e685566442e', '61e6874766d17', 'Which environment variable is used to set the java path?', 4, 4, NULL),
(31, '61e69efc6bf93', '61e69f3dd7c52', 'What is the photo all about?', 4, 1, 'AdobeStock_90603827-scaled.jpeg'),
(32, '61e69efc6bf93', '61e69f3dd92f0', 'What is the photo all about?', 4, 2, 'cpu-upgrade.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL,
  `adminID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`, `adminID`) VALUES
(17, '61e685566442e', 'Phyton', 50, 10, 4, 100, '2022-01-19 08:24:58', 'enabled', 1),
(20, '61e69efc6bf93', 'Testmultipleimage', 50, 0, 2, 1, '2022-01-19 08:25:01', 'enabled', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(6, 'aifan98', 560, '2022-01-19 10:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `clrname` varchar(30) NOT NULL DEFAULT 'Normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`, `clrname`) VALUES
(6, 'Aifan', '728212221921', 'CSE', 'M', 'aifan98', 60194487503, '098f6bcd4621d373cade4e832627b4f6', 'Protanopia'),
(4, 'Kadhamburi', '732116104026', 'ECE', 'M', 'kadhu', 9887661361, 'b59c67bf196a4758191e42f76670ceba', 'Normal'),
(3, 'Kiran', '732116104022', 'CSE', 'M', 'kiran', 9876543212, 'b59c67bf196a4758191e42f76670ceba', 'Normal'),
(2, 'Mugunthan', '732116104036', 'CSE', 'M', 'mugunth', 9514444471, 'b59c67bf196a4758191e42f76670ceba', 'Normal'),
(5, 'Pravin', '732116104049', 'CSE', 'M', 'pravin', 8769891099, 'c86da2729ab8f79d8f582e9abc469eb0', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `historyID` int(100) NOT NULL,
  `qid` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ans` varchar(100) CHARACTER SET utf8 NOT NULL,
  `correctans` varchar(100) CHARACTER SET utf8 NOT NULL,
  `eid` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ansid` (`ansid`),
  ADD KEY `FKqidANS` (`qid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKUsernameHstry` (`username`),
  ADD KEY `FKeidHstry` (`eid`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `optionid` (`optionid`),
  ADD KEY `FKqidOpt` (`qid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `qid` (`qid`),
  ADD KEY `FKeidQs` (`eid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `eid` (`eid`),
  ADD KEY `FKadminID` (`adminID`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKUsernameUA` (`username`),
  ADD KEY `FKQIDUA` (`qid`),
  ADD KEY `FKAnsIDUA` (`correctans`),
  ADD KEY `FKOptionsIDUA` (`ans`),
  ADD KEY `FKeidUA` (`eid`),
  ADD KEY `FKhistoryIDUA` (`historyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FKOptionIDANS` FOREIGN KEY (`ansid`) REFERENCES `options` (`optionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKqidANS` FOREIGN KEY (`qid`) REFERENCES `questions` (`qid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FKUsernameHstry` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKeidHstry` FOREIGN KEY (`eid`) REFERENCES `quiz` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `FKqidOpt` FOREIGN KEY (`qid`) REFERENCES `questions` (`qid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FKeidQs` FOREIGN KEY (`eid`) REFERENCES `quiz` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FKadminID` FOREIGN KEY (`adminID`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `FK_Username` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD CONSTRAINT `FKAnsIDUA` FOREIGN KEY (`correctans`) REFERENCES `answer` (`ansid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKOptionsIDUA` FOREIGN KEY (`ans`) REFERENCES `options` (`optionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKQIDUA` FOREIGN KEY (`qid`) REFERENCES `questions` (`qid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKUsernameUA` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKeidUA` FOREIGN KEY (`eid`) REFERENCES `quiz` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKhistoryIDUA` FOREIGN KEY (`historyID`) REFERENCES `history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
