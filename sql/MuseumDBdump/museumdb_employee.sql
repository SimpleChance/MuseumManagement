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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `ContactInfo` varchar(255) DEFAULT NULL,
  `SupervisorID` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `SupervisorID` (`SupervisorID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`SupervisorID`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Alice Johnson','Curator','Exhibitions','2015-03-01',55000.00,'alice.johnson@example.com',NULL),(2,'Bob Smith','Security Officer','Security','2020-07-15',40000.00,'bob.smith@example.com',NULL),(3,'Alice Johnson','Curator','Paleontology','2015-03-15',55000.00,'alice.johnson@museum.org',NULL),(4,'Bob Smith','Technician','Astrogeology','2018-06-20',47000.00,'bob.smith@museum.org',NULL),(5,'Charlie Brown','Archivist','Antiquities','2020-09-10',48000.00,'charlie.brown@museum.org',NULL),(6,'Diana Martinez','Researcher','Marine Fossils','2012-04-25',60000.00,'diana.martinez@museum.org',NULL),(7,'Ethan Harris','Guide','Public Education','2017-01-10',40000.00,'ethan.harris@museum.org',NULL),(8,'Fiona Davis','Technician','Prehistoric Tools','2016-11-15',46000.00,'fiona.davis@museum.org',NULL),(9,'George Clark','Curator','Numismatics','2010-07-01',58000.00,'george.clark@museum.org',NULL),(10,'Hannah Adams','Assistant','Space Exploration','2021-03-18',35000.00,'hannah.adams@museum.org',NULL),(11,'Ian Bennett','Director','Historic Artifacts','2008-12-05',75000.00,'ian.bennett@museum.org',NULL),(12,'Jessica Wilson','Coordinator','Prehistoric Culture','2019-08-14',52000.00,'jessica.wilson@museum.org',NULL),(13,'Kevin Lee','Technician','Paleobotany','2013-09-05',45000.00,'kevin.lee@museum.org',NULL),(14,'Laura Taylor','Researcher','Cenozoic Life','2011-05-10',61000.00,'laura.taylor@museum.org',NULL),(15,'Michael Garcia','Educator','Public Education','2016-10-20',42000.00,'michael.garcia@museum.org',NULL),(16,'Natalie Rodriguez','Curator','Textile Artifacts','2014-02-15',56000.00,'natalie.rodriguez@museum.org',NULL),(17,'Oliver Anderson','Technician','Astrogeology','2018-07-25',47000.00,'oliver.anderson@museum.org',NULL),(18,'Paula Walker','Coordinator','Marine Fossils','2017-06-12',53000.00,'paula.walker@museum.org',NULL),(19,'Quentin Hall','Assistant','Architectural History','2021-11-01',34000.00,'quentin.hall@museum.org',NULL),(20,'Rebecca Evans','Researcher','Ancient Art','2013-08-10',59000.00,'rebecca.evans@museum.org',NULL),(21,'Samuel King','Director','Paleontology','2009-03-22',76000.00,'samuel.king@museum.org',NULL),(22,'Tina Scott','Archivist','Antiquities','2018-05-25',50000.00,'tina.scott@museum.org',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
