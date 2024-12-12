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
-- Table structure for table `virtualtour`
--

DROP TABLE IF EXISTS `virtualtour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtualtour` (
  `TourID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` text,
  `DateOfLaunch` date NOT NULL,
  `MuseumID` int DEFAULT NULL,
  PRIMARY KEY (`TourID`),
  KEY `MuseumID` (`MuseumID`),
  CONSTRAINT `virtualtour_ibfk_1` FOREIGN KEY (`MuseumID`) REFERENCES `museum` (`MuseumID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualtour`
--

LOCK TABLES `virtualtour` WRITE;
/*!40000 ALTER TABLE `virtualtour` DISABLE KEYS */;
INSERT INTO `virtualtour` VALUES (1,'Ancient Civilizations Tour','A comprehensive virtual tour of ancient civilizations, showcasing artifacts and cultures from Egypt, Mesopotamia, and the Indus Valley.','2024-01-15',6),(2,'Space Exploration Tour','An immersive virtual experience highlighting the history of space exploration, featuring models, spacecraft, and space missions.','2024-02-10',7),(3,'Renaissance Art Tour','Explore the masterpieces of the Renaissance era through a detailed virtual tour of famous artworks, from Leonardo da Vinci to Michelangelo.','2024-03-05',8),(4,'Natural Wonders Tour','A virtual journey through the world\'s most awe-inspiring natural wonders, from the Amazon rainforest to the Grand Canyon.','2024-04-20',9),(5,'Modern Art Tour','A cutting-edge virtual tour showcasing the best of modern and contemporary art from around the world, with interactive exhibits.','2024-05-15',10),(6,'Underwater Archaeology Tour','Dive deep into the world of underwater archaeology and explore sunken cities, ships, and lost artifacts.','2024-06-01',6),(7,'Dinosaur Discovery Tour','Travel back in time to the age of dinosaurs and explore the fossils and evidence that have shaped our understanding of prehistoric life.','2024-07-10',7),(8,'The Human Body Tour','A fascinating virtual exploration of the human body, showcasing anatomy, medical advancements, and the history of medicine.','2024-08-01',8),(9,'World War II History Tour','A detailed tour through key moments and artifacts from World War II, offering insights into the events that changed the world.','2024-09-25',9),(10,'Asian Art and Culture Tour','Experience the rich art and culture of Asia through a virtual journey featuring ancient traditions and modern influences.','2024-10-30',10);
/*!40000 ALTER TABLE `virtualtour` ENABLE KEYS */;
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
