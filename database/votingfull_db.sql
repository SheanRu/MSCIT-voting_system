-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2024 at 11:49 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votingfull_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int NOT NULL,
  `category` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category`) VALUES
(6, 'President'),
(11, 'Vice President - Internal Affairs'),
(12, 'Vice President - External Affairs'),
(13, 'Executive Secretary'),
(14, 'Associate Secretary'),
(15, 'Executive Treasurer'),
(16, 'Associate Treasurer'),
(17, 'Auditors'),
(18, 'Business Managers'),
(19, 'Public Relation - Internal Affairs'),
(20, 'Public Relation - External Affairs'),
(21, 'Representative from every Year'),
(22, 'Cabinet Members');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1+admin , 2 = users',
  `has_voted` tinyint(1) DEFAULT '0',
  `picture_path` text COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `picture_data` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `has_voted`, `picture_path`, `department`, `picture_data`) VALUES
(1, 'Administrator', '01-2019-117', 'admin', 1, 0, 'image/3.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int NOT NULL,
  `voting_id` int NOT NULL,
  `category_id` int NOT NULL,
  `voting_opt_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voting_id`, `category_id`, `voting_opt_id`, `user_id`) VALUES
(1, 1, 1, 1, 3),
(2, 1, 3, 5, 3),
(3, 1, 4, 6, 3),
(4, 1, 4, 7, 3),
(5, 1, 4, 8, 3),
(6, 1, 4, 9, 3),
(7, 1, 1, 3, 4),
(8, 1, 3, 12, 4),
(9, 1, 4, 6, 4),
(10, 1, 4, 8, 4),
(11, 1, 4, 10, 4),
(12, 1, 4, 11, 4),
(13, 1, 1, 3, 5),
(14, 1, 3, 5, 5),
(15, 1, 4, 6, 5),
(16, 1, 4, 7, 5),
(17, 1, 4, 8, 5),
(18, 1, 4, 9, 5),
(19, 6, 6, 20, 6),
(20, 6, 6, 20, 11),
(21, 9, 6, 26, 14),
(22, 9, 6, 26, 16),
(23, 9, 6, 26, 15),
(24, 9, 6, 26, 17),
(25, 9, 6, 26, 18),
(26, 9, 6, 26, 13),
(27, 9, 6, 27, 19),
(28, 9, 6, 27, 20),
(29, 9, 6, 27, 21),
(30, 11, 6, 33, 22),
(31, 11, 6, 33, 22),
(32, 11, 6, 33, 22),
(33, 10, 6, 35, 24),
(34, 17, 6, 47, 13),
(35, 17, 6, 47, 25),
(36, 17, 6, 47, 11),
(37, 17, 6, 47, 28),
(38, 17, 6, 47, 29),
(39, 17, 6, 47, 31),
(40, 16, 6, 45, 32),
(41, 17, 6, 47, 33),
(42, 17, 7, 49, 33),
(43, 17, 9, 52, 33),
(44, 17, 6, 47, 33),
(45, 17, 7, 50, 33),
(46, 17, 9, 51, 33),
(47, 17, 6, 48, 32),
(48, 17, 7, 50, 32),
(49, 17, 9, 51, 32),
(50, 16, 6, 45, 33),
(51, 16, 6, 46, 33),
(52, 16, 6, 46, 32),
(53, 16, 6, 45, 24),
(54, 16, 6, 45, 34),
(55, 19, 6, 61, 38),
(56, 19, 6, 61, 39),
(57, 19, 6, 61, 40),
(58, 19, 6, 61, 45),
(59, 19, 6, 61, 46),
(60, 16, 6, 45, 53),
(61, 16, 11, 66, 53),
(62, 16, 12, 67, 53),
(63, 16, 6, 65, 54),
(64, 16, 11, 66, 54),
(65, 16, 12, 67, 54),
(66, 16, 6, 65, 55),
(67, 16, 11, 66, 55),
(68, 16, 12, 67, 55),
(69, 16, 6, 45, 59),
(70, 16, 11, 66, 59),
(71, 16, 12, 67, 59),
(72, 16, 6, 65, 60),
(73, 16, 11, 66, 60),
(74, 16, 12, 67, 60),
(75, 16, 6, 65, 61),
(76, 16, 11, 66, 61),
(77, 16, 12, 67, 61),
(78, 16, 6, 65, 62),
(79, 16, 11, 66, 62),
(80, 16, 12, 67, 62),
(81, 21, 6, 71, 72),
(82, 21, 11, 72, 72),
(83, 21, 12, 74, 72),
(84, 21, 13, 76, 72),
(85, 21, 14, 79, 72),
(86, 21, 15, 82, 72),
(87, 21, 16, 84, 72),
(88, 21, 17, 86, 72),
(89, 21, 18, 90, 72),
(90, 21, 19, 91, 72),
(91, 21, 20, 93, 72),
(92, 21, 21, 95, 72),
(93, 21, 22, 98, 72),
(94, 21, 17, 87, 65),
(95, 21, 18, 90, 65),
(96, 21, 21, 97, 65),
(97, 21, 22, 99, 65);

-- --------------------------------------------------------

--
-- Table structure for table `voting_cat_settings`
--

CREATE TABLE `voting_cat_settings` (
  `id` int NOT NULL,
  `voting_id` int NOT NULL,
  `category_id` int NOT NULL,
  `max_selection` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voting_cat_settings`
--

INSERT INTO `voting_cat_settings` (`id`, `voting_id`, `category_id`, `max_selection`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 1, 4, 4),
(5, 21, 17, 2),
(6, 21, 18, 2),
(7, 21, 21, 3),
(8, 21, 22, 2),
(9, 23, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voting_list`
--

CREATE TABLE `voting_list` (
  `id` int NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `time_duration` time NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voting_list`
--

INSERT INTO `voting_list` (`id`, `title`, `description`, `time_duration`, `is_default`) VALUES
(17, 'Supreme Student Council', 'for Perpetual help college of Pangasinan', '24:00:00', 0),
(21, 'Circuit Builder Student Council', 'For CCS only ', '24:00:00', 1),
(24, 'Beed department', 'for beed', '24:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voting_logs`
--

CREATE TABLE `voting_logs` (
  `id` int NOT NULL,
  `voter_id` int DEFAULT NULL,
  `candidate_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voting_opt`
--

CREATE TABLE `voting_opt` (
  `id` int NOT NULL,
  `voting_id` int NOT NULL,
  `category_id` int NOT NULL,
  `image_path` text COLLATE utf8mb4_general_ci NOT NULL,
  `opt_txt` text COLLATE utf8mb4_general_ci NOT NULL,
  `motto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voting_opt`
--

INSERT INTO `voting_opt` (`id`, `voting_id`, `category_id`, `image_path`, `opt_txt`, `motto`) VALUES
(18, 5, 7, '1661957820_1.jpg', 'victor', ''),
(19, 5, 7, '1661957820_2.jpg', 'sam', ''),
(20, 6, 6, '1699425000_dark-theme-16.jpg', 'jonas', ''),
(21, 6, 6, '1699425000_dark-theme-16.jpg', 'angelica', ''),
(23, 8, 6, '1700134980_dark-theme-16.jpg', 'jonas', ''),
(24, 8, 6, '1700135040_dark-theme-16.jpg', 'admin admin admin', ''),
(25, 8, 7, '1700135040_dark-theme-16.jpg', '1', ''),
(26, 9, 6, '1700207040_dark-theme-16.jpg', 'jonas', ''),
(27, 9, 6, '1700207100_dark-theme-16.jpg', 'Mark jonas Macasieb', ''),
(33, 11, 6, '1700217480_dark-theme-16.jpg', 'jonas panoringan macasieb', ''),
(35, 10, 6, '1700356020_1.png', 'Mary', ''),
(36, 10, 6, '1700356080_2.png', 'Janet', ''),
(37, 10, 7, '1700356080_3.png', 'Harold', ''),
(39, 10, 7, '1700356200_4.png', 'John', ''),
(40, 10, 9, '1700356260_5.png', 'Kath', ''),
(41, 10, 9, '1700356260_6.png', 'Kate', ''),
(42, 0, 0, '', '', ''),
(43, 0, 0, '', '', ''),
(44, 0, 0, '', '', ''),
(45, 16, 6, '1700529960_dark-theme-16.jpg', 'joas', ''),
(47, 17, 6, '1700530800_1.png', 'kate', ''),
(48, 17, 6, '1700530800_6.png', 'mary', ''),
(49, 17, 7, '1700530860_3.png', 'harold', ''),
(50, 17, 7, '1700530860_4.png', 'jake', ''),
(51, 17, 9, '1700530920_7.png', 'jane', ''),
(52, 17, 9, '1700530980_5.png', 'joan', ''),
(54, 18, 6, '1700535780_2.png', 'jennybie', ''),
(55, 18, 6, '1700535780_6.png', 'Angelica', ''),
(56, 18, 7, '1700535840_3.png', 'jonas', ''),
(57, 18, 7, '1700535840_4.png', 'Daruis', ''),
(58, 18, 9, '1700535960_7.png', 'Franciene', ''),
(60, 18, 9, '1700536020_4.png', 'Albert', ''),
(61, 19, 6, '1701476700_sample krizza.jpg', 'harold', ''),
(62, 19, 6, '1701476700_krizza1.jpg', 'Albert', ''),
(64, 16, 7, '1701485100_krizza.jpg', 'harold', ''),
(65, 16, 6, '1701485100_krizza full.jpg', 'Albert', ''),
(66, 16, 11, '1701651360_123.PNG', 'dada', ''),
(67, 16, 12, '1701651420_1.PNG', 'Albert', ''),
(70, 21, 6, '1701775560_f49012a2e79bc927a18361b16968b5c0.jpg', 'MARX  RANZELLE V. DY ', 'time is gold'),
(71, 21, 6, '1701777000_istockphoto-461164967-612x612.jpg', 'Asi', 'smile is the best'),
(72, 21, 11, '1701777180_istockphoto-513354499-612x612.jpg', 'Carl', 'Side pose is cool'),
(73, 21, 11, '1701777300_istockphoto-614139584-612x612.jpg', 'Joy', 'smile and sidepose is good'),
(74, 21, 12, '1701777420_istockphoto-670418084-612x612.jpg', 'Jimil', 'stand straight '),
(75, 21, 12, '1701777480_istockphoto-841971598-612x612.jpg', 'wrath', 'simple is the best'),
(76, 21, 13, '1701777540_istockphoto-841971598-612x612.jpg', 'Mort', 'feeling cool'),
(77, 21, 13, '1701777720_istockphoto-866474934-612x612.jpg', 'Lucas', 'Ice coffee is the best'),
(79, 21, 14, '1701777840_istockphoto-963443936-612x612.jpg', 'Jaylin', 'cool expression is the best'),
(80, 21, 14, '1701778080_istockphoto-1289220545-612x612.jpg', 'Daphne', 'green tea is the best'),
(81, 21, 15, '1701778140_istockphoto-1326417862-612x612.jpg', 'Princess', 'smile with charm is lovely'),
(82, 21, 15, '1701778260_istockphoto-1360028830-612x612.jpg', 'Brianna', 'simple and powerful '),
(83, 21, 16, '1701778380_istockphoto-1162303181-612x612.jpg', 'Sammy', 'ready to report (boy scout) '),
(84, 21, 16, '1701778440_istockphoto-1195544399-612x612.jpg', 'Billy', 'food is the best (the eater)'),
(85, 21, 17, '1701778620_istockphoto-1224612530-612x612.jpg', 'Javier', 'neat is the best'),
(86, 21, 17, '1701778680_istockphoto-1090878336-612x612.jpg', 'Pedro', 'the more neat is the best'),
(87, 21, 17, '1701778800_istockphoto-1317784594-612x612.jpg', 'Katrina', 'the two of you is not neat i am super neat'),
(88, 21, 18, '1701778860_istockphoto-1476170969-612x612.jpg', 'Dane', 'your wish is my command'),
(89, 21, 18, '1701778920_istockphoto-1819230002-612x612.jpg', 'Nick', 'you wish is your command then give me a gold'),
(90, 21, 18, '1701778980_istockphoto-1386863107-612x612.jpg', 'Cindy', 'give me a house also'),
(91, 21, 19, '1701779340_istockphoto-1386863107-612x612.jpg', 'Amber', 'easy'),
(92, 21, 19, '1701779400_istockphoto-1399395748-612x612.jpg', 'Carol', 'smile'),
(93, 21, 20, '1701779520_istockphoto-1288538088-612x612.jpg', 'Talon', 'Smile and neat'),
(94, 21, 20, '1701779580_istockphoto-1281083606-612x612.jpg', 'Kath', 'I love carrot'),
(95, 21, 21, '1701820860_istockphoto-1443543154-612x612.jpg', 'Janet', 'save our environment'),
(96, 21, 21, '1701820920_istockphoto-1311655328-612x612.jpg', 'Cristine', 'Work Smart'),
(97, 21, 21, '1701820920_istockphoto-1054962898-612x612.jpg', 'Vexil', 'Call Me'),
(98, 21, 22, '1701820980_istockphoto-1224612530-612x612.jpg', 'Den', 'focus on task'),
(99, 21, 22, '1701821100_istockphoto-1090878336-612x612.jpg', 'Tyson', 'Good Health'),
(100, 21, 22, '1701821160_istockphoto-513354499-612x612.jpg', 'Mark', 'Zeus is the best'),
(101, 21, 21, '1701821280_istockphoto-841971598-612x612.jpg', 'Van', 'Simple'),
(102, 23, 6, '1701823680_istockphoto-461164967-612x612.jpg', 'harold', 'Good game '),
(103, 23, 6, '1701823680_istockphoto-513354499-612x612.jpg', 'Albert', 'time is expensive'),
(104, 24, 6, '1701841440_istockphoto-461164967-612x612.jpg', 'jonas', 'time is gold ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_cat_settings`
--
ALTER TABLE `voting_cat_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_list`
--
ALTER TABLE `voting_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_logs`
--
ALTER TABLE `voting_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_opt`
--
ALTER TABLE `voting_opt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `voting_cat_settings`
--
ALTER TABLE `voting_cat_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `voting_list`
--
ALTER TABLE `voting_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `voting_logs`
--
ALTER TABLE `voting_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voting_opt`
--
ALTER TABLE `voting_opt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
