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
-- Table structure for table `transfer_out`
--

DROP TABLE IF EXISTS `transfer_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transfer_out` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `amb_type_id` int(11) NOT NULL,
  `depart_dt` datetime NOT NULL,
  PRIMARY KEY (`transfer_id`),
  KEY `requests_traout_idx` (`request_id`),
  KEY `state_traout_idx` (`state_id`),
  KEY `ambtype_traout_idx` (`amb_type_id`),
  CONSTRAINT `ambtype_traout` FOREIGN KEY (`amb_type_id`) REFERENCES `ambulance_type` (`amb_type_id`),
  CONSTRAINT `requests_traout` FOREIGN KEY (`request_id`) REFERENCES `requests` (`request_id`),
  CONSTRAINT `state_traout` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_out`
--

LOCK TABLES `transfer_out` WRITE;
/*!40000 ALTER TABLE `transfer_out` DISABLE KEYS */;
INSERT INTO `transfer_out` VALUES (1,15625,1,1,1,'2018-08-23 05:23:26'),(2,10023,3,2,2,'2018-08-26 09:50:12'),(3,15862,4,1,2,'2018-08-28 06:45:08'),(4,12563,2,1,1,'2018-09-02 14:56:32'),(5,14526,5,2,1,'2018-09-05 18:14:36'),(6,15263,6,2,1,'2018-09-08 13:05:16'),(7,16542,9,2,2,'2018-09-09 04:02:10'),(8,13526,8,2,1,'2018-09-12 10:53:24'),(9,12563,7,1,2,'2018-09-15 16:26:42'),(10,15426,10,2,2,'2018-09-16 07:05:17');
/*!40000 ALTER TABLE `transfer_out` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 19:34:15
