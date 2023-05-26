-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 06:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'evotex', '$2y$10$uhZvq2.19yUinpVtXarVuOm5c2ee/c7pGM47NyQKKJSOt9hD6usGu', 'E-VoteX', 'Admin', 'Untitled design (3).png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `Number` int(10) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `Number`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 9, 0, 'sharmia', 'kaushalya', 'g5.jpg', '1'),
(19, 8, 0, 'Chamindu ', 'gimhana', 'Education centre Logo Final-01.png', 'SJJP'),
(20, 10, 0, 'narada', 'disasekara', '861-8611119_about-us-illustration.png', 'online'),
(21, 11, 0, 'yohan', 'padigama', '123.jpg', 'online'),
(22, 9, 0, 'sasila', 'jay', 'd59fd49d.jpg', '2'),
(23, 9, 0, 'sarath', 'rodrigo', '123.jpg', '3'),
(25, 9, 0, 'kasun', 'p', 'Certificate-in-Barbering-Techniques.jpg', '4'),
(26, 9, 0, 'test', '1', '123.jpg', '5'),
(27, 13, 0, 'tharindu', 'madushan', '861-8611119_about-us-illustration.png', '8');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'UNP', 100, 2),
(9, 'JVP', 100, 1),
(10, 'SLPP', 100, 3),
(11, 'ITAK', 100, 4),
(13, 'SLPS', 1000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `gov_id` varchar(12) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `gov_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, '', '$2y$10$Hje18i.pYFZBV7O81W18Q.3b1qnzkbPR/FWwI3BXyxjGZTDrWiz6.', 'sharmila', 'kaushalya', 'g5.jpg'),
(3, '200020003000', '$2y$10$K3DuetuQPOZtbgBtm28igeiUomp/iJ.HDUJdX18efkdf2vEWhdw.K', 'Chamindu ', 'gimhana', 'Education centre Logo Final-01.png'),
(4, '', '$2y$10$WDgWBqTHwp5qdLFo2W7rruZjaJSp/PTKXhdhVD50w8FMoc1ZSYZ6y', 'kavinda', 'tharindu', '861-8611119_about-us-illustration.png'),
(5, '', '$2y$10$CKB7tjsmT57xNXDmezeNDey1BoRuTXD55CSGU/CBIZkehwUiM0aTu', 'rusini', 'siyara', 'g5.jpg'),
(6, '', '$2y$10$XOnxUaRJEl0m0IaUZlvOrechYz1F/q2oNCALxe1hqFLtKhHaH.hdK', 'kasun', 'kavinda', 'Education centre Logo Final-01.jpg'),
(7, '', '$2y$10$vPU.1YMcLii75crFpkb9RO1JILRAAA3faLgBFuIi2Z4LoHGqwPa1q', 'kasun', 'herath', '123.jpg'),
(9, '', '$2y$10$1PZgKUGhVLRyKu46mXOxpOp8kY/l3w0TEx2l6r//o0nDtxI3GP5Qu', 'kasu', 'rathnapura', '123.jpg'),
(12, '', '$2y$10$OJx7Ug5Cx3rKaBSv5I1TNesMmhs/ES7d14Umri4BubY.YDegFVFIq', 'Chamindu ', 'gimahana', 'g5.jpg'),
(13, '', '$2y$10$/1nRSuXu8O.//TUWdYWbqe8Xyyjx25WUehlKgwkNTQ1T/Wb7MrBii', 'Chamindu ', 'fg', 'wedding-dreamz-nsHFk_W2KnU-unsplash.jpg'),
(14, '200020103105', '$2y$10$K6elLZc1VnMixX0JZaupIuOC6Fgcsp2qo.tQeRRw1JWuJAjRb3/K6', 'aa', 'cc', 'g5.jpg'),
(15, '', '$2y$10$lqxCny7XcoT25p9hwj9I6uhT2c6mSJJAOp2VHSIMuyDt2cpG6CbCS', 'vd', 'ds', '—Pngtree—contact us 24 hours_5410729.png'),
(16, '', '$2y$10$.H.IyDveDz0Z7oR90OpQj..PMt0Tiw1soZy012bHE3mnXSqyIyXse', 'sarath', 'rad', 'wedding-dreamz-nsHFk_W2KnU-unsplash.jpg'),
(17, '', '$2y$10$eyWwdHnMIIA4nPLnNPQ5kuvSPXRA6eFDD3sk.beWZxeh4GpMQP/7S', 'tharindu', 'kavinda', 'engin-akyurt-SMwCQZWayj0-unsplash.jpg'),
(23, '200020103105', '$2y$10$OknPORHTwP7yiveTZZ1uVeZRKAQ247dd4tZBkwjt.AjAXf0gp55X.', 'aa', '1678', 'd59fd49d.jpg'),
(26, '', '$2y$10$E9V2iSmkcMiH41vM3cgID.vvX5WDGDFo9g0JCTel6.STk/MQ5EqcC', 'ddd', 'ddd', 'd59fd49d.jpg'),
(34, '', '$2y$10$ySDP1wa/IACMuPA9bGVpMuZNcLsuQyVSotvIU.EN952bAPWlVxr4O', 'aaa', 'bbb', '123.jpg'),
(35, '', '$2y$10$7AMjuE1v6lajursjDIBXRenJl/hu9OXC4DUzg8PDEuUQ4KEkIxqR.', 'ww', 'swsw', '123.jpg'),
(36, '', '$2y$10$nPGCtjUbWBT1rmoj4QA7hODPehjsOm9JLZFqE/m4AeRzwf6aZPH6O', 'cds', 'xsa', '861-8611119_about-us-illustration.png'),
(37, '100010002000', '$2y$10$QFIGR5FX29HsnEt0RaNVFOVsF37sr9JIzejG1d9s09W.P2U9oGo9y', 'qwer', 'asdfg', '123.jpg'),
(38, '200020005000', '$2y$10$BMIvmHJqU.vHuWjDs9fqSOKDlRpwNsXb3PbwmD2B1lJ1a2tmZeRvi', 'rusini', 'siyara', '123.jpg'),
(39, '20002010310v', '$2y$10$MLd0K.fUqdfGFr.5FqZ7E.Y11JXMmRmloPznsIo1CChwmPC37CGhu', 'saman', 'kumara', '861-8611119_about-us-illustration.png'),
(40, '20002000199V', '$2y$10$QWpsyy/FmCWeKl/c.PNnL.g.vzcwpdF63X3IYhLTySDJ9IMXvDgbi', 'nihal', 'kariyawasam', '861-8611119_about-us-illustration.png'),
(41, '20002010134v', '$2y$10$uP.3znwrHOpBuaNCcZIbmegkZkJ4SnWCyxI/7NmSzQyTMxz6e/dXe', 'ashan', 'kavinda', '861-8611119_about-us-illustration.png');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 2, 18, 8),
(82, 3, 19, 8),
(83, 4, 18, 9),
(84, 5, 19, 8),
(85, 5, 18, 9),
(86, 6, 20, 10),
(87, 7, 21, 11),
(88, 10, 18, 9),
(89, 19, 19, 8),
(90, 19, 18, 9),
(91, 21, 19, 8),
(92, 21, 18, 9),
(93, 21, 20, 10),
(94, 21, 21, 11),
(95, 30, 19, 8),
(96, 30, 18, 9),
(97, 30, 22, 9),
(98, 30, 20, 10),
(99, 30, 21, 11),
(100, 31, 19, 8),
(101, 31, 18, 9),
(102, 31, 22, 9),
(103, 32, 19, 8),
(104, 32, 18, 9),
(105, 32, 22, 9),
(106, 32, 23, 9),
(107, 32, 25, 9),
(108, 32, 26, 9),
(109, 14, 18, 9),
(110, 14, 22, 9),
(111, 14, 23, 9),
(112, 14, 25, 9),
(113, 14, 26, 9),
(114, 37, 19, 8),
(115, 37, 18, 9),
(116, 37, 22, 9),
(117, 37, 23, 9),
(118, 37, 25, 9),
(119, 37, 26, 9),
(120, 37, 20, 10),
(121, 37, 21, 11),
(122, 38, 19, 8),
(123, 38, 18, 9),
(124, 38, 22, 9),
(125, 39, 19, 8),
(126, 39, 18, 9),
(127, 39, 20, 10),
(128, 40, 19, 8),
(129, 40, 18, 9),
(130, 40, 22, 9),
(131, 40, 20, 10),
(132, 41, 18, 9),
(133, 41, 22, 9),
(134, 41, 25, 9),
(135, 41, 27, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
