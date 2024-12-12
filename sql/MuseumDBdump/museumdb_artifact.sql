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
-- Table structure for table `artifact`
--

DROP TABLE IF EXISTS `artifact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artifact` (
  `ArtifactID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Type` enum('HumanHistoric','HumanPrehistoric','FossilDinosaur','FossilCenozoic','FossilPreDinosaur','ExtraterrestrialSample','Other') DEFAULT NULL,
  `ExpectedCarbonDate` varchar(50) DEFAULT NULL,
  `DateOfDiscovery` date DEFAULT NULL,
  `RegionOfOrigin` varchar(100) DEFAULT NULL,
  `MuseumAcquisitionDate` date DEFAULT NULL,
  `DisplaySection` varchar(50) DEFAULT NULL,
  `ArtifactCondition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ArtifactID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artifact`
--

LOCK TABLES `artifact` WRITE;
/*!40000 ALTER TABLE `artifact` DISABLE KEYS */;
INSERT INTO `artifact` VALUES (1,'Dinosaur Bone','FossilDinosaur','10000000-01-01','2023-01-15','North America','2023-06-01','Paleontology','Excellent'),(2,'Ancient Vase','HumanHistoric','0001-01-01','1980-03-10','Mesopotamia','1990-06-20','Antiquities','Fragile'),(3,'Tyrannosaurus Rex Skull','FossilDinosaur','65,000,000 BC','2023-01-15','Montana, USA','2023-06-01','Paleontology','Excellent'),(4,'Mammoth Tusk','FossilCenozoic','10,000 BC','2019-04-20','Siberia, Russia','2020-02-15','Ice Age Exhibit','Good'),(5,'Trilobite Fossil','FossilPreDinosaur','500,000,000 BC','2020-07-12','Morocco','2021-01-05','Early Life Exhibit','Fair'),(6,'Tyrannosaurus Rex Skull','FossilDinosaur','65,000,000 BC','2023-01-15','Montana, USA','2023-06-01','Paleontology','Excellent'),(7,'Mammoth Tusk','FossilCenozoic','10,000 BC','2019-04-20','Siberia, Russia','2020-02-15','Ice Age Exhibit','Good'),(8,'Trilobite Fossil','FossilPreDinosaur','500,000,000 BC','2020-07-12','Morocco','2021-01-05','Early Life Exhibit','Fair'),(29,'Roman Ceramic Vase','HumanHistoric','2000 years ago','1995-04-20','Italy','1995-05-15','Ancient Civilizations','Good'),(30,'Stone Age Spearhead','HumanPrehistoric','10,000 years ago','2008-09-05','Africa','2008-10-10','Prehistoric Tools','Fair'),(31,'Medieval Knight\'s Helmet','HumanHistoric','800 years ago','2011-07-12','England','2011-08-01','Medieval Europe','Excellent'),(32,'Ancient Sumerian Tablet','HumanHistoric','5000 years ago','2000-03-18','Mesopotamia','2000-04-20','Cradle of Civilization','Good'),(33,'Neolithic Grinding Stone','HumanPrehistoric','7000 years ago','2015-11-22','China','2015-12-05','Prehistoric Innovation','Fair'),(34,'Lunar Rock Fragment','ExtraterrestrialSample','4.5 billion years ago','1971-07-21','Moon','1971-08-01','Space Exploration','Excellent'),(35,'Martian Soil Sample','ExtraterrestrialSample','4 billion years ago','2018-03-14','Mars','2018-05-10','Space Exploration','Good'),(36,'Meteorite Shard','ExtraterrestrialSample','Unknown','1999-09-09','Antarctica','1999-10-01','Meteorite Gallery','Fair'),(37,'Asteroid Core Fragment','ExtraterrestrialSample','4.6 billion years ago','2007-01-22','Asteroid Belt','2007-02-15','Space Exploration','Good'),(38,'Extraterrestrial Metal Alloy','ExtraterrestrialSample','Unknown','2020-11-10','Unknown','2020-12-01','Experimental Materials','Excellent'),(39,'Bronze Age Axe','HumanPrehistoric','4000 years ago','2010-06-15','Germany','2010-07-10',NULL,'Good'),(40,'Ancient Gold Coin','HumanHistoric','2000 years ago','2005-03-18','Turkey','2005-05-10',NULL,'Excellent'),(41,'Spacecraft Debris','ExtraterrestrialSample','Unknown','2019-10-11','Low Earth Orbit','2020-01-05',NULL,'Fair'),(42,'Fossilized Fern Leaf','FossilPreDinosaur','300 million years ago','2018-02-14','Australia','2018-06-01',NULL,'Good'),(43,'Iron Age Sword','HumanHistoric','2500 years ago','2012-11-08','Scotland','2012-12-15',NULL,'Good'),(44,'Lunar Dust Sample','ExtraterrestrialSample','4.5 billion years ago','1972-12-14','Moon','1973-01-10',NULL,'Excellent'),(45,'Petrified Tree Trunk','FossilCenozoic','20 million years ago','2015-05-22','USA','2015-09-10',NULL,'Fair'),(46,'Neolithic Pottery Shard','HumanPrehistoric','7000 years ago','2009-08-03','China','2009-09-15',NULL,'Fragile');
/*!40000 ALTER TABLE `artifact` ENABLE KEYS */;
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
