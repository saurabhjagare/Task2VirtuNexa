-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sorting_app
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `sorted_numbers`
--

DROP TABLE IF EXISTS `sorted_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sorted_numbers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `input_numbers` varchar(255) DEFAULT NULL,
  `sorted_numbers` varchar(255) DEFAULT NULL,
  `order_type` enum('ASC','DESC') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sorted_numbers`
--

LOCK TABLES `sorted_numbers` WRITE;
/*!40000 ALTER TABLE `sorted_numbers` DISABLE KEYS */;
INSERT INTO `sorted_numbers` VALUES (1,'25638','[25638]','DESC','2025-02-24 11:28:37'),(2,'45838','[45838]','DESC','2025-02-24 11:31:10'),(3,'65388','[65388]','DESC','2025-02-24 11:31:35'),(4,'755893','[755893]','DESC','2025-02-24 11:32:03'),(5,'678032','[678032]','DESC','2025-02-24 11:32:32'),(6,'694245','[694245]','ASC','2025-02-24 11:33:02'),(7,'4,4,6,2,1,7','[7, 6, 4, 4, 2, 1]','DESC','2025-02-24 11:33:37'),(8,'69041','[69041]','DESC','2025-02-24 11:34:16'),(9,'2,3,4,5,1','[1, 2, 3, 4, 5]','ASC','2025-02-24 11:34:42'),(10,'7,3,2,4,8,9','[9, 8, 7, 4, 3, 2]','DESC','2025-02-24 11:35:20'),(11,'6,2,3,7,1','[7, 6, 3, 2, 1]','DESC','2025-02-24 11:35:51'),(12,'7,3,5,6,1,3','[7, 6, 5, 3, 3, 1]','DESC','2025-02-24 11:36:29'),(13,'5,2,4,1,2,4,7','[1, 2, 2, 4, 4, 5, 7]','ASC','2025-02-24 11:38:01');
/*!40000 ALTER TABLE `sorted_numbers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-24 18:54:18
