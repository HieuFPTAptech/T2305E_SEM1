-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2023 at 06:56 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
  `id_artist` int NOT NULL,
  `name_artist` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `img_artist` text COLLATE utf8mb4_general_ci NOT NULL,
  `tel_artist` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `rating_artist` double(10,1) NOT NULL,
  `yearExp_artist` int NOT NULL,
  `session_artist` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id_artist`, `name_artist`, `img_artist`, `tel_artist`, `rating_artist`, `yearExp_artist`, `session_artist`) VALUES
(1, 'Seraphina Starling', '1.png', '555-1234-5678', 4.0, 5, 24),
(2, 'Isabella Bloom', '2.png', '555-9876-5432', 4.0, 6, 34),
(3, 'Luna Valencia', '3.png', '555-2468-1357', 3.0, 2, 6),
(4, 'Amara Frost', '4.png', '555-8642-1973', 3.5, 2, 9),
(5, 'Celeste Rainwater', '5.png', '555-3197-6248', 4.5, 7, 35),
(6, 'Nova Harper', '6.png', '555-7524-9861', 5.0, 8, 40),
(7, 'Esme Evergreen', '7.png', '555-4826-7039', 4.5, 6, 30),
(8, 'Zara Mirage', '8.png', '555-9703-5826', 3.5, 3, 10),
(9, 'Ophelia Moonstone', '9.png', '555-6158-2047', 4.5, 5, 28),
(10, 'Indigo Skylar', '10.png', '555-8392-1764', 5.0, 6, 39),
(11, 'Aurora Serenade', '11.png', '555-4671-9308', 4.0, 5, 27),
(12, 'Ember Raye', '12.png', '555-8024-1563', 3.5, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `artists_services`
--

CREATE TABLE `artists_services` (
  `id_artist` int NOT NULL,
  `id_makeup_service` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists_services`
--

INSERT INTO `artists_services` (`id_artist`, `id_makeup_service`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 1),
(2, 4),
(3, 1),
(3, 5),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 4),
(6, 1),
(6, 3),
(7, 3),
(7, 4),
(8, 4),
(8, 5),
(9, 1),
(9, 2),
(10, 1),
(10, 3),
(10, 5),
(11, 1),
(11, 2),
(12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `makeup_services`
--

CREATE TABLE `makeup_services` (
  `id_makeup_services` int NOT NULL,
  `name_makeup_service` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `detail_makeup_service` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makeup_services`
--

INSERT INTO `makeup_services` (`id_makeup_services`, `name_makeup_service`, `price`, `detail_makeup_service`) VALUES
(1, 'Bridal Make up', 5000.00, 'At Hazel, we understand that your wedding day is one of the most significant moments of your life, and we are committed to ensuring you look and feel absolutely stunning on this special occasion. Our skilled and passionate makeup artists specialize in creating breathtaking bridal looks that enhance your natural beauty and complement your unique style.\r\n Before your big day, we offer a personalized consultation to discuss your vision, preferences, and any specific themes or colors you have in mind. This allows us to tailor your bridal makeup to suit your individual features and the overall aesthetic of your wedding.'),
(2, 'Groom Make Up', 1000.00, 'Welcome to Hazel Groom Services, where we understand the importance of every detail on your special day. Our groom makeup services are tailored to enhance your natural features, ensuring you look and feel confident as you take that walk down the aisle.\r\nOur journey begins with a personalized consultation. We take the time to understand your preferences, skin type, and any specific concerns you may have. This helps us create a customized makeup plan that aligns with your individual style.'),
(3, 'Family Make Up', 5000.00, 'Welcome to Hazel Family Make-Up Services, where we specialize in creating timeless and cohesive looks for your entire family. From the radiant glow of the bride\'s mother to the charming innocence of the flower girl, our skilled makeup artists are dedicated to enhancing the beauty of every family member.\r\nOur process begins with a comprehensive consultation to understand the unique preferences and styles of each family member. Whether it\'s the mother of the bride, bridesmaids, or adorable flower girls, we tailor our approach to suit individual tastes.'),
(4, 'Touch Up Services', 500.00, 'At Hazel Makeup Studio, we understand that your beauty deserves to be showcased at its best throughout the day or night. That\'s why we offer specialized Touch-Up Services to ensure your flawless look lasts from the first photo to the last dance. Our talented makeup artists are committed to providing you with the ultimate beauty experience, and our Touch-Up Services are designed to keep you looking stunning from start to finish.\r\nEvery individual is unique, and so is their skin type and makeup preferences. Our makeup artists take the time to understand your skin and the look you desire, ensuring that the touch-up is tailored to enhance your natural beauty.'),
(5, 'Siders make up', 700.00, 'Welcome to the enchanting world of Hazel\'s Siders Makeup, where we believe in transforming faces into timeless works of art. Our skilled makeup artists are passionate about enhancing your unique features, bringing out your individuality with a touch of glamour and sophistication. Step into a realm where every stroke of the brush tells a story, and every detail matters.\r\nSiders Makeup takes pride in creating personalized looks that align with your personality, style, and the occasion. Whether you\'re aiming for a natural glow, a bold statement, or something in between, our artists craft a look that complements your features and reflects your essence.');

-- --------------------------------------------------------

--
-- Table structure for table `sample_works`
--

CREATE TABLE `sample_works` (
  `id_sample_work` int NOT NULL,
  `img_sample_work` text COLLATE utf8mb4_general_ci NOT NULL,
  `id_artist` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sample_works`
--

INSERT INTO `sample_works` (`id_sample_work`, `img_sample_work`, `id_artist`) VALUES
(1, '1.png', 1),
(2, '2.png', 1),
(3, '3.png', 1),
(4, '4.png', 1),
(5, '5.png', 1),
(6, '6.png', 1),
(7, '7.png', 2),
(8, '8.png', 2),
(9, '9.png', 2),
(10, '10.png', 2),
(11, '11.png', 2),
(12, '12.png', 2),
(13, '13.png', 3),
(14, '14.png', 3),
(15, '15.png', 3),
(16, '16.png', 3),
(17, '17.png', 3),
(18, '18.png', 3),
(19, '19.png', 4),
(20, '20.png', 4),
(21, '21.png', 4),
(22, '22.png', 4),
(23, '23.png', 4),
(24, '24.png', 4),
(25, '25.png', 5),
(26, '26.png', 5),
(27, '27.png', 5),
(28, '28.png', 5),
(29, '29.png', 5),
(30, '30.png', 5),
(31, '31.png', 6),
(32, '32.png', 6),
(33, '33.png', 6),
(34, '34.png', 6),
(35, '35.png', 6),
(36, '36.png', 6),
(37, '37.png', 7),
(38, '38.png', 7),
(39, '39.png', 7),
(40, '40.png', 7),
(41, '41.png', 7),
(42, '42.png', 7),
(43, '43.png', 8),
(44, '44.png', 8),
(45, '45.png', 8),
(46, '46.png', 8),
(47, '47.png', 8),
(48, '48.png', 8),
(49, '49.png', 9),
(50, '50.png', 9),
(51, '51.png', 9),
(52, '52.png', 9),
(53, '53.png', 9),
(54, '54.png', 9),
(55, '55.png', 10),
(56, '56.png', 10),
(57, '57.png', 10),
(58, '58.png', 10),
(59, '59.png', 10),
(60, '60.png', 10),
(61, '61.png', 11),
(62, '62.png', 11),
(63, '63.png', 11),
(64, '64.png', 11),
(65, '65.png', 11),
(66, '66.png', 11),
(67, '67.png', 12),
(68, '68.png', 12),
(69, '69.png', 12),
(70, '70.png', 12),
(71, '71.png', 12),
(72, '72.png', 12);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id_service` int NOT NULL,
  `name_service` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `price_service` double(10,2) NOT NULL,
  `detail_service` text COLLATE utf8mb4_general_ci NOT NULL,
  `id_makeup_service` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id_service`, `name_service`, `price_service`, `detail_service`, `id_makeup_service`) VALUES
(1, 'Matte', 1000.00, '', 1),
(2, 'High Definition', 5000.00, '', 1),
(3, 'Standard Bridal', 3000.00, '', 1),
(4, 'Attire', 2000.00, '', 3),
(5, 'Only Make Up', 500.00, '', 3),
(6, 'Hair Styling', 2000.00, '', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id_artist`);

--
-- Indexes for table `artists_services`
--
ALTER TABLE `artists_services`
  ADD KEY `LK_artist` (`id_artist`),
  ADD KEY `LK_makeup_service` (`id_makeup_service`);

--
-- Indexes for table `makeup_services`
--
ALTER TABLE `makeup_services`
  ADD PRIMARY KEY (`id_makeup_services`);

--
-- Indexes for table `sample_works`
--
ALTER TABLE `sample_works`
  ADD PRIMARY KEY (`id_sample_work`),
  ADD KEY `LK_artists_sample_works` (`id_artist`);

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
  MODIFY `id_artist` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `makeup_services`
--
ALTER TABLE `makeup_services`
  MODIFY `id_makeup_services` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sample_works`
--
ALTER TABLE `sample_works`
  MODIFY `id_sample_work` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artists_services`
--
ALTER TABLE `artists_services`
  ADD CONSTRAINT `LK_artist` FOREIGN KEY (`id_artist`) REFERENCES `artists` (`id_artist`),
  ADD CONSTRAINT `LK_makeup_service` FOREIGN KEY (`id_makeup_service`) REFERENCES `makeup_services` (`id_makeup_services`);

--
-- Constraints for table `sample_works`
--
ALTER TABLE `sample_works`
  ADD CONSTRAINT `LK_artists_sample_works` FOREIGN KEY (`id_artist`) REFERENCES `artists` (`id_artist`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `LK_services_makeup_services` FOREIGN KEY (`id_makeup_service`) REFERENCES `makeup_services` (`id_makeup_services`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
