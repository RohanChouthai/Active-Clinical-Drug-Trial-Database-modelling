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
-- Table structure for table `research center`
--

DROP TABLE IF EXISTS `research center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `research center` (
  `ResearchCenter_ID` int(11) NOT NULL,
  `Center_Name` varchar(30) DEFAULT NULL,
  `Trial_ID` int(11) NOT NULL,
  `Phase_Number` int(11) NOT NULL,
  `Company_ID` int(11) DEFAULT NULL,
  `State_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ResearchCenter_ID`),
  KEY `IX_Relationship7` (`State_ID`),
  KEY `IX_Relationship8` (`Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research center`
--

LOCK TABLES `research center` WRITE;
/*!40000 ALTER TABLE `research center` DISABLE KEYS */;
INSERT INTO `research center` VALUES (1,'gify',1,1,1,2),(2,'ref',2,3,3,3),(3,'tyf',3,2,2,1),(4,'wer',4,1,4,2),(5,'qtec',5,3,5,5),(6,'def',6,2,6,31),(7,'gt',7,1,7,12),(8,'loi',8,2,8,20),(9,'jut',9,3,9,6),(10,'yuh',10,1,10,9),(11,'gfd',11,1,2,1),(12,'num',12,2,4,2),(13,'zxe',13,3,5,5),(14,'mut',14,2,10,9),(15,'dro',15,2,5,5),(16,'wqs',16,3,3,3),(17,'pol',17,3,1,2),(18,'ret',18,1,4,2),(19,'azx',19,1,6,31),(20,'mno',20,2,8,20);
/*!40000 ALTER TABLE `research center` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21 17:21:57
