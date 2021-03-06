-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 02:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` bigint(20) UNSIGNED NOT NULL,
  `com_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_id` bigint(20) UNSIGNED NOT NULL,
  `manu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`, `created_at`, `updated_at`) VALUES
(1, 'Gucci', NULL, NULL),
(2, 'Louis Vuitton', NULL, NULL),
(3, 'Dior', NULL, NULL),
(4, 'Herm??s', NULL, NULL),
(5, 'Chanel', NULL, NULL);

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
(19, '2014_10_12_000000_create_manufactures_table', 1),
(20, '2014_10_12_000000_create_products_table', 1),
(21, '2014_10_12_000000_create_protypes_table', 1),
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2022_05_21_013138_create_comments_table', 1),
(27, '2022_05_27_024733_laratrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2022-05-29 04:52:51', '2022-05-29 04:52:51'),
(2, 'users-read', 'Read Users', 'Read Users', '2022-05-29 04:52:51', '2022-05-29 04:52:51'),
(3, 'users-update', 'Update Users', 'Update Users', '2022-05-29 04:52:51', '2022-05-29 04:52:51'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2022-05-29 04:52:51', '2022-05-29 04:52:51'),
(5, 'profile-read', 'Read Profile', 'Read Profile', '2022-05-29 04:52:51', '2022-05-29 04:52:51'),
(6, 'profile-update', 'Update Profile', 'Update Profile', '2022-05-29 04:52:51', '2022-05-29 04:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `manu_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `manu_id`, `type_id`, `quantity`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Wool double-breasted jacket', 'Wooldouble-breastedjacket.jpg', 94166750, 1, 1, 1, '??o limited', NULL, NULL),
(2, 'Knit striped cotton jumper', 'Knitstripedcottonjumper.jpg', 33302875, 1, 1, 2, '??o Knit striped cotton jumper', NULL, NULL),
(3, 'BELTED PARKA', 'BELTEDPARKA.jpg', 98000000, 1, 1, 2, '??o BELTED PARKA n???i ti???ng', NULL, NULL),
(4, 'SLENDER WALLET', 'SLENDERWALLET.jpg', 11024400, 2, 3, 5, 'V?? VL', NULL, NULL),
(5, 'TWIST BELT CHAIN WALLET', 'TWISTBELTCHAINWALLET.jpg', 45016300, 2, 3, 1, 'V?? limited', NULL, NULL),
(6, 'Gi??y nam Gucci Ace h???a ti???t k??? xanh s???m GNGC13', 'giaygucci.jpg', 2190000, 1, 4, 1, 'Gi??y nam Gucci x???n', NULL, NULL),
(7, 'T??i x??ch nam Louis Vuitton like au h???a ti???t caro ghi ??en TXLV16', 'tuigucci.jpg', 3990000, 2, 5, 1, 't??i nam r???ng r??i ', NULL, NULL),
(8, 'Gi??y nam Dior x Air Jordan 1 High CN8607-002', 'giaydior.jpg', 319000000, 3, 4, 1, 'Gi??y tho??ng m??t ', NULL, NULL),
(9, 'DAYDREAM SNEAKER', 'sneaker.jpg', 25000000, 4, 4, 1, 'Gi??y tho??ng si??u tr???ng ', NULL, NULL),
(10, 'T??i Hermes Picotin 18 Blue Frida Rose Mexico Kh??a B???c', 'tuihermes.jpg', 88000000, 4, 5, 1, 'T??i ??a d???ng ', NULL, NULL),
(11, 'Gi??y Gucci Ong ???Black Bee???', 'giay-gucci-ong-black-bee-sieu-cap-like-authentic-19-1.jpg', 98000000, 1, 4, 2, 'gi??y gucci ong black bee si??u c???p like authentic ', NULL, NULL),
(12, 'V?? Dior Homme Bee Bifold Wallet M??u ??en???', 'vi-dior-homme-bee-bifold-wallet-mau-den-620c7fdcc0f78-16022022113852.jpg', 68000000, 3, 3, 1, 'V?? Dior Homme Bee Bifold Wallet M??u ??en l?? chi???c v?? d??nh cho nam ?????n t??? th????ng hi???u Dior n???i ti???ng. S??? h???u gam m??u ??en thanh l???ch, c??ng ch???t li???u cao c???p chi???c v?? Dior Homme Bee Bifold Wallet ???????c nhi???u t??n ????? th???i trang s??n ????n. ', NULL, NULL),
(13, 'Qu???n Jean Hermes Nam', '15242358339.jpg_resize400x400.jpg', 57000000, 4, 2, 1, 'Mang l???i cho ng?????i m???c s??? tho???i m??i, tr??? trung,Ch???t li???u jeans m???m m???i, ki???u d??ng sang tr???ng l??m t??n l??n v??? l???ch l??m, sang tr???ng', NULL, NULL),
(14, 'T??i X??ch Chanel Coco Mini ??en', 'tui-xach-chanel-coco-den-size-225-0-560.jpg', 34000000, 5, 5, 1, ' Ch???t li???u da ch??nh h??ng. form d??ng chu???n auth.\r\n             Cam k???t h??ng VVIP sao ch??p t??? m??, tinh x???o, ch???t l?????ng ', NULL, NULL),
(15, '??o thun th???i trang si??u c???p Louis Vuitton', 'd136b4ba68a95a69399a275782207d3dd0f06605_0.jpg', 33000000, 2, 1, 1, 'Xa x???, ?????ng c???p, th???i th?????ng v?? ?????t ????? l?? nh???ng m??? t??? d??nh cho th????ng hi???u th???i trang ????nh ????m th??? gi???i Louis Vuitton (LV).', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `protypes`
--

CREATE TABLE `protypes` (
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`, `type_image`, `created_at`, `updated_at`) VALUES
(1, '??o', 'Wooldouble-breastedjacket.jpg', NULL, NULL),
(2, 'Qu???n', '15242358339.jpg_resize400x400.jpg', NULL, NULL),
(3, 'V??', 'SLENDERWALLET.jpg', NULL, NULL),
(4, 'Gi??y', 'giaygucci.jpg', NULL, NULL),
(5, 'Gi??? x??ch', 'tui-xach-chanel-coco-den-size-225-0-560.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2022-05-29 04:52:51', '2022-05-29 04:52:51'),
(2, 'user', 'User', 'User', '2022-05-29 04:52:51', '2022-05-29 04:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User');

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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$5rGDc6kYs14aTtFZQ/nTF.PFSZ4GYlNG8AuUN8pCuL6RIfNM2qk1m', NULL, NULL, NULL),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$/HsaHfb//cCEZ0qcc1Q5mucooyBpPq.aMQRKT8BID4uGzjZqjb2Yq', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
