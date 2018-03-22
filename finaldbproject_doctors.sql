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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `Doctor_ID` int(11) NOT NULL,
  `Trial_ID` int(11) NOT NULL,
  `Hospital_ID` int(11) NOT NULL,
  `Phase_Number` int(11) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Cell Phone` bigint(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Doctor_ID`,`Trial_ID`),
  KEY `IX_Relationship16` (`Hospital_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,2,3,1,'Jack','Shaw',6671325189,'shaw.j@med.com'),(2,3,10,1,'Frank','Shearer',4787852487,'Shearer.f@med.com'),(3,6,4,3,'Luke','Moses',6755461110,'Moses.l@med.com'),(4,8,5,2,'Dan','Billings',4956710280,'Billings.D@med.com'),(5,12,8,1,'Roberto','Conte',5221714902,'Conte.R@med.com'),(6,11,9,2,'Carlo','Mancini',5330122146,'Mancini.C@med.com'),(7,5,6,3,'James','Cardillo',3493894200,'Cardillo.J@med.com'),(8,10,7,3,'Rafael','Silva',8205789677,'silva.Rj@med.com'),(9,7,10,3,'Roger','Young',5615356841,'young.r@med.com'),(10,9,5,2,'Steve','Johnson',6280918973,'johnson.s@med.com'),(12,13,2,1,'Darek','Cech',1815345598,'cech.d@med.com'),(13,15,3,2,'Stefen','Nzonzi',1784981155,'nzonzi.s@med.com'),(14,1,7,1,'Ricky','Martin',2542795962,'martin.r@med.com'),(15,4,9,2,'Darren','Lehmann',1267061052,'lehmann.d@med.com'),(16,17,10,2,'Elena','Williams',9411523257,'williams.e@med.com'),(17,19,5,3,'Victoria','Stone',4595211736,'stone.v@med.com'),(18,20,1,1,'Emma','Wilkins',8092139806,'wilkins.e@med.com'),(19,18,3,2,'Carolina','Martinez',6024143780,'martinez.c@med.com'),(20,14,4,3,'Eugene','Ancelotti',6318635942,'ancelotti.e@med.com');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `email_validation`
  BEFORE
  INSERT
  ON `DOCTORS`
  FOR EACH ROW
  BEGIN
    if new.Email not like '%_@%_._%'
    then 
    signal sqlstate value '45000'
    set message_text ='The entered Email is invalid';
    end if;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21 17:21:54
