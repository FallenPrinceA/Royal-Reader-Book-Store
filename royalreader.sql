-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 08:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royalreader`
--
CREATE DATABASE IF NOT EXISTS `royalreader` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `royalreader`;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `title`, `desc`) VALUES
(2, 'What is the Best Stephen King\'s Novel?', 'Voting on Best Stephen\'s King Novel'),
(6, 'Test', 'A test poll');

-- --------------------------------------------------------

--
-- Table structure for table `poll_answers`
--

DROP TABLE IF EXISTS `poll_answers`;
CREATE TABLE `poll_answers` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `votes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll_answers`
--

INSERT INTO `poll_answers` (`id`, `poll_id`, `title`, `votes`) VALUES
(5, 2, 'Carrie', 0),
(6, 2, 'Salem\'s Lot', 0),
(7, 2, 'FireStarter', 0),
(8, 2, 'IT', 0),
(9, 2, 'The Outsider', 0),
(16, 6, 'a', 0),
(17, 6, 'a', 0),
(18, 6, 'a', 0),
(19, 6, 'a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `royalreaderbooks`
--

DROP TABLE IF EXISTS `royalreaderbooks`;
CREATE TABLE `royalreaderbooks` (
  `royalreadnumber` int(164) NOT NULL,
  `title` varchar(164) NOT NULL,
  `author` varchar(164) NOT NULL,
  `pubdate` date NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `synopsis` text NOT NULL,
  `publisher` varchar(164) NOT NULL,
  `image` longblob NOT NULL,
  `series` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `royalreaderbooks`
--

INSERT INTO `royalreaderbooks` (`royalreadnumber`, `title`, `author`, `pubdate`, `price`, `synopsis`, `publisher`, `image`, `series`) VALUES
(1, 'Tokyo Ghoul Volume 1', 'Sui Ishida', '2015-06-16', '10.00', 'After a bad encounter on a date shy and timid Ken Kaneki finds himself transformed into a ghoul, half-ghoul, half-human but unable to fit in with either now Kaneki must try to navigate being a ghoul while also trying to survive the horrors of this new world. ', 'Viz Media', 0x746f6b796f67686f756c636f7665722e706e67, '0'),
(8, 'Carrie', 'Stephen Kings', '1974-04-05', '19.25', 'Carrie is a lonely girl who endures immense torment and bullying from her peers and a strict religious mother upbringing. After her prom goes wildly out of control she loses control of her psychic powers and gets revenge on those who tortured her all those years, for the final night of her life.', 'Doubleday', 0x4361727269654e6f76656c2e6a7067, 'N'),
(9, 'Test', 'test', '0001-01-01', '10.00', ' Please do not include Discord, Social Media, Patreon or PayPal links here; this will get your submission rejected.', 'test', 0x446976657267656e745f28626f6f6b292e6a7067, 'N'),
(10, 'The Boy and The Sword', 'FallenPrince12', '2020-04-25', '12.99', 'Ichnir is a young adventure on a quest however when he meets the mysterious inn-keeper who sells him a legendary sword at a bargain he is happy to possess a holy sword only for it to turn out to be a piece of junk, he then embarks on a quest of revenge against the shopkeeper only to learn that this is much deeper than he initially thought.\r\n', 'independent', 0x4963686e6972416e6453776f7264436f7665722e706e67, 'N'),
(11, 'L', 'L', '0001-01-01', '19.99', 'LLLL', 'L', 0x546f6b796f47686f756c566f6c756d6532436f7665722e6a7067, 'Y'),
(12, 'Test', 'Sui Ishida', '0222-02-02', '6.99', 'djjjjfjf', 'Test', '', 'N'),
(13, 'Antique', 'Sui Ishida', '2012-03-12', '5.10', 'Second Book of Tokyo Ghoul, Kaneki must now navigate the life of ghoul and human while the police investigate the rise in Ghoul attacks on the citizens. ', 'Viz Media', 0x436f766572466f72426f6f6b732e6a7067, 'Y'),
(14, 'Twirl in the Twilight Nightmare', 'Davina Walker', '2020-04-25', '13.89', ' Ayyomi Tsukino was a very good high school student, good grades, student council vice president, and an overall popular young man however after doing a seance with his friends in the woods, things start to change as he gains the ability to see apparitions, and youkai. Ayyomi decides to document these things however when his class takes a trip to Kyoto, things start to change for the worst, now Ayyomi must survive someone trying to kill him and his friends, while using his newfound powers to find out who it is and stop them. ', 'indepdent', 0x426f6f6b436f766572466f724d6164655570426f6f6b2e6a7067, 'N'),
(15, 'It', 'Stephen Kings', '1986-09-15', '3.99', 'In this small town a group of outcast and bully kids find friendship and refuge in the \"loser club\" a club designed for the children bullied or outcast-ed by the others. However after a mysterious clown starts terrorizing the young group they must learn how to fight back and save themselves to survive. ', 'Viking Press', 0x7374657068656e6b696e6769742e6a7067, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `royalreadernotepad`
--

DROP TABLE IF EXISTS `royalreadernotepad`;
CREATE TABLE `royalreadernotepad` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `pubdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `royalreadernotepad`
--

INSERT INTO `royalreadernotepad` (`id`, `title`, `author`, `pubdate`) VALUES
(1, 'Carrie', 'Stephen King', '1974-04-05'),
(2, 'A Song of Ice and Fire', 'George R.R Martin', '1996-08-01'),
(5, 'Divergent', 'Veronica Roth', '2011-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `id` int(6) UNSIGNED NOT NULL,
  `book_name` varchar(100) NOT NULL DEFAULT '',
  `book_author` varchar(100) NOT NULL,
  `book_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customer_name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`id`, `book_name`, `book_author`, `book_price`, `customer_name`) VALUES
(17, 'Tokyo Ghoul', 'Viz Media', '8.99', ''),
(18, 'Carrie', 'Stephen King', '13.00', ''),
(19, 'Twirl in the Twilight Nightmare', 'Davina Walker', '13.89', 'Damion Walker'),
(20, 'Tokyo Ghoul Volume 1', 'Sui Ishida', '10.00', 'Damion Walker'),
(21, 'Twirl in the Twilight Nightmare', 'Davina Walker', '13.89', 'Damion Walker');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_authors`
--

DROP TABLE IF EXISTS `tbl_authors`;
CREATE TABLE `tbl_authors` (
  `id` int(11) NOT NULL,
  `penname` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `publisher` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_authors`
--

INSERT INTO `tbl_authors` (`id`, `penname`, `email`, `publisher`, `gender`) VALUES
(20, 'Stephen King', 'stephenking1@gmail.com', 'independent', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `verified` tinyint(4) NOT NULL,
  `token` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `verified`, `token`, `password`) VALUES
(13, 'FallenPrinceBelial', 'fallenprincebelial@gmail.com', 0, '54f36a29df6f11105c184a018ba899efe6755f402aa27297916f5d34ff7e06ceebda93d381580f9f559de73e8bae78819a63', '$2y$10$gmqYyy3LwLCNcfW5FfDFSODIeK6dY6EJJ8Xm4Zhl5hI2mEqIm84Jy'),
(14, 'PrinceLight', 'thelight898@hotmail.com', 0, '1ef173b3aa71e411b607afe24b235ea000749b1c48e072f613cbb9a0f6e5924b3495eb1150a38fcc071211261ed8c08fbb42', '$2y$10$bFw4Cl89IkRajrVRqhAFgeaeOja/iyM1GEStuUoaTeaHFI9SnvMsW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_answers`
--
ALTER TABLE `poll_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `royalreaderbooks`
--
ALTER TABLE `royalreaderbooks`
  ADD PRIMARY KEY (`royalreadnumber`);

--
-- Indexes for table `royalreadernotepad`
--
ALTER TABLE `royalreadernotepad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_authors`
--
ALTER TABLE `tbl_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `poll_answers`
--
ALTER TABLE `poll_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `royalreaderbooks`
--
ALTER TABLE `royalreaderbooks`
  MODIFY `royalreadnumber` int(164) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `royalreadernotepad`
--
ALTER TABLE `royalreadernotepad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_authors`
--
ALTER TABLE `tbl_authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
