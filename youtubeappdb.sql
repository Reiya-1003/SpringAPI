-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 28, 2022 at 04:48 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtubeapp`
--


use heroku_1d37d2ad711cf8f;
-- --------------------------------------------------------

--
-- Table structure for table `app`
--


CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `name`, `address`) VALUES
(1, 'test', 'test'),
(2, 'test2', 'test2'),
(3, 'test3', 'test3'),
(4, 'reacttest', 'test'),
(5, 'reacttest2', '2test'),
(6, 'lasttest', 'lasttest');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_MODERATOR'),
(3, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `youtubeid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `youtubeid`) VALUES
(1, 'mod@reya.com', '$2a$10$t.3O6mIOv0O5RD4PWKMR5e7zvtrFUWCe6VVfyAn1ATBpgXfx6XlUS', 'mod', NULL),
(2, 'reiya.nico66@gmail.com', '$2a$10$UVgVIOBG/xiQQpR1Wn7Fiezlf/UCOwP2BOZWKV5G3Jzv2EZ1m6YVa', 'reiyatest', NULL),
(3, 'test@mail.com', '$2a$10$M/nuee8KrccSoUnnNwbmEOAMKn1N2OkORy8qXlHRqf42UADYAJYmS', 'test', NULL),
(4, 'test2@dede.com', '$2a$10$O2CKGuiSjULKLLW.PA6JreVGNnoonCHCNssjp0tqbrhTXi90Qbql2', 'test2', NULL),
(5, 'reiya@gmail.com', '$2a$10$qLZCFHLBfxXt8HER3m0GH.uwoSGtPdfWYVyHoWKf/sfA2nYo1D/FS', 'reiyachannel', 'UC9I8LRzBVxL9YO7t1_u5esw'),
(6, '', '$2a$10$ZSOTVpIw0RWDYlKac9CVMe1BHUHI5nbYJPSHY6yJZTX207a0KVplS', '', ''),
(7, 'saffafa', '$2a$10$NM2U3wpKZMVv4L.mbixAc.XBRB3DygIxzY.FIbpqzRzVxKe1KbEb6', 'sadfasa', 'faadadf'),
(8, 'sample@sample.com', '$2a$10$msVwjHviBxYtkQm3LLpRY.HGKT3NTEWcD17RNkGjQXxe4U8N77aLq', 'playlist japan', 'UCmRo7efBiJXHLMdgRiOLA5g');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  ADD UNIQUE KEY `UKsf67vyffv14eii2jxpqj1j34x` (`youtubeid`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
