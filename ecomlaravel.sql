-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 25, 2022 lúc 03:28 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecomlaravel`
--
CREATE DATABASE IF NOT EXISTS `ecomlaravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecomlaravel`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `catname`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Bách hóa', 'http://ecombackend.test/storage/caticon.png', NULL, NULL),
(2, 'Nhà cửa', 'http://ecombackend.test/storage/caticon.png', NULL, NULL),
(3, 'Thiết bị số', 'http://ecombackend.test/storage/caticon.png', NULL, NULL),
(4, 'Mẹ và bé', 'http://ecombackend.test/storage/caticon.png', NULL, NULL),
(5, 'Thời trang nữ', 'http://ecombackend.test/storage/caticon.png', NULL, NULL),
(6, 'Laptop - Máy Vi Tính - Linh kiện', 'http://ecombackend.test/storage/caticon.png\r\n', NULL, NULL),
(7, 'Mai hoa', 'http://ecombackend.test/storage/caticon.png', '2022-04-10 19:27:15', '2022-04-10 19:45:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contact_date`, `contact_time`, `created_at`, `updated_at`) VALUES
(1, 'mai', 'titosbi@yahoo.com', 'hgfh', '03-04-2022', '04-18-00pm', NULL, NULL),
(3, 'minh', 'ctmai@fit-hitu.edu.vn', 'xin chap', '11-04-2022', '03-47-22pm', NULL, NULL),
(4, 'mai', 'mai@yahoo.com', 'duoc khong', '17-04-2022', '10-24-07pm', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_12_130701_create_visitors_table', 1),
(6, '2022_03_13_093350_create_contacts_table', 1),
(7, '2022_03_13_160923_create_site_infos_table', 1),
(8, '2022_03_16_080150_create_categories_table', 1),
(9, '2022_03_16_080839_create_subcategories_table', 1),
(12, '2022_03_16_143330_create_product_details_table', 1),
(13, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(14, '2022_03_26_065927_create_sessions_table', 2),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(18, '2016_06_01_000004_create_oauth_clients_table', 3),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(21, '2022_04_02_070224_create_cart_orders_table', 5),
(22, '2022_03_16_095946_create_products_table', 6),
(23, '2022_03_16_110315_create_sliders_table', 6),
(24, '2022_03_27_012617_create_carts_table', 7),
(25, '2022_04_11_060347_create_orders_table', 7),
(26, '2022_04_11_061834_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0020c5f46a20ab68105da989034478712ff9eb4718ab925d8d5ec478e1eb13a9d68f5e8d3ff218c6', 1, 1, 'app', '[]', 0, '2022-03-26 10:26:27', '2022-03-26 10:26:27', '2023-03-26 17:26:27'),
('00e94d27971a5b8f1aafa6eadfd4355146578d186a47b139d66278b16619d6c8c140a80e2510cf22', 1, 1, 'app', '[]', 0, '2022-04-17 02:22:48', '2022-04-17 02:22:48', '2023-04-17 09:22:48'),
('01a08002e933d487b2a30faa1087677d9c17919651b298b5b11820d3e1496adff99c70f7b39a2652', 1, 1, 'app', '[]', 0, '2022-04-17 02:54:31', '2022-04-17 02:54:31', '2023-04-17 09:54:31'),
('0368edc96b57dd6c04c4227b95c617bdebb1466fd73976380727cbcf61e92783141cc189a51c205b', 1, 1, 'app', '[]', 0, '2022-04-17 02:43:58', '2022-04-17 02:43:58', '2023-04-17 09:43:58'),
('05da64bb161c6f788ea4c05796480c050f6731b4585e9b2a20442569a32db9d45affabb9ebd319df', 1, 1, 'app', '[]', 0, '2022-04-17 02:40:49', '2022-04-17 02:40:49', '2023-04-17 09:40:49'),
('06daf2cbf62dd21921d6baf783eb1f098a2a0e849835a8e6f34dc6f7d39e53b6ef7c528decb7f763', 11, 1, 'app', '[]', 0, '2022-04-17 08:46:54', '2022-04-17 08:46:54', '2023-04-17 15:46:54'),
('0918ffe22ba1566780fd587cbb5b7fee0eea3ecb4e53b5370443406668d712b206b1160c0189f85c', 1, 1, 'app', '[]', 0, '2022-04-17 02:44:50', '2022-04-17 02:44:50', '2023-04-17 09:44:50'),
('0d631bf6272ca1343caf700fd12d851add0789ebd28bd9a0c49478f9a3fd46d2f70b8a39062fc29b', 1, 1, 'app', '[]', 0, '2022-04-17 03:04:22', '2022-04-17 03:04:22', '2023-04-17 10:04:22'),
('0f57b275e7642a19481126ebd9b42f2d5509b8a9347e971cfbc42676f48c108a377ee61152ca50d5', 1, 1, 'app', '[]', 0, '2022-04-17 09:13:13', '2022-04-17 09:13:13', '2023-04-17 16:13:13'),
('0f65f9b6adedb43f0cf7ce03b4467b053e827d094e529e7f35e08e4094f8cce106991f4e6e71ee8c', 19, 1, 'app', '[]', 0, '2022-05-07 00:20:22', '2022-05-07 00:20:22', '2023-05-07 07:20:22'),
('16a7d017202d2f2d50beed4452f0381e60cf3b8ab440f42d6dc5a3f7cd3589e9911dc02cc4f650e1', 1, 1, 'app', '[]', 0, '2022-05-22 10:44:12', '2022-05-22 10:44:12', '2023-05-22 17:44:12'),
('16aa5ae7d5968723b3b93907a09b743011fbcf18c7100a241506f58408ee389b858f13ce1d624556', 1, 1, 'app', '[]', 0, '2022-04-18 01:52:07', '2022-04-18 01:52:07', '2023-04-18 08:52:07'),
('16fadf5f95dcdea5ce322b6379308b668d44f4c9d6482ce1b58c28a2ec3de1fd09b6eb501ec7c55a', 1, 1, 'app', '[]', 0, '2022-03-26 01:28:00', '2022-03-26 01:28:00', '2023-03-26 08:28:00'),
('17782b77bde1b40ca1d9260a8d487f5a8a3ada65a327422b8407890bc5506332cf4db0a553e704d7', 1, 1, 'app', '[]', 0, '2022-05-06 22:29:00', '2022-05-06 22:29:00', '2023-05-07 05:29:00'),
('18950a797864d2da701225f8abcef203e23f65cd83be6368c395f91519c4817901d2296fcf88b1b8', 1, 1, 'app', '[]', 0, '2022-04-17 09:12:45', '2022-04-17 09:12:45', '2023-04-17 16:12:45'),
('19cd296158499630a455cde3fa0192d09c4241ad110d802ac9770192a6a1ecc381171456c3e813cc', 1, 1, 'app', '[]', 0, '2022-04-17 02:29:25', '2022-04-17 02:29:25', '2023-04-17 09:29:25'),
('1be89ba1e8f7798940e1e0a9b47ea3165e10606b1c5217228ec3915f48f86625008487395a5d6d08', 1, 1, 'app', '[]', 0, '2022-04-17 02:19:06', '2022-04-17 02:19:06', '2023-04-17 09:19:06'),
('1f15e8c6d6050974129526dd9829016cf9bceb23610e0d2bd8294dde6473202bcd778cde2645dc5b', 19, 1, 'app', '[]', 0, '2022-05-06 21:14:10', '2022-05-06 21:14:10', '2023-05-07 04:14:10'),
('2008261e619d5370cc737b884c25b3e0768818e50f83dc36e1ec1e443d971aed77ee5782d958994b', 1, 1, 'app', '[]', 0, '2022-04-17 03:05:20', '2022-04-17 03:05:20', '2023-04-17 10:05:20'),
('28a8c15873432c80d8aca45351833066ea760a0967041d74655e3a1236254d07486a7fe3f7fb079b', 1, 1, 'app', '[]', 0, '2022-04-17 01:32:22', '2022-04-17 01:32:22', '2023-04-17 08:32:22'),
('2bb435240fcf8746a3c8947628d83b47bd78de2d352952bde58b0379b5d5c452cd00c651068d1325', 19, 1, 'app', '[]', 0, '2022-05-07 00:22:17', '2022-05-07 00:22:17', '2023-05-07 07:22:17'),
('2bda8f185b7a04edbd99af3c29dac45f9acf976c06bbd8337d6f696b57d4a1df8d3bf72170a7f843', 1, 1, 'app', '[]', 0, '2022-05-22 10:38:42', '2022-05-22 10:38:42', '2023-05-22 17:38:42'),
('2c0e7e0591a6e3a465431b88a18fc2fe04ac04a01c37567ab10ea3096786f744574723c98b1b6968', 21, 1, 'app', '[]', 0, '2022-05-24 18:02:34', '2022-05-24 18:02:34', '2023-05-25 01:02:34'),
('2de6970d2e0717e9fa2a564adabd60ebfafc0a73f90c5bda3c90e784c6e8ffc4041883b3f0ebc95a', 1, 1, 'app', '[]', 0, '2022-04-17 01:59:37', '2022-04-17 01:59:37', '2023-04-17 08:59:37'),
('2fc1785b5708207a68910f42fd9bedb1de114799073904ad2258c9026814d035b451e06062df0820', 1, 1, 'app', '[]', 0, '2022-04-17 01:57:52', '2022-04-17 01:57:52', '2023-04-17 08:57:52'),
('3142e63ec9737ed96000d52e0e2c9f396a7fa02684f0488e622e4e5a9afbe7b601c0b2975ea29c0a', 1, 1, 'app', '[]', 0, '2022-04-17 01:33:11', '2022-04-17 01:33:11', '2023-04-17 08:33:11'),
('33d689f21c5ca38b1c47789f346d6557a595a90af180a090c4c9d401d7c2a60136ec5980caab92a4', 1, 1, 'app', '[]', 0, '2022-04-17 08:57:17', '2022-04-17 08:57:17', '2023-04-17 15:57:17'),
('34a8e686fea9e6f71036f5979a1972e31adda68786b4d19f78fbbfd9627064b5dab34aa46bcb520a', 1, 1, 'app', '[]', 0, '2022-03-27 05:09:11', '2022-03-27 05:09:11', '2023-03-27 12:09:11'),
('37efa2f66791fa324d96816fafd3498740b913528fc42c897c25dd429ac11704a8bc97c94b9799bc', 19, 1, 'app', '[]', 0, '2022-05-22 07:13:31', '2022-05-22 07:13:31', '2023-05-22 14:13:31'),
('3a07df1c2e4d4de8a96ecd88786c3d4306fbdd383a11ca5a634ec9865dde0d5ec0efba036800825a', 22, 1, 'app', '[]', 0, '2022-05-24 18:59:03', '2022-05-24 18:59:03', '2023-05-25 01:59:03'),
('3c7f8ffff6f632d2078222d9ad348762cf2123b9a0ceac56a00378df0121311afbd7aa2912196d29', 1, 1, 'app', '[]', 0, '2022-04-17 01:23:07', '2022-04-17 01:23:07', '2023-04-17 08:23:07'),
('3cc3bd83f97731960fcb68b7b1033d46e413374171790b75570a7af613aac1183b6ace98fd80a4ae', 1, 1, 'app', '[]', 0, '2022-04-17 03:06:40', '2022-04-17 03:06:40', '2023-04-17 10:06:40'),
('410d6e379589008dfeb4f9e4c6651c13f899ace52cee9ae98198745fd7362610f02a70821f10ad69', 1, 1, 'app', '[]', 0, '2022-04-17 02:48:25', '2022-04-17 02:48:25', '2023-04-17 09:48:25'),
('43ae6b7f963b66767a07aeb8a1b2b5fe03acb85ee7afada490ade56d1a2071bdd6e5e26a621e37d5', 1, 1, 'app', '[]', 0, '2022-05-22 06:42:52', '2022-05-22 06:42:52', '2023-05-22 13:42:52'),
('48889653aaee096c7070ed576d657e16a141ec33b6c2f13e1797d9e9c6968926cebb062de7f93e2e', 1, 1, 'app', '[]', 0, '2022-04-17 09:46:35', '2022-04-17 09:46:35', '2023-04-17 16:46:35'),
('48f1f50c75209a6b70a1db75e47f4388399ce0716f453ac4fcd1a243a520b988233e977c07bce028', 1, 1, 'app', '[]', 0, '2022-04-17 01:27:38', '2022-04-17 01:27:38', '2023-04-17 08:27:38'),
('4971689c51dcaa0c5f3a2834987e0bfc890c55f263bc61ec7f416608cc0ec4449296a97a5c417dcb', 1, 1, 'app', '[]', 0, '2022-03-26 05:36:33', '2022-03-26 05:36:33', '2023-03-26 12:36:33'),
('4b443db9fd0ae9afcea3eb3f4b44a127665448d0114eca00e82b234980d9f6341b98ac8eae6f17c4', 1, 1, 'app', '[]', 0, '2022-04-17 01:48:41', '2022-04-17 01:48:41', '2023-04-17 08:48:41'),
('4cd39004ccbef3aeea852fdae791e766ac02bc5fece105c00171fd5107ffefd20a385ed29416ee13', 1, 1, 'app', '[]', 0, '2022-04-17 02:10:47', '2022-04-17 02:10:47', '2023-04-17 09:10:47'),
('4e9289a5fe67a4ddeea480ed912dd7374415e025449cc7799af8bb773b0c8ca6f255f34775ab54e5', 1, 1, 'app', '[]', 0, '2022-04-02 00:45:28', '2022-04-02 00:45:28', '2023-04-02 07:45:28'),
('508f4409ff0c565ac36ce4e8a2189a69ecdd345f3d2d107068b924a9d5d0fe046bcf8fc271897f43', 1, 1, 'app', '[]', 0, '2022-05-24 18:04:19', '2022-05-24 18:04:19', '2023-05-25 01:04:19'),
('51d7e7c04a8ae0210902f6ef554c3e44beca569521856b167bbe37fcb5cb9bdb97abe700e9b16806', 1, 1, 'app', '[]', 0, '2022-03-26 04:53:55', '2022-03-26 04:53:55', '2023-03-26 11:53:55'),
('550bc1647d59e2698cdacbdcfdf02c87cc111ec937da9102272aca6abf8f9bf5b08d49bdfc331c50', 1, 1, 'app', '[]', 0, '2022-05-24 17:51:17', '2022-05-24 17:51:17', '2023-05-25 00:51:17'),
('550e78cc5dafd32484e3946187260bbd8122cbbade05e2a285b024b40a99d8e16ee75b1a76b4b08b', 18, 1, 'app', '[]', 0, '2022-04-17 09:15:33', '2022-04-17 09:15:33', '2023-04-17 16:15:33'),
('5512ab1071fa3a4f9824ef43ced43736baecaf6594077565f4a102aeaffa49999cdc03e8209cabc7', 1, 1, 'app', '[]', 0, '2022-04-17 02:07:30', '2022-04-17 02:07:30', '2023-04-17 09:07:30'),
('5c9761b7699e0c57fe96f80054afcfa239d8c7e0420e5047ac4422e74b758fc10e14684a6d5046f4', 19, 1, 'app', '[]', 0, '2022-05-07 00:21:30', '2022-05-07 00:21:30', '2023-05-07 07:21:30'),
('5d12ca6de3b52fdb20b7cdf7332f2322aba2a66976d929d1528ea00bd45dafd7779b3640c74c8156', 1, 1, 'app', '[]', 0, '2022-04-17 02:06:05', '2022-04-17 02:06:05', '2023-04-17 09:06:05'),
('5d48ecf2b9eed1e03e9cf4011f5530dadc11a17abd7742befb9a815923337a231ebb9d0d4bed0f48', 1, 1, 'app', '[]', 0, '2022-04-17 02:37:25', '2022-04-17 02:37:25', '2023-04-17 09:37:25'),
('60b4674e105599b08264d12091faafa0be7a23417da38ddd476bfa77fc810a492064cd853d38736f', 1, 1, 'app', '[]', 0, '2022-05-06 22:08:58', '2022-05-06 22:08:58', '2023-05-07 05:08:58'),
('61d6003b57d700305bd828dc26b2bc15002737af458ad23b0514b8924c71d94dbd6ac4c1e1d5b37c', 1, 1, 'app', '[]', 0, '2022-04-17 09:18:18', '2022-04-17 09:18:18', '2023-04-17 16:18:18'),
('61f3b13b10975cd08f2c92270286e2dc8c5d87aefa98552f5f677a2776e7f20b07b290eb3f028e5a', 1, 1, 'app', '[]', 0, '2022-04-17 02:00:29', '2022-04-17 02:00:29', '2023-04-17 09:00:29'),
('63d220b1f927b4d4e580c9550c8ab448a56a0601b3eecf4e2a0cc231db03b41846e8e7097dc2332e', 1, 1, 'app', '[]', 0, '2022-04-17 01:28:42', '2022-04-17 01:28:42', '2023-04-17 08:28:42'),
('649e9ad64640838d40fa4c76cdb0d104bf8ac655dd0e301d67fccd2aad4a201a2fd73a776d3add5c', 1, 1, 'app', '[]', 0, '2022-04-17 01:23:07', '2022-04-17 01:23:07', '2023-04-17 08:23:07'),
('6893cfacbf8e1beb35aec3f578751e0f4bb617eb21f0b064d3e4d00ed60bfec01bdd6615d1719d66', 1, 1, 'app', '[]', 0, '2022-04-17 01:20:28', '2022-04-17 01:20:28', '2023-04-17 08:20:28'),
('6ace3df1409cc759a9f84d80fd939c4821ab140c8cf57e479998c62ce352b8dbeb8bece0abd7ed70', 5, 1, 'app', '[]', 0, '2022-03-26 09:44:08', '2022-03-26 09:44:08', '2023-03-26 16:44:08'),
('6dd8100b9a2fcf02083bc9a31cee584d7d72b84a6824c73cb663b531f6d818e0c8542484bc24b14e', 20, 1, 'app', '[]', 0, '2022-05-24 17:56:36', '2022-05-24 17:56:36', '2023-05-25 00:56:36'),
('6f997899c3cdb51042c7c6d1b614b287f6fc0bd6af6b0eb7403c17b933aaf9dfcf69d1afeda3f813', 16, 1, 'app', '[]', 0, '2022-04-17 09:01:33', '2022-04-17 09:01:33', '2023-04-17 16:01:33'),
('72fcd048e5bdf38652445f98636b33fb131457581998ceb368942cd90baa6238fd73f36d9dedb926', 22, 1, 'app', '[]', 0, '2022-05-24 19:01:16', '2022-05-24 19:01:16', '2023-05-25 02:01:16'),
('7ab8f532882796f0022ea3cdfe62a8df95102d0b13b8c1fa008e48bad8015c90b49c14a91bddb458', 1, 1, 'app', '[]', 0, '2022-04-17 09:16:53', '2022-04-17 09:16:53', '2023-04-17 16:16:53'),
('7e0ce0e3c3a8fd7d9e543cc90517ce032a64a45d38969a41eae7414b56ccb30b5528be125ce33e62', 1, 1, 'app', '[]', 0, '2022-04-11 06:40:48', '2022-04-11 06:40:48', '2023-04-11 13:40:48'),
('7e6129c1f542e37d78c1c09eaded1645f3f07d16eb5ebf8b1ff29797ae753fdae496774a21fe8f90', 1, 1, 'app', '[]', 0, '2022-04-17 01:58:49', '2022-04-17 01:58:49', '2023-04-17 08:58:49'),
('7fed25c9318b10c0a2b7fbf403350d5be6d53461fcbbff8d91be4beb5f14cceef0962d21dbd2481a', 1, 1, 'app', '[]', 0, '2022-04-17 09:55:09', '2022-04-17 09:55:09', '2023-04-17 16:55:09'),
('80fa5b70e73fe4054fd4d281735117dafbb8dc8c5f52226212e2a58739475f7a6b09cb519529bae7', 1, 1, 'app', '[]', 0, '2022-04-18 00:45:22', '2022-04-18 00:45:22', '2023-04-18 07:45:22'),
('8101fa5da3b9094ed842ca15479e91289fe11161dc541cb1edbf1b66458b5faf59eafda2fb149af6', 1, 1, 'app', '[]', 0, '2022-04-17 02:11:57', '2022-04-17 02:11:57', '2023-04-17 09:11:57'),
('817aed97d3a0936c2ead00d5437c5489c3bd9c433fcdbc51ab20bfa113276d5e1ca4b0f77f579b95', 1, 1, 'app', '[]', 0, '2022-04-17 03:08:29', '2022-04-17 03:08:29', '2023-04-17 10:08:29'),
('81d42bf8917bedba206f0d359f5e60936722a506b3d1cd50f261f649c56dc875323060f733a4fd4b', 1, 1, 'app', '[]', 0, '2022-04-29 23:14:06', '2022-04-29 23:14:06', '2023-04-30 06:14:06'),
('8d7a0b3dc3a9336028671a4fde77306ef709816fce3ee7d913ecb19d2fe6a4ceed976363738b664c', 1, 1, 'app', '[]', 0, '2022-04-17 01:48:50', '2022-04-17 01:48:50', '2023-04-17 08:48:50'),
('8ee7fc6c964c67b3ee860c6f681793806b4b7006a6248ff7a6f1a0d721fb87a55604e0c5636ec27f', 1, 1, 'app', '[]', 0, '2022-04-17 01:57:52', '2022-04-17 01:57:52', '2023-04-17 08:57:52'),
('910caf85a02a2a41e11784b8de7dac44daa3f47a75a2c267d8f32e493edee300cd743b9087ff57c5', 1, 1, 'app', '[]', 0, '2022-04-17 09:11:33', '2022-04-17 09:11:33', '2023-04-17 16:11:33'),
('913b81686cd3f2a124bea804870080ff7a6049f36b3e92437745a8881e2650761c50defce24ea894', 13, 1, 'app', '[]', 0, '2022-04-17 08:49:52', '2022-04-17 08:49:52', '2023-04-17 15:49:52'),
('92119f5f5c907e7f9b8e88282a526c146bb85e3170c4495c084307b107309fc7829042e7e4b44a8a', 1, 1, 'app', '[]', 0, '2022-05-22 10:38:42', '2022-05-22 10:38:42', '2023-05-22 17:38:42'),
('92dccc439dbd817e14d5068ac63902837cabe7621e342c3d6229e5213a10626372526ebba7f747cf', 1, 1, 'app', '[]', 0, '2022-04-17 09:49:19', '2022-04-17 09:49:19', '2023-04-17 16:49:19'),
('94dbf0ed1c086531bab10bebe7e4950c05afbea7cafb3976e65a80e93b659b00484666c38ffb82cb', 21, 1, 'app', '[]', 0, '2022-05-06 20:48:26', '2022-05-06 20:48:26', '2023-05-07 03:48:26'),
('99652ec550d052db2b4d6cbc943550eef0372804d70865dea4a6eba85fc7b62b29da8a1ac2aa1736', 1, 1, 'app', '[]', 0, '2022-05-19 09:14:29', '2022-05-19 09:14:29', '2023-05-19 16:14:29'),
('9cd0959ae45a8839de7ce2dfa500d26725feccf4c433600fb2f0c8ec1bb7214b8179d2b86ba0950e', 1, 1, 'app', '[]', 0, '2022-05-19 18:12:24', '2022-05-19 18:12:24', '2023-05-20 01:12:24'),
('9efc525bc042278634703b84d4939e076aadb28962bac187e2705f62af338ab49de49bb5c63e547b', 1, 1, 'app', '[]', 0, '2022-05-22 10:38:42', '2022-05-22 10:38:42', '2023-05-22 17:38:42'),
('a0cbff456f6852e9f425701674244edc6da4f676f19198c71f3526188ceb198deaf1cb2306cea1c0', 1, 1, 'app', '[]', 0, '2022-04-17 02:39:18', '2022-04-17 02:39:18', '2023-04-17 09:39:18'),
('a3b336f2c7cd6696d7c8497d30eb81538827970ac6a697b01b8d3f82d9c42b08c6726407f28fc888', 2, 1, 'app', '[]', 0, '2022-03-26 01:56:08', '2022-03-26 01:56:08', '2023-03-26 08:56:08'),
('a4aee516bed6f0254a9ddb95ab05c7485e26d793d46fb7208203bb0ade32c927568dac7146b023c3', 22, 1, 'app', '[]', 0, '2022-05-24 19:07:50', '2022-05-24 19:07:50', '2023-05-25 02:07:50'),
('a53bc81885261124bd3272a50172579f72f3ca291c8e0679e7637d72fab10341eed3256ddba1a546', 1, 1, 'app', '[]', 0, '2022-04-18 00:31:29', '2022-04-18 00:31:29', '2023-04-18 07:31:29'),
('a699d9ace69030d402e0b61229875925185452cb9322d11bf4d9e256bce285168a62b125db67b96a', 19, 1, 'app', '[]', 0, '2022-05-06 22:00:24', '2022-05-06 22:00:24', '2023-05-07 05:00:24'),
('a8c9b294114dc82ac7a761b0587093b0380cb36e71b202da9cf126ef56c75411211f8bba27b98b1d', 8, 1, 'app', '[]', 0, '2022-04-17 08:40:28', '2022-04-17 08:40:28', '2023-04-17 15:40:28'),
('a8dc0e009f1059cd2afb874042f95838617d30c89a4ee6412f78b306bbae02669590f56bf4bdf073', 1, 1, 'app', '[]', 0, '2022-04-17 02:49:19', '2022-04-17 02:49:19', '2023-04-17 09:49:19'),
('aa6906ae89b5198cd8580e4f4771980abaa9bea5833540568a181ef8e2411024bc6c5794cd9e8c3f', 1, 1, 'app', '[]', 0, '2022-04-17 09:45:08', '2022-04-17 09:45:08', '2023-04-17 16:45:08'),
('ac664bf17208162b0d7fe08c743c9baacd087646ec6f0f766bb6ba98310df8c1c48f5598f7e9ca49', 1, 1, 'app', '[]', 0, '2022-04-17 02:19:04', '2022-04-17 02:19:04', '2023-04-17 09:19:04'),
('ac833703263978d98247fcbd29d9001157b762cc86dd0dcc889f6ce7cd6af8516c05d4b6a3c43f67', 1, 1, 'app', '[]', 0, '2022-04-17 02:10:47', '2022-04-17 02:10:47', '2023-04-17 09:10:47'),
('ad24905332c30758f415958bd11f6fb1c3a8571a6e03032e6c1be046812d8f610bf53ff70651f9e4', 1, 1, 'app', '[]', 0, '2022-04-17 08:55:03', '2022-04-17 08:55:03', '2023-04-17 15:55:03'),
('ae7a6e5cfa5e6bd2c3ebe88ba874d2838bd7ad0af875ec3ff526aa56b90e14400c8311d341d44556', 1, 1, 'app', '[]', 0, '2022-04-17 01:58:52', '2022-04-17 01:58:52', '2023-04-17 08:58:52'),
('b044704071767de49b6739685029694d96dcbbd0474c87e4414398caaea4695cdf48ff08802d05d5', 1, 1, 'app', '[]', 0, '2022-03-26 07:19:02', '2022-03-26 07:19:02', '2023-03-26 14:19:02'),
('b196e6ee5e47bc0f1b0a873adaf070c010bb8982d91bc04f362d2f2480c424b3e07347aa3d9e4f0e', 1, 1, 'app', '[]', 0, '2022-04-18 01:55:28', '2022-04-18 01:55:28', '2023-04-18 08:55:28'),
('b2a9d8633d0c62e7583706190b9ccf45607386f8132384e4b940bce6aa4eb7641194aa4ff6f71609', 15, 1, 'app', '[]', 0, '2022-04-17 08:59:32', '2022-04-17 08:59:32', '2023-04-17 15:59:32'),
('b3eb34fab64b61db73f9a1a1aa932534c8c87ad63eecaa768e01fc9bdd6426f3d4c24f03e7125cd3', 1, 1, 'app', '[]', 0, '2022-04-17 02:47:28', '2022-04-17 02:47:28', '2023-04-17 09:47:28'),
('b87197ea3d356f8d9bef457de531d36d270fffff91be374d782bc92d33f6330de23f63361a3dc657', 1, 1, 'app', '[]', 0, '2022-04-17 09:46:01', '2022-04-17 09:46:01', '2023-04-17 16:46:01'),
('b91a646c32027b52ec80ebd3ac836ddfb3b10488a693dff5e36ca605b57aa929aec57899400212a0', 1, 1, 'app', '[]', 0, '2022-03-27 05:09:13', '2022-03-27 05:09:13', '2023-03-27 12:09:13'),
('ba9472b3ba03e7a3009d50f1f8838ec7573ff4a1da3e1ee7f2fc0906decd4bdc190ab1181c977f29', 3, 1, 'app', '[]', 0, '2022-03-26 07:35:15', '2022-03-26 07:35:15', '2023-03-26 14:35:15'),
('bcbb95166b9da87bdf22f0fe72e572f3c469c2d62342521b072f02365315784ba4b3b80b7e5b2cb2', 1, 1, 'app', '[]', 0, '2022-04-17 02:42:53', '2022-04-17 02:42:53', '2023-04-17 09:42:53'),
('c7ae1f1c12652c5c524385378d9d0046be74021f140bdd094309827c675938551acc5d8e193d39a0', 17, 1, 'app', '[]', 0, '2022-04-17 09:03:07', '2022-04-17 09:03:07', '2023-04-17 16:03:07'),
('c8197730830e364c03b4947e46d88d14be15d3e577198fa1ba3d130494a141480c63ab218be92551', 4, 1, 'app', '[]', 0, '2022-03-26 08:09:52', '2022-03-26 08:09:52', '2023-03-26 15:09:52'),
('c8df89b9164d824452a9d5567b71a35275bf5d080daa7db22bdba2be1dd1b9c00a6f3dd19588d7b8', 1, 1, 'app', '[]', 0, '2022-04-17 02:21:14', '2022-04-17 02:21:14', '2023-04-17 09:21:14'),
('cb0d417ba23cc0f77a6b3ca5079a32ed9162d80d21a9561372baadff472b35ee47518228c41bb072', 1, 1, 'app', '[]', 0, '2022-03-26 05:51:04', '2022-03-26 05:51:04', '2023-03-26 12:51:04'),
('d221aee4c9efab88ee3161821e7cba2d6838c79183e01307924feb4410a825ffd00e687ed5d4fe55', 22, 1, 'app', '[]', 0, '2022-05-24 19:30:51', '2022-05-24 19:30:51', '2023-05-25 02:30:51'),
('d769200008023f6c4db9e88fa5ca3891d4fedbd5364de8529cbc0d53998d8019da74d04fa6e21942', 1, 1, 'app', '[]', 0, '2022-04-17 02:45:24', '2022-04-17 02:45:24', '2023-04-17 09:45:24'),
('daf07a44edd98204e50888e09e013feed8a115466a6af25ec977cbd07deebe88980f1f26b81b85dc', 1, 1, 'app', '[]', 0, '2022-03-26 06:27:23', '2022-03-26 06:27:23', '2023-03-26 13:27:23'),
('db8adb3fff8a47cbe993f97de4a9b16d12c140047e328fb47d5a4eda3de21620dcd6a590c2ebd0da', 1, 1, 'app', '[]', 0, '2022-04-03 02:16:08', '2022-04-03 02:16:08', '2023-04-03 09:16:08'),
('dbcaf9e8a06f75f199293c227f7737a1cc310d211435e8d99cf8e48a644cdc0f27af4c677b4385f0', 1, 1, 'app', '[]', 0, '2022-04-02 03:57:44', '2022-04-02 03:57:44', '2023-04-02 10:57:44'),
('dc7ade710c7f52ed0a7f14d80f21c5e92e8f37090f6e5ea8562c7bf9c1bea52d5698025486e7d629', 1, 1, 'app', '[]', 0, '2022-04-17 03:09:54', '2022-04-17 03:09:54', '2023-04-17 10:09:54'),
('e2e15071569949d3e4fdad6f47cb9990b5a299bab2f14890013bccd1b38a1dbb75ddf8ce98e4f0ac', 1, 1, 'app', '[]', 0, '2022-03-26 10:26:27', '2022-03-26 10:26:27', '2023-03-26 17:26:27'),
('e3aa9d7af3359344be68c62fd42f25167289860560f430e119fd7f3c282ecdb0e0e2da162d81d88a', 14, 1, 'app', '[]', 0, '2022-04-17 08:52:27', '2022-04-17 08:52:27', '2023-04-17 15:52:27'),
('e47e1fde1a4f6cf694ff980acc25689f29be2441413a78018c45a78c331de9fccfc3fc7a7e9c0235', 1, 1, 'app', '[]', 0, '2022-04-11 06:42:53', '2022-04-11 06:42:53', '2023-04-11 13:42:53'),
('e598dfeb9f032c4e21c5ecd149b337b18274ef70544d7091d7d31b4ca6d4f25feeb0abc5444f53e3', 12, 1, 'app', '[]', 0, '2022-04-17 08:47:35', '2022-04-17 08:47:35', '2023-04-17 15:47:35'),
('e93d5476d15dcea25d747d62bcc0b049674c90f3e891187ce32bfae462cccce593c367b98f268cdd', 1, 1, 'app', '[]', 0, '2022-04-17 01:26:28', '2022-04-17 01:26:28', '2023-04-17 08:26:28'),
('eb29bdbe17ddbe137fe474de299ff716cb7426c5836a091cab61f419491c722d14cef5c894ca382e', 1, 1, 'app', '[]', 0, '2022-04-17 01:58:54', '2022-04-17 01:58:54', '2023-04-17 08:58:54'),
('eba079b4488690d2443aa2806be3e4b8b7339318a62bee182208f58bcebd5c435e35037e32a87f86', 1, 1, 'app', '[]', 0, '2022-05-22 10:44:12', '2022-05-22 10:44:12', '2023-05-22 17:44:12'),
('efe41f9341bbeffcc38c0ea8fedded7253f49eace8536355a21b66544eb21b36e7d2c525b9a2552f', 1, 1, 'app', '[]', 0, '2022-04-17 02:39:18', '2022-04-17 02:39:18', '2023-04-17 09:39:18'),
('f0a503d0ade4246f3dc4db501552c8b315e75f60b3b73012ad752d65a52592e131c950e95ee03a45', 1, 1, 'app', '[]', 0, '2022-03-26 06:20:48', '2022-03-26 06:20:48', '2023-03-26 13:20:48'),
('f1822ca81b1a92f5df4364411563af6d183a7657b4da9ff6569ff122cbfb33294a8b1114a26c5d94', 1, 1, 'app', '[]', 0, '2022-03-26 09:25:22', '2022-03-26 09:25:22', '2023-03-26 16:25:22'),
('f1e1296ed8764c8966178851ae33d080c7957cd1a98932764435e24829dd0dfa52c0146ac0cf5981', 7, 1, 'app', '[]', 0, '2022-04-17 03:18:03', '2022-04-17 03:18:03', '2023-04-17 10:18:03'),
('f50eb6e68b1819f202cc74cec69edcc978d4172a65727b6991e55f7df37c3639b7e00069afa5ee66', 1, 1, 'app', '[]', 0, '2022-04-17 01:49:25', '2022-04-17 01:49:25', '2023-04-17 08:49:25'),
('f8bc1019056a40fa19dc129b431c5033fe10ea9a06db68bf422412d3a4e5d64d9e7c68bb8d0f480d', 1, 1, 'app', '[]', 0, '2022-03-27 00:38:13', '2022-03-27 00:38:13', '2023-03-27 07:38:13'),
('f97488cf2f565037836bf03715af05787020fe20ce17d7d90c2cfa56711482c42c6cf2daef997d87', 1, 1, 'app', '[]', 0, '2022-04-17 01:57:52', '2022-04-17 01:57:52', '2023-04-17 08:57:52'),
('fd3af8cad468e05a0f1e5fc40c508f134a5ef54b10973ebd8811163d9ae109df40e176a79c1cab3c', 1, 1, 'app', '[]', 0, '2022-03-26 06:41:07', '2022-03-26 06:41:07', '2023-03-26 13:41:07'),
('fee3347f3e675e82a66dcadf8ea1cb1b50cb5af52d3e9ab272e9c6a9dcff7d53b7205dcec48d79c9', 6, 1, 'app', '[]', 0, '2022-04-11 06:42:35', '2022-04-11 06:42:35', '2023-04-11 13:42:35'),
('ff082bb64b7460f5419be76559a71a3920638525f16e8976ee702d818d5b306462a7ec219c8fb7cc', 1, 1, 'app', '[]', 0, '2022-03-27 00:38:14', '2022-03-27 00:38:14', '2023-03-27 07:38:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Gc8nsEkSX9lCsEeDNVS87TCqO1xiLkxhqmvGRAms', NULL, 'http://localhost', 1, 0, 0, '2022-03-26 00:18:21', '2022-03-26 00:18:21'),
(2, NULL, 'Laravel Password Grant Client', '7UjatJPMvMK3fo0j6igduqVRTPpYmd5oghDrN9fk', 'users', 'http://localhost', 0, 1, 0, '2022-03-26 00:18:22', '2022-03-26 00:18:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-26 00:18:22', '2022-03-26 00:18:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prooduct_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `sale_price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `sale_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `star`, `product_code`, `created_at`, `updated_at`) VALUES
(5, 'Áo trễ vai bánh bèo tiểu thư, áo trắng trần trễ vai', 65000, 0, 'https://salt.tikicdn.com/cache/400x400/ts/product/d8/4f/f0/55ad6f5caed5d9d128756112adb852a2.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'new', 'OEM', '5', 'AONU233', NULL, NULL),
(6, 'Áo trễ vai bánh bèo tiểu thư, áo trắng trần trễ vai', 65000, 52000, 'https://salt.tikicdn.com/cache/400x400/ts/product/d8/4f/f0/55ad6f5caed5d9d128756112adb852a2.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'collection', 'OEM', '4', 'AONU213', NULL, NULL),
(7, 'Áo Phông Polo Nữ YODY Tay Ngắn Phối Bo Chất Liệu Pique M', 165000, 152000, 'https://salt.tikicdn.com/cache/400x400/ts/product/a2/5c/16/87f919b1a72e368c31e880dcc96eddb2.png.webp', 'Thời trang nữ', 'Áo nữ', 'featured', 'OEM', '4', 'AONU253', NULL, NULL),
(8, 'Áo thun croptop hình xương rồng', 165000, 152000, 'https://salt.tikicdn.com/cache/400x400/ts/product/4e/6f/56/559ebbe2c3c13632ec560013abe12f54.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'collection', 'MIKI', '5', 'AONU252', NULL, NULL),
(9, 'Áo Thun Cut-Out Cách Điệu Ngực Chất Liệu Cotton ', 165000, 152000, 'https://salt.tikicdn.com/cache/400x400/ts/product/e9/4c/a2/0a70fc8423e306bc721bde127b88d52a.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'featured', 'MIKI', '4', 'AONU251', NULL, NULL),
(10, 'áo sơ mi kiểu nhiều màu sắc', 165000, 152000, 'https://salt.tikicdn.com/cache/400x400/ts/product/12/7f/e8/c8e3f4c4062587c88ff81dbd9667d1d2.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'new', 'MIKI', '5', 'AONU250', NULL, NULL),
(11, 'Áo bầu babydoll voan', 165000, 152000, 'https://salt.tikicdn.com/cache/400x400/ts/product/82/71/ac/97767135bf46a1c7a6c8672103cac66e.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'new', 'MIKI', '5', 'AONU249', NULL, NULL),
(12, 'Áo sơ mi nữ dài tay trắng đi học,', 16000, 12000, 'https://salt.tikicdn.com/cache/400x400/ts/product/c1/ec/72/1668b5e2c0422bceb7aad097ffa28e05.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'new', 'OEM', '5', 'AONU248', NULL, NULL),
(13, 'SET ÁO SƠ MI TAY BỒNG KÈM ÁO YẾM NƠ DOREN', 85000, 42000, 'https://salt.tikicdn.com/cache/400x400/ts/product/72/a9/59/72fbaef83073dc4e20025d62aef2d990.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'new', 'OMW', '5', 'AONU247', NULL, NULL),
(14, 'Combo 2 áo thun nữ thoát nhiệt Nhật Bản GOKING', 165000, 152000, 'https://salt.tikicdn.com/cache/400x400/ts/product/64/d1/08/cdf9139ba9b65e15db03ff83bd0059c7.jpg.webp', 'Thời trang nữ', 'Áo nữ', 'new', 'OEM', '5', 'AONU246', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `img_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `img_1`, `img_2`, `img_3`, `img_4`, `short_description`, `long_description`, `color`, `size`, `created_at`, `updated_at`) VALUES
(1, 5, 'https://salt.tikicdn.com/cache/100x100/ts/product/82/71/ac/97767135bf46a1c7a6c8672103cac66e.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/80/ab/83/133631b56cd751881c3836bca97dfca8.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/85/e3/30/51589778d6f799223f42a07b30b64d56.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/85/e3/30/51589778d6f799223f42a07b30b64d56.jpg.webp', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ', ' Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', 'red,blue,green', 'XS,S,M,L,XL', NULL, NULL),
(2, 6, 'https://salt.tikicdn.com/cache/100x100/ts/product/b4/ff/9a/a57a8d4bd5e1fff5190eb0a2df4f8202.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/f9/13/f1/e15b24c2449e73cf53c50f6a341731bf.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/91/6a/59/699d0859c5ce5c33909d7337e96a8025.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/7f/b3/09/9929ffa5d12b70e18fa077a727fd3c7e.jpg.webp', 'Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. ', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', 'blue, violet, green', 'XS,S,M,XL', NULL, NULL),
(3, 7, 'https://salt.tikicdn.com/cache/100x100/ts/product/d4/e7/3b/d6ed97ced40c18c9168d24da732efa0e.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/d4/e7/3b/d6ed97ced40c18c9168d24da732efa0e.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/d4/e7/3b/d6ed97ced40c18c9168d24da732efa0e.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/d4/e7/3b/d6ed97ced40c18c9168d24da732efa0e.jpg.webp', 'This handy tool helps you create dummy text for all your layout needs.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere', 'pink,blue,green', 'XS,S,M,L', NULL, NULL),
(4, 5, 'https://salt.tikicdn.com/cache/100x100/ts/product/82/71/ac/97767135bf46a1c7a6c8672103cac66e.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/80/ab/83/133631b56cd751881c3836bca97dfca8.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/85/e3/30/51589778d6f799223f42a07b30b64d56.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/85/e3/30/51589778d6f799223f42a07b30b64d56.jpg.webp', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', 'red,blue,green', 'XS,S,M,L,XL', '2022-04-10 20:39:00', '2022-04-10 20:39:00'),
(5, 12, 'https://salt.tikicdn.com/cache/100x100/ts/product/82/71/ac/97767135bf46a1c7a6c8672103cac66e.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/80/ab/83/133631b56cd751881c3836bca97dfca8.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/85/e3/30/51589778d6f799223f42a07b30b64d56.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/85/e3/30/51589778d6f799223f42a07b30b64d56.jpg.webp', 'Ao dep Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', 'red,blue,green', 'XS,S,M,L,XL', '2022-04-10 20:39:00', '2022-04-10 20:39:00'),
(6, 1, 'https://salt.tikicdn.com/cache/100x100/ts/product/82/71/ac/97767135bf46a1c7a6c8672103cac66e.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/80/ab/83/133631b56cd751881c3836bca97dfca8.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/85/e3/30/51589778d6f799223f42a07b30b64d56.jpg.webp', 'https://salt.tikicdn.com/cache/100x100/ts/product/85/e3/30/51589778d6f799223f42a07b30b64d56.jpg.webp', 'Ao nu, Ao dep Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', 'red,blue,green', 'XS,S,M,L,XL', '2022-04-10 20:39:00', '2022-04-10 20:39:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HKfsXoor8Fgi7gH6K6j5i8n6qAmraL59zTlB9KES', NULL, '127.0.0.1', 'PostmanRuntime/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFJXOG1tTWZsU0ZVVzFETzRrQmtSancyWGQycnFueVk5SENyTnJ5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9lY29tbGFyYXZlbC50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1650268075),
('lMEyS2TzSNQhiZ3MOw1msz2IFZcMzjFRnlbcwgOh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.116 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzN1QmRpUXFUcWpZTFNPZUNraElqZEk2Sm5UWjVGTmhTdnNnMHZMRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9lY29tbGFyYXZlbC50ZXN0Ijt9fQ==', 1648284595),
('MPConVbH9cdGM6pYm6cywLkahkmil780qpE5XwAD', NULL, '127.0.0.1', 'PostmanRuntime/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkVTdzROSENKWDN2OElENTRLQm9qRFVwbm9VUWUxOTBVVVRVQVA2aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9lY29tbGFyYXZlbC50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1650209806),
('N6VEAD9BFXc8wo4ev5rCeYP4P0yehODykQsNSbze', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.116 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0IzMnNEaTVOUFhpOFpIVGx0bDd4TVRaaWFLcmU0SnNUZHNYZXkxYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9lY29tbGFyYXZlbC50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1648357053),
('nX4vb28S1S3ONeTnhMdCReYJrJNssGEVzqWpI5u3', NULL, '127.0.0.1', 'PostmanRuntime/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHlVVzVKZzRacWVDOWdkcjI0UHc2MWpVMzlWWVRBMW9tY1BkaGZIRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9lY29tbGFyYXZlbC50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1653446165),
('tWgKCrrJyhl7aPHYhS3acgeUSkhPfz4BOWiqUGL8', NULL, '127.0.0.1', 'PostmanRuntime/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQncwREVjS1VES3E1d05RWU1QZUg5WjFzZllDa2hSVE9GWEtNamxGUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9lY29tbGFyYXZlbC50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1651901429),
('xPhNHmSafzDP3lBQiRAthL9Uc4GQBAbkpAAgwKcu', NULL, '127.0.0.1', 'PostmanRuntime/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjB2bVREcUJjQWlKS0ZtVnJ6dXBDWEduUG1pTGlmcjF6ZGpqYndRViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9lY29tbGFyYXZlbC50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1648284811),
('zXfq0mRGoYt1DWmu4j0OKbnDMXiluMZo9gecx5OY', NULL, '127.0.0.1', 'PostmanRuntime/7.29.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU09ad3NRVmphTjFXdVhPb3VUWkN0WGZpdWU4MEsxRlB1YnI4amtnbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9lY29tbGFyYXZlbC50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1650191126);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `agents` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `site_infos`
--

INSERT INTO `site_infos` (`id`, `sitename`, `email`, `address`, `warranty`, `policy`, `about`, `agents`, `google_link`, `facebook_link`, `instagram_link`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'Mai Shop', 'support@maishop.com', '<p>9 Tăng Nhơn Phú Phước Long B, quận 9 TP HCM </p>', '<p>Dưới đây là các QUYỀN LỢI của khách hàng </p> <ul> <li>Nếu có sự cố đối với những thiết bị bán ra trong vòng 01 tháng:</li> </ul> <p>NQ sẽ đổi ngay cho quý khách một sản phẩm thay thế mới 100%.</p> <ul> <li>Nếu có sự cố đối với những thiết bị bán ra trong vòng 06 tháng:</li> </ul> <p>NQ sẽ đổi cho quý khách một sản phẩm khác để thay thế.</p> <ul> <li>Nếu có sự cố đối với những thiết bị bán ra trong vòng từ 06 đến 12 tháng:</li> </ul> <p>NQ cam kết trả hàng bảo hành cho quý khách tối đa trong vòng 5 ngày làm việc và mượn thiết bị khác để sử dụng tạm thời trong khoảng thời gian này.</p> <ul> <li>Đối với những thiết bị bán ra trong vòng 12 tháng trở lên nếu có sự cố</li> </ul> <p>NQ cam kết trả bảo hành cho các bạn trong vòng tối đa 9 ngày làm việc và mượn thiết bị khác để sử dụng tạm trong khoảng thời gian này.</p> <ul> <li>Thời gian trả bảo hành:</li> </ul> <p>Có thể sớm hơn quy định.</p> <p>Trong trường hợp đến thời hạn trả bảo hành mà chúng tôi chưa có hàng trả, Trung tâm sẽ tính thêm thời hạn bảo hành cho thiết bị số ngày quá hạn đó</p> <ul> <li>Dịch vụ bảo hành tại điểm đặt máy:</li> </ul> <p>NQ có dịch vụ bảo hành tại chỗ theo yêu cầu của cơ quan, đơn vị và các cá nhân.</p> <p>Trong khu vực nội thành, trong vòng 4h kể từ khi nhận được thông báo của quý khách, chúng tôi sẽ có mặt để khắc phục sự cố. Trong trường hợp ngoài thời gian làm việc, chúng tôi sẽ khắc phục ngay vào đầu giờ của buổi làm việc tiếp theo.</p> <p>Đối với quý khách hàng tại khu vực ngoại thành, tùy từng quãng đường và điều kiện thời tiết, chúng tôi sẽ cố gắng hỗ trợ cho quý khách một cách nhanh nhất ( 24h )</p> <p>Tất cả thiết bị sẽ được khắc phục ngay tại chỗ, trường hợp không thể sửa chữa được, chúng tôi sẽ có ngay thiết bị khác để quý khách sử dụng tạm thời.</p> <ul> <li>Hỗ trợ bảo hành máy đã hết hạn bảo hành hoặc thiết bị không mua tại NQ</li> </ul> <p>Trung tâm bảo hành sẽ kiểm tra, phát hiện lỗi miễn phí.</p> <p>Nếu là lỗi phần mềm, chúng tôi sẽ khắc phục miễn phí cho quý khách, Nếu là lỗi phần cứng, chúng tôi sẽ nhận sửa chữa hỗ trợ quý khách nếu quý khách hàng có yêu cầu. Quý khách chỉ phải trả chi phí các linh kiện thay thế với mức giá ưu đãi.</p> <p>Nếu quý khách hàng muốn nâng cấp sản phẩm bằng một sản phẩm khác, chúng tôi vui lòng nhập theo giá thỏa thuận.</p> <ul> <li>Thất lạc phiếu bảo hành:</li> </ul> <p>Đối với những sản phẩm đã mua của công ty, nhưng vi phạm điều kiện về thủ tục bảo hành (phiếu bảo hành bị mất, bị nhàu, nát, không có tem bảo hành…) bộ phận chuyên môn của chúng tôi sẽ vui lòng hỗ trợ việc tìm kiếm các thông tin cần thiết để sản phẩm đó được làm thủ tục bảo hành theo quy định.</p> <p>Quý khách hàng chỉ cần cung cấp cho chúng tôi số phiếu xuất, tên khách hàng, khoảng thời gian xuất của sản phẩm đó. Chúng tôi sẽ thông tin lại cho quý khách vào ngày tiếp theo tính từ ngày nhận hỗ trợ.</p> <ul> <li>Các quyền lợi miễn phí khác:</li> </ul> <p>Quý khách hàng (kể cả quý khách hàng không mua sản phẩm tại NQ) có thể gọi điện thoại, trao đổi online hoặc gửi mail đến trung tâm bảo hành của chúng tôi để được tư vấn miễn phí.</p> <ul> <li>Đặc biệt NQ cam kết:</li> </ul> <p>Hỗ trợ bảo trì phần mềm, phần cứng miễn phí đối với khách hàng dù thiết bị không mua tại NQ miễn là hàng chính hãng.</p> <p>Bảo hành cả khi tụ điện, IC bị phồng nổ.</p> <p>Các lỗi thiết bị không nằm trong điều kiện được bảo hành như: cháy nổ bản mạch, côn trùng xâm nhập, nước vào, do môi trường ẩm thấp. Trong trường hợp này công ty sẽ hỗ trợ quý khách bằng đúng chi phí mua linh kiện sửa chữa. (Nếu có thể khắc phục).</p> <p>Nếu quý khách hàng do bận công việc không đến lấy hàng gửi bảo hành được, nhân viên công ty sẽ hỗ trợ chuyển hàng đến tận nơi cho quý khách nếu khoảng cách <15km.</p> <p>Quý khách được hưởng dịch vụ bảo hành cháy chân ram đối với hàng mua tại NQC</p> <p>Trong vòng 15 ngày sau ngày hết hạn bảo hành, công ty vẫn hỗ trợ bảo hành cho khách hàng nếu giá trị thiết bị nhỏ hơn 50$. Ngoài ra, công ty sẽ hỗ trợ sửa chữa, còn chi phí sửa chữa công ty tính đúng bằng giá trị linh kiện thay thế, không lấy tiền công.</p> <p>Nhận sửa chữa các thiết bị không mua từ NQ với chi phí ưu đãi nhất so với thị trường.</p>', 'p><strong>CHÍNH SÁCH VÀ QUY ĐỊNH CHUNG</strong></p> <p><strong>1.1 CHÍNH SÁCH CHUNG</strong></p> <p>Website bán hàng eset.vn do CÔNG TY CỔ PHẦN CÔNG NGHỆ TIỆN ÍCH VIỆT NAM thực hiện hoạt động và vận hành. Đối tượng phục vụ là tất cả khách hàng trên 63 tỉnh thành Việt Nam có nhu cầu mua hàng nhưng không có thời gian đến công ty hoặc đặt trước để khi đến công ty là đảm bảo có hàng.</p> <p>Sản phẩm được kinh doanh tại http://eset.vn phải đáp ứng đầy đủ các quy định của pháp luật, không bán hàng nháy, hàng không rõ nguồn gốc.</p> <p>Hoạt động mua bán tại eset.vn phải được thực hiện công khai, minh bạch, đảm bảo quyền lợi của người tiêu dùng.</p> <p><strong>1.2 QUY ĐỊNH CHUNG</strong></p> <p><strong><em>Tên Miền website bán hàng</em></strong></p> <p>Website bán hàng eset.vn do CÔNG TY CỔ PHẦN CÔNG NGHỆ TIỆN ÍCH VIỆT NAM phát triển với tên miền giao dịch là: eset.vn</p> <p><em><strong>Định nghĩa chung:</strong></em></p> <p><strong>Người bán</strong> là CÔNG TY CỔ PHẦN CÔNG NGHỆ TIỆN ÍCH VIỆT NAM</p> <p><strong>Người mua</strong> là công dân Việt Nam trên khắp 63 tỉnh thành. Người mua có quyền đăng ký tài khoản hoặc không cần đăng ký để thực hiện giao dịch.</p> <p><strong>Thành viên</strong> là bao gồm cả người mua và người tham khảo thông tin, thảo luận tại website.</p> <p>Nội dung bản Quy chế này tuân thủ theo các quy định hiện hành của Việt Nam. Thành viên khi tham gia website bán hàng eset.vn phải tự tìm hiểu trách nhiệm pháp lý của mình đối với luật pháp hiện hành của Việt Nam và cam kết thực hiện đúng những nội dung trong Quy chế này.</p> <p><strong>2. QUY ĐỊNH VÀ HÌNH THỨC THANH TOÁN</strong></p> <p>Người mua và bên bán có thể tham khảo các phương thức thanh toán sau đây và lựa chọn áp dụng phương thức phù hợp:</p> <p><strong>Cách 1: Thanh toán trực tiếp (người mua nhận hàng tại địa chỉ bên bán):</strong></p> <p>Bước 1: Người mua tìm hiểu thông tin về sản phẩm, dịch vụ được đăng tin.</p> <p>Bước 2: Người mua đến địa chỉ bán hàng</p> <p>Bước 3: Người mua thanh toán bằng tiền mặt, thẻ ATM nội địa hoặc thẻ tín dụng và nhận hàng.</p> <p><strong>Cách 2: Thanh toán sau (COD – giao hàng và thu tiền tận nơi):</strong></p> <p>Bước 1: Người mua tìm hiểu thông tin về sản phẩm, dịch vụ được đăng tin.</p> <p>Bước 2: Người mua xác thực đơn hàng (điện thoại, tin nhắn, email).</p> <p>Bước 3: Người bán xác nhận thông tin Người mua.</p> <p>Bước 4: Người bán chuyển hàng.</p> <p>Bước 5: Người mua nhận hàng và thanh toán bằng tiền mặt, thẻ ATM nội địa hoặc thẻ tín dụng.</p> <p><strong>Cách 3: Thanh toán chuyển khoản:</strong></p> <p>Bước 1: Người mua tìm hiểu thông tin về sản phẩm, dịch vụ được đăng tin.</p> <p>Bước 2: Người mua xác thực đơn hàng (điện thoại, tin nhắn, email).</p> <p>Bước 3: Người bán xác nhận thông tin Người mua.</p> <p>Bước 4: Người mua thanh toán.</p> <p>Bước 5: Người bán chuyển hàng.</p> <p>Bước 6: Người mua nhận hàng.</p> <p><strong>3. CHÍNH SÁCH VẬN CHUYỂN GIAO NHẬN</strong></p> <p><strong>Quy trình giao nhận vận chuyển</strong></p> <p>eset.vn thực hiện giao hàng trên toàn quốc. Khi nhận đơn hàng từ người mua và sau khi đã xác thông tin mua hàng qua điện thoại, eset.vn sẽ tiến hành giao hàng theo yêu cầu của quý khách hàng:</p> <p>    và người mua sẽ đến trực tiếp trụ sở công ty kiểm tra và nhận hàng.<br />    Giao hàng tận nơi trên 63 tỉnh thành Việt Nam từ 3 – 7 ngày.</p>', '<div class=\"field--item\"> <div id=\"section-7181\" class=\"fw-img paragraph paragraph--type--c-text paragraph--view-mode--default\"> <div class=\"component-paragraph-field\"> <div class=\"field field--name-field-summary-text field--type-text-long field--label-hidden field--item\"> <h2>Mục đích của MaiShop</h2> <p class=\"intro\">Mục đích của chúng tôi là nâng cao chất lượng cuộc sống và góp phần vào một tương lai khỏe mạnh hơn. Chúng tôi mong muốn tạo ra một thế giới tốt đẹp và khỏe mạnh hơn. Chúng tôi cũng mong muốn truyền cảm hứng cho mọi người sống lành mạnh hơn. Đây là cách chúng tôi đóng góp cho xã hội trong khi vẫn đảm bảo sự thành công lâu dài trong kinh doanh của MaiShop.</p> </div> </div> </div> </div> <div class=\"field--item\"> <div id=\"section-7336\" class=\"fw-img paragraph paragraph--type--c-text paragraph--view-mode--default\"> <div class=\"component-paragraph-field\"> <div class=\"field field--name-field-summary-text field--type-text-long field--label-hidden field--item\"> <h2>Tham vọng của MaiShop</h2> <p class=\"no-padding\">MaiShop đã xác định ba tham vọng tổng thể cho năm 2030 sẽ dẫn dắt chúng tôi hoạt động để hỗ trợ cho Các Mục Tiêu Phát Triển Bền Vững của Liên Hiệp Quốc.</p> </div> </div> </div> </div> <div class=\"field--item\"> <div class=\"container\"> <div id=\"section-9106\" class=\"paragraph paragraph--type--layout-columns-3 paragraph--view-mode--default\"> <div class=\"component-paragraph-field\"> <div class=\"col-md-4\"> <div class=\"field field--name-field-column-first field--type-entity-reference-revisions field--label-hidden field--items\"> <div class=\"field--item\"> <div id=\"section-7241\" class=\"margin-top border-right fw-img paragraph paragraph--type--c-text paragraph--view-mode--default\"> <div class=\"component-paragraph-field\"> <div class=\"field field--name-field-summary-text field--type-text-long field--label-hidden field--item\"> <p><span class=\"font-text-bold text-blue\">CHO CÁ NHÂN & GIA ĐÌNH</span><br /><br /><span class=\"text-blue-dark\">Giúp đỡ</span><br /><span class=\"verybigfont text-blue\">50 triệu</span><br /><span class=\"text-blue-dark\">trẻ em có cuộc sống lành mạnh hơn</span></p> </div> </div> </div> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"field field--name-field-column-second field--type-entity-reference-revisions field--label-hidden field--items\"> <div class=\"field--item\"> <div id=\"section-7351\" class=\"margin-top border-right fw-img paragraph paragraph--type--c-text paragraph--view-mode--default\"> <div class=\"component-paragraph-field\"> <div class=\"field field--name-field-summary-text field--type-text-long field--label-hidden field--item\"> <p><span class=\"text-orange font-text-bold\">CHO CỘNG ĐỒNG</span><br /><br /><span class=\"text-orange-dark\">Giúp cải thiện cuộc sống của</span><br /><span class=\"verybigfont text-orange\">30 triệu</span><br /><span class=\"text-orange-dark\">người trong các cộng đồng kết nối trực tiếp với các hoạt động kinh doanh của chúng tôi</span></p> </div> </div> </div> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"field field--name-field-column-third field--type-entity-reference-revisions field--label-hidden field--items\"> <div class=\"field--item\"> <div id=\"section-8251\" class=\"margin-top fw-img paragraph paragraph--type--c-text paragraph--view-mode--default\"> <div class=\"component-paragraph-field\"> <div class=\"field field--name-field-summary-text field--type-text-long field--label-hidden field--item\"> <p><span class=\"text-green font-text-bold\">CHO HÀNH TINH</span><br /><br /><span class=\"text-green-dark\">Cố gắng giảm thiểu</span><br /><span class=\"verybigfont text-green\">không</span><br /><span class=\"text-green-dark\">có tác động vào môi trường trong hoạt động sản xuất của chúng tôi</span></p> </div> </div> </div> </div> </div> </div> </div> </div> </div> </div> <div class=\"field--item\"> <div id=\"section-7176\" class=\"fw-img paragraph paragraph--type--c-text paragraph--view-mode--default\"> <div class=\"component-paragraph-field\"> <div class=\"field field--name-field-summary-text field--type-text-long field--label-hidden field--item\"> <h2>Giá trị của MaiShop</h2> <p>Chúng tôi mong muốn tạo ra một thế giới tốt đẹp và khỏe mạnh hơn. Đó cũng là cách MaiShop khởi đầu từ cách đây hơn 150 năm khi ông Henri MaiShop phát minh ra ngũ cốc dành cho trẻ sơ sinh để cứu sống một em bé.</p> </div> </div> </div> </div>', '<p><a title=\"Danh s&aacute;ch đại l&iacute; b&aacute;n h&agrave;ng củ chi tp HCM\" href=\"http://bbu.vn/danh-sach-dai-li-ban-hang-cu-chi-tp-hcm.html\"><strong>Danh s&aacute;ch đại l&iacute; b&aacute;n h&agrave;ng củ chi tp HCM</strong></a></p>\r\n<p>&nbsp;</p>\r\n<p>Với hơn 3000 sảng phảm của c&ocirc;ng ty ch&iacute;nh<a title=\"Danh s&aacute;ch đại l&iacute; b&aacute;n h&agrave;ng củ chi tp HCM\" href=\"http://bbu.vn/danh-sach-dai-li-ban-hang-cu-chi-tp-hcm.html\"><strong>&nbsp;BBU</strong></a>&nbsp;&nbsp;được ph&acirc;n phối rộng r&atilde;i tr&ecirc;n to&agrave;n quốc. Tự h&agrave;o về &nbsp;chất lượng sản phẩm , được kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m sử dụng v&agrave; tin d&ugrave;ng.Ch&uacute;ng t&ocirc;i h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch t&ocirc;ng qua c&aacute;c cửa h&agrave;ng đại l&iacute; ở từng quận, huyện,địa phương, để ch&uacute;ng t&ocirc;i được tiến lại gần hơn với bạn.dưới đ&acirc;y l&agrave; danh s&aacute;ch c&aacute;c đại l&iacute;,chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm từ c&ocirc;ng ty cổ phần<strong>&nbsp;<a title=\"Danh s&aacute;ch đại l&iacute; b&aacute;n h&agrave;ng củ chi tp HCM\" href=\"http://bbu.vn/danh-sach-dai-li-ban-hang-cu-chi-tp-hcm.html\">BBU tại&nbsp;củ chi&nbsp;</a></strong>với số lượng lớn.</p>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background: transparent; color: #000000; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<table style=\"max-width: 98%; margin: auto; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; width: 939px;\" border=\"0\" width=\"937\" cellspacing=\"0\" cellpadding=\"0\"><colgroup><col /><col /><col /><col /><col /><col /><col /></colgroup>\r\n<tbody>\r\n<tr>\r\n<td height=\"20\">Thanh Thảo</td>\r\n<td>Ấp Chợ</td>\r\n<td>Quốc Lộ 22</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>0837960581</td>\r\n<td>C.Thảo</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Duy Ch&acirc;u</td>\r\n<td>66E</td>\r\n<td>Quốc Lộ 22</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>0986284671</td>\r\n<td>C. Ch&acirc;u</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Đại L&yacute; Số 4</td>\r\n<td>352B</td>\r\n<td>Quốc Lộ 22</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>0837962974</td>\r\n<td>C.Lan</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Nam &Acirc;n</td>\r\n<td>144</td>\r\n<td>Nguyễn Thị Lắng</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>0982899578</td>\r\n<td>C. &Acirc;n</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Ph&uacute; Cường</td>\r\n<td>89</td>\r\n<td>Hương Lộ 2</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>938183167</td>\r\n<td>A. Cường</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Đại L&yacute; Số 68</td>\r\n<td>0</td>\r\n<td>Hương Lộ 2</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>37965960</td>\r\n<td>K Cho</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Quang Huy</td>\r\n<td>300A</td>\r\n<td>Hương Lộ 2</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>904797684</td>\r\n<td>A. Huy</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Đại L&yacute; Số 102</td>\r\n<td>0</td>\r\n<td>Hương Lộ 2</td>\r\n<td>Phước Vĩnh An</td>\r\n<td>Củ Chi</td>\r\n<td>66567486</td>\r\n<td>K Cho</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Nguy&ecirc;n Hương</td>\r\n<td>0</td>\r\n<td>Hồ Văn Tằng</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>0982007716</td>\r\n<td>C. Huơng</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Đại L&yacute; Số 3</td>\r\n<td>7</td>\r\n<td>Đường 78</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>38922264</td>\r\n<td>K Cho</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Ngoan Ngo&atilde;n 2</td>\r\n<td>122</td>\r\n<td>Đường 71</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>K Cho</td>\r\n<td>K Cho</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Y Học Cổ Truyền&nbsp;</td>\r\n<td>316/6.</td>\r\n<td>QL22</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>837965945</td>\r\n<td>A. Khoa</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">T&acirc;n Lập</td>\r\n<td>17</td>\r\n<td>Li&ecirc;u B&igrave;nh Hương</td>\r\n<td>T&acirc;n Th&ocirc;ng Hội</td>\r\n<td>Củ Chi</td>\r\n<td>0906756068</td>\r\n<td>C. Lập</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">T&acirc;n Ph&aacute;t 2</td>\r\n<td>75</td>\r\n<td>Li&ecirc;u B&igrave;nh Hương</td>\r\n<td>T&acirc;n Th&ocirc;ng Hội</td>\r\n<td>Củ Chi</td>\r\n<td>62528293</td>\r\n<td>C. ph&aacute;t</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Y Học Cổ Truyền Ch&acirc;n T&acirc;m</td>\r\n<td>32</td>\r\n<td>Li&ecirc;u B&igrave;nh Hương</td>\r\n<td>T&acirc;n Th&ocirc;ng Hội</td>\r\n<td>Củ Chi</td>\r\n<td>01677725425</td>\r\n<td>C. Hiệp</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">H&ugrave;ng Anh</td>\r\n<td>74</td>\r\n<td>Li&ecirc;u B&igrave;nh Hương</td>\r\n<td>T&acirc;n Th&ocirc;ng Hội</td>\r\n<td>Củ Chi</td>\r\n<td>K Cho</td>\r\n<td>K Cho</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Xu&acirc;n Lan</td>\r\n<td>352B</td>\r\n<td>Quốc Lộ 22</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>37962974</td>\r\n<td>C. Lan</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">T&acirc;n An</td>\r\n<td>0</td>\r\n<td>Quốc Lộ 22</td>\r\n<td>T&acirc;n Th&ocirc;ng Hội</td>\r\n<td>Củ Chi</td>\r\n<td>0985478506</td>\r\n<td>C. An</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Nam An</td>\r\n<td>371A</td>\r\n<td>Quốc Lộ 22</td>\r\n<td>T&acirc;n Ph&uacute; Trung</td>\r\n<td>Củ Chi</td>\r\n<td>0983072528</td>\r\n<td>C. An</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Hoa L&ecirc;</td>\r\n<td>0</td>\r\n<td>Tỉnh Lộ 8</td>\r\n<td>Phước Vĩnh An</td>\r\n<td>Củ Chi</td>\r\n<td>0862769348</td>\r\n<td>C. L&ecirc;</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">An Phước</td>\r\n<td>559</td>\r\n<td>Tỉnh Lộ 8</td>\r\n<td>Ph&uacute; H&ograve;a Đ&ocirc;ng</td>\r\n<td>Củ Chi</td>\r\n<td>01679965948</td>\r\n<td>C. Phước</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Lương Y Đa Khoa</td>\r\n<td align=\"right\">108</td>\r\n<td>Đường 17</td>\r\n<td>T&acirc;n Tiến</td>\r\n<td>Củ Chi</td>\r\n<td>1689091537</td>\r\n<td>C. Nhi</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Mỹ Ch&acirc;u 5</td>\r\n<td>Tổ 5</td>\r\n<td>Ấp Trảng Lắm</td>\r\n<td>Trung Lập</td>\r\n<td>Củ Chi</td>\r\n<td>966018889</td>\r\n<td>C. Ch&acirc;u</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Minh Thư</td>\r\n<td>91</td>\r\n<td>Ho&agrave;ng Đ&igrave;nh Nghĩa</td>\r\n<td>Trung Lập Hạ</td>\r\n<td>Củ Chi</td>\r\n<td>0908200452</td>\r\n<td>C. Thư</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Kiều D&acirc;n</td>\r\n<td>256</td>\r\n<td>Tỉnh Lộ 8</td>\r\n<td>TT Củ Chi</td>\r\n<td>Củ Chi</td>\r\n<td>1699199268</td>\r\n<td>C. D&acirc;n</td>\r\n</tr>\r\n<tr>\r\n<td height=\"20\">Tấn Lộc</td>\r\n<td>72</td>\r\n<td>Tỉnh Lộ 8</td>\r\n<td>TT Củ Chi</td>\r\n<td>Củ Chi</td>\r\n<td>909666226</td>\r\n<td>C. Tranh</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"max-width: 98%; margin: auto; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; border-collapse: collapse; width: 704pt;\" border=\"0\" width=\"937\" cellspacing=\"0\" cellpadding=\"0\"><colgroup><col width=\"225\" /><col width=\"112\" /><col width=\"167\" /><col width=\"104\" /><col width=\"97\" /><col width=\"130\" /><col width=\"102\" /></colgroup>\r\n<tbody>\r\n<tr>\r\n<td class=\"xl76\" width=\"225\" height=\"20\">Ph&uacute; T&agrave;i</td>\r\n<td class=\"xl76\" align=\"right\" width=\"112\">113.5</td>\r\n<td class=\"xl69\" width=\"167\">Trần Tử B&igrave;nh</td>\r\n<td class=\"xl68\" width=\"104\">T&acirc;n Th&ocirc;ng</td>\r\n<td class=\"xl69\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl68\" width=\"130\">0932728849</td>\r\n<td class=\"xl69\" width=\"102\">C. T&agrave;i</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Xu&acirc;n Mai</td>\r\n<td class=\"xl76\">25A</td>\r\n<td class=\"xl69\" width=\"167\">Trần Tử B&igrave;nh</td>\r\n<td class=\"xl68\" width=\"104\">T&acirc;n Th&ocirc;ng Hội</td>\r\n<td class=\"xl69\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl68\" align=\"right\" width=\"130\">975139255</td>\r\n<td class=\"xl69\" width=\"102\">C. Mai</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Ho&agrave;ng Yến</td>\r\n<td class=\"xl76\" align=\"right\">27</td>\r\n<td class=\"xl69\" width=\"167\">Nguyễn văn Ni</td>\r\n<td class=\"xl68\" width=\"104\">T&acirc;n Th&ocirc;ng Hội</td>\r\n<td class=\"xl69\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl68\" width=\"130\">K Cho</td>\r\n<td class=\"xl69\" width=\"102\">K Cho</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Phương Yến</td>\r\n<td class=\"xl69\" width=\"112\">77</td>\r\n<td class=\"xl68\" width=\"167\">Nguyễn văn Ni</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Th&ocirc;ng Hội</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">1264901465</td>\r\n<td class=\"xl69\" width=\"102\">C. Yến</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Việt Kiều</td>\r\n<td class=\"xl69\" width=\"112\">27C</td>\r\n<td class=\"xl68\" width=\"167\">Trần Tử B&igrave;nh</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Th&ocirc;ng Hội</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">0995931920</td>\r\n<td class=\"xl69\" width=\"102\">C. Kiều</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Hiền Lương 3</td>\r\n<td class=\"xl69\" width=\"112\">244</td>\r\n<td class=\"xl68\" width=\"167\">Tổ 6,ấp Bầu Tre</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n An Hội</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">1674594198</td>\r\n<td class=\"xl69\" width=\"102\">C. Lương</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">An Huy</td>\r\n<td class=\"xl69\" width=\"112\">245</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh lộ 8</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n An Hội</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">01647912208</td>\r\n<td class=\"xl69\" width=\"102\">A. Huy</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Tường Vi</td>\r\n<td class=\"xl69\" width=\"112\">15</td>\r\n<td class=\"xl68\" width=\"167\">Nguyễn văn Khạ</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n An Hội</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">K Cho</td>\r\n<td class=\"xl69\" width=\"102\">K Cho</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Phương Vi</td>\r\n<td class=\"xl69\" width=\"112\">120</td>\r\n<td class=\"xl68\" width=\"167\">Nguyễn văn Khạ</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n An Hội</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">1675599699</td>\r\n<td class=\"xl69\" width=\"102\">C. Vy</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Cao Huy</td>\r\n<td class=\"xl69\" width=\"112\">140</td>\r\n<td class=\"xl68\" width=\"167\">Nguyễn văn Khạ</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n An Hội</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">62790439</td>\r\n<td class=\"xl69\" width=\"102\">C. Cảnh</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">T&acirc;n Ch&acirc;u 2</td>\r\n<td class=\"xl69\" width=\"112\">223 A</td>\r\n<td class=\"xl68\" width=\"167\">Nguyễn văn Khạ</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n An Hội</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">37920137</td>\r\n<td class=\"xl69\" width=\"102\">C. Tuyền</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Phước Anh</td>\r\n<td class=\"xl69\" width=\"112\">0</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh lộ 15</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Th&agrave;nh T&acirc;y</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">0903754299</td>\r\n<td class=\"xl69\" width=\"102\">A. Phước</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Hữu Phước</td>\r\n<td class=\"xl69\" width=\"112\">587</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh lộ 15</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Th&agrave;nh Đ&ocirc;ng</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">0977465284</td>\r\n<td class=\"xl69\" width=\"102\">A. Phước</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">ĐL 94</td>\r\n<td class=\"xl69\" width=\"112\">664 A</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh lộ 15</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Th&agrave;nh Đ&ocirc;ng</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">66565422</td>\r\n<td class=\"xl69\" width=\"102\">C. Hương</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Tr&uacute;c Giang</td>\r\n<td class=\"xl69\" width=\"112\">0</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh lộ 15</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Th&agrave;nh Đ&ocirc;ng</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">22185677</td>\r\n<td class=\"xl69\" width=\"102\">C. Giang</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Th&agrave;nh An</td>\r\n<td class=\"xl69\" width=\"112\">1220 A</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh lộ 15</td>\r\n<td class=\"xl69\" width=\"104\">Trung An</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">01666912099</td>\r\n<td class=\"xl69\" width=\"102\">A. An</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Thi&ecirc;n &Acirc;n</td>\r\n<td class=\"xl69\" width=\"112\">0</td>\r\n<td class=\"xl68\" width=\"167\">Bến Than</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Th&agrave;nh Đ&ocirc;ng</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">0902944331</td>\r\n<td class=\"xl69\" width=\"102\">C. &Acirc;n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Đại L&yacute; Số 86</td>\r\n<td class=\"xl69\" width=\"112\">706A</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh Lộ 8</td>\r\n<td class=\"xl69\" width=\"104\">Phước Vĩnh An</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">37905538</td>\r\n<td class=\"xl69\" width=\"102\">K Cho</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">T&acirc;n Thạnh</td>\r\n<td class=\"xl69\" width=\"112\">327</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh Lộ 8</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Thạnh T&acirc;y</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">K Cho</td>\r\n<td class=\"xl69\" width=\"102\">K Cho</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Nam Chung</td>\r\n<td class=\"xl69\" width=\"112\">100</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh Lộ 8</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Thạnh T&acirc;y</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">0909460266</td>\r\n<td class=\"xl69\" width=\"102\">C. Chung</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Quỳnh Tr&acirc;m</td>\r\n<td class=\"xl67\">0</td>\r\n<td class=\"xl74\">Tỉnh Lộ 8</td>\r\n<td class=\"xl72\">T&acirc;n Thạnh Đ&ocirc;ng</td>\r\n<td class=\"xl74\">Củ Chi</td>\r\n<td class=\"xl75\">0975802147</td>\r\n<td class=\"xl74\">C. Cầm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">Dai ly 87</td>\r\n<td class=\"xl70\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td class=\"xl71\">&nbsp;Ben Than&nbsp;</td>\r\n<td class=\"xl72\">B&agrave; Điểm</td>\r\n<td class=\"xl71\">&nbsp;Củ Chi&nbsp;</td>\r\n<td class=\"xl73\">&nbsp;K Cho&nbsp;</td>\r\n<td class=\"xl71\">&nbsp;K Cho&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl77\" height=\"20\">V&acirc;n Kh&aacute;nh</td>\r\n<td class=\"xl78\">315</td>\r\n<td class=\"xl79\">Tỉnh lộ 15</td>\r\n<td class=\"xl78\">T&acirc;n Thạnh Đ&ocirc;ng</td>\r\n<td class=\"xl80\">Củ Chi</td>\r\n<td class=\"xl78\" align=\"right\">974737739</td>\r\n<td class=\"xl77\">A. Kh&aacute;nh</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">T&acirc;n Quy</td>\r\n<td class=\"xl69\" width=\"112\">0</td>\r\n<td class=\"xl68\" width=\"167\">Tỉnh lộ 15</td>\r\n<td class=\"xl69\" width=\"104\">T&acirc;n Thạnh T&acirc;y</td>\r\n<td class=\"xl68\" width=\"97\">Củ Chi</td>\r\n<td class=\"xl69\" width=\"130\">0837355337</td>\r\n<td class=\"xl69\" width=\"102\">C. Quy</td>\r\n</tr>\r\n<tr>\r\n<td class=\"xl76\" height=\"20\">&nbsp;</td>\r\n<td class=\"xl69\" width=\"112\">&nbsp;</td>\r\n<td class=\"xl68\" width=\"167\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', '#googlelink', '#facebookLink', '#instagramlink', '© Copyright 2021 by Maishop, All Rights Reserved', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `created_at`, `updated_at`) VALUES
(1, 'https://salt.tikicdn.com/cache/w1080/ts/banner/41/11/6c/1b16905a78f456de7be2a4bed80c1b09.png.webp', NULL, NULL),
(2, 'https://salt.tikicdn.com/cache/w1080/ts/banner/d1/93/83/a4ea58aac73605541deecf91a532a873.jpg.webp', NULL, NULL),
(3, 'https://salt.tikicdn.com/cache/w1080/ts/banner/af/1e/ba/4fa7fb7d620c779a7af8a60e0daf0e2c.jpg.webp', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcatname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `catname`, `subcatname`, `created_at`, `updated_at`) VALUES
(1, 'Bách hóa', 'Đồ ăn vặt', NULL, NULL),
(2, 'Bách hóa', 'THực phẩm đóng hộp và khô', NULL, NULL),
(3, 'Bách hóa', 'Đồ uống không cồn', NULL, NULL),
(4, 'Bách hóa', 'Gia vị và chế biến', NULL, NULL),
(5, 'Bách hóa', 'Chăm sóc thú cưng', NULL, NULL),
(6, 'Bách hóa', 'Bộ quà tặng', NULL, NULL),
(7, 'Nhà cửa', 'Dụng cụ nhà bếp', NULL, NULL),
(8, 'Nhà cửa', 'Đồ dùng phòng ăn', NULL, NULL),
(9, 'Nhà cửa', 'Nội thất', NULL, NULL),
(10, 'Laptop - Máy Vi Tính - Linh kiện', 'Laptop', NULL, NULL),
(11, 'Laptop - Máy Vi Tính - Linh kiện', 'Máy Vi Tính', NULL, NULL),
(12, 'Laptop - Máy Vi Tính - Linh kiện', 'Linh kiện', NULL, NULL),
(13, 'Thời trang nữ', 'Áo nữ', NULL, NULL),
(14, 'Thời trang nữ', 'Đầm nữ', NULL, NULL),
(15, 'Thời trang nữ', 'Chân váy', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mai', 'titosbi@yahoo.com', NULL, '$2y$10$bOGOAlpY6E1M6SyiJxNaYOBPIiNBW0Ixv7mGDHBbFNX2mhjjWj3TG', 'admin', NULL, NULL, NULL, '2022-03-26 00:07:18', '2022-03-26 00:07:18'),
(17, 'minh12', 'minh12@yahoo.com', NULL, '$2y$10$TcjXSuTZA4HtT45jg1gke.59GZdlCNCxuNvV5.fCGDCT5Y8sA6.ge', 'customer', NULL, NULL, NULL, '2022-04-17 09:03:07', '2022-04-17 09:03:07'),
(18, 'mai1', 'sfsd@sfsd.com', NULL, '$2y$10$bZvmrSFrQmDxlFMkSZUYX.yFlfr4ZvYJmdR1PdN76q3KjIuExe1By', 'customer', NULL, NULL, NULL, '2022-04-17 09:15:33', '2022-04-17 09:15:33'),
(20, 'customer2', 'chuthimai@hitu.edu.vn', NULL, '$2y$10$zXO3aJiD6vthPZ1yMZTGJesLi6iiG/ORi/fEdzxL/pxhnK8NGhH6y', 'customer', NULL, NULL, NULL, '2022-05-24 17:56:36', '2022-05-24 17:56:36'),
(21, 'customer3', 'abc@hitu.edu.vn', NULL, '$2y$10$Qz34FwcrUBoxnqt5RVxEZuI.u7hK843HNwvkQKyN7wQC6hn.pMIDq', 'user', NULL, NULL, NULL, '2022-05-24 18:02:33', '2022-05-24 18:02:33'),
(22, 'mai', 'ctmai@fit-hitu.edu.vn', NULL, '$2y$10$6Bnr/1/XUo4XVCecIs4oN.XyHt/mLxPjEy2eD4gUqrt.DZKWULxBG', 'user', NULL, NULL, NULL, '2022-05-24 18:59:02', '2022-05-24 18:59:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `visitors`
--

INSERT INTO `visitors` (`id`, `ip_address`, `visit_time`, `visit_date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '11-36-14am', '26-03-2022', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
