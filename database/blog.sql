-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 07:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_codes`
--

CREATE TABLE `company_codes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `code_1` varchar(4) DEFAULT NULL,
  `code_2` varchar(4) DEFAULT NULL,
  `code_3` varchar(4) DEFAULT NULL,
  `code_4` varchar(4) DEFAULT NULL,
  `code_5` varchar(4) DEFAULT NULL,
  `code_6` varchar(4) DEFAULT NULL,
  `code_7` varchar(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_codes`
--

INSERT INTO `company_codes` (`id`, `name`, `code_1`, `code_2`, `code_3`, `code_4`, `code_5`, `code_6`, `code_7`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jazz', '300', '301', '302', '303', '304', '305', '306', '2021-01-20 12:51:09', '2021-01-20 12:51:09', NULL),
(2, 'Zong', '310', '311', '312', '313', '314', '315', '316', '2021-01-20 12:51:09', '2021-01-20 12:51:09', NULL),
(3, 'Ufone', '330', '331', '332', '333', '334', '335', '336', '2021-01-20 12:51:09', '2021-01-20 12:51:09', NULL),
(4, 'Telenor', '340', '341', '342', '343', '344', '345', '346', '2021-01-20 12:51:09', '2021-01-20 12:51:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_codes`
--
ALTER TABLE `company_codes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_codes`
--
ALTER TABLE `company_codes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
