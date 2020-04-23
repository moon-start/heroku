-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2020 年 04 月 07 日 08:00
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `moon`
--
CREATE DATABASE IF NOT EXISTS `moon` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `moon`;

-- --------------------------------------------------------

--
-- 資料表結構 `customers`
--

CREATE TABLE `customers` (
  `Cusid` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `customers`
--

INSERT INTO `customers` (`Cusid`, `Name`, `Address`, `Phone`, `created_at`, `updated_at`) VALUES
('1', 'PeterXP', '1234', '0955', '2020-02-07 00:50:12', '2020-02-07 00:50:12'),
('10', 'PeterXP', '1234', '0912345678', '2020-02-07 00:55:28', '2020-02-07 03:56:14'),
('11', 'PeterXP', '1234', '0955', '2020-02-07 00:58:12', '2020-02-07 00:58:12'),
('12', 'PeterXP', '1234', '0955', '2020-02-07 00:58:43', '2020-02-07 00:58:43');

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `Invoice` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Payment_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `invoice`
--

INSERT INTO `invoice` (`id`, `Invoice`, `location`, `Payment_ID`) VALUES
(1, 'WH-89255079', 'Donutes(德賢) ', 1),
(2, 'WP-28969362', '極品豚骨拉麵店', 2),
(3, 'VZ-00301065', '7-11(德賢)', 3),
(4, 'WH-89258679', 'Donutes(德賢)', 4),
(5, 'VZ-00301466', '7-11(德賢)', 5),
(6, 'VM-05045438', '小北百貨(楠梓)', 6),
(7, 'WH-89319039', 'Donutes(德賢)', 7),
(8, 'VM-05089116', '小北百貨(楠梓)', 8),
(9, 'VM-05089133', '小北百貨(楠梓)', 9),
(10, 'WM-4089993', 'McDonald\'s(後勁)', 10),
(11, 'WH-89260141', 'Donutes(德賢)', 11),
(12, 'WM-54095660', 'McDonald\'s(後勁)', 12),
(13, 'VZ-00310441', '7-11(德賢)', 13);

-- --------------------------------------------------------

--
-- 資料表結構 `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `Invoice_ID` int(11) NOT NULL,
  `item` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `item`
--

INSERT INTO `item` (`id`, `Invoice_ID`, `item`, `money`) VALUES
(1, 1, '葡萄奶酥炸彈', 28),
(2, 1, '聖誕夜之星', 35),
(3, 1, '聖誕夜之星', 35),
(4, 2, '混沌拉麵', 85),
(5, 3, '純喫茶紅茶650ml', 25),
(6, 4, '波羅', 25),
(7, 4, '葡萄奶酥炸彈', 28),
(8, 4, '黑糖杯杯', 28),
(9, 5, '瑞穗麥芽牛奶', 42),
(10, 6, '黑人牙膏', 64),
(11, 7, '波羅 ', 50),
(12, 7, '波羅 ', 50),
(13, 8, 'H20純水家庭號', 45),
(14, 9, '防寒手套', 99),
(15, 10, '經典中薯', 17),
(16, 10, '加購六塊雞', 55),
(17, 10, '嫩煎雞腿堡', 82),
(18, 10, '雪碧', 33),
(19, 11, '波羅麵包', 25),
(20, 11, '波羅麵包', 25),
(21, 11, '波羅麵包', 25),
(22, 11, '波羅麵包', 25),
(23, 12, '50點換大薯', 0),
(24, 3, '舒潔棉柔小熊維尼版', 100),
(25, 3, '舒潔棉柔小熊維泥版', 100);

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_06_185058_create_customers_table', 1),
(5, '2020_02_26_191159_create_invoice_table', 1),
(6, '2020_02_26_191659_create_payment_table', 1),
(7, '2020_02_26_191825_create_item_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `payment` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `payment`
--

INSERT INTO `payment` (`id`, `date`, `payment`, `points`) VALUES
(1, '2019-11-25 23:12:03', '現金', 1),
(2, '2019-12-02 18:31:12', '現金', 0),
(3, '2019-12-03 18:28:20', '悠遊卡', 0),
(4, '2019-12-03 22:44:42', '現金', 0),
(5, '2019-12-04 18:13:23', '悠遊卡', 0),
(6, '2019-12-04 08:08:00', '悠遊卡', 0),
(7, '2019-12-07 12:28:57', '現金', 1),
(8, '2019-12-07 12:34:00', '悠遊卡', 0),
(9, '2019-12-04 23:59:00', '現金', 0),
(10, '2019-12-09 22:37:19', 'Mcard(點點卡)', 18),
(11, '2019-12-10 20:06:46', '現金', 2),
(12, '2019-12-16 22:50:21', 'Mcard(點點卡)', -50),
(13, '2019-12-18 23:30:44', '悠遊卡', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Cusid`),
  ADD KEY `customers_name_index` (`Name`),
  ADD KEY `customers_phone_index` (`Phone`);

--
-- 資料表索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_invoice_unique` (`Invoice`),
  ADD UNIQUE KEY `invoice_payment_id_unique` (`Payment_ID`),
  ADD KEY `invoice_location_index` (`location`);

--
-- 資料表索引 `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_invoice_id_index` (`Invoice_ID`),
  ADD KEY `item_item_index` (`item`),
  ADD KEY `item_money_index` (`money`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_date_index` (`date`),
  ADD KEY `payment_payment_index` (`payment`),
  ADD KEY `payment_points_index` (`points`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
