-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2020 at 05:12 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravue`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `created_at`, `updated_at`, `password`) VALUES
(1, 'Krystal Wunsch Jr.', 'pfannerstill.ole@example.com', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(2, 'Kenya Hessel', 'ledner.santa@example.com', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(3, 'Everett Crooks', 'lind.modesto@example.net', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(4, 'Ms. Thora Kulas I', 'rempel.lillian@example.net', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(5, 'Vidal Rutherford II', 'plang@example.net', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(6, 'Judson Bayer IV', 'slockman@example.net', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(7, 'Catalina Fisher', 'white.margaret@example.org', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(8, 'Christophe Kohler', 'metz.ricardo@example.net', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(9, 'Sabrina Metz Sr.', 'alvis52@example.net', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(10, 'Dewitt Reilly', 'spencer.braxton@example.org', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(11, 'Mauricio Goyette', 'waino.oberbrunner@example.com', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(12, 'Prof. Carlos Deckow', 'mratke@example.net', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(13, 'Randi Boehm', 'demmerich@example.org', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(14, 'Cyril Willms', 'tobin31@example.net', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(15, 'Noah Hane Sr.', 'anais70@example.org', '2020-03-14 10:11:27', '2020-03-14 10:11:27', NULL),
(16, 'Andre Connelly', 'ward81@example.com', '2020-03-14 10:11:28', '2020-03-14 10:11:28', NULL),
(17, 'Jaylon Jaskolski I', 'hferry@example.net', '2020-03-14 10:11:28', '2020-03-14 10:11:28', NULL),
(18, 'Jaida Shanahan', 'greenholt.clark@example.org', '2020-03-14 10:11:28', '2020-03-14 10:11:28', NULL),
(19, 'Meda Carroll', 'toy.franco@example.com', '2020-03-14 10:11:28', '2020-03-14 10:11:28', NULL),
(20, 'Archibald Reinger', 'hansen.derek@example.org', '2020-03-14 10:11:28', '2020-03-14 10:11:28', NULL),
(21, 'Austin Emmerich', 'goldner.godfrey@example.org', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(22, 'Dr. Willy Stehr DVM', 'dschroeder@example.com', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(23, 'Tracey Kuhic', 'esther62@example.com', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(24, 'Kelsi Mosciski', 'flo.goodwin@example.net', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(25, 'Jessika Dietrich PhD', 'cole.delilah@example.net', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(26, 'Vella Stoltenberg Sr.', 'haleigh.pouros@example.net', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(27, 'Miss Fabiola Gerhold III', 'champlin.arden@example.net', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(28, 'Dr. Mariam Schneider III', 'keeling.quinten@example.com', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(29, 'Velma Turner', 'kreichel@example.org', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(30, 'Prof. Felicity Harber', 'izabella.larkin@example.net', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(31, 'Roy Nader', 'hintz.kaylah@example.org', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(32, 'Lindsey Christiansen DDS', 'hope90@example.org', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(33, 'Bertram Kassulke II', 'leilani.durgan@example.com', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(34, 'Dr. Tito Glover Jr.', 'candido14@example.net', '2020-03-14 10:11:29', '2020-03-14 10:11:29', NULL),
(35, 'Sienna Bergstrom', 'juanita64@example.com', '2020-03-14 10:11:30', '2020-03-14 10:11:30', NULL),
(38, 'Blaze Schmeler', 'ortiz.alaina@example.net', '2020-03-14 10:11:30', '2020-03-14 10:11:30', NULL),
(39, 'Bella Gottlieb', 'xauer@example.org', '2020-03-14 10:11:30', '2020-03-14 10:11:30', NULL),
(40, 'Demetris Kunze', 'vicente.collins@example.net', '2020-03-14 10:11:30', '2020-03-14 10:11:30', NULL),
(41, 'Brooklyn Thompson', 'isidro82@example.com', '2020-03-14 10:11:30', '2020-03-14 10:11:30', NULL),
(44, 'Prof. Franco Homenick III', 'yasmine.hills@example.com', '2020-03-14 10:11:30', '2020-03-14 10:11:30', NULL),
(45, 'Carmen Ornf', 'pcummerata@example.com', '2020-03-16 20:05:22', '2020-03-16 16:05:22', NULL),
(47, 'Maymie Welch', 'douglas.ila@example.net', '2020-03-14 10:11:31', '2020-03-14 10:11:31', NULL),
(48, 'Deron Hesseles', 'price.feil@example.com', '2020-03-16 15:51:50', '2020-03-16 11:51:50', NULL),
(49, 'Rebeka Considine', 'hertha.reinger@example.com', '2020-03-16 15:51:32', '2020-03-16 11:51:32', NULL),
(50, 'Eveline Wes', 'savanna.swaniawski@example.com', '2020-04-01 17:38:13', '2020-04-01 13:38:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
