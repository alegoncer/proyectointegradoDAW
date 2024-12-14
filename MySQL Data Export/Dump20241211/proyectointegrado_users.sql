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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_fijo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_movil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rrhh` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_dni_unique` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (22,'Admin','RRHH','999999999','666666566','Dirección Ficticia','Madridd','España',1,'rrhh@rrhh.com','31232671M',NULL,'$2y$12$Jcr29tJ.m6ZjyLZDmIWIgeY0OAQDKGKbk2LINWQ8mOmHXZeJ5/jmu',NULL,'2024-12-07 11:59:21','2024-12-07 14:37:07'),(28,'Ana','Torres','905-503401','628-301828','121 Avenida del Sol','Zaragoza','España',0,'ana.torres@example.com','36345774H',NULL,'$2y$12$z4viQGIBo2hFw9Yzl45g9O/n1OL.xnB0LcnNOg.TFRr5NRKZwocp.',NULL,'2024-12-07 12:12:37','2024-12-07 12:12:37'),(29,'Miguel','García','942-759962','614-399497','130 Calle Mayor','Barcelona','Italia',0,'miguel.garcía@example.com','68544598G',NULL,'$2y$12$g7aLCm9rWBz5QNfunu2F3eNB9OStuUvbWr8RE7kMO5ZrGn8zZBqn2',NULL,'2024-12-07 12:12:52','2024-12-07 12:12:52'),(30,'Pedro','Torres','902-297726','614-527625','4 Plaza Central','Sevilla','Francia',0,'pedro.torres@mail.com','92806363E',NULL,'$2y$12$7X0Hdj1pbdb6jNDEvnxnJucw5SAlpdNyTtWnMKVv1vPUbs1oJT6z.',NULL,'2024-12-07 12:14:01','2024-12-07 12:14:01'),(31,'Juan','Martínez','950-322066','610-988402','142 Calle del Río','Córdoba','España',0,'juan.martínez@prueba.org','61062369L',NULL,'$2y$12$QhzHyvOAYl8Odf3FfWYIiObg0ofOKKvEvJIkUEw1sQwF2MizY4lku',NULL,'2024-12-07 12:14:13','2024-12-07 12:14:13'),(32,'Juan','Ramírez','983-330042','663-449456','62 Calle Nueva','Málaga','Francia',0,'juan.ramírez@mail.com','63362340M',NULL,'$2y$12$61c0eVJ2.jvqN1mAkEArq.6PlGCUVW1mLJVoNjC6KnscV3P/EUUy.',NULL,'2024-12-07 12:14:22','2024-12-07 12:14:22'),(33,'Laura','González','965-642699','647-332235','67 Calle Nueva','Valencia','Alemania',0,'laura.gonzález@demo.net','10495978K',NULL,'$2y$12$nInQ.tV8rQ3inh9h6/mtkeRaRUK9LJwExtrvrP/LlNvuOYTh8ZF4u',NULL,'2024-12-07 12:14:45','2024-12-07 12:14:45'),(34,'Carlos','García','999-341626','692-399543','85 Calle del Río','Barcelona','Alemania',0,'carlos.garcía@mail.com','23794643Y',NULL,'$2y$12$3rUjhCKwKQdtlKCUFFh16usd77taMcmzgGMqRHF1P28qQnzcViPWi',NULL,'2024-12-07 12:14:53','2024-12-07 12:14:53'),(35,'Ana','Torres','901-944223','613-282864','21 Plaza Central','Sevilla','Francia',0,'ana.torres@mail.com','57811807T',NULL,'$2y$12$5/PuUkGHOv.F9l5YBZRZ6uJCxk9ES5VB3VM1eArdcWL9813l3ouUW',NULL,'2024-12-07 12:15:23','2024-12-07 12:15:23'),(36,'Laura','Torres','950-232546','679-393496','24 Plaza Central','Málaga','Alemania',0,'laura.torres@mail.com','84287928E',NULL,'$2y$12$.ztMLw84Po.GuvbARyFwEO9H8u5FI94lREPhSKTITFJzAiGHWyBUO',NULL,'2024-12-07 12:15:30','2024-12-07 12:15:30'),(37,'Lucía','Rodríguez','968-724132','654-435440','12 Calle Nueva','Granada','España',0,'lucía.rodríguez@mail.com','13936380K',NULL,'$2y$12$MCJin2b8IRhEY6GuLeX0VO9FzNZiZxV0qTYW2Y2TqWZggbf/3X7Xu',NULL,'2024-12-07 12:15:35','2024-12-07 12:15:35'),(38,'Usuario de','Prueba','654685135','53465558','Calle La Pampa','Málaga','España',0,'user@prueba.com','45316061G',NULL,'$2y$12$99c5ZqIaxD5oQ7YXjyFHKOiPOAan8Wm4Ajc9O3DYpF4OozshqYWyK',NULL,'2024-12-07 15:43:05','2024-12-07 15:45:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
