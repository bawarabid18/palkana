-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 01:48 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palkana`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ku_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `en_name`, `ar_name`, `ku_name`, `created_at`, `updated_at`) VALUES
(7, 'Electrical', 'kahrabaee', 'کارەبایی', '2021-02-03 07:41:24', '2021-02-03 07:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Bawar Abid Abdalla', 'bawar_abid@yahoo.com', 'post with id', 'sdasdasdas', '2021-02-05 10:32:44', '2021-02-05 10:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ku_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ku_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fileName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `en_position`, `ar_position`, `ku_position`, `email`, `mobile`, `en_description`, `ar_description`, `ku_description`, `fileName`, `created_at`, `updated_at`) VALUES
(24, 'Bawar Abid Abdalla', 'Manager', 'مدیر', 'بەڕێوربەر', 'bawar_abid@yahoo.com', '07701903303', 'Good', 'زین', 'باش1', '1612351220.jpg', '2021-02-03 08:20:20', '2021-02-03 08:30:21'),
(26, 'Asiacell', 'dsa', 'sad', 'sadasdas', 'bawar_abid@yahoo.com', '07701903303', 'sadsa', 'asdasdasdsa', 'dasdas', '1612351920.webp', '2021-02-03 08:32:00', '2021-02-03 08:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `mobile`, `email`, `age`, `gender`, `address`, `fileName`, `created_at`, `updated_at`) VALUES
(2, 'Bawar Abid Abdalla', '07701903303', 'bawar_abid@yahoo.com', 'A', 'male', '98,126, Zargata', '1612457914.pdf', '2021-02-04 13:58:34', '2021-02-04 13:58:34'),
(3, 'Zhyar Abdulla Jamal', '18724867', 'jshd', '22', 'female', '98,126, Zargata', '1612461747.pdf', '2021-02-04 15:02:28', '2021-02-04 15:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_01_30_195755_create_categories_table', 1),
(2, '2021_02_01_102527_create_settings_table', 2),
(3, '2021_02_01_151515_create_employees_table', 3),
(4, '2021_02_04_090955_create_contacts_table', 4),
(5, '2021_02_04_162209_create_jobs_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ar_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ku_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_about` longtext COLLATE utf8mb4_unicode_ci,
  `ar_about` longtext COLLATE utf8mb4_unicode_ci,
  `ku_about` longtext COLLATE utf8mb4_unicode_ci,
  `en_chairmanMessage` longtext COLLATE utf8mb4_unicode_ci,
  `ar_chairmanMessage` longtext COLLATE utf8mb4_unicode_ci,
  `ku_chairmanMessage` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `mobile_one`, `mobile_two`, `mobile_three`, `en_address`, `ar_address`, `ku_address`, `facebook`, `instagram`, `linkedin`, `twitter`, `youtube`, `email`, `en_about`, `ar_about`, `ku_about`, `en_chairmanMessage`, `ar_chairmanMessage`, `ku_chairmanMessage`, `created_at`, `updated_at`) VALUES
(1, '07701903303', '07701903304', '07701903305', '98,126, Zargata', 'زرکت', 'زەرگەتە', 'Facebook', 'Instagram', 'LinkedIn', 'Twitter', 'Youtube', 'palkana@palkana.com', 'We are', 'نحن', 'ئێمە', 'Head Master', 'الریس', 'سەرۆک', NULL, '2021-02-01 08:41:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
