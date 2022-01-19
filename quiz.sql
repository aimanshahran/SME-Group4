-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2022 at 06:57 PM
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
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(4, '5b85857d00f34', '5b85857d0ab77'),
(5, '5b85857d333f0', '5b85857d391b2'),
(6, '5b85857d59559', '5b85857d69efd'),
(7, '5b85857d917d6', '5b85857d97980'),
(8, '5b85857db810f', '5b85857dbd701'),
(9, '61dee494942be', '61dee494949b3'),
(10, '61dee7806b2bc', '61dee7806c2e3'),
(11, '61def500dcf64', '61def500dd763'),
(12, '61def93c94aa4', '61def93c96306'),
(13, '61def956b4f21', '61def956b5692'),
(14, '61defc2908ffa', '61defc2909eaf'),
(15, '61defc3460559', '61defc3460d87'),
(16, '61df0025170f2', '61df0025184a5'),
(17, '61df00990dd57', '61df00990e267'),
(18, '61df019f99da5', '61df019f9a4bf'),
(19, '61df0466dbd1f', '61df0466dc667'),
(20, '61df0488ad815', '61df0488ae21c'),
(21, '61df04d114b08', '61df04d114e43'),
(22, '61df04f1c49df', '61df04f1c510b'),
(23, '61df04f49d01e', '61df04f49dc1f'),
(24, '61df050313047', '61df050313511'),
(25, '61df06f6be286', '61df06f6bea3b'),
(26, '61df0739c56da', '61df0739c5a99'),
(27, '61df07ede4f98', '61df07ede5e5c'),
(28, '61df07fb8f05f', '61df07fb8fb10'),
(29, '61df08121bee8', '61df08121e1fb'),
(30, '61df08335124d', '61df083351338'),
(31, '61df0841aa5a7', '61df0841aa757'),
(32, '61df08c2a6b00', '61df08c2a71c6'),
(33, '61df08d385223', '61df08d3860ef'),
(34, '61df0f28d3bba', '61df0f28d5ba4'),
(35, '61df104688215', '61df104689a3e'),
(36, '61df10758578c', '61df10758807f'),
(37, '61df10b06927d', '61df10b069b96'),
(38, '61df156f7462f', '61df156f75fe3');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('5b86784504039', 'pravin', 'fyvgh@vgyvy.in', 'ytiu', 'yty', '2018-08-29', '03:41:09pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(1, 'pravin', '5b85847bbe794', 3, 5, 2, 3, '2018-08-29 10:37:59', 1535538968, 'finished', 'true'),
(2, 'mugunth', '5b85847bbe794', 11, 5, 4, 1, '2018-08-29 10:39:42', 1535539122, 'finished', 'true'),
(7, 'aifan98', '5b85847bbe794', 0, 0, 0, 0, '2022-01-12 17:20:00', 1642007976, 'finished', 'true'),
(8, 'aifan98', '61df15513a496', 0, 0, 0, 0, '2022-01-12 17:53:20', 1642010000, 'ongoing', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(13, '5b85857d00f34', ' Hello World!Hello World!', '5b85857d0ab77'),
(14, '5b85857d00f34', ' Hello World! * 2', '5b85857d0af5f'),
(15, '5b85857d00f34', 'Hello World!', '5b85857d0b347'),
(16, '5b85857d00f34', 'None of the above.', '5b85857d0b72f'),
(17, '5b85857d333f0', '( \'abcd\', 786 , 2.23, \'john\', 70.2 )', '5b85857d389e2'),
(18, '5b85857d333f0', 'abcd', '5b85857d38dca'),
(19, '5b85857d333f0', '(786, 2.23)', '5b85857d391b2'),
(20, '5b85857d333f0', 'None of the above.', '5b85857d3959a'),
(21, '5b85857d59559', 'int(x [,base])', '5b85857d69b15'),
(22, '5b85857d59559', 'long(x [,base] )', '5b85857d69efd'),
(23, '5b85857d59559', 'float(x)', '5b85857d6a2e5'),
(24, '5b85857d59559', 'str(x)', '5b85857d6a6cd'),
(25, '5b85857d917d6', 'unichr(x)', '5b85857d97980'),
(26, '5b85857d917d6', 'ord(x)', '5b85857d97d68'),
(27, '5b85857d917d6', 'hex(x)', '5b85857d98150'),
(28, '5b85857d917d6', 'oct(x)', '5b85857d98538'),
(29, '5b85857db810f', 'choice(seq)', '5b85857dbd701'),
(30, '5b85857db810f', 'randrange ([start,] stop [,step])', '5b85857dbdae9'),
(31, '5b85857db810f', 'random()', '5b85857dbded1'),
(32, '5b85857db810f', 'seed([x])', '5b85857dbe2b9'),
(33, '61dee494942be', 'haha', '61dee494949ae'),
(34, '61dee494942be', 'lol', '61dee494949b3'),
(35, '61dee494942be', 'bb', '61dee494949b4'),
(36, '61dee494942be', 'cucu', '61dee494949b5'),
(37, '61dee7806b2bc', '', '61dee7806c2e3'),
(38, '61dee7806b2bc', '', '61dee7806c2e7'),
(39, '61dee7806b2bc', '', '61dee7806c2e8'),
(40, '61dee7806b2bc', '', '61dee7806c2e9'),
(41, '61def500dcf64', 'ss', '61def500dd763'),
(42, '61def500dcf64', 'sss', '61def500dd766'),
(43, '61def500dcf64', 'sss', '61def500dd767'),
(44, '61def500dcf64', 'sss', '61def500dd768'),
(45, '61def93c94aa4', 'sdsd', '61def93c96303'),
(46, '61def93c94aa4', 'sadsd', '61def93c96306'),
(47, '61def93c94aa4', 'sadas', '61def93c96307'),
(48, '61def93c94aa4', 'sdadsa', '61def93c96308'),
(49, '61def956b4f21', 'ss', '61def956b5692'),
(50, '61def956b4f21', 'ss', '61def956b5694'),
(51, '61def956b4f21', 'ss', '61def956b5695'),
(52, '61def956b4f21', 'ss', '61def956b5696'),
(53, '61defc2908ffa', 'sss', '61defc2909eaf'),
(54, '61defc2908ffa', 'sss', '61defc2909eb3'),
(55, '61defc2908ffa', 'ss', '61defc2909eb4'),
(56, '61defc2908ffa', 'sss', '61defc2909eb5'),
(57, '61defc3460559', 'sss', '61defc3460d87'),
(58, '61defc3460559', 'sss', '61defc3460d8a'),
(59, '61defc3460559', 'ss', '61defc3460d8b'),
(60, '61defc3460559', 'sss', '61defc3460d8c'),
(61, '61df0025170f2', 'SSS', '61df0025184a5'),
(62, '61df0025170f2', 'SSS', '61df0025184a9'),
(63, '61df0025170f2', 'SS', '61df0025184aa'),
(64, '61df0025170f2', 'SS', '61df0025184ab'),
(65, '61df00990dd57', 'ddsdds', '61df00990e266'),
(66, '61df00990dd57', 'dsdsd', '61df00990e267'),
(67, '61df00990dd57', 'sdsds', '61df00990e268'),
(68, '61df00990dd57', 'dsdsadsa', '61df00990e269'),
(69, '61df019f99da5', 'aAAA', '61df019f9a4bf'),
(70, '61df019f99da5', '', '61df019f9a4c1'),
(71, '61df019f99da5', 'AAAA', '61df019f9a4c2'),
(72, '61df019f99da5', 'AAA', '61df019f9a4c3'),
(73, '61df0466dbd1f', 'ssasas', '61df0466dc667'),
(74, '61df0466dbd1f', 'asasad', '61df0466dc669'),
(75, '61df0466dbd1f', 'asadsa', '61df0466dc66a'),
(76, '61df0466dbd1f', 'sdsdsad', '61df0466dc66b'),
(77, '61df0488ad815', '', '61df0488ae21c'),
(78, '61df0488ad815', '', '61df0488ae21e'),
(79, '61df0488ad815', '', '61df0488ae21f'),
(80, '61df0488ad815', '', '61df0488ae220'),
(81, '61df04d114b08', 'saa', '61df04d114e43'),
(82, '61df04d114b08', 'dssdsd', '61df04d114e44'),
(83, '61df04d114b08', 'sddasd', '61df04d114e45'),
(84, '61df04d114b08', 'dsadsa', '61df04d114e46'),
(85, '61df04f1c49df', 'saa', '61df04f1c510b'),
(86, '61df04f1c49df', 'dssdsd', '61df04f1c510d'),
(87, '61df04f1c49df', 'sddasd', '61df04f1c510e'),
(88, '61df04f1c49df', 'dsadsa', '61df04f1c510f'),
(89, '61df04f49d01e', 'saa', '61df04f49dc1f'),
(90, '61df04f49d01e', 'dssdsd', '61df04f49dc21'),
(91, '61df04f49d01e', 'sddasd', '61df04f49dc22'),
(92, '61df04f49d01e', 'dsadsa', '61df04f49dc23'),
(93, '61df050313047', 'saa', '61df050313511'),
(94, '61df050313047', 'dssdsd', '61df050313512'),
(95, '61df050313047', 'sddasd', '61df050313513'),
(96, '61df050313047', 'dsadsa', '61df050313514'),
(97, '61df06f6be286', 'assadew', '61df06f6bea3a'),
(98, '61df06f6be286', 'sdassdsad', '61df06f6bea3b'),
(99, '61df06f6be286', 'sdsaddsa', '61df06f6bea3c'),
(100, '61df06f6be286', 'sadadasdasdas', '61df06f6bea3d'),
(101, '61df0739c56da', 'dsada', '61df0739c5a99'),
(102, '61df0739c56da', 'asdas', '61df0739c5a9a'),
(103, '61df0739c56da', 'adadsa', '61df0739c5a9b'),
(104, '61df0739c56da', 'adsas', '61df0739c5aa4'),
(105, '61df07ede4f98', 'dsada', '61df07ede5e5c'),
(106, '61df07ede4f98', 'asdas', '61df07ede5e5d'),
(107, '61df07ede4f98', 'adadsa', '61df07ede5e5e'),
(108, '61df07ede4f98', 'adsas', '61df07ede5e5f'),
(109, '61df07fb8f05f', 'sdasa', '61df07fb8fb0e'),
(110, '61df07fb8f05f', 'asdasdsa', '61df07fb8fb0f'),
(111, '61df07fb8f05f', 'adsasds', '61df07fb8fb10'),
(112, '61df07fb8f05f', 'daas', '61df07fb8fb11'),
(113, '61df08121bee8', 'sdasa', '61df08121e1f9'),
(114, '61df08121bee8', 'asdasdsa', '61df08121e1fa'),
(115, '61df08121bee8', 'adsasds', '61df08121e1fb'),
(116, '61df08121bee8', 'daas', '61df08121e1fc'),
(117, '61df08335124d', 'sdasa', '61df083351336'),
(118, '61df08335124d', 'asdasdsa', '61df083351337'),
(119, '61df08335124d', 'adsasds', '61df083351338'),
(120, '61df08335124d', 'daas', '61df083351339'),
(121, '61df0841aa5a7', 'sdasa', '61df0841aa754'),
(122, '61df0841aa5a7', 'asdasdsa', '61df0841aa756'),
(123, '61df0841aa5a7', 'adsasds', '61df0841aa757'),
(124, '61df0841aa5a7', 'daas', '61df0841aa758'),
(125, '61df08c2a6b00', 'sdasa', '61df08c2a71c2'),
(126, '61df08c2a6b00', 'asdasdsa', '61df08c2a71c5'),
(127, '61df08c2a6b00', 'adsasds', '61df08c2a71c6'),
(128, '61df08c2a6b00', 'daas', '61df08c2a71c7'),
(129, '61df08d385223', 'sdasa', '61df08d3860e8'),
(130, '61df08d385223', 'asdasdsa', '61df08d3860ee'),
(131, '61df08d385223', 'adsasds', '61df08d3860ef'),
(132, '61df08d385223', 'daas', '61df08d3860f0'),
(133, '61df0f28d3bba', 'what', '61df0f28d5ba0'),
(134, '61df0f28d3bba', 'where', '61df0f28d5ba4'),
(135, '61df0f28d3bba', 'was', '61df0f28d5ba5'),
(136, '61df0f28d3bba', 'check', '61df0f28d5ba6'),
(137, '61df104688215', 'test', '61df104689a3e'),
(138, '61df104688215', 'test', '61df104689a41'),
(139, '61df104688215', 'test', '61df104689a42'),
(140, '61df104688215', 'test', '61df104689a43'),
(141, '61df10758578c', 'sdada', '61df107588079'),
(142, '61df10758578c', 'dsadsa', '61df10758807e'),
(143, '61df10758578c', 'daasd', '61df10758807f'),
(144, '61df10758578c', 'sadsasda', '61df107588080'),
(145, '61df10b06927d', 'sdada', '61df10b069b91'),
(146, '61df10b06927d', 'dsadsa', '61df10b069b95'),
(147, '61df10b06927d', 'daasd', '61df10b069b96'),
(148, '61df10b06927d', 'sadsasda', '61df10b069b97'),
(149, '61df156f7462f', 'test1', '61df156f75fe3'),
(150, '61df156f7462f', 'test2', '61df156f75fe7'),
(151, '61df156f7462f', 'test3', '61df156f75fe8'),
(152, '61df156f7462f', 'test4', '61df156f75fe9');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`, `image`) VALUES
(4, '5b85847bbe794', '5b85857d00f34', 'What is the output of print str * 2 if str = \'Hello World!\'?', 4, 1, '20220107235910'),
(5, '5b85847bbe794', '5b85857d333f0', 'What is the output of print tuple[1:3] if tuple = ( \'abcd\', 786 , 2.23, \'john\', 70.2 )?', 4, 2, NULL),
(6, '5b85847bbe794', '5b85857d59559', 'Which of the following function convert a string to a long in python?', 4, 3, NULL),
(7, '5b85847bbe794', '5b85857d917d6', 'Which of the following function convert an integer to an unicode character in python?', 4, 4, NULL),
(8, '5b85847bbe794', '5b85857db810f', 'Which of the following function returns a random item from a list, tuple, or string?', 4, 5, NULL),
(23, '61df15513a496', '61df156f7462f', 'Test Picture', 4, 1, 'bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(2, '5b85847bbe794', 'Python', 3, 1, 5, 2, '2018-08-29 10:40:38', 'enabled'),
(16, '61df15513a496', 'Testreal', 100, 98, 1, 10, '2022-01-12 17:52:17', 'enabled');

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
(1, 'pravin', 3, '2018-08-29 10:37:59'),
(2, 'mugunth', 11, '2018-08-29 10:39:42'),
(3, 'aifan98', 0, '2022-01-12 17:20:00');

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
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(6, 'Aifan', '728212221921', 'CSE', 'M', 'aifan98', 60194487503, '098f6bcd4621d373cade4e832627b4f6'),
(4, 'Kadhamburi', '732116104026', 'ECE', 'M', 'kadhu', 9887661361, 'b59c67bf196a4758191e42f76670ceba'),
(3, 'Kiran', '732116104022', 'CSE', 'M', 'kiran', 9876543212, 'b59c67bf196a4758191e42f76670ceba'),
(2, 'Mugunthan', '732116104036', 'CSE', 'M', 'mugunth', 9514444471, 'b59c67bf196a4758191e42f76670ceba'),
(5, 'Pravin', '732116104049', 'CSE', 'M', 'pravin', 8769891099, 'c86da2729ab8f79d8f582e9abc469eb0');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo'),
(4, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'pravin'),
(5, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'pravin'),
(6, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'pravin'),
(7, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'pravin'),
(8, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'pravin'),
(9, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'mugunth'),
(10, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'mugunth'),
(11, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'mugunth'),
(12, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'mugunth'),
(13, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'mugunth');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
