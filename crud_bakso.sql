-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 06:33 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_bakso`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin321', NULL, '2022-05-22 12:08:02', 0),
(2, '::1', 'ginanjar5566@gmail.com', 5, '2022-05-22 12:08:58', 1),
(3, '::1', 'admin', NULL, '2022-05-23 07:51:09', 0),
(4, '::1', 'admin', NULL, '2022-05-23 10:00:44', 0),
(5, '::1', 'admin', NULL, '2022-05-23 10:07:29', 0),
(6, '::1', 'admin321', NULL, '2022-05-23 10:08:37', 0),
(7, '::1', 'admin@mail.com', 8, '2022-05-23 10:09:03', 1),
(8, '::1', 'admin123', NULL, '2022-05-23 10:10:48', 0),
(9, '::1', 'adad', NULL, '2022-05-23 10:10:59', 0),
(10, '::1', 'tes@mail.com', 1, '2022-05-23 10:22:27', 1),
(11, '::1', 'tes@mail.com', 1, '2022-05-23 10:33:53', 1),
(12, '114.122.107.231', 'tes@mail.com', 1, '2022-05-24 15:58:54', 1),
(13, '114.122.107.235', 'tes@mail.com', 1, '2022-05-24 16:01:09', 1),
(14, '114.122.106.139', 'tes@mail.com', 1, '2022-05-24 16:10:45', 1),
(15, '114.122.107.235', 'tes@mail.com', 1, '2022-05-24 16:28:34', 1),
(16, '103.129.95.246', 'tes@mail.com', 1, '2022-05-24 16:29:15', 1),
(17, '103.129.95.246', 'tes@mail.com', 1, '2022-05-24 16:33:49', 1),
(18, '103.129.95.246', 'tes@mail.com', 1, '2022-05-24 16:56:22', 1),
(19, '103.129.95.246', 'tes@mail.com', 1, '2022-05-24 17:02:31', 1),
(20, '103.129.95.246', 'tes@mail.com', 1, '2022-05-24 17:16:35', 1),
(21, '103.129.95.246', 'tes@mail.com', 1, '2022-05-24 17:29:42', 1),
(22, '103.129.95.246', 'tes@mail.com', 1, '2022-05-24 17:31:58', 1),
(23, '103.129.95.246', 'tes@mail.com', 1, '2022-05-24 18:27:36', 1),
(24, '139.195.4.110', 'tes@mail.com', 1, '2022-05-25 00:31:33', 1),
(25, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 00:36:29', 1),
(26, '139.195.4.110', 'tes@mail.com', 1, '2022-05-25 00:39:04', 1),
(27, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 00:44:09', 1),
(28, '139.195.4.110', 'tes@mail.com', 1, '2022-05-25 00:48:58', 1),
(29, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 01:18:22', 1),
(30, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 01:20:15', 1),
(31, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 01:23:03', 1),
(32, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 01:29:02', 1),
(33, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 01:36:42', 1),
(34, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 01:42:08', 1),
(35, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 01:58:00', 1),
(36, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 02:14:50', 1),
(37, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 02:22:55', 1),
(38, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 02:24:18', 1),
(39, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 02:27:29', 1),
(40, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 02:31:44', 1),
(41, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 02:34:20', 1),
(42, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 02:40:24', 1),
(43, '116.206.14.48', 'tes@mail.com', 1, '2022-05-25 02:40:51', 1),
(44, '114.142.172.11', 'tes@mail.com', 1, '2022-05-25 02:58:53', 1),
(45, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 04:51:56', 1),
(46, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 04:57:46', 1),
(47, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 05:01:58', 1),
(48, '103.129.95.246', 'admin321', NULL, '2022-05-25 05:04:19', 0),
(49, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 05:04:25', 1),
(50, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 05:16:38', 1),
(51, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 06:49:44', 1),
(52, '103.129.95.246', 'tes@mail.com', 1, '2022-05-25 06:53:46', 1),
(53, '114.122.68.207', 'tes@mail.com', 1, '2022-05-25 07:56:23', 1),
(54, '114.122.68.207', 'tes@mail.com', 1, '2022-05-25 08:42:29', 1),
(55, '114.122.68.207', 'tes@mail.com', 1, '2022-05-25 08:42:37', 1),
(56, '114.122.68.207', 'tes@mail.com', 1, '2022-05-25 08:42:59', 1),
(57, '141.0.8.141', 'tes@mail.com', 1, '2022-05-25 08:54:14', 1),
(58, '114.122.104.124', 'tes@mail.com', 1, '2022-05-25 16:02:54', 1),
(59, '::1', 'tes@mail.com', 1, '2022-05-25 17:05:33', 1),
(60, '::1', 'tes@mail.com', 1, '2022-05-25 17:27:31', 1),
(61, '::1', 'tes@mail.com', 1, '2022-05-25 17:41:30', 1),
(62, '::1', 'tes@mail.com', 1, '2022-05-25 17:46:16', 1),
(63, '::1', 'tes@mail.com', 1, '2022-05-25 17:52:09', 1),
(64, '::1', 'tes@mail.com', 1, '2022-05-25 18:17:42', 1),
(65, '::1', 'tes@mail.com', 1, '2022-05-25 18:22:31', 1),
(66, '::1', 'tes@mail.com', 1, '2022-05-25 18:29:46', 1),
(67, '::1', 'tes@mail.com', 1, '2022-05-25 18:36:56', 1),
(68, '::1', 'tes@mail.com', 1, '2022-05-25 18:48:23', 1),
(69, '::1', 'tes@mail.com', 1, '2022-05-26 01:17:20', 1),
(70, '::1', 'tes@mail.com', 1, '2022-05-26 02:03:22', 1),
(71, '::1', 'admin', NULL, '2022-05-26 02:08:46', 0),
(72, '::1', 'tes@mail.com', 1, '2022-05-26 02:08:54', 1),
(73, '::1', 'tes@mail.com', 1, '2022-05-26 02:10:15', 1),
(74, '::1', 'tes@mail.com', 1, '2022-05-26 02:13:39', 1),
(75, '::1', 'tes@mail.com', 1, '2022-05-26 02:14:19', 1),
(76, '::1', 'tes@mail.com', 1, '2022-05-26 02:29:11', 1),
(77, '::1', 'tes@mail.com', 1, '2022-05-26 07:33:01', 1),
(78, '::1', 'tes@mail.com', 1, '2022-05-26 07:34:43', 1),
(79, '::1', 'tes@mail.com', 1, '2022-05-26 07:51:11', 1),
(80, '::1', 'tes@mail.com', 1, '2022-05-26 07:51:35', 1),
(81, '::1', 'tes@mail.com', 1, '2022-05-26 07:52:11', 1),
(82, '::1', 'tes@mail.com', 1, '2022-05-26 10:30:23', 1),
(83, '::1', 'tes@mail.com', 1, '2022-05-26 10:30:50', 1),
(84, '::1', 'admin', NULL, '2022-05-26 10:38:09', 0),
(85, '::1', 'admin', NULL, '2022-05-26 10:38:15', 0),
(86, '::1', 'tes@mail.com', 1, '2022-05-26 10:38:20', 1),
(87, '::1', 'tes@mail.com', 1, '2022-05-26 10:55:04', 1),
(88, '::1', 'tes@mail.com', 1, '2022-05-26 10:57:41', 1),
(89, '::1', 'tes@mail.com', 1, '2022-05-26 11:41:29', 1),
(90, '::1', 'tes@mail.com', 1, '2022-05-26 11:50:00', 1),
(91, '::1', 'tes@mail.com', 1, '2022-05-26 12:27:47', 1),
(92, '::1', 'tes@mail.com', 1, '2022-05-26 12:28:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bahanbahan`
--

CREATE TABLE `bahanbahan` (
  `id` int(5) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `penyuplai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bahanbahan`
--

INSERT INTO `bahanbahan` (`id`, `nama`, `jumlah`, `harga`, `penyuplai`) VALUES
(5, 'terigu', '12', '50000', 'toko renaldi');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-05-25-183959', 'App\\Database\\Migrations\\Bahan', 'default', 'App', 1653504044, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1653504429, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'tes@mail.com', 'admin', '$2y$10$5/cVUXcvDdoLc1QOlxfGSuuhjY7dP5eyada4rOUQGTZGhtMPImFX2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-05-23 10:21:45', '2022-05-23 10:21:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `bahanbahan`
--
ALTER TABLE `bahanbahan`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bahanbahan`
--
ALTER TABLE `bahanbahan`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
