# ************************************************************
# Sequel Ace SQL dump
# Version 20039
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.31)
# Database: template
# Generation Time: 2023-07-03 06:43:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activity_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activity_log`;

CREATE TABLE `activity_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint unsigned DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`)
VALUES
	(58,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',3,'{\"username\": \"user1\"}',NULL,'2023-05-12 13:51:31','2023-05-12 13:51:31'),
	(59,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-12 13:51:37','2023-05-12 13:51:37'),
	(60,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-16 11:08:14','2023-05-16 11:08:14'),
	(61,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-16 11:18:04','2023-05-16 11:18:04'),
	(62,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-16 11:34:13','2023-05-16 11:34:13'),
	(63,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-16 11:34:26','2023-05-16 11:34:26'),
	(64,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-05-16 11:36:31','2023-05-16 11:36:31'),
	(65,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-16 11:36:36','2023-05-16 11:36:36'),
	(66,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-05-16 11:37:29','2023-05-16 11:37:29'),
	(67,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-16 11:37:38','2023-05-16 11:37:38'),
	(68,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',3,'{\"username\": \"user1\"}',NULL,'2023-05-16 11:38:14','2023-05-16 11:38:14'),
	(69,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-16 11:38:27','2023-05-16 11:38:27'),
	(70,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-05-16 11:39:56','2023-05-16 11:39:56'),
	(71,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-16 11:40:02','2023-05-16 11:40:02'),
	(72,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',3,'{\"username\": \"user1\"}',NULL,'2023-05-16 13:18:51','2023-05-16 13:18:51'),
	(73,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-05-16 13:19:15','2023-05-16 13:19:15'),
	(74,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',3,'{\"username\": \"user1\"}',NULL,'2023-05-16 13:19:33','2023-05-16 13:19:33'),
	(75,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-17 08:35:14','2023-05-17 08:35:14'),
	(76,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',3,'{\"username\": \"user1\"}',NULL,'2023-05-17 08:35:46','2023-05-17 08:35:46'),
	(77,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-17 08:35:53','2023-05-17 08:35:53'),
	(78,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-17 15:13:42','2023-05-17 15:13:42'),
	(79,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-25 09:19:02','2023-05-25 09:19:02'),
	(80,'default','deleted','App\\Models\\User','deleted',3,'App\\Models\\User',1,'{\"old\": {\"name\": \"User1\", \"text\": null}}',NULL,'2023-05-25 12:01:27','2023-05-25 12:01:27'),
	(81,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-29 09:20:05','2023-05-29 09:20:05'),
	(82,'default','mengganti status \"admin\" menjadi Non-Active','App\\Models\\User',NULL,2,'App\\Models\\User',1,'{\"attributes\": {\"status\": \"Non-Active\"}}',NULL,'2023-05-29 09:24:36','2023-05-29 09:24:36'),
	(83,'default','updated','App\\Models\\User','updated',2,'App\\Models\\User',1,'{\"old\": {\"name\": \"Billys\", \"text\": null}, \"attributes\": {\"name\": \"Billys\", \"text\": null}}',NULL,'2023-05-29 09:24:36','2023-05-29 09:24:36'),
	(84,'default','mengganti statu \"admin\" menjadi Active','App\\Models\\User',NULL,2,'App\\Models\\User',1,'{\"attributes\": {\"status\": \"Active\"}}',NULL,'2023-05-29 09:24:40','2023-05-29 09:24:40'),
	(85,'default','updated','App\\Models\\User','updated',2,'App\\Models\\User',1,'{\"old\": {\"name\": \"Billys\", \"text\": null}, \"attributes\": {\"name\": \"Billys\", \"text\": null}}',NULL,'2023-05-29 09:24:40','2023-05-29 09:24:40'),
	(86,'default','mengganti status \"admin\" menjadi Non-Active','App\\Models\\User',NULL,2,'App\\Models\\User',1,'{\"attributes\": {\"status\": \"Non-Active\"}}',NULL,'2023-05-29 09:26:06','2023-05-29 09:26:06'),
	(87,'default','updated','App\\Models\\User','updated',2,'App\\Models\\User',1,'{\"old\": {\"name\": \"Billys\", \"text\": null}, \"attributes\": {\"name\": \"Billys\", \"text\": null}}',NULL,'2023-05-29 09:26:06','2023-05-29 09:26:06'),
	(88,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-29 14:00:38','2023-05-29 14:00:38'),
	(89,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-30 08:36:41','2023-05-30 08:36:41'),
	(90,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-30 13:33:05','2023-05-30 13:33:05'),
	(91,'default','mengganti statu \"admin\" menjadi Active','App\\Models\\User',NULL,2,'App\\Models\\User',1,'{\"attributes\": {\"status\": \"Active\"}}',NULL,'2023-05-30 14:04:02','2023-05-30 14:04:02'),
	(92,'default','updated','App\\Models\\User','updated',2,'App\\Models\\User',1,'{\"old\": {\"name\": \"Billys\", \"text\": null}, \"attributes\": {\"name\": \"Billys\", \"text\": null}}',NULL,'2023-05-30 14:04:02','2023-05-30 14:04:02'),
	(93,'default','mengganti status \"admin\" menjadi Non-Active','App\\Models\\User',NULL,2,'App\\Models\\User',1,'{\"attributes\": {\"status\": \"Non-Active\"}}',NULL,'2023-05-30 14:04:03','2023-05-30 14:04:03'),
	(94,'default','updated','App\\Models\\User','updated',2,'App\\Models\\User',1,'{\"old\": {\"name\": \"Billys\", \"text\": null}, \"attributes\": {\"name\": \"Billys\", \"text\": null}}',NULL,'2023-05-30 14:04:03','2023-05-30 14:04:03'),
	(95,'default','mengganti statu \"admin\" menjadi Active','App\\Models\\User',NULL,2,'App\\Models\\User',1,'{\"attributes\": {\"status\": \"Active\"}}',NULL,'2023-05-30 14:04:04','2023-05-30 14:04:04'),
	(96,'default','updated','App\\Models\\User','updated',2,'App\\Models\\User',1,'{\"old\": {\"name\": \"Billys\", \"text\": null}, \"attributes\": {\"name\": \"Billys\", \"text\": null}}',NULL,'2023-05-30 14:04:04','2023-05-30 14:04:04'),
	(97,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-05-31 09:29:03','2023-05-31 09:29:03'),
	(98,'default','Identitas User \"admin\" Berhasil Diubah','App\\Models\\User',NULL,2,'App\\Models\\User',1,'{\"attributes\": {\"name\": \"Billys\", \"email\": \"admin@admin.com\", \"role_id\": \"2\", \"username\": \"admin\"}}',NULL,'2023-05-31 09:30:18','2023-05-31 09:30:18'),
	(99,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 09:49:25','2023-07-03 09:49:25'),
	(100,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 09:49:32','2023-07-03 09:49:32'),
	(101,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 09:49:38','2023-07-03 09:49:38'),
	(102,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 09:59:46','2023-07-03 09:59:46'),
	(103,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 09:59:55','2023-07-03 09:59:55'),
	(104,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:07:16','2023-07-03 10:07:16'),
	(105,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:08:52','2023-07-03 10:08:52'),
	(106,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-07-03 10:12:16','2023-07-03 10:12:16'),
	(107,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:12:23','2023-07-03 10:12:23'),
	(108,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-07-03 10:16:17','2023-07-03 10:16:17'),
	(109,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:17:49','2023-07-03 10:17:49'),
	(110,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:20:11','2023-07-03 10:20:11'),
	(111,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:35:22','2023-07-03 10:35:22'),
	(112,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:35:36','2023-07-03 10:35:36'),
	(113,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-07-03 10:35:58','2023-07-03 10:35:58'),
	(114,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-07-03 10:36:03','2023-07-03 10:36:03'),
	(115,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:36:21','2023-07-03 10:36:21'),
	(116,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 10:49:42','2023-07-03 10:49:42'),
	(117,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-07-03 10:49:52','2023-07-03 10:49:52'),
	(118,'default','menambahkan pengguna baru \"user\"','App\\Models\\User',NULL,NULL,'App\\Models\\User',2,'{\"attributes\": {\"name\": \"users\", \"email\": \"user@email.com\", \"photo\": \"users.jpg\", \"status\": \"Non-Active\", \"role_id\": \"3\", \"password\": \"$2y$10$RGWKpgMQzwLnZO9OKflHS.Kp0UiSCkpBkAZQyw4aFTNqHJjrvvBhi\", \"username\": \"user\"}}',NULL,'2023-07-03 10:50:41','2023-07-03 10:50:41'),
	(119,'default','created','App\\Models\\User','created',4,'App\\Models\\User',2,'{\"attributes\": {\"name\": \"users\", \"text\": null}}',NULL,'2023-07-03 10:50:41','2023-07-03 10:50:41'),
	(120,'default','User Sedang Logout',NULL,NULL,NULL,'App\\Models\\User',2,'{\"username\": \"admin\"}',NULL,'2023-07-03 11:01:24','2023-07-03 11:01:24'),
	(121,'default','User Sedang Login',NULL,NULL,NULL,'App\\Models\\User',1,'{\"username\": \"developer\"}',NULL,'2023-07-03 11:01:38','2023-07-03 11:01:38'),
	(122,'default','mengganti statu \"user\" menjadi Active','App\\Models\\User',NULL,4,'App\\Models\\User',1,'{\"attributes\": {\"status\": \"Active\"}}',NULL,'2023-07-03 11:01:41','2023-07-03 11:01:41'),
	(123,'default','updated','App\\Models\\User','updated',4,'App\\Models\\User',1,'{\"old\": {\"name\": \"users\", \"text\": null}, \"attributes\": {\"name\": \"users\", \"text\": null}}',NULL,'2023-07-03 11:01:41','2023-07-03 11:01:41');

/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table identitas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `identitas`;

CREATE TABLE `identitas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `identitas` WRITE;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;

INSERT INTO `identitas` (`id`, `logo`, `favicon`, `name`, `email`, `phone`, `address`, `facebook`, `twitter`, `instagram`, `tiktok`, `youtube`, `about`, `created_at`, `updated_at`)
VALUES
	(1,'lapor-mas.png','lapor-mas.png','Templates','email@email.com','08123456789','Jl. Jalan No. 1','https://facebook.com','https://twitter.com','https://instagram.com','https://tiktok.com','https://youtube.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc vel tincidunt lacinia, nunc nisl aliquam nisl, eget aliquam nisl',NULL,'2023-05-12 11:35:19');

/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1),
	(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
	(5,'2023_03_13_070154_create_roles_table',1),
	(6,'2023_03_15_142438_create_identitas_table',1),
	(7,'2023_03_16_024230_create_visitors_table',1),
	(11,'2023_05_12_015135_create_activity_log_table',2),
	(12,'2023_05_12_015136_add_event_column_to_activity_log_table',2),
	(13,'2023_05_12_015137_add_batch_uuid_column_to_activity_log_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Developer',NULL,NULL),
	(2,'Super Admin',NULL,NULL),
	(3,'Admin',NULL,NULL),
	(4,'User',NULL,NULL);

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `photo`, `name`, `username`, `email`, `email_verified_at`, `password`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'Developer','developer','developer@admin.com',NULL,'$2y$10$zzp6DR9SjXjTJJyZIjrzGef4ohOj01m8ytYTbkvjr9Pw8JAO4yxny','1','Active',NULL,NULL,NULL),
	(2,'billy.png','Billys','admin','admin@admin.com',NULL,'$2y$10$1hroyAkXwI7sd4aCP5m/qOKZ77lUpqthAydu68CyJ3eyy7FoHbr6m','2','Active',NULL,NULL,'2023-05-30 14:04:04'),
	(4,'users.jpg','users','user','user@email.com',NULL,'$2y$10$RGWKpgMQzwLnZO9OKflHS.Kp0UiSCkpBkAZQyw4aFTNqHJjrvvBhi','3','Active',NULL,'2023-07-03 10:50:41','2023-07-03 11:01:41');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table visitors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `visitors`;

CREATE TABLE `visitors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tipe` enum('Visitor','User') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;

INSERT INTO `visitors` (`id`, `tipe`, `dt`, `year`, `month`, `date`, `day`, `count`, `created_at`, `updated_at`)
VALUES
	(1,'Visitor','2023-04-06 03:02:16','2023','4','6','4','1','2023-04-06 03:02:16','2023-04-06 03:02:16'),
	(2,'Visitor','2023-05-10 06:41:43','2023','5','10','3','2','2023-05-10 06:41:43','2023-05-10 06:50:39'),
	(3,'Visitor','2023-05-11 02:33:15','2023','5','11','4','13','2023-05-11 02:33:15','2023-05-11 13:32:57'),
	(4,'User','2023-05-12 01:44:42','2023','5','12','5','1','2023-05-12 01:44:42','2023-05-12 01:44:42'),
	(5,'Visitor','2023-05-16 11:07:57','2023','5','16','2','2','2023-05-16 11:07:57','2023-05-16 11:32:52'),
	(6,'User','2023-05-17 15:17:45','2023','5','17','3','1','2023-05-17 15:17:45','2023-05-17 15:17:45'),
	(7,'Visitor','2023-05-19 09:48:26','2023','5','19','5','1','2023-05-19 09:48:26','2023-05-19 09:48:26'),
	(8,'Visitor','2023-05-22 08:51:28','2023','5','22','1','1','2023-05-22 08:51:28','2023-05-22 08:51:28'),
	(9,'Visitor','2023-05-23 19:34:30','2023','5','23','2','1','2023-05-23 19:34:30','2023-05-23 19:34:30'),
	(10,'Visitor','2023-05-25 09:18:51','2023','5','25','4','2','2023-05-25 09:18:51','2023-05-25 09:31:58'),
	(11,'Visitor','2023-05-29 09:18:56','2023','5','29','1','2','2023-05-29 09:18:56','2023-05-29 09:19:54'),
	(12,'Visitor','2023-07-03 09:12:20','2023','7','3','1','8','2023-07-03 09:12:20','2023-07-03 10:49:29');

/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
