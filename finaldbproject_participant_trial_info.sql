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
-- Table structure for table `participant_trial_info`
--

DROP TABLE IF EXISTS `participant_trial_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant_trial_info` (
  `Participant_ID` int(11) NOT NULL,
  `Trial_ID` int(11) NOT NULL,
  `Phase_Number` int(11) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Action_Taken` varchar(20) NOT NULL,
  PRIMARY KEY (`Participant_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_trial_info`
--

LOCK TABLES `participant_trial_info` WRITE;
/*!40000 ALTER TABLE `participant_trial_info` DISABLE KEYS */;
INSERT INTO `participant_trial_info` VALUES (1,1,1,'Patient','Medicine'),(2,2,3,'Patient','Medicine'),(3,3,2,'Patient','Medicine'),(4,4,1,'Patient','Medicine'),(5,5,3,'Patient','Medicine'),(6,5,3,'Patient','Medicine'),(7,6,2,'Patient','Medicine'),(8,7,1,'Patient','Medicine'),(9,8,2,'Patient','Placebo'),(10,9,3,'Patient','Placebo'),(11,10,1,'Patient','Placebo'),(12,11,1,'Patient','Placebo'),(13,12,2,'Patient','Placebo'),(14,13,3,'Patient','Placebo'),(15,14,2,'Patient','Placebo'),(16,14,2,'Patient','Placebo'),(17,15,2,'Patient','Placebo'),(18,15,2,'Volunteer','Medicine'),(19,16,3,'Volunteer','Medicine'),(20,16,3,'Volunteer','Medicine'),(21,16,3,'Volunteer','Medicine'),(22,17,3,'Volunteer','Medicine'),(23,17,3,'Volunteer','Medicine'),(24,17,3,'Volunteer','Medicine'),(25,18,1,'Volunteer','Medicine'),(27,19,1,'Volunteer','Placebo'),(28,20,2,'Volunteer','Placebo'),(29,20,2,'Volunteer','Placebo'),(30,2,3,'Volunteer','Placebo'),(36,18,1,'Volunteer','Placebo'),(37,2,3,'Volunteer','Placeba'),(38,3,2,'Volunteer','Placebo');
/*!40000 ALTER TABLE `participant_trial_info` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Participant_Info_Add`
  AFTER
  INSERT
  ON `finaldbproject`.`participant_trial_info`
  FOR EACH ROW
  BEGIN
  declare NewName int;
  declare NEwRole varchar(20);
  select participant_trial_info.Participant_ID into NewName from participant_trial_info;
  select participant_trial_info.Role into NewRole from participant_trial_info;
    insert into participant_update
    values (NewName,NewRole);
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

-- Dump completed on 2017-04-21 17:21:57
