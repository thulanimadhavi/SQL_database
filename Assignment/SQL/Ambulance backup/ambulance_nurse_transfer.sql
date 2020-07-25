-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ambulance
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `nurse_transfer`
--

DROP TABLE IF EXISTS `nurse_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nurse_transfer` (
  `transfer_id` int(11) NOT NULL,
  `nurse_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  UNIQUE KEY `transfer_id_UNIQUE` (`transfer_id`),
  KEY `nurse_nursetra_idx` (`nurse_id`),
  KEY `traout_nursetra_idx` (`transfer_id`),
  KEY `state_nursetra_idx` (`state_id`),
  CONSTRAINT `nurse_nursetra` FOREIGN KEY (`nurse_id`) REFERENCES `nurse` (`nurse_id`),
  CONSTRAINT `state_nursetra` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`),
  CONSTRAINT `traout_nursetra` FOREIGN KEY (`transfer_id`) REFERENCES `transfer_out` (`transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_transfer`
--

LOCK TABLES `nurse_transfer` WRITE;
/*!40000 ALTER TABLE `nurse_transfer` DISABLE KEYS */;
INSERT INTO `nurse_transfer` VALUES (1,2,1),(2,2,2),(3,3,1),(4,3,2),(5,4,1);
/*!40000 ALTER TABLE `nurse_transfer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 19:34:13
