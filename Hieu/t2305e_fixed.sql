-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 12:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t2305e_fixed`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id_artist` int(10) NOT NULL,
  `name_artist` varchar(50) NOT NULL,
  `email_artist` varchar(50) NOT NULL,
  `tel_artist` varchar(20) NOT NULL,
  `view_artist` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artists_sessions`
--

CREATE TABLE `artists_sessions` (
  `id_session` int(10) NOT NULL,
  `title_session` varchar(255) NOT NULL,
  `content_session` text NOT NULL,
  `price_session` double(10,2) NOT NULL,
  `view_session` int(20) NOT NULL,
  `id_artist` int(10) NOT NULL,
  `id_service` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id_bill` int(10) NOT NULL,
  `date_bill` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_bills`
--

CREATE TABLE `detail_bills` (
  `name_customer` varchar(50) NOT NULL,
  `tel_customer` varchar(20) NOT NULL,
  `email_customer` varchar(50) NOT NULL,
  `location_customer` varchar(255) NOT NULL,
  `number_session` int(20) NOT NULL,
  `time_detail` datetime NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_session` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `makeup_services`
--

CREATE TABLE `makeup_services` (
  `id_makeup_services` int(10) NOT NULL,
  `name_makeup_service` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id_service` int(10) NOT NULL,
  `name_service` varchar(50) NOT NULL,
  `id_makeup_service` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id_artist`);

--
-- Indexes for table `artists_sessions`
--
ALTER TABLE `artists_sessions`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `LK_artist_session_artists` (`id_artist`),
  ADD KEY `LK_artist_session_services` (`id_service`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_bill`);

--
-- Indexes for table `detail_bills`
--
ALTER TABLE `detail_bills`
  ADD KEY `LK_detail_bills` (`id_bill`),
  ADD KEY `LK_detail_bills_sessions` (`id_session`);

--
-- Indexes for table `makeup_services`
--
ALTER TABLE `makeup_services`
  ADD PRIMARY KEY (`id_makeup_services`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `LK_services_makeup_services` (`id_makeup_service`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id_artist` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artists_sessions`
--
ALTER TABLE `artists_sessions`
  MODIFY `id_session` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id_bill` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `makeup_services`
--
ALTER TABLE `makeup_services`
  MODIFY `id_makeup_services` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artists_sessions`
--
ALTER TABLE `artists_sessions`
  ADD CONSTRAINT `LK_artist_session_artists` FOREIGN KEY (`id_artist`) REFERENCES `artists` (`id_artist`),
  ADD CONSTRAINT `LK_artist_session_services` FOREIGN KEY (`id_service`) REFERENCES `services` (`id_service`);

--
-- Constraints for table `detail_bills`
--
ALTER TABLE `detail_bills`
  ADD CONSTRAINT `LK_detail_bills` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id_bill`),
  ADD CONSTRAINT `LK_detail_bills_sessions` FOREIGN KEY (`id_session`) REFERENCES `artists_sessions` (`id_session`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `LK_services_makeup_services` FOREIGN KEY (`id_makeup_service`) REFERENCES `makeup_services` (`id_makeup_services`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
