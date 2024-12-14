-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyectointegrado
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',21,'auth_token','90c0d2b425da5371ed7fd2704855fae3e2e3a94cd5fa6c9fc05597e2eeb954c9','[\"*\"]','2024-12-07 11:55:30',NULL,'2024-12-07 11:55:29','2024-12-07 11:55:30'),(4,'App\\Models\\User',23,'auth_token','b6e819580c247891005e8b5dae0d3ece696c026dd9d605f872e8ca50f556a556','[\"*\"]',NULL,NULL,'2024-12-07 12:04:40','2024-12-07 12:04:40'),(5,'App\\Models\\User',24,'auth_token','212f5068275c87183488b4d3f6c803d39c6ece7955f77ad4e479a4976917f030','[\"*\"]',NULL,NULL,'2024-12-07 12:04:49','2024-12-07 12:04:49'),(6,'App\\Models\\User',25,'auth_token','945b198a11e4974e1d20907734b119240f394ca917e07c3e2702a311f1e33f56','[\"*\"]',NULL,NULL,'2024-12-07 12:04:55','2024-12-07 12:04:55'),(7,'App\\Models\\User',26,'auth_token','8ec69dde8e7a089b2a0549984d9b54585273e68d003575c417a32583587f7e21','[\"*\"]',NULL,NULL,'2024-12-07 12:05:02','2024-12-07 12:05:02'),(8,'App\\Models\\User',27,'auth_token','89d27ea4d5e0091754ff424d08a623c8b575a04e256af56ec8261091c287ec88','[\"*\"]',NULL,NULL,'2024-12-07 12:05:07','2024-12-07 12:05:07'),(9,'App\\Models\\User',28,'auth_token','11cbd38c3f988f68e31c063fc075fc2c678e21b42092472e34509b188579184f','[\"*\"]',NULL,NULL,'2024-12-07 12:12:37','2024-12-07 12:12:37'),(10,'App\\Models\\User',29,'auth_token','feaa4cb41f5bcb6489e66777a49bc5364a474f5865d8577b3b7bc80206c3f058','[\"*\"]',NULL,NULL,'2024-12-07 12:12:52','2024-12-07 12:12:52'),(11,'App\\Models\\User',30,'auth_token','828ecd6707b9887ccb7d70724d044affb5ec87f151847c014b3b07b38da51590','[\"*\"]',NULL,NULL,'2024-12-07 12:14:01','2024-12-07 12:14:01'),(12,'App\\Models\\User',31,'auth_token','602d13c0306c6752d8fe090a795c008b3f19a103e28b28e24f93570a81d88275','[\"*\"]',NULL,NULL,'2024-12-07 12:14:13','2024-12-07 12:14:13'),(13,'App\\Models\\User',32,'auth_token','35b1704b3d340807c137f83b587434b1753ed437314c72e4fde4140f98c83829','[\"*\"]',NULL,NULL,'2024-12-07 12:14:22','2024-12-07 12:14:22'),(14,'App\\Models\\User',33,'auth_token','2d44e1394dd79c7e8e14fa5ecdd9b8b93d6f7ff61e5516ee2bedd7fd519b8665','[\"*\"]',NULL,NULL,'2024-12-07 12:14:45','2024-12-07 12:14:45'),(15,'App\\Models\\User',34,'auth_token','acd5163978e31dc3ad18a86a030ba0622ed145d28ebe72813be0a1ffad156d53','[\"*\"]',NULL,NULL,'2024-12-07 12:14:53','2024-12-07 12:14:53'),(16,'App\\Models\\User',35,'auth_token','b623d1409eba68cb6dc630134032e644d5b5fdfb279e68905bc323cc21f51944','[\"*\"]',NULL,NULL,'2024-12-07 12:15:23','2024-12-07 12:15:23'),(17,'App\\Models\\User',36,'auth_token','f153aa8c0dfce919f6efc2e24c566b917da701ce17143167371c8164bf9d055b','[\"*\"]',NULL,NULL,'2024-12-07 12:15:30','2024-12-07 12:15:30'),(18,'App\\Models\\User',37,'auth_token','6495f5a7f655b7c575a7d1decb36773026cb60e1a4b08f1fd37f229dafec6147','[\"*\"]',NULL,NULL,'2024-12-07 12:15:35','2024-12-07 12:15:35'),(68,'App\\Models\\User',38,'auth_token','3281a5c6066f0e40e14ebc20c132472f1b41f9a1dda07e82b35c15ad00b26f40','[\"*\"]','2024-12-11 17:46:21',NULL,'2024-12-11 17:42:51','2024-12-11 17:46:21');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 20:28:16
