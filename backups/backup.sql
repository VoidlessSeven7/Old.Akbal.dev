-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: maria_database
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB-1:10.4.10+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `puntuacion`
--

DROP TABLE IF EXISTS `puntuacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puntuacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `puntuacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuacion`
--

LOCK TABLES `puntuacion` WRITE;
/*!40000 ALTER TABLE `puntuacion` DISABLE KEYS */;
INSERT INTO `puntuacion` VALUES (1,'waassaaa',2),(2,'Aaron',1146),(3,'Tonee',666),(4,'Toneee',420),(5,'Eden la chupa',30),(6,'Alex',8),(7,'Aaron Arriba',12),(8,'Pau',22222),(9,'Gessica',27),(10,'Salma',251),(11,'tuxulo',8),(12,'Willyrex',11),(13,'Franchesco',11),(14,'f',1),(15,'Leigh',22),(16,'Holis',18),(17,'judith',22),(18,'lol',13),(19,'chu',28),(20,'tets',15),(21,'Lulu',15),(22,'kefffe',12),(23,'OwO',22),(24,'Mar',60),(25,'XIII',11111);
/*!40000 ALTER TABLE `puntuacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temas`
--

DROP TABLE IF EXISTS `temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `color` (`color`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temas`
--

LOCK TABLES `temas` WRITE;
/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
INSERT INTO `temas` VALUES (1,'#52EC04','2019-01-22 23:34:05'),(2,'#D8DA81','2019-01-22 23:34:11'),(3,'#1BCABC','2019-01-22 23:34:18'),(4,'#F71F4D','2019-01-22 23:34:20'),(5,'#CF3A11','2019-01-22 23:34:23'),(6,'#A42AFB','2019-01-22 23:34:38'),(7,'#C20583','2019-01-22 23:34:43'),(8,'#1BDC95','2019-01-22 23:34:47'),(9,'#6C5139','2019-01-22 23:34:51'),(10,'#E38D5D','2019-01-22 23:34:53'),(11,'#372FCA','2019-01-22 23:35:08'),(12,'#988C6B','2019-01-22 23:35:16'),(13,'#7E58EF','2019-01-22 23:35:20'),(14,'#6DAF98','2019-01-22 23:35:22'),(15,'#18AADD','2019-01-22 23:35:26'),(16,'#C638C2','2019-01-22 23:35:28'),(17,'#F03AB5','2019-01-22 23:35:31'),(18,'#2184DE','2019-01-22 23:35:33'),(19,'#0D30C7','2019-01-22 23:35:36'),(22,'#57F745','2019-01-22 23:40:18'),(24,'#CF5061','2019-01-23 09:46:53'),(25,'#C6DAEF','2019-01-23 10:35:17'),(26,'#471940','2019-01-23 10:54:37'),(49,'#3F7A8C','2019-01-23 12:10:40'),(50,'#61EF88','2019-01-23 12:10:58'),(53,'#2A4C4D','2019-01-23 13:22:37'),(55,'#C677E6','2019-01-23 14:50:15'),(56,'#39A78A','2019-01-23 15:07:10'),(57,'#CAA5E8','2019-01-23 19:41:13'),(58,'#FABADA','2019-01-23 19:45:01'),(59,'#1D2702','2019-01-25 22:06:04'),(60,'#A8F004','2019-01-25 22:06:56'),(61,'#AB9298','2019-01-26 18:58:22'),(63,'#86783C','2019-01-26 20:53:57'),(65,'#F7E45F','2019-01-28 17:21:55'),(67,'#9779C5','2019-01-28 17:29:09'),(68,'#2D4E73','2019-01-29 00:25:43'),(69,'#F7508F','2019-03-08 21:16:36'),(70,'#EFC665','2019-03-13 22:04:29'),(72,'#A875D2','2019-03-25 12:59:13'),(73,'#62FF5E','2019-03-27 14:10:14'),(75,'#68AF4E','2019-04-28 15:45:50'),(76,'#3B2546','2019-05-17 15:03:32'),(77,'#7FD5B4','2019-05-18 09:21:57'),(78,'#656219','2019-08-17 18:54:34'),(79,'#B7C96D','2019-08-19 07:57:21'),(81,'#2DE9BC','2019-10-29 21:21:36'),(82,'','2019-12-17 03:24:18'),(83,'#C0377D','2020-02-26 22:25:55'),(84,'#1F23D6','2020-04-28 14:50:07'),(85,'#4F8ACC','2020-07-29 11:59:56'),(86,'#A8614D','2020-07-29 12:36:47'),(87,'#562271','2020-09-16 11:08:55'),(88,'#B3F5F0','2020-10-03 12:58:24');
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-07 16:50:01
