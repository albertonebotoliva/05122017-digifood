-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2017 at 11:03 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digifood`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` bigint(10) NOT NULL,
  `user_id` bigint(10) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `user_id`, `token`, `expires`) VALUES
(1, 1, '123', 1602122485);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`) VALUES
(1, 'Pasta', 10),
(2, 'Pizza', 20),
(3, 'Paella', 30),
(4, 'Sangria', 40);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` bigint(10) NOT NULL,
  `resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `method` enum('GET','POST','PUT','DELETE') COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `format` enum('JSON') COLLATE utf8_unicode_ci NOT NULL,
  `query_field` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `resource`, `method`, `action`, `format`, `query_field`) VALUES
(1, 'users', 'GET', 'getbyid', 'JSON', 'id'),
(6, 'menu', 'GET', 'list', 'JSON', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'Alberto', 'albertonebotoliva@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
