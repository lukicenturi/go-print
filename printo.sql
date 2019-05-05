-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: printo
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `method`
--

DROP TABLE IF EXISTS `method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `atasnama` varchar(255) DEFAULT NULL,
  `rek` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `method`
--

LOCK TABLES `method` WRITE;
/*!40000 ALTER TABLE `method` DISABLE KEYS */;
INSERT INTO `method` VALUES (1,'Bank BCA','logo_bca.png','bank','PT. Go-Print Indonesia','021351232'),(2,'Bank BNI','logo_bni.png','bank','PT. Go-Print Indonesia','0128323'),(3,'Indomaret','logo_indomaret.png','not','','');
/*!40000 ALTER TABLE `method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (1,'A4'),(2,'A3'),(3,'A2'),(4,'A5'),(5,'A1');
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `print`
--

DROP TABLE IF EXISTS `print`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `print` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `original` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deliver` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `coin` int(11) DEFAULT NULL,
  `id_partner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `print`
--

LOCK TABLES `print` WRITE;
/*!40000 ALTER TABLE `print` DISABLE KEYS */;
INSERT INTO `print` VALUES (1,'2018-11-02','201811026632651','201811026632651.docx','201809171456590210339151_contoh pengerjaan tugas.docx',1,1,'6','1','ad','adsf','asdf','asdf',1,5,5,8),(2,'2018-11-02','201811023784811','201811023784811.docx','201809171456590210339151_contoh pengerjaan tugas.docx',1,3,'6','1','asdf','adsf','asdf','asdf',1,5,15,8),(3,'2018-11-02','201811028088531','201811028088531.docx','O192-ISYS6169-DH02-00.docx',1,2,'6','0','','','','',1,5,10,8),(4,'2018-11-03','201811032451721','201811032451721.docx','MARKET RESEARCH.docx',1,2,'2','0','','','','',1,5,10,NULL);
/*!40000 ALTER TABLE `print` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `coin` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES (1,'Promo 1',100,50000);
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topup`
--

DROP TABLE IF EXISTS `topup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_method` int(11) DEFAULT NULL,
  `coin` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `id_payment` int(16) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topup`
--

LOCK TABLES `topup` WRITE;
/*!40000 ALTER TABLE `topup` DISABLE KEYS */;
INSERT INTO `topup` VALUES (1,'2018-11-02',1,3,100,50000,3,NULL,50000),(2,'2018-11-02',1,3,100,50000,3,NULL,50000),(3,'2018-11-02',1,2,100,50000,3,NULL,50002),(4,'2018-11-03',1,3,100,50000,3,NULL,50000);
/*!40000 ALTER TABLE `topup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `coin` int(11) DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'default.png',
  `role` enum('USER','PARTNER') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lukicenturi@gmail.com','Luki Centuri','085856680484','$2y$10$INaor9ZiP0OFYyCv4a6BCuKC0dptmMmVigzv604hML6BxmuuJbV3C','active',145,'aZlNkubRcQfw7ktvrxT2pDC2yeRjbPJVpa7ARiEyyHFauUc7yF9ElAbGOnjd','default.png','USER'),(3,'jonathangobiel@gmail.com','Jonathan Gobiel','08214123123','$2y$10$AlhYh2rrG2fX1/FeMfllHeQC0N.d2R9rH5kjj1VJXi6hOtrqmiHYO','active',180,'DnQMCVLrE34HHh7cioFYeCw78xgqVmdyIw4yO4p8PAIxsE96Ul3XTQzvGvMe','default.png','USER'),(8,'kristihandayani@gmail.com','Kristi Handayani','081421731232','$2y$10$i2aTqAp5G.Gcg9S9XpWrHuyOam.PIg3FEelrYcKqxlQBVHe/u8mo6','active',480,NULL,'default.png',NULL),(9,'asubaris@gmail.com','asubaris','081316073986','$2y$10$l25l9ABc0dutX8.kxPgTMu9m0Il6FS5gYsVhh/Sr/S8bGSzvs4wVC','active',0,'l4JbGjs8ygMgZ3VSozy82E2tPjYhRZAR8WcXYQx0aivIkXNHZADOXCvc6i9k','default.png',NULL),(10,'asd@a.com','asd','asd','$2y$10$Z21.pcCde5gcyrKwtVDahe3pwRQx8B.ohk8oBjqzeIOLCxqHwXZhm','active',0,NULL,'default.png',NULL),(11,'agent.sdy@gmail.com','Test','089693439496','$2y$10$gb3x7bgPXlvOKIPM5FVlAOSKo9sKHMORxCwFQ61/5dpnGl6DgwHly','active',0,'D9kY7jixYEyUZ0w4elAiulmmCKmRFpU2sFg30goGehOwE9tiRGTgCzoGsCm4','default.png',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 16:05:19
