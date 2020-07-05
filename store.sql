-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 07:47 AM
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
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(10) NOT NULL,
  `totalharga` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baskets`
--

INSERT INTO `baskets` (`id`, `transaksi`, `customer`, `item`, `jumlah`, `totalharga`, `created_at`, `updated_at`) VALUES
(9, '202007040721', '1', '1', 2, 150000, '2020-07-04 05:15:59', '2020-07-04 05:15:59'),
(10, '202007040721', '1', '4', 2, 150000, '2020-07-04 05:18:03', '2020-07-04 05:18:03'),
(12, '202007050446', '4', '1', 2, 150000, '2020-07-04 21:47:29', '2020-07-04 21:47:29'),
(13, '202007050443', '1', '1', 5, 150000, '2020-07-04 22:10:32', '2020-07-04 22:10:32'),
(18, '202007050443', '1', '1', 1, 150000, '2020-07-04 22:16:24', '2020-07-04 22:16:24'),
(19, '202007050443', '1', '1', 3, 450000, '2020-07-04 22:43:51', '2020-07-04 22:43:51');

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
(1, 'Vino', 'vino@yahoo.com', 'Bekasi', 'qwertyuio', 15, '2020-07-03 23:34:10', '2020-07-04 20:43:10'),
(2, 'Vina', 'vina@gmail.com', 'Cibitung', 'qwertyuio', 15, '2020-07-03 23:35:47', '2020-07-04 20:36:47'),
(3, 'Vivin', 'vivin@gmail.com', 'Tangerang', 'qwertyuio', 20, '2020-07-03 23:36:17', '2020-07-03 23:36:17'),
(6, 'Vinda', 'vinda@yahoo.com', 'Depok', 'qwertyuio', 10, '2020-07-03 23:37:09', '2020-07-03 23:37:09'),
(11, 'Setya', 'setya@gmail.com', 'Bekasi', 'qwertyuio', 15, '2020-07-04 20:49:44', '2020-07-04 20:49:44'),
(12, 'Vian', 'vian@yahoo.com', 'Bekasi', 'qwertyuio', 10, '2020-07-04 20:51:12', '2020-07-04 20:51:12'),
(13, 'Vivit', 'vivit@gmail.com', 'Jaksel', 'qwertyuio', 15, '2020-07-04 22:38:30', '2020-07-04 22:38:30');

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
(1, 'Flash Disk 64 GB', 150000, 3, '2020-07-03 16:28:15', '2020-07-03 16:28:15'),
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
(8, '2020_07_04_064734_create_transactions_table', 6);

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
  `idtransaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalharga` int(10) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`idtransaction`, `customer`, `totalharga`, `status`, `created_at`, `updated_at`) VALUES
('202007040721', '2', 0, 'BelumLunas', '2020-07-04 00:21:51', '2020-07-04 00:21:51'),
('202007050443', '1', 0, 'Belum Lunas', '2020-07-04 21:43:21', '2020-07-04 21:43:21'),
('202007050445', '3', 0, 'Belum Lunas', '2020-07-04 21:45:25', '2020-07-04 21:45:25'),
('202007050446', '4', 0, 'Belum Lunas', '2020-07-04 21:46:49', '2020-07-04 21:46:49'),
('202007050507', '1', 0, 'Belum Lunas', '2020-07-04 22:07:43', '2020-07-04 22:07:43'),
('202007050508', '1', 0, 'Belum Lunas', '2020-07-04 22:08:05', '2020-07-04 22:08:05');

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
  ADD PRIMARY KEY (`idtransaction`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
