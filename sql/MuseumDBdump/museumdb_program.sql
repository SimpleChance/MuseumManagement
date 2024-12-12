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
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `ProgramID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Instructor` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `AgeGroup` varchar(50) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`ProgramID`),
  KEY `Instructor` (`Instructor`),
  CONSTRAINT `program_ibfk_1` FOREIGN KEY (`Instructor`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (1,'Children\'s Workshop on Fossils',1,'2024-06-15','Children','A hands-on workshop where children can learn about fossils and how they are preserved.'),(2,'History of Ancient Artifacts',2,'2024-07-20','Adults','An educational program exploring the history and significance of ancient artifacts from various civilizations.'),(3,'Underwater Archaeology Introduction',3,'2024-08-10','Teens and Adults','A program focused on the basics of underwater archaeology and its importance in preserving maritime history.'),(4,'Interactive Fossil Dig',4,'2024-09-05','Children','A fun and interactive activity where children can dig for replica fossils and learn about the excavation process.'),(5,'Preservation Techniques for Artifacts',5,'2024-10-12','Adults','A workshop aimed at teaching the methods used in artifact conservation and preservation.'),(6,'Virtual Tour of the Museum',6,'2024-11-01','All Ages','A virtual guided tour showcasing the museum’s most popular exhibits and rare collections.'),(7,'Ancient Civilizations Exhibit',7,'2024-12-05','Teens and Adults','A deep dive into the artifacts and history of ancient civilizations, with a focus on cultural significance and preservation.'),(8,'Archaeological Survey and Excavation',8,'2024-12-15','Adults','A program providing insight into modern archaeological techniques, including excavation methods and analysis of findings.');
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-10 22:21:57
