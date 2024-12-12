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
-- Table structure for table `securitylog`
--

DROP TABLE IF EXISTS `securitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitylog` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `DateTime` datetime NOT NULL,
  `IncidentType` varchar(100) NOT NULL,
  `Description` text,
  `EmployeeID` int DEFAULT NULL,
  PRIMARY KEY (`LogID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `securitylog_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitylog`
--

LOCK TABLES `securitylog` WRITE;
/*!40000 ALTER TABLE `securitylog` DISABLE KEYS */;
INSERT INTO `securitylog` VALUES (1,'2024-12-01 08:30:00','Unauthorized Access','A visitor attempted to access restricted areas of the museum. Incident was reported and access was revoked.',1),(2,'2024-12-02 14:45:00','Theft Attempt','An individual was seen attempting to steal an artifact. The situation was handled by security, and the individual was detained.',2),(3,'2024-12-03 10:15:00','Vandalism','A visitor defaced a museum exhibit. The incident was documented, and the individual was escorted out of the premises.',3),(4,'2024-12-04 17:00:00','Suspicious Behavior','A person was observed behaving suspiciously near valuable exhibits. Security was notified, and the individual was monitored closely.',4),(5,'2024-12-05 12:30:00','Fire Alarm Triggered','A fire alarm was triggered by a malfunctioning system. No fire was detected, and the situation was resolved without incident.',5),(6,'2024-12-06 19:00:00','Security Breach','An individual managed to bypass the security check at the entrance. The breach was caught on camera and the individual was immediately apprehended.',6),(7,'2024-12-07 11:00:00','Disturbance','A group of visitors created a disturbance by arguing loudly near the main exhibit. Security intervened, and the group was escorted out.',7),(8,'2024-12-08 15:45:00','Missing Item','A valuable artifact was reported missing. Security personnel initiated a search and the item was recovered in the museum storage.',8),(9,'2024-12-09 09:00:00','Suspicious Package','A suspicious package was found near the entrance. The area was evacuated, and the package was safely examined by authorities.',9),(10,'2024-12-10 13:30:00','System Malfunction','The security monitoring system experienced a brief malfunction. The issue was quickly resolved, and no data was compromised.',10);
/*!40000 ALTER TABLE `securitylog` ENABLE KEYS */;
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
