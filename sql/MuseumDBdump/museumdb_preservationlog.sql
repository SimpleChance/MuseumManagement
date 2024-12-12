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
-- Table structure for table `preservationlog`
--

DROP TABLE IF EXISTS `preservationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preservationlog` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `ArtifactID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ActionPerformed` text,
  `PerformedBy` int DEFAULT NULL,
  PRIMARY KEY (`LogID`),
  KEY `ArtifactID` (`ArtifactID`),
  KEY `PerformedBy` (`PerformedBy`),
  CONSTRAINT `preservationlog_ibfk_1` FOREIGN KEY (`ArtifactID`) REFERENCES `artifact` (`ArtifactID`),
  CONSTRAINT `preservationlog_ibfk_2` FOREIGN KEY (`PerformedBy`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preservationlog`
--

LOCK TABLES `preservationlog` WRITE;
/*!40000 ALTER TABLE `preservationlog` DISABLE KEYS */;
INSERT INTO `preservationlog` VALUES (1,1,'2024-05-01','Cleaned and dusted surface',1),(2,2,'2024-06-15','Stabilized the artifact and repaired minor cracks',2),(3,3,'2024-07-10','Removed contaminants and preserved the color',3),(4,4,'2024-08-05','Repaired fracture in the fossil',4),(5,5,'2024-09-20','Applied conservation coating for protection',5),(6,6,'2024-10-10','Restored worn sections and stabilized edges',6),(7,7,'2024-11-01','Repaired damage caused by previous handling',7),(8,8,'2024-12-05','Conducted in-depth cleaning and preservation',8),(9,29,'2024-05-15','Examined and cataloged for exhibition',9),(10,30,'2024-06-10','Repaired chipped surface and re-dyed exposed areas',10),(11,31,'2024-07-25','Polished and applied protective layer',1),(12,32,'2024-08-10','Consolidated fragile materials and reinforced edges',2),(13,33,'2024-09-01','Repaired surface and reinforced with additional support',3),(14,34,'2024-10-15','Performed cleaning and minor stabilization',4),(15,35,'2024-11-05','Applied conservation wax for enhanced preservation',5),(16,36,'2024-12-01','Reinforced weak structural parts and stabilized for display',6),(17,37,'2024-06-05','Dusting and surface cleaning',7),(18,38,'2024-07-01','Conducted preliminary preservation check',8),(19,39,'2024-08-25','Restored cracks and reinforced edges',9),(20,40,'2024-09-15','Applied protective sealant and cleaned surface',10),(21,41,'2024-10-01','Restored coloration and cleaned contaminants',1),(22,42,'2024-11-10','Ensured stability for upcoming exhibit',2),(23,43,'2024-12-20','Full restoration and documentation for archives',3),(24,44,'2024-06-12','Repaired structural integrity and surface',4),(25,45,'2024-07-19','Enhanced preservation techniques for longevity',5),(26,46,'2024-08-22','Cataloged and reinforced support materials',6);
/*!40000 ALTER TABLE `preservationlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-10 22:21:59
