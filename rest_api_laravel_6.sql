-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 06:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_api_laravel_6`
--

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_05_06_081705_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a191dcf5ef653e2316e144e94d999b620638fbbc4d611476dde76866eac27688fd5df58a6ef0895', 5, 1, 'authToken', '[]', 0, '2020-05-08 09:42:12', '2020-05-08 09:42:12', '2021-05-08 15:42:12'),
('120dff8a56fb687f8abbc2e911f96fa38b1a68089893f624a90124f497da6ce05979b37c6e3578bf', 6, 1, 'authToken', '[]', 0, '2020-05-08 09:44:00', '2020-05-08 09:44:00', '2021-05-08 15:44:00'),
('229b2c9121c8b7b4a9346e817590c1fb62e58960d3064ab6298a75a24747e76b7e52ac278edd3487', 2, 1, 'authToken', '[]', 1, '2020-05-04 08:26:56', '2020-05-04 08:26:56', '2021-05-04 14:26:56'),
('27ae8c147dd75f5d10f2ecc7ddf5320055a7917d63bba04bd0c1def1b35005824efef9831859b3aa', 2, 1, 'authToken', '[]', 1, '2020-05-04 09:52:35', '2020-05-04 09:52:35', '2021-05-04 15:52:35'),
('2fa41c184ccdd3e7c92521141003289182e0ef122a2940c7e4d6cd6556f867db3f9661b6adb3bf43', 2, 1, 'authToken', '[]', 1, '2020-05-04 09:47:26', '2020-05-04 09:47:26', '2021-05-04 15:47:26'),
('47a862665289ed1ad6f10dc39c34bd13306ff079cd2a2b50385ccb692358e5b13a77379c47ec140e', 2, 1, 'authToken', '[]', 1, '2020-05-04 09:57:55', '2020-05-04 09:57:55', '2021-05-04 15:57:55'),
('47cc229f5cb792857f341162f61cf53153efe9619a53ca1fd05584c2c08abb730d740ff5385775a9', 7, 1, 'authToken', '[]', 1, '2020-05-08 10:01:54', '2020-05-08 10:01:54', '2021-05-08 16:01:54'),
('5946cbba812ab7dfc698bda0cda754f516ea101f6a680c47991d01761668167a29b478581dcfb29c', 2, 1, 'authToken', '[]', 1, '2020-05-04 09:28:28', '2020-05-04 09:28:28', '2021-05-04 15:28:28'),
('65df951970871f91725649eeb066c0c47f2a451e17f19c8ae9cadfe762f852c52b02b30cb6a2a6b8', 2, 1, 'authToken', '[]', 1, '2020-05-04 11:17:17', '2020-05-04 11:17:17', '2021-05-04 17:17:17'),
('72984c0b63e91f0af9ed4674873e596fcf931be3614e30bc5a143e40b9ffb55a239ec466135d894a', 3, 1, 'authToken', '[]', 0, '2020-05-08 09:34:55', '2020-05-08 09:34:55', '2021-05-08 15:34:55'),
('75e76efbd3fb9f41ba6a25edf7d27e2472083853c18991b508c977eb562802e72827f000fb6deb0a', 2, 1, 'authToken', '[]', 0, '2020-05-04 09:28:24', '2020-05-04 09:28:24', '2021-05-04 15:28:24'),
('84f6eacaaad9b6a7632fbd99ec890ab178d724f80e89d64c426227254d266826df51d24f6965e409', 4, 1, 'authToken', '[]', 0, '2020-05-08 09:36:18', '2020-05-08 09:36:18', '2021-05-08 15:36:18'),
('adce0bf02fa892250687c2ee43adb6b0352ef2e526fc3c7fcf6b0e751425c8808bc8bfe9e86a3a29', 2, 1, 'authToken', '[]', 1, '2020-05-06 03:27:39', '2020-05-06 03:27:39', '2021-05-06 09:27:39'),
('c901c9d6bb422ebb88b01f635ade13a0c026f54d63f9734f314fe07d8e749eb58575677ba515f520', 2, 1, 'authToken', '[]', 0, '2020-05-04 09:28:25', '2020-05-04 09:28:25', '2021-05-04 15:28:25'),
('d73453836dd628e61c1a4ff17da5657377d2555b23ea5e5cef6b9cde44a00bcfe479c4047941c81c', 2, 1, 'authToken', '[]', 1, '2020-05-04 09:51:00', '2020-05-04 09:51:00', '2021-05-04 15:51:00'),
('d9dda0921eb07a47568b0ad47a1bbd12435dda69126494adcb8fff1c82f09e4ca56350e14a4a4421', 2, 1, 'authToken', '[]', 1, '2020-05-06 04:13:40', '2020-05-06 04:13:40', '2021-05-06 10:13:40'),
('e44ecdb22fe566d5cdd64c62a35ec33445ce3c5238f1203e6f015f73b96e2e79988438c3ce3c1db0', 2, 1, 'authToken', '[]', 0, '2020-05-04 09:28:15', '2020-05-04 09:28:15', '2021-05-04 15:28:15'),
('ec1913482b9d8c0e8edf87cc7a8c53c00099b505f5a6e58a35e95a35902f2ac8010ea8395abe038c', 2, 1, 'authToken', '[]', 1, '2020-05-04 09:53:39', '2020-05-04 09:53:39', '2021-05-04 15:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'dTu53VWMzKyREYaNEHQLNBXSZEg66cpB3vrPEW4H', 'http://localhost', 1, 0, 0, '2020-05-04 07:58:30', '2020-05-04 07:58:30'),
(2, NULL, 'Laravel Password Grant Client', 'Toz4VUvKG2woJTDyXoQoK0NDdDBUG5YSPDiKAcp5', 'http://localhost', 0, 1, 0, '2020-05-04 07:58:30', '2020-05-04 07:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-04 07:58:30', '2020-05-04 07:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$/IAR8gMnG5AjJoaGtKZjjusL9948qSXckN7N1kh7aqQsj.QEd4hNu', '2020-05-05 11:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `due`, `created_at`, `updated_at`) VALUES
(1, 1, 'Legros-Heaney', 'Fuga fugiat rerum eligendi iste soluta. Ut commodi neque eos aut ut quod. Atque non et et. Quas culpa sapiente aut in qui accusantium fugiat. Labore et voluptatum enim saepe amet sit quis reprehenderit. Aut dolore corporis laborum quas repudiandae accusamus. Molestias adipisci nihil aliquam qui ratione sapiente. Odio magnam cumque facilis possimus facilis ut est explicabo. Odit distinctio enim et neque. Eum vitae aut itaque corporis nesciunt. Corporis eaque corporis dolorum ab minus dolorem. Hic quia voluptatem temporibus laboriosam omnis eum. Illum earum voluptas et laudantium asperiores cumque voluptatem. Vel doloribus qui quia quisquam ut similique eum. Vero atque quidem aut odio eligendi temporibus hic rem. Quia quae eaque cum laborum natus. Velit dolorem perspiciatis impedit rem eius dolores et. Debitis rerum qui quia repellendus. Vel dolorem in quos.', NULL, '2020-05-06 03:11:22', '2020-05-06 03:11:22'),
(2, 1, 'O\'Hara PLC', 'Quia dolores accusamus illum adipisci. Perferendis odio voluptas nihil consequatur modi provident. Repellat consectetur rerum itaque voluptatem officiis optio nam ut. Inventore voluptatem et recusandae ex asperiores ut. Molestiae quis quae natus. Distinctio totam et laborum natus non ex aut numquam. Rerum aut ducimus consequatur cum est quos ut. Voluptatem labore aut est dolores. Suscipit consectetur ea commodi nam iure qui. Sint labore voluptatem blanditiis sit eum eligendi. Quae ut eveniet magni hic ea et non. Officia laborum ex delectus hic neque enim quia. Enim eaque hic reiciendis. Odit cumque et nisi vero rem ipsum. Totam ullam omnis ut sed consequatur. Voluptas eos temporibus natus est. Est earum magni quia quos aliquid nostrum autem. Et voluptatibus ipsa animi architecto. Ratione voluptatem voluptatem porro doloribus recusandae non. Ut et exercitationem ea est sunt voluptatum quis. Non ipsam in cum labore ex aut. Ullam quia non hic velit fuga qui. Vero non est ullam quia repudiandae. Libero nihil sed eum laborum. Ratione quas minima rerum. Officiis incidunt ipsum quo dolor. Et aut enim iusto fugiat et culpa. Nisi quod eveniet est aut consequatur. Est enim laudantium blanditiis qui cumque nulla commodi. Et soluta natus et itaque. Non dolorem mollitia omnis ad animi. Quasi velit voluptas voluptas voluptas blanditiis. Nemo a possimus et sint ducimus eaque id placeat.', NULL, '2020-05-06 03:11:22', '2020-05-06 03:11:22'),
(3, 2, 'Collier, Strosin and Purdy', 'Dolorum iste at aut neque. Sit consectetur et enim in. Quo in minima et nihil voluptatem unde. Eaque esse omnis sunt voluptates nemo qui consequatur. Sint modi et suscipit rem debitis sapiente distinctio. Ut alias nesciunt cupiditate doloremque debitis quas. Totam necessitatibus natus qui aut voluptas. Nulla sed quae ea quia iusto. Rerum tenetur nam quaerat ut quibusdam. Architecto nihil porro nostrum autem aut aliquid. Est omnis a dolorum aspernatur velit aliquam qui omnis. Officia impedit officia excepturi unde non velit qui. Eos ut voluptatum officia a. Odit accusantium dignissimos vel architecto. Quia quaerat quam illo vero impedit rem. Aspernatur cum nesciunt cum architecto laudantium sint. Quisquam quia aut praesentium odio voluptas. Ab eaque nostrum sapiente quam. Ut alias totam molestiae aliquam dolorum molestiae maiores. Dolor veritatis consequuntur qui et consequuntur et repellendus. Voluptatem quia non exercitationem numquam suscipit adipisci sit. Minus sunt inventore qui non quaerat labore rerum. Fugit quis qui vel esse. In explicabo explicabo corrupti ipsam velit repudiandae cupiditate. Quis ut et enim perspiciatis consequatur dolor. Possimus praesentium odit asperiores.', NULL, '2020-05-06 03:11:22', '2020-05-06 03:11:22'),
(4, 2, 'Schuster, Johnson and Hills', 'Ut possimus ipsum doloremque. Autem omnis quo voluptas voluptate quae. Aut enim voluptates accusantium sint. Et quia laborum quas voluptates recusandae. Cumque deserunt esse animi non doloribus sit. Alias eligendi id voluptatem odio odit. Distinctio nesciunt laboriosam perspiciatis beatae. Alias autem fugiat alias quidem. Laudantium dignissimos voluptatem aut sint quaerat corrupti. Sunt vitae aspernatur velit et. Maiores minus ipsam dolorum incidunt aut incidunt. Et labore qui aut. Voluptatem repellat non et quasi sunt. Quis ea assumenda odit et beatae. Laborum quibusdam sit natus sit pariatur. Debitis vel in reprehenderit tempore reiciendis ea qui. Itaque natus vel commodi placeat impedit omnis. Ut est consequatur nobis sed dolorem architecto. Provident cupiditate officia in aut autem beatae unde. Dolores sint dolore hic officiis incidunt qui nihil aut. Velit officia voluptas necessitatibus deserunt. Ad aut optio placeat consequatur beatae. Laudantium expedita assumenda architecto. Architecto et dicta voluptatem aliquam eos rerum. Iure id iste non amet. Molestias impedit molestiae quidem est. Eligendi ipsum non distinctio eligendi dolor ipsa vel. Enim quo voluptas beatae cupiditate. Neque facere voluptatibus dignissimos provident labore quisquam porro. Officiis velit aut sunt unde corporis ad. Voluptates rerum in rerum delectus et eos delectus qui. Accusamus est aut blanditiis. Necessitatibus repudiandae facere modi labore molestiae voluptatem aliquam.', NULL, '2020-05-06 03:11:22', '2020-05-06 03:11:22'),
(5, 1, 'Kris-Bosco', 'Ullam temporibus beatae debitis delectus. Aut facere aut aut beatae in. Eligendi ipsum qui dolore ipsa earum ut. Qui nobis et adipisci ut sit tempora harum. Ullam culpa labore voluptas occaecati tenetur deserunt ad. Voluptatem accusantium alias molestiae et autem. Rerum consequatur doloremque illum. Possimus et quibusdam voluptates sequi ut recusandae sunt. Minus praesentium quia est distinctio fugiat. Et labore placeat laborum nesciunt et exercitationem et architecto. Consequatur ut veritatis non laudantium hic. Est sint sit ipsa quidem. Odit molestias quae quia sapiente delectus veniam unde. Dolore sequi est minima cum veritatis quisquam reprehenderit. Dolorem deserunt velit dolor excepturi vitae earum quis. Porro sed tempora ut natus. Ipsum ut numquam velit tenetur et. Sit culpa placeat quos. Repellendus repellat iure iste porro optio qui voluptatibus. Laboriosam minus earum quo velit. Molestiae pariatur repellendus sit officia ut. Voluptas fugit aut culpa deleniti. Sint porro excepturi est. Eligendi qui voluptas sit aut et quibusdam cumque. Ipsa voluptatem ad sed. Quas praesentium ab optio ut. Sit tempore accusantium inventore in deserunt ut. Distinctio voluptatibus debitis sit repellat officia dolor. Quo nihil quas quo dolorem odit harum sed. Assumenda ipsam quia repellat aut dicta sequi.', NULL, '2020-05-06 03:11:22', '2020-05-06 03:11:22'),
(7, 2, 'Updated Title 2', 'Updated Description 2', '2020-05-08 00:00:00', '2020-05-06 04:44:58', '2020-05-06 04:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arif Faysal', 'admin@gmail.com', NULL, '$2y$10$2Gh44CiiT8NsOXmc.0Z6AOpOZB1lorghfJYkDdNkRNnJxF0XSa2CO', NULL, '2020-05-04 07:57:59', '2020-05-04 07:57:59'),
(2, 'Al Mamun', 'mamun@gmail.com', NULL, '$2y$10$nVp.R7YcGvUj6EXVtRJ3OOM0ZtWv.WNklnaxLbAHvxpGbBIJnTcM.', '6EsBOqqVVa7Bb6skX057jvhIqjcNPg8JNNghrsIRk9EIOziYE77YXog2FWwO', '2020-05-04 08:26:55', '2020-05-05 14:47:03'),
(7, 'Linchuchu', 'lin@gmail.com', '2020-05-08 10:02:24', '$2y$10$Oia9LOGddJzk24yp/K8cFufWxLkEqbeumuneXbJH5wSxpBxyDq2fK', NULL, '2020-05-08 10:01:54', '2020-05-08 10:02:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
