-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 01:51 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pelapor`
--

CREATE TABLE `data_pelapor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_pelapor`
--

INSERT INTO `data_pelapor` (`id`, `name`, `user_id`, `alamat`, `jabatan`, `no_tlp`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, 'admin', 'admin', 888288812, NULL, NULL),
(3, 'cek', 3, 'cek', 'cek', 81112212212, '2022-08-17 23:33:12', '2022-08-17 23:33:12'),
(4, 'sadam', 4, 'sadam', 'lurah', 8119992888321, '2022-08-17 23:36:11', '2022-08-17 23:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_laporan`
--

CREATE TABLE `jenis_laporan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_laporan`
--

INSERT INTO `jenis_laporan` (`id`, `nama_jenis`, `created_at`, `updated_at`) VALUES
(1, 'jalan rusak update', '2022-08-17 23:46:33', '2022-08-17 23:50:55'),
(2, 'sampah', '2022-08-17 23:52:33', '2022-08-17 23:52:33'),
(3, 'cek', '2023-02-06 21:16:29', '2023-02-06 21:16:29'),
(4, 'sadam', '2023-02-06 21:16:30', '2023-02-06 21:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pelapor` bigint(20) UNSIGNED NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `tgl_lapor` date NOT NULL,
  `selesai_tgl` date NOT NULL,
  `status` enum('selesai','belum') COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `deskripsi`, `id_pelapor`, `id_jenis`, `tgl_lapor`, `selesai_tgl`, `status`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'sampah', 4, 1, '2022-08-18', '0000-00-00', 'belum', 'cek', NULL, NULL);

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
(4, '2022_07_09_152958_data_pelapor_table', 1),
(5, '2022_07_09_153057_create_laporan_table', 1),
(6, '2022_07_09_153131_create_jenis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','pelapor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin', '$2a$04$gTlxdoVDkeoEyEb/AEbj4eCta3rxtr14ZApqSK/eGGGRc1L7bWKIm', 'admin', NULL, NULL),
(3, 'cek@cek', '$2y$10$15Dyrc4ZZxtd3O7Pcm.Rguzf42.xCDo7Jt3RMiF8rMm4327KYcQfi', 'admin', '2022-08-17 23:33:12', '2022-08-17 23:33:12'),
(4, 'sadam@gmail.com', '$2y$10$qdgm3zD3k7BngelaLrJQtu11wYxYGGteUS4YIar10CmhLlbE9GDdS', 'pelapor', '2022-08-17 23:36:11', '2022-08-17 23:36:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pelapor`
--
ALTER TABLE `data_pelapor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_pelapor_user_id_foreign` (`user_id`);

--
-- Indexes for table `jenis_laporan`
--
ALTER TABLE `jenis_laporan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_laporan_nama_jenis_unique` (`nama_jenis`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_id_pelapor_foreign` (`id_pelapor`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `data_pelapor`
--
ALTER TABLE `data_pelapor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_laporan`
--
ALTER TABLE `jenis_laporan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_pelapor`
--
ALTER TABLE `data_pelapor`
  ADD CONSTRAINT `data_pelapor_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_id_pelapor_foreign` FOREIGN KEY (`id_pelapor`) REFERENCES `data_pelapor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
