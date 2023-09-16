CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.33

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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `total_orders` int DEFAULT '0',
  `last_logged_in` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'6d396c9f-c8f0-4a09-8645-d0ec5c6f68af','Alok','ak@gmail.com','af3432','https://cdn.pixabay.com/photo/2023/08/14/15/42/milkyway-8190232_1280.jpg',0,'2023-09-16 15:23:14','2023-09-16 15:23:14','2023-09-16 15:23:14'),(2,'3993dd3c-35ed-4338-a6bd-49ad7f0fa6a5','pankaj','pk@gmail.com','pk1234','https://cdn.pixabay.com/photo/2023/08/07/12/28/swan-8174925_1280.jpg',0,'2023-09-16 15:25:09','2023-09-16 15:25:09','2023-09-16 15:25:09'),(3,'fe06eb6d-52ea-47cd-a2d8-6a8c35e10633','Surendra','svk@gmail.com','pk1234','https://cdn.pixabay.com/photo/2023/08/07/12/28/swan-8174925_1280.jpg',0,'2023-09-16 15:25:35','2023-09-16 15:25:35','2023-09-16 15:25:35'),(4,'8deca085-c352-4b1f-81dc-0c97ac718f0f','kiran','lkrink@gmail.com','12344sf','https://cdn.pixabay.com/photo/2023/09/02/03/14/child-8228075_1280.jpg',0,'2023-09-16 15:26:31','2023-09-16 15:26:31','2023-09-16 15:26:31'),(5,'056e578a-9aef-4511-8991-4e7a8d517898','Shreya','shk@gmail.com','12344sf','https://cdn.pixabay.com/photo/2023/08/11/04/41/woman-8182795_1280.jpg',0,'2023-09-16 15:27:08','2023-09-16 15:27:08','2023-09-16 15:27:08');
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

-- Dump completed on 2023-09-16 21:04:41
