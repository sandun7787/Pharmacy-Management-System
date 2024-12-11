-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 04:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drugs` varchar(255) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `discount` decimal(2,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `drugs`, `amount`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Paracetamol', 100.00, 0.99, '2024-12-01 04:30:00', '2024-12-01 04:30:00'),
(2, 'Ibuprofen', 200.00, 0.99, '2024-12-01 04:35:00', '2024-12-01 04:35:00'),
(3, 'Amoxicillin', 150.00, 0.99, '2024-12-01 04:40:00', '2024-12-01 04:40:00'),
(4, 'Ciprofloxacin', 250.00, 0.99, '2024-12-01 04:45:00', '2024-12-01 04:45:00'),
(5, 'Metformin', 300.00, 0.99, '2024-12-01 04:50:00', '2024-12-01 04:50:00'),
(6, 'Aspirin', 180.00, 0.99, '2024-12-01 04:55:00', '2024-12-01 04:55:00'),
(7, 'Clarithromycin', 120.00, 0.99, '2024-12-01 05:00:00', '2024-12-01 05:00:00'),
(8, 'Amlodipine', 220.00, 0.99, '2024-12-01 05:05:00', '2024-12-01 05:05:00'),
(9, 'Omeprazole', 500.00, 0.99, '2024-12-01 05:10:00', '2024-12-01 05:10:00'),
(10, 'Lisinopril', 600.00, 0.99, '2024-12-01 05:15:00', '2024-12-01 05:15:00'),
(11, 'Cough Syrup', 100.00, 0.99, '2024-12-01 05:20:00', '2024-12-01 05:20:00'),
(12, 'Cetirizine', 130.00, 0.99, '2024-12-01 05:25:00', '2024-12-01 05:25:00'),
(13, 'Doxycycline', 170.00, 0.99, '2024-12-01 05:30:00', '2024-12-01 05:30:00'),
(14, 'Losartan', 350.00, 0.99, '2024-12-01 05:35:00', '2024-12-01 05:35:00'),
(15, 'Insulin', 700.00, 0.99, '2024-12-01 05:40:00', '2024-12-01 05:40:00'),
(16, 'Furosemide', 150.00, 0.99, '2024-12-01 05:45:00', '2024-12-01 05:45:00'),
(17, 'Hydrochlorothiazide', 190.00, 0.99, '2024-12-01 05:50:00', '2024-12-01 05:50:00'),
(18, 'Warfarin', 250.00, 0.99, '2024-12-01 05:55:00', '2024-12-01 05:55:00'),
(19, 'Vitamin D', 300.00, 0.99, '2024-12-01 06:00:00', '2024-12-01 06:00:00'),
(20, 'Vitamin C', 120.00, 0.99, '2024-12-01 06:05:00', '2024-12-01 06:05:00'),
(21, 'nd', 999.99, 0.99, '2024-12-11 08:26:06', '2024-12-11 08:26:06'),
(22, 'nd', 999.99, 0.99, '2024-12-11 09:23:39', '2024-12-11 09:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_07_20_192859_create_users_table', 1),
(3, '2022_07_28_183506_create_precription_models_table', 1),
(4, '2022_07_29_174216_create_medicines_table', 1),
(5, '2022_08_02_115441_add_logo_to_users_table', 1),
(6, '2022_08_05_040801_create_quaotations_table', 1),
(7, '2022_08_06_160302_create_prepared_quotations_table', 1),
(8, '2022_08_07_114903_add_status_to_quaotations_table', 1),
(9, '2024_12_11_081949_add_confirm_to_precription_models', 2),
(10, '2024_12_11_083153_add_column_to_prescriptions_table', 3),
(11, '2024_12_11_094621_add_confirm_column_to_precription_models', 4);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `precription_models`
--

CREATE TABLE `precription_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `image5` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirm` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `precription_models`
--

INSERT INTO `precription_models` (`id`, `note`, `address`, `image1`, `image2`, `image3`, `image4`, `image5`, `user_id`, `created_at`, `updated_at`, `confirm`) VALUES
(1, 'New', '30/g galamduwawathha kundasalya', 'images/1733913810453.jpg', 'images/1733913810511.jpg', 'images/1733913810578.jpg', 'images/1733913810275.jpg', 'images/1733913810993.jpg', 2, '2024-12-11 05:13:30', '2024-12-11 05:13:30', 1),
(2, 'new 1', 'testing 1234567892', 'images/1733914837811.jpg', 'images/1733914837363.jpg', 'images/1733914837726.jpg', 'images/1733914837624.jpg', 'images/1733914837863.jpg', 2, '2024-12-11 05:30:37', '2024-12-11 05:30:37', 1),
(3, 'new 1', '30/G GALMADUW WATHTHA KUNDASALAYA', 'images/1733922838341.jpg', 'images/1733922838595.jpg', 'images/1733922838274.jpg', 'images/1733922838248.jpg', 'images/1733922838515.jpg', 5, '2024-12-11 07:43:58', '2024-12-11 07:43:58', 1),
(4, 'update', 'testing 1234567892', 'images/173392804568.jpg', 'images/1733928045227.jpg', 'images/17339280456.jpg', 'images/1733928045175.jpg', 'images/1733928045115.jpg', 2, '2024-12-11 09:10:45', '2024-12-11 09:10:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prepared_quotations`
--

CREATE TABLE `prepared_quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quaotations`
--

CREATE TABLE `quaotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drugs` bigint(20) UNSIGNED NOT NULL,
  `quanity` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(5,2) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quaotations`
--

INSERT INTO `quaotations` (`id`, `drugs`, `quanity`, `amount`, `order_id`, `user_id`, `total`, `created_at`, `updated_at`, `status`) VALUES
(1, 15, 56, 999.99, 2, 2, NULL, '2024-12-11 08:04:57', '2024-12-11 08:04:57', 1),
(2, 14, 3, 999.99, 2, 2, NULL, '2024-12-11 08:05:05', '2024-12-11 08:05:05', 1),
(3, 16, 6, 900.00, 1, 2, NULL, '2024-12-11 09:11:23', '2024-12-11 09:11:23', 2),
(4, 15, 6, 999.99, 1, 2, NULL, '2024-12-11 09:11:29', '2024-12-11 09:11:29', 2),
(5, 17, 6, 999.99, 1, 2, NULL, '2024-12-11 09:11:34', '2024-12-11 09:11:34', 2),
(6, 16, 89, 999.99, 3, 5, NULL, '2024-12-11 09:15:31', '2024-12-11 09:15:31', 0),
(7, 15, 45, 999.99, 3, 5, NULL, '2024-12-11 09:15:39', '2024-12-11 09:15:39', 0),
(8, 13, 89, 999.99, 3, 5, NULL, '2024-12-11 09:15:49', '2024-12-11 09:15:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `dob`, `mobile_no`, `password`, `address`, `role`, `remember_token`, `created_at`, `updated_at`, `logo`) VALUES
(1, 'sandun earnasooreya', 'sandun@gmail.com', '2024-12-19', '0754794145', '$2y$10$6MDZHXMVuBP/24qYgq6Hwuqm8.r4ZCdp6bYHOblTC00IKmmLazm3K', '30/g galmaduwa waththa kundasalya', '0', NULL, '2024-12-11 00:09:50', '2024-12-11 00:09:50', NULL),
(2, 'Devika karunathilaka', 'devika@gmail.com', '2024-12-13', '0754794145', '$2y$10$PD96rBjkxgs8hqby4O5ooeDw2pymCkYFtMB5NZXkovikQPMHGGhUS', '30/G GALMADUW WATHTHA KUNDASALAYA', '0', NULL, '2024-12-11 00:39:07', '2024-12-11 00:39:07', NULL),
(3, 'SandunAdmin', 'SandunAdmin@gmail.com', '1987-06-09', '0754794145', '$2y$10$TzlAeonwWGsCHnBSZkEkbOqf54huZIttCXeP0AbEDgWe6zn7gvyLG', '30/G GALMADUW WATHTHA KUNDASALAYA', '1', NULL, '2024-12-11 02:18:24', '2024-12-11 09:23:20', NULL),
(5, 'Hashini', 'hashini@gmail.com', '2024-12-18', '0754794149', '$2y$10$kDPqsiZkiUMVb.MlO9E6zO.Lm7Eed5NKHGYQCchyFIi4hBWSI0zSe', '30/G GALMADUW WATHTHA KUNDASALAYA', '0', NULL, '2024-12-11 07:42:11', '2024-12-11 07:44:26', NULL),
(6, 'sandun earnasooreya', 'Sandun1@gmail.com', '2024-12-05', '0754794145', '$2y$10$GcblgVMPlLxIS8RJYCjN0eubsOSIDiOmtRUjbSzH12ghfVzPcYC02', '30/G GALMADUW WATHTHA KUNDASALAYA', '0', NULL, '2024-12-11 09:28:02', '2024-12-11 09:28:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `precription_models`
--
ALTER TABLE `precription_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `precription_models_user_id_foreign` (`user_id`);

--
-- Indexes for table `prepared_quotations`
--
ALTER TABLE `prepared_quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quaotations`
--
ALTER TABLE `quaotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quaotations_drugs_foreign` (`drugs`),
  ADD KEY `quaotations_order_id_foreign` (`order_id`),
  ADD KEY `quaotations_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `precription_models`
--
ALTER TABLE `precription_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prepared_quotations`
--
ALTER TABLE `prepared_quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quaotations`
--
ALTER TABLE `quaotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `precription_models`
--
ALTER TABLE `precription_models`
  ADD CONSTRAINT `precription_models_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quaotations`
--
ALTER TABLE `quaotations`
  ADD CONSTRAINT `quaotations_drugs_foreign` FOREIGN KEY (`drugs`) REFERENCES `medicines` (`id`),
  ADD CONSTRAINT `quaotations_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `precription_models` (`id`),
  ADD CONSTRAINT `quaotations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
