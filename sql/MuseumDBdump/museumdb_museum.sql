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
-- Table structure for table `museum`
--

DROP TABLE IF EXISTS `museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `museum` (
  `MuseumID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `EstablishedYear` int DEFAULT NULL,
  `DirectorName` varchar(100) DEFAULT NULL,
  `ContactInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MuseumID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum`
--

LOCK TABLES `museum` WRITE;
/*!40000 ALTER TABLE `museum` DISABLE KEYS */;
INSERT INTO `museum` VALUES (6,'National Museum of Natural History','Washington, D.C., USA',1910,'John Doe','info@nmnh.org'),(7,'British Museum','London, England',1753,'Emma Smith','contact@britishmuseum.org'),(8,'Louvre Museum','Paris, France',1793,'Jean Dupont','contact@louvre.fr'),(9,'Tokyo National Museum','Tokyo, Japan',1872,'Taro Yamada','info@tnm.go.jp'),(10,'Australian Museum','Sydney, Australia',1827,'Emily Brown','info@australianmuseum.net.au'),(11,'National Museum of Natural History','Washington, D.C., USA',1910,'John Doe','info@nmnh.org'),(12,'British Museum','London, England',NULL,'Emma Smith','contact@britishmuseum.org'),(13,'Louvre Museum','Paris, France',NULL,'Jean Dupont','contact@louvre.fr'),(14,'Tokyo National Museum','Tokyo, Japan',1872,'Taro Yamada','info@tnm.go.jp'),(15,'Australian Museum','Sydney, Australia',1827,'Emily Brown','info@australianmuseum.net.au'),(16,'National Museum of Natural History','Washington, D.C., USA',1910,'John Doe','info@nmnh.org'),(17,'British Museum','London, England',NULL,'Emma Smith','contact@britishmuseum.org'),(18,'Louvre Museum','Paris, France',NULL,'Jean Dupont','contact@louvre.fr'),(19,'Tokyo National Museum','Tokyo, Japan',1872,'Taro Yamada','info@tnm.go.jp'),(20,'Australian Museum','Sydney, Australia',1827,'Emily Brown','info@australianmuseum.net.au');
/*!40000 ALTER TABLE `museum` ENABLE KEYS */;
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
