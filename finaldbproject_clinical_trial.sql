CREATE DATABASE  IF NOT EXISTS `finaldbproject` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `finaldbproject`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: finaldbproject
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clinical_trial`
--

DROP TABLE IF EXISTS `clinical_trial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinical_trial` (
  `Trial_ID` int(11) NOT NULL,
  `Company_ID` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `Disease_ID` int(11) NOT NULL,
  `Estimated_Cost` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Trial_ID`),
  KEY `IX_Relationship15` (`Company_ID`),
  KEY `IX_Relationship4` (`Disease_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinical_trial`
--

LOCK TABLES `clinical_trial` WRITE;
/*!40000 ALTER TABLE `clinical_trial` DISABLE KEYS */;
INSERT INTO `clinical_trial` VALUES (1,1,'2000-01-01',2,2500),(2,3,'2002-02-12',14,2521),(3,6,'2016-03-05',1,3450),(4,8,'2017-01-01',5,4531),(5,2,'1990-01-02',12,2580),(6,4,'1995-05-09',6,2000),(7,5,'2009-08-12',11,3000),(8,9,'2011-05-01',7,3100),(9,10,'1989-01-01',1,2300),(10,2,'2003-01-01',9,3245),(11,4,'1995-05-06',9,3465),(12,6,'2006-02-01',3,4000),(13,7,'2000-01-01',3,4200),(14,9,'1995-05-01',6,3489),(15,10,'2005-12-01',7,2690),(16,1,'1993-07-16',4,2500),(17,3,'1994-10-29',10,2800),(18,5,'2000-08-29',2,3100),(19,7,'2002-05-05',10,3200),(20,9,'2000-12-06',12,2670),(21,21,'2005-04-09',16,2009),(22,10,'2006-04-02',2,3000);
/*!40000 ALTER TABLE `clinical_trial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21 17:21:56
