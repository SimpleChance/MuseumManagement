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
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publication` (
  `PublicationID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `AuthorIDs` text,
  `DatePublished` date DEFAULT NULL,
  `Abstract` text,
  `ArtifactID` int DEFAULT NULL,
  PRIMARY KEY (`PublicationID`),
  KEY `ArtifactID` (`ArtifactID`),
  CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`ArtifactID`) REFERENCES `artifact` (`ArtifactID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication`
--

LOCK TABLES `publication` WRITE;
/*!40000 ALTER TABLE `publication` DISABLE KEYS */;
INSERT INTO `publication` VALUES (1,'The Fossilized Remains of the Late Cretaceous','1, 2','2024-05-20','A detailed study on the fossilized remains found in the Late Cretaceous period, including new discoveries.',1),(2,'Exploring Ancient Civilizations through Artifacts','3, 4, 5','2024-06-15','An analysis of artifacts from ancient civilizations, focusing on their cultural significance.',3),(3,'The Role of Preservation in Artifact Longevity','6, 7','2024-07-05','Discusses the methods of preservation and their impact on artifact preservation over time.',4),(4,'Virtual Tours: The Future of Museum Experiences','8','2024-08-30','Explores the growing role of virtual tours in modern museums and their accessibility for global audiences.',5),(5,'Underwater Archaeology: Discoveries from Sunken Ships','2, 6','2024-09-12','Examines the archaeology of sunken ships and their preserved artifacts from underwater excavation sites.',6),(6,'Digital Artifacts: Preserving the Digital Age','1, 5, 7','2024-10-01','A comprehensive review of the preservation of digital artifacts and their significance in the modern world.',7),(7,'The Impact of Restoration on Ancient Artifacts','4, 3','2024-11-10','Investigates how modern restoration techniques have helped preserve ancient artifacts.',8),(8,'The Intersection of Technology and Archaeology','1, 6','2024-12-15','Explores how technological advancements are enhancing archaeological research and artifact analysis.',29);
/*!40000 ALTER TABLE `publication` ENABLE KEYS */;
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
