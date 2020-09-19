-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2020 at 07:34 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_jobs`
--

CREATE TABLE `applied_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `register_id` int(10) UNSIGNED NOT NULL,
  `dates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applied_jobs`
--

INSERT INTO `applied_jobs` (`id`, `employee_id`, `register_id`, `dates`, `created_at`, `updated_at`) VALUES
(11, 9, 7, '2020/09/19', '2020-09-19 10:19:52', '2020-09-19 10:19:52'),
(12, 9, 8, '2020/09/19', '2020-09-19 10:20:35', '2020-09-19 10:20:35'),
(13, 9, 6, '2020/09/19', '2020-09-19 10:20:39', '2020-09-19 10:20:39'),
(14, 9, 7, '2020/09/19', '2020-09-19 11:06:49', '2020-09-19 11:06:49'),
(15, 5, 6, '2020/09/19', '2020-09-19 11:12:29', '2020-09-19 11:12:29'),
(16, 5, 7, '2020/09/19', '2020-09-19 11:12:31', '2020-09-19 11:12:31'),
(17, 5, 8, '2020/09/19', '2020-09-19 11:12:33', '2020-09-19 11:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `company_first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_business_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_first_name`, `company_last_name`, `company_business_name`, `company_email`, `company_password`, `created_at`, `updated_at`) VALUES
(1, 'dsd', 'sd', 'sd', 'sds', 'sds', NULL, NULL),
(2, 'asax', 'zxzsas', 'saawqw', 'asaaaaaaaaa', 'asa', NULL, NULL),
(3, 'Brac', 'Brac IT Services', 'Brac IT Services', 'brac@gmail.com', 'brac08', NULL, NULL),
(4, 'AIUB', 'aiub ', 'AIUB EDU', 'aiub@gmail.com', 'aiub08', NULL, NULL),
(5, 'namespace', 'It', 'namespace', 'namespace@gmail.com', 'namespace08', '2020-09-19 07:14:46', '2020-09-19 07:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(10) UNSIGNED NOT NULL,
  `employee_first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_skills` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_first_name`, `employee_last_name`, `employee_email`, `employee_password`, `image_path`, `resume_path`, `employee_skills`, `created_at`, `updated_at`) VALUES
(1, 'asa', 'asa', 'asa', 'asa', 'asa', 'asa', 'asa', NULL, NULL),
(3, 'ada', 'as', 'asaasa', 'as', 'as', 'asa', 'as', NULL, NULL),
(4, 'Tonmoy', 'Saha', 'tonmoy@gmail08.com', 'tonmoy08', '', '', 'php,java', NULL, NULL),
(5, 'Rhaul', 'saha', 'rahul@gmail.com', 'rahul08', 'asa', 'asa', 'ad', NULL, '2020-09-19 02:05:03'),
(6, 'Avro', 'saha', 'avro@gmail.com', 'avro08', '', '', '', NULL, NULL),
(7, 'Sunny', 'Sangga', 'sunny@gmail.com', 'suunny08', '', '', '', NULL, NULL),
(8, 'aasa', 'asa', 'sasa', '$2y$10$R01KKWUrR64o9bg7SNq2MugWjdQc/JBG/Pded2SZsyLpavhO5nyM.', '', '', '', '2020-09-19 07:03:34', '2020-09-19 07:03:34'),
(9, 'sanny', 'sanny', 'sanny@gmail.com', 'sanny', '1919804488.JPG', '1155906871.pdf', 'php', '2020-09-19 07:03:54', '2020-09-19 08:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_registers`
--

CREATE TABLE `job_registers` (
  `register_id` int(10) UNSIGNED NOT NULL,
  `job_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_registers`
--

INSERT INTO `job_registers` (`register_id`, `job_title`, `job_description`, `salary`, `location`, `country`, `company_id`, `created_at`, `updated_at`) VALUES
(6, 'SOftware Engineer', 'Develop software', 2000, 'Dhaka', 'BD', 3, NULL, NULL),
(7, 'Lecturer', 'lecturer to teach', 20000, 'Dhaka', 'BD', 4, NULL, NULL),
(8, 'Software Engineer', 'you need to know about all', 20000, 'Dahak', 'BD', 3, '2020-09-19 09:35:55', '2020-09-19 09:35:55');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_18_161313_create_companies_table', 1),
(5, '2020_09_18_161912_create_employees_table', 1),
(6, '2020_09_18_162045_create_job_registers_table', 1),
(7, '2020_09_18_162109_create_applied_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applied_jobs_employee_id_foreign` (`employee_id`),
  ADD KEY `applied_jobs_register_id_foreign` (`register_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `companies_company_email_unique` (`company_email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `employees_employee_email_unique` (`employee_email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `job_registers`
--
ALTER TABLE `job_registers`
  ADD PRIMARY KEY (`register_id`),
  ADD KEY `job_registers_company_id_foreign` (`company_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_registers`
--
ALTER TABLE `job_registers`
  MODIFY `register_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  ADD CONSTRAINT `applied_jobs_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applied_jobs_register_id_foreign` FOREIGN KEY (`register_id`) REFERENCES `job_registers` (`register_id`) ON DELETE CASCADE;

--
-- Constraints for table `job_registers`
--
ALTER TABLE `job_registers`
  ADD CONSTRAINT `job_registers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
