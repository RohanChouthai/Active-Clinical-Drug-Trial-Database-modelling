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
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `Participant_ID` int(11) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Weight` int(11) NOT NULL,
  `Blood_Group` char(20) NOT NULL,
  `Gender` char(20) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`Participant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,'Zhen ','Abu-Zahra','1967-12-23',90,'A+','M',NULL),(2,'Zhanetta ','Adeyeye','1962-08-17',50,'B+','F',NULL),(3,'Yunzhe ','Afonso','1956-05-07',40,'O-','F',NULL),(4,'Youngjin ','Ahn','1997-12-05',56,'AB+','F',NULL),(5,'Yu ','Ahn','1995-08-08',67,'B-','M',NULL),(6,'Yoon ','Akin-Aderibigbe','1971-12-30',89,'A-','M',NULL),(7,'Yookyung ','Alexander','1985-02-13',67,'O-','F',NULL),(8,'Yi-Shiuan ','Alsamdan','1950-06-13',45,'AB+','F',NULL),(9,'Yingda ','Alter','1955-02-17',40,'B-','M',NULL),(10,'Ying ','Altmann','1964-02-29',61,'AB-','M',NULL),(11,'Yi-Feng ','Alvarez','1954-02-13',54,'A+','F',NULL),(12,'Yi ','Aramendia','1974-10-31',91,'AB+','F',NULL),(13,'Yaya ','Ashkenazi','1974-11-26',78,'AB-','M',NULL),(14,'Yat-Lun ','Atri','1987-01-17',90,'O-','M',NULL),(15,'Yasuhiro ','Au','1954-04-22',40,'B-','F',NULL),(16,'Yanwen ','Aurori','1956-08-06',55,'A+','F',NULL),(17,'Yan ','Austin','1986-09-04',64,'AB-','M',NULL),(18,'Ya-Han ','Bagdat','1994-02-04',89,'A-','F',NULL),(19,'Yael',' Bala','1979-02-22',72,'O+','F',NULL),(20,'Wushen ','Banovac','1994-06-10',40,'AB+','F',NULL),(21,'Won ','Barakat','1994-05-03',98,'B-','M',NULL),(22,'Won ','Barnes','1959-08-22',68,'O+','M',NULL),(23,'William ','Barrett','1959-09-06',54,'A-','M',NULL),(24,'Willem ','Baxter','1976-12-06',63,'O-','F',NULL),(25,'William ','Baxter','1968-10-09',80,'AB-','F',NULL),(27,'Wayne ','Bechrakis','1956-09-04',70,'AB-','M',NULL),(28,'Vivek ','Beistegui','1980-11-13',80,'AB+','M',NULL),(29,'Viacheslav ','Benchimol','1997-02-22',96,'B-','F',NULL),(30,'Isco','Salmander','1973-10-19',54,'A-','F',NULL),(36,'Wei ','Beatty','1967-03-27',51,'O+','M',NULL),(37,'B','C','2000-01-01',50,'A+','M',17),(38,'X','Y','1995-02-09',30,'A+','F',22),(39,'P','Q','2000-02-06',50,'A-','F',17);
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `New_Entry`
  before
  INSERT
  ON `Participant`
  FOR EACH ROW
  BEGIN
   set new.Age= TIMESTAMPDIFF(YEAR,new.Date_Of_Birth,CURDATE());
     
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Weight_validation`
  BEFORE
  INSERT
  ON `participant`
  FOR EACH ROW
  BEGIN
    if new.Weight < '40' 
    then 
    signal sqlstate value '45000'
    set message_text ='The Participant is not fit for the Clinical Trial';
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

-- Dump completed on 2017-04-21 17:21:55
