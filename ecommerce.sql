-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 06:50 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_desc` text COLLATE utf8mb4_unicode_ci,
  `image_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_title`, `image_desc`, `image_src`, `created_at`, `updated_at`) VALUES
(27, 'mouse', 'coba', '61JtKX0XQxL._SL1200_.jpg', '2019-04-10 19:18:22', '2019-04-10 19:18:22'),
(28, 'mouse', 'coba', '411jXtQp3jL._SX425_.jpg', '2019-04-10 19:18:23', '2019-04-10 19:18:23'),
(29, 'mouse', 'coba', 'c03330229.png', '2019-04-10 19:18:23', '2019-04-10 19:18:23'),
(30, 'baju', 'ini bagus lohhh', 'Baju01.jpg', '2019-04-10 19:52:02', '2019-04-10 19:52:02'),
(31, 'baju', 'ini bagus lohhh', 'Baju02.jpg', '2019-04-10 19:52:02', '2019-04-10 19:52:02'),
(32, 'baju', 'ini bagus lohhh', 'Baju03.jpg', '2019-04-10 19:52:02', '2019-04-10 19:52:02'),
(33, 'mouse', 'kfrknijsn', '61JtKX0XQxL._SL1200_.jpg', '2019-04-12 22:52:53', '2019-04-12 22:52:53'),
(34, 'mouse', 'kfrknijsn', '411jXtQp3jL._SX425_.jpg', '2019-04-12 22:52:53', '2019-04-12 22:52:53'),
(35, 'mouse', 'kfrknijsn', 'c03330229.png', '2019-04-12 22:52:54', '2019-04-12 22:52:54'),
(36, 'bajubagus', 'bagus\r\n&nbsp;\r\nmahal', 'Baju03.jpg', '2019-04-13 00:47:03', '2019-04-13 00:47:03'),
(37, 'bajulagi', '<h1>akdfalsd</h1>', 'Baju02.jpg', '2019-04-13 00:50:38', '2019-04-13 00:50:38'),
(38, 'bajulagi4', '<h1>akdfalsdk<em>jnkln</em></h1>', '01.jpg', '2019-04-13 00:59:27', '2019-04-13 00:59:27'),
(39, 'bajulagi3', '<h1 style=\"text-align: right;\">akdfalsdk<em>jnkln</em></h1>', '41.png', '2019-04-13 01:00:29', '2019-04-13 01:00:29'),
(40, 'bajulagi3', '<h1 style=\"text-align: right;\">akdfalsdk<em>jnkln</em></h1>', '941884.jpg', '2019-04-13 01:00:29', '2019-04-13 01:00:29'),
(41, 'bajulagi3', '<h1 style=\"text-align: right;\">akdfalsdk<em>jnkln</em></h1>', 'Baju03.jpg', '2019-04-13 01:00:53', '2019-04-13 01:00:53'),
(42, 'bajulagi3', '<h1 style=\"text-align: right;\">akdfalsdk<em>jnkln</em></h1>', 'c03330229.png', '2019-04-13 01:00:53', '2019-04-13 01:00:53'),
(43, 'sepatu', '<h1 style=\"text-align: center;\">keren abissss</h1>\r\n<p>kamu harus beli ini sepatu .. <em>genggsss</em></p>', 'Sepatu01.jpg', '2019-04-24 22:33:54', '2019-04-24 22:33:54'),
(44, 'sepatu', '<h1 style=\"text-align: center;\">keren abissss</h1>\r\n<p>kamu harus beli ini sepatu .. <em>genggsss</em></p>', 'Sepatu02.jpeg', '2019-04-24 22:33:54', '2019-04-24 22:33:54'),
(45, 'sepatu', '<h1 style=\"text-align: center;\">keren abissss</h1>\r\n<p>kamu harus beli ini sepatu .. <em>genggsss</em></p>', 'Sepatu03.jpg', '2019-04-24 22:33:54', '2019-04-24 22:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_03_16_065722_create_products_table', 1),
(7, '2019_03_30_045852_create_images_table', 2),
(8, '2019_03_30_050930_create_product_images_table', 2),
(9, '2019_04_20_072242_create_sessions_table', 3),
(10, '2019_04_24_144956_create_orders_table', 4),
(11, '2019_04_25_021017_create_order_items_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_price`, `shipping_address`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 9, 'PENDING', '545000', 'cimahi', 7375, '2019-04-24 21:33:43', '2019-04-24 21:33:43'),
(2, 9, 'PENDING', '545000', 'cimahi', 7375, '2019-04-24 21:33:54', '2019-04-24 21:33:54'),
(3, 9, 'PENDING', '225000', 'klsjdf', 3839, '2019-04-24 21:41:52', '2019-04-24 21:41:52'),
(4, 9, 'PENDING', '1500000', 'jhgbbhlo', 8787, '2019-04-24 22:30:15', '2019-04-24 22:30:15'),
(5, 9, 'PENDING', '25000', 'ksdfj', 593, '2019-04-24 22:51:36', '2019-04-24 22:51:36'),
(6, 9, 'PENDING', '25000', 'kmk', 87789, '2019-04-24 22:54:44', '2019-04-24 22:54:44'),
(7, 9, 'PENDING', '25000', 'klfdn', 8689, '2019-04-24 22:55:57', '2019-04-24 22:55:57'),
(8, 9, 'PENDING', '595000', 'akjsd', 606, '2019-04-24 23:04:40', '2019-04-24 23:04:40'),
(9, 9, 'PENDING', '25000', 'oipo', 78, '2019-04-24 23:18:09', '2019-04-24 23:18:09'),
(10, 9, 'PENDING', '25000', 'sdfg', 987, '2019-04-25 02:30:22', '2019-04-25 02:30:22'),
(11, 9, 'PENDING', '25000', 'jkhb', 7, '2019-04-25 02:45:58', '2019-04-25 02:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 21, 1, 500000, '2019-04-24 21:33:55', '2019-04-24 21:33:55'),
(2, 2, 19, 1, 45000, '2019-04-24 21:33:55', '2019-04-24 21:33:55'),
(3, 3, 19, 5, 45000, '2019-04-24 21:41:52', '2019-04-24 21:41:52'),
(4, 4, 21, 3, 500000, '2019-04-24 22:30:15', '2019-04-24 22:30:15'),
(5, 5, 17, 1, 25000, '2019-04-24 22:51:36', '2019-04-24 22:51:36'),
(6, 6, 17, 1, 25000, '2019-04-24 22:54:44', '2019-04-24 22:54:44'),
(7, 7, 17, 1, 25000, '2019-04-24 22:55:58', '2019-04-24 22:55:58'),
(8, 8, 17, 2, 25000, '2019-04-24 23:04:41', '2019-04-24 23:04:41'),
(9, 8, 27, 1, 500000, '2019-04-24 23:04:41', '2019-04-24 23:04:41'),
(10, 8, 19, 1, 45000, '2019-04-24 23:04:41', '2019-04-24 23:04:41'),
(11, 9, 24, 1, 25000, '2019-04-24 23:18:09', '2019-04-24 23:18:09'),
(12, 10, 17, 1, 25000, '2019-04-25 02:30:22', '2019-04-25 02:30:22'),
(13, 11, 17, 1, 25000, '2019-04-25 02:45:58', '2019-04-25 02:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ismailjamiljauhari22@gmail.com', '$2y$10$rCj1jvQZaNFj1dpVwxSCyu8C/tbzruzJpz55zQoIZgSZysMEGSd1m', '2019-03-29 22:32:33'),
('mrazdiw@gmail.com', '$2y$10$bEUZueKiD3hd1qBFS19mBeLqxTGZ02ruuMWMH7agVNzjcBr48yUam', '2019-03-30 00:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `description`, `price`, `image_url`, `video_url`, `created_at`, `updated_at`) VALUES
(17, 6, 'mouse tikus', 'coba4', '25000', NULL, NULL, '2019-04-10 19:18:22', '2019-04-12 05:04:42'),
(19, 7, 'baju', 'ini bagus lohhh', '45000', NULL, NULL, '2019-04-10 19:52:01', '2019-04-10 19:52:01'),
(21, 9, 'mousey', 'kfrknijsn', '500000', NULL, NULL, '2019-04-12 22:52:52', '2019-04-12 22:53:11'),
(24, 9, 'bajubagus3', 'bagus &nbsp; mahal vdfggh', '25000', NULL, NULL, '2019-04-13 00:47:03', '2019-04-13 00:49:12'),
(25, 9, 'bajulagi3', '<h1 style=\"text-align: right;\">akdfalsdk<em>jnkln</em></h1>', '550000', NULL, NULL, '2019-04-13 00:50:38', '2019-04-13 01:00:28'),
(27, 9, 'sepatu', '<h1 style=\"text-align: center;\">keren abissss</h1>\r\n<p>kamu harus beli ini sepatu .. <em>genggsss</em></p>', '500000', NULL, NULL, '2019-04-24 22:33:54', '2019-04-24 22:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_id`, `created_at`, `updated_at`) VALUES
(18, 17, 27, NULL, NULL),
(19, 17, 28, NULL, NULL),
(20, 17, 29, NULL, NULL),
(21, 19, 30, NULL, NULL),
(22, 19, 31, NULL, NULL),
(23, 19, 32, NULL, NULL),
(24, 21, 33, NULL, NULL),
(25, 21, 34, NULL, NULL),
(26, 21, 35, NULL, NULL),
(27, 24, 36, NULL, NULL),
(28, 25, 37, NULL, NULL),
(29, 25, 38, NULL, NULL),
(30, 25, 39, NULL, NULL),
(31, 25, 40, NULL, NULL),
(32, 25, 41, NULL, NULL),
(33, 25, 42, NULL, NULL),
(34, 27, 43, NULL, NULL),
(35, 27, 44, NULL, NULL),
(36, 27, 45, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'faiz', 'faizmohhafidza@gmail.com', NULL, '$2y$10$jzBgUcP.ClgDrC1Mc/td3OVu0Jplu7iAWWCEMC0wS4wex.Aq2qGCi', NULL, '2019-04-12 22:52:04', '2019-04-12 22:52:04'),
(10, 'ujang', 'ujangsarip.cst@gmail.com', NULL, '$2y$10$AJe/mZw.mqkoUygJZkNnjuZXfIJ71M4gC.9xmQhSDj.0LX6pCUstm', NULL, '2019-04-25 09:43:04', '2019-04-25 09:43:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`),
  ADD KEY `product_images_image_id_foreign` (`image_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
