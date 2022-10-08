-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `artist_skills`
--

DROP TABLE IF EXISTS `artist_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_skills` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ArtistID` int DEFAULT NULL,
  `SkillID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ArtistID` (`ArtistID`),
  KEY `SkillID` (`SkillID`),
  CONSTRAINT `artist_skills_ibfk_1` FOREIGN KEY (`ArtistID`) REFERENCES `artist` (`ID`),
  CONSTRAINT `artist_skills_ibfk_2` FOREIGN KEY (`SkillID`) REFERENCES `skills` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_skills`
--

LOCK TABLES `artist_skills` WRITE;
/*!40000 ALTER TABLE `artist_skills` DISABLE KEYS */;
INSERT INTO `artist_skills` VALUES (1,1,1),(2,1,2),(3,1,4),(4,2,1),(5,2,2),(6,3,1),(7,3,2),(8,3,4),(9,3,5),(10,4,1),(11,4,2),(12,4,3),(13,5,1),(14,5,2),(15,5,5),(16,6,1),(17,6,2),(18,7,1),(19,7,2);
/*!40000 ALTER TABLE `artist_skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-08 11:33:00
