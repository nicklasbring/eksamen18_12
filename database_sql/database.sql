CREATE DATABASE  IF NOT EXISTS `hjemlos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hjemlos`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: hjemlos
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `resurser`
--

DROP TABLE IF EXISTS `resurser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resurser` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `by` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `navn` varchar(255) DEFAULT NULL,
  `beskrivelse` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `telefon` int(10) DEFAULT NULL,
  `aabningstider` varchar(255) DEFAULT NULL,
  `webside` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resurser`
--

LOCK TABLES `resurser` WRITE;
/*!40000 ALTER TABLE `resurser` DISABLE KEYS */;
INSERT INTO `resurser` VALUES (1,'orehoved','bosteder','orehoved bosted','husly','kildevej 2',23459832,'mandag-freadag 10-10','www.orehoved.dk'),(2,'orehoved','bosteder','orehoved bosted','husly','kildevej 2',23459832,'mandag-freadag 10-10','www.orehoved.dk'),(3,'orehoved','bosteder','orehoved bosted','husly','kildevej 2',23459832,'mandag-freadag 10-10','www.orehoved.dk'),(4,'orehoved','bosteder','orehoved bosted','husly','kildevej 2',23459832,'mandag-freadag 10-10','www.orehoved.dk'),(5,'orehoved','bosteder','orehoved bosted','husly','kildevej 2',23459832,'mandag-freadag 10-10','www.orehoved.dk'),(6,'orehoved','bosteder','orehoved bosted','husly','kildevej 2',23459832,'mandag-freadag 10-10','www.orehoved.dk'),(7,'orehoved','bosteder','orehoved bosted','husly','kildevej 2',23459832,'mandag-freadag 10-10','www.orehoved.dk');
/*!40000 ALTER TABLE `resurser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-18 13:49:23
