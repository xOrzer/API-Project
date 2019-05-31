-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2019 at 11:52 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `magic`
--

CREATE TABLE `magic` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ccm` int(10) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magic`
--

INSERT INTO `magic` (`id`, `nom`, `type`, `ccm`, `created_at`) VALUES
(1, 'Néoforme', 'Rituel', 2, '2019-03-26 18:10:21'),
(2, 'Boucher de la Horde de l effroi', 'Créature', 2, '2019-03-26 18:10:37'),
(3, 'Véto de Dovin', 'Éphémère', 2, '2019-03-26 18:11:01'),
(4, 'Mortification', 'Éphémère', 3, '2019-05-31 11:04:50'),
(5, 'Bourgeonnement de mort', 'Éphémère', 4, '2019-05-31 11:44:36'),
(6, 'Sauvagerie d\'Angrath', 'Rituel', 2, '2019-05-31 11:45:00'),
(8, 'Diable du carnage', 'Créature', 3, '2019-05-31 11:46:32'),
(9, 'Dovin, autorité du contrôle', 'Planeswalker', 3, '2019-05-31 11:47:09'),
(10, 'Victimes de la guerre', 'Rituel', 6, '2019-05-31 11:47:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `magic`
--
ALTER TABLE `magic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `magic`
--
ALTER TABLE `magic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
