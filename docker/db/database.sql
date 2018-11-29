-- MySQL dump 10.16  Distrib 10.3.10-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: manage_worker
-- ------------------------------------------------------
-- Server version	10.3.10-MariaDB-1:10.3.10+maria~bionic

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
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `is_employer` bit(1) DEFAULT b'0',
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'雇用者','password','');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_record`
--

DROP TABLE IF EXISTS `working_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `working_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `start_work` timestamp NOT NULL DEFAULT '1970-01-01 00:00:01',
  `finish_work` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_record`
--

LOCK TABLES `working_record` WRITE;
/*!40000 ALTER TABLE `working_record` DISABLE KEYS */;
INSERT INTO `working_record` VALUES (1,1,'2018-11-23 02:55:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `working_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_schedule`
--

DROP TABLE IF EXISTS `working_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `working_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `start_work` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `finish_work` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_schedule`
--

LOCK TABLES `working_schedule` WRITE;
/*!40000 ALTER TABLE `working_schedule` DISABLE KEYS */;
INSERT INTO `working_schedule` VALUES (1,1,'2018-11-23 09:30:00','2018-11-23 18:30:00');
/*!40000 ALTER TABLE `working_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-22 18:29:27
