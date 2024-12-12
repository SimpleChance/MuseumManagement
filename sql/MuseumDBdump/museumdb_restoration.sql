CREATE DATABASE  IF NOT EXISTS `museumdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `museumdb`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: museumdb
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
-- Table structure for table `restoration`
--

DROP TABLE IF EXISTS `restoration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restoration` (
  `RestorationID` int NOT NULL AUTO_INCREMENT,
  `ArtifactID` int DEFAULT NULL,
  `DateStarted` date DEFAULT NULL,
  `DateCompleted` date DEFAULT NULL,
  `TechniquesUsed` text,
  `PreservationStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RestorationID`),
  KEY `ArtifactID` (`ArtifactID`),
  CONSTRAINT `restoration_ibfk_1` FOREIGN KEY (`ArtifactID`) REFERENCES `artifact` (`ArtifactID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restoration`
--

LOCK TABLES `restoration` WRITE;
/*!40000 ALTER TABLE `restoration` DISABLE KEYS */;
INSERT INTO `restoration` VALUES (1,1,'2024-01-05','2024-03-10','Cleaning, Repainting, Surface Stabilization','Restored'),(2,2,'2024-02-01','2024-04-15','Structural Reinforcement, Polishing, Repainting','In Progress'),(3,3,'2024-03-10','2024-05-20','Consolidation, Surface Cleaning, UV Protection','Restored'),(4,4,'2024-04-01','2024-06-10','Disinfection, Surface Repair, Repainting','Pending'),(5,5,'2024-05-15','2024-07-01','Stabilization, Mold Removal, Surface Cleaning','In Progress'),(6,6,'2024-06-01','2024-08-05','Cleaning, Reinforcement, Surface Restoration','Restored'),(7,7,'2024-07-20','2024-09-15','UV Protection, Surface Stabilization, Retouching','Pending'),(8,8,'2024-08-10','2024-10-15','Consolidation, Cleaning, Repainting','In Progress'),(9,29,'2024-09-01','2024-11-05','Structural Repair, Surface Cleaning, Stabilization','Restored'),(10,30,'2024-09-10','2024-11-20','Stabilization, UV Treatment, Repainting','Pending');
/*!40000 ALTER TABLE `restoration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-10 22:21:58
