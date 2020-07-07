-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 01:47 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `baskets`
--

CREATE TABLE `baskets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(10) NOT NULL,
  `totalharga` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baskets`
--

INSERT INTO `baskets` (`id`, `transaksi`, `item`, `jumlah`, `totalharga`, `created_at`, `updated_at`) VALUES
(37, '202007061652', 'Harddisk 2 TB', 1, 1000000, '2020-07-06 09:52:24', '2020-07-06 09:52:24'),
(38, '202007061652', 'Keyboard', 1, 100000, '2020-07-06 09:54:13', '2020-07-06 09:54:13'),
(39, '202007061713', 'Harddisk 2 TB', 1, 1000000, '2020-07-06 10:13:35', '2020-07-06 10:13:35'),
(40, '202007061714', 'Flash Disk 128 GB', 1, 150000, '2020-07-06 10:14:44', '2020-07-06 10:14:44'),
(41, '202007061714', 'Keyboard', 2, 200000, '2020-07-06 10:14:47', '2020-07-06 10:14:47'),
(42, '202007061715', 'Wireless Mouse', 3, 225000, '2020-07-06 10:15:22', '2020-07-06 10:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `alamat`, `password`, `point`, `created_at`, `updated_at`) VALUES
(2, 'Vina', 'vina@gmail.com', 'Cibitung', 'qwertyuio', 25, '2020-07-03 23:35:47', '2020-07-06 10:13:38'),
(3, 'Vivin', 'vivin@gmail.com', 'Tangerang', 'qwertyuio', 30, '2020-07-03 23:36:17', '2020-07-06 10:15:31'),
(6, 'Vinda', 'vinda@yahoo.com', 'Depok', 'qwertyuio', 10, '2020-07-03 23:37:09', '2020-07-03 23:37:09'),
(11, 'Setya', 'setya@gmail.com', 'Bekasi', 'qwertyuio', 15, '2020-07-04 20:49:44', '2020-07-04 20:49:44'),
(12, 'Vian', 'vian@yahoo.com', 'Bekasi', 'qwertyuio', 15, '2020-07-04 20:51:12', '2020-07-06 10:14:51'),
(13, 'Vivit', 'vivit@gmail.com', 'Jaksel', 'qwertyuio', 15, '2020-07-04 22:38:30', '2020-07-04 22:38:30'),
(14, 'Vino', 'vino@gmail.com', 'Cikarang', 'qwertyuio', 15, '2020-07-06 09:26:39', '2020-07-06 09:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(10) NOT NULL,
  `point` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `harga`, `point`, `created_at`, `updated_at`) VALUES
(1, 'Flash Disk 128 GB', 150000, 5, '2020-07-03 16:28:15', '2020-07-04 23:04:52'),
(5, 'Harddisk 2 TB', 1000000, 5, '2020-07-03 11:41:46', '2020-07-03 11:41:46'),
(6, 'Keyboard', 100000, 1, '2020-07-03 11:42:47', '2020-07-03 11:42:47'),
(7, 'Wireless Mouse', 75000, 2, '2020-07-03 11:55:35', '2020-07-03 13:33:55'),
(9, 'Speaker', 300000, 3, '2020-07-03 12:04:54', '2020-07-03 12:04:54'),
(10, 'Headset', 200000, 2, '2020-07-03 12:06:14', '2020-07-03 12:06:14'),
(11, 'monitor', 1000000, 8, '2020-07-03 12:11:18', '2020-07-03 12:11:18'),
(12, 'jam tangan', 200000, 2, '2020-07-03 12:18:30', '2020-07-03 12:18:30');

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2020_07_03_160612_tambah_kolom', 2),
(5, '2020_07_03_162045_create_items_table', 3),
(6, '2020_07_04_061607_create_customers_table', 4),
(7, '2020_07_04_064000_create_baskets_table', 5),
(8, '2020_07_04_064734_create_transactions_table', 6),
(9, '2020_07_06_142650_drop_column_basket', 7),
(10, '2020_07_06_153212_add_column_id_transaction', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalharga` int(10) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer`, `totalharga`, `status`, `created_at`, `updated_at`) VALUES
('202007061713', '2', 1000000, 'Lunas', '2020-07-06 10:13:24', '2020-07-06 10:13:38'),
('202007061714', '12', 350000, 'Lunas', '2020-07-06 10:14:08', '2020-07-06 10:14:51'),
('202007061715', '3', 225000, 'Lunas', '2020-07-06 10:15:08', '2020-07-06 10:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `alamat`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `point`) VALUES
(1, 'Tenny', 'tenny_nahsari@yahoo.com', 'Buaran 1 no 56 Jaktim', NULL, '$2y$10$0qYpSv2Apcs97EGFFpCxeuUcKZuLK65SPJ7sgP0PdEpPNJcrYZS1K', NULL, '2020-07-03 07:54:33', '2020-07-03 07:54:33', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
