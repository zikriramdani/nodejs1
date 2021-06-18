-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: db_nodejs1
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20210618093418-create-tb-product.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (5,'testimage','Produk1','descr',1000,'2021-06-18 17:16:21','2021-06-18 17:16:21'),(6,'testimage','Produk6','descr',1000,'2021-06-18 17:16:21','2021-06-18 17:16:21');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_query`
--

DROP TABLE IF EXISTS `tb_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_query` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `emotion` varchar(45) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_query`
--

LOCK TABLES `tb_query` WRITE;
/*!40000 ALTER TABLE `tb_query` DISABLE KEYS */;
INSERT INTO `tb_query` VALUES (1,'Kevin',80,'Happy','2020-02-20 07:25:19','2020-02-20 07:25:19'),(2,'Josh',90,'Sad','2020-02-20 07:25:19','2020-02-20 07:25:19'),(3,'Kevin',85,'Happy','2020-02-20 07:25:19','2020-02-20 07:25:19'),(4,'Kevin',75,'Sad','2020-02-20 07:25:19','2020-02-20 07:25:19'),(5,'Josh',65,'Angry','2020-02-20 07:25:19','2020-02-20 07:25:19'),(6,'David',85,'Happy','2020-02-21 07:25:19','2020-02-21 07:25:19'),(7,'Josh',90,'Sad','2020-02-21 07:25:19','2020-02-21 07:25:19'),(8,'David',75,'Sad','2020-02-21 07:25:19','2020-02-21 07:25:19'),(9,'Josh',85,'Sad','2020-02-21 07:25:19','2020-02-21 07:25:19'),(10,'Josh',70,'Happy','2020-02-21 07:25:19','2020-02-21 07:25:19'),(11,'Kevin',80,'Sad','2020-02-21 07:25:19','2020-02-21 07:25:19'),(12,'Kevin',73,'Sad','2020-02-22 07:25:19','2020-02-22 07:25:19'),(13,'Kevin',75,'Angry','2020-02-22 07:25:19','2020-02-22 07:25:19'),(14,'David',82,'Sad','2020-02-22 07:25:19','2020-02-22 07:25:19'),(15,'David',65,'Sad','2020-02-22 07:25:19','2020-02-22 07:25:19');
/*!40000 ALTER TABLE `tb_query` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-18 19:10:03
