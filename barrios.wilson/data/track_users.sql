-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 09:58 PM
-- Server version: 10.2.36-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wilsonbarrios_aawm`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Dunn Harvey', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/865/fff/?text=user1', '2020-07-03 11:28:47'),
(2, 'Aaron Calderon', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608180491.391_aaron.jpg', '2020-06-01 02:05:40'),
(3, 'George Steele', 'user0', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608171254.2678_carlos.jpg', '2020-08-12 05:57:59'),
(4, 'Luis Whitfield', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608181835.8557_luis.jpg', '2020-02-16 06:22:22'),
(5, 'Levy Christensen', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608227880.3437_aaron.jpg', '2020-04-17 04:06:46'),
(6, 'Patti Mathis', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608228015.8501_iris.jpg', '2020-01-09 09:27:51'),
(7, 'Simon Dejesus', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608229765.9705_alan.jpg', '2020-10-08 08:08:29'),
(8, 'Maria Bates', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608230322.1831_maria.jpg', '2020-08-04 11:47:07'),
(9, 'Mandy Fleming', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608231104.287_megan.jpg', '2020-06-27 03:41:55'),
(10, 'Conner Delaney', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/872/fff/?text=user10', '2020-10-15 12:50:38'),
(11, '', 'ham', 'ham@ham', '79af0c177db2ee64b7301af6e1d53634', 'https://via.placeholder.com/400?text=USER', '2020-12-09 20:04:11'),
(12, '', 'wilson', 'designs@wirebgraphics.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400?text=USER', '2020-12-17 02:31:39'),
(13, '', 'Ramey', 'ramey@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608180437.9374_iris.jpg', '2020-12-17 04:21:03'),
(14, '', 'Archer51', 'Archer51@gmail.com', 'adb831a7fdd83dd1e2a309ce7591dff8', 'https://via.placeholder.com/400?text=USER', '2020-12-17 04:21:34'),
(15, '', 'wbarrios', 'graphicfactory@comcast.net', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400?text=USER', '2020-12-17 18:58:29'),
(16, '', 'Pedro', 'pedro@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608235871.7949_george.jpg', '2020-12-17 19:50:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
