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
-- Table structure for table `research`
--

DROP TABLE IF EXISTS `research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research` (
  `ResearchID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `LeadResearcher` int DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Findings` text,
  PRIMARY KEY (`ResearchID`),
  KEY `LeadResearcher` (`LeadResearcher`),
  CONSTRAINT `research_ibfk_1` FOREIGN KEY (`LeadResearcher`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research`
--

LOCK TABLES `research` WRITE;
/*!40000 ALTER TABLE `research` DISABLE KEYS */;
INSERT INTO `research` VALUES (1,'Fossil Discovery in the Late Cretaceous',1,'2024-01-01','2024-06-01','A significant discovery of multiple fossilized species dating back to the Late Cretaceous period, which could provide new insights into the biodiversity of the era.'),(2,'Ancient Artifacts and Their Cultural Significance',3,'2024-02-15','2024-08-30','Research focused on the artifacts from ancient civilizations and their cultural importance, shedding light on the ways these societies interacted with their environment.'),(3,'Restoration Techniques in Artifact Preservation',5,'2024-03-01','2024-09-01','Exploring the latest techniques in restoring ancient artifacts, ensuring they are preserved for future generations while maintaining historical accuracy.'),(4,'Virtual Museum Tours: The Future of Cultural Preservation',2,'2024-04-10','2024-10-05','This research examines the impact of virtual museum tours in providing global access to museum artifacts and enhancing cultural preservation efforts.'),(5,'Underwater Archaeology and Its Discoveries',7,'2024-05-20','2024-11-15','A deep dive into the field of underwater archaeology, focusing on the preservation of artifacts found in sunken ships and their excavation processes.'),(6,'The Role of Technology in Modern Archaeology',6,'2024-06-25','2024-12-01','Research on how advancements in technology, such as 3D scanning and AI, are revolutionizing archaeological excavation and analysis techniques.'),(7,'Artifact Conservation and Its Challenges',4,'2024-07-15','2024-12-10','A comprehensive study on the challenges faced by conservators when preserving fragile artifacts, including case studies of major conservation projects.'),(8,'Exploring the Digital Future of Artifact Preservation',8,'2024-08-30','2024-12-20','Investigating the role of digital artifacts in modern preservation practices, including the digitization of ancient texts and other cultural heritage materials.');
/*!40000 ALTER TABLE `research` ENABLE KEYS */;
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
