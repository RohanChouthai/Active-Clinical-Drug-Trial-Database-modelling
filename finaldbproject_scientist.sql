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
-- Table structure for table `scientist`
--

DROP TABLE IF EXISTS `scientist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scientist` (
  `Scientist_ID` tinyint(4) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Disease` varchar(20) NOT NULL,
  `ResearchCenter_ID` int(11) NOT NULL,
  PRIMARY KEY (`Scientist_ID`),
  KEY `IX_Relationship13` (`ResearchCenter_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scientist`
--

LOCK TABLES `scientist` WRITE;
/*!40000 ALTER TABLE `scientist` DISABLE KEYS */;
INSERT INTO `scientist` VALUES (1,'Martina ','Hofstee','1',1),(2,'Marshall ','Hoisington','4',3),(3,'Mark ','Holtz','5',5),(4,'Marissa ','Bass','3',7),(5,'Maria','Wong','2',9),(6,'Yanwen ','Dan','7',11),(7,'Yan ','Holzman','9',13),(8,'Ya-Han ','Liha','8',15),(9,'Yael','Ross','10',17),(10,'Wushen ',' Hong','12',19),(11,'Michael ','Guinn','11',2),(12,'Michael ','Kong','15',4),(13,'Micha','Ha','14',6),(14,'Michael Gupta','Guill','16',8),(15,'Maxwell ',' Gupta','18',10),(16,'Matthew ','Hagiwara','17',12),(17,'Matthew ','Hanan','19',14),(18,'Matthew ','Darwin','20',16),(19,'Matthew ','Fazer','6',18),(20,'Josh','King','13',20);
/*!40000 ALTER TABLE `scientist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21 17:21:54
