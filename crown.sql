-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (0,'types'),(1,'hats'),(2,'jackets'),(3,'sneakers'),(4,'womens'),(5,'mens');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothing`
--

DROP TABLE IF EXISTS `clothing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clothing` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `remote_url` varchar(255) DEFAULT NULL,
  `local_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_idx` (`cat_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cid`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothing`
--

LOCK TABLES `clothing` WRITE;
/*!40000 ALTER TABLE `clothing` DISABLE KEYS */;
INSERT INTO `clothing` VALUES (1,'hats',0,0.00,'https://i.ibb.co/cvpntL1/hats.png','/img/homepage/hats.png'),(2,'jackets',0,0.00,'https://i.ibb.co/px2tCc3/jackets.png','/img/homepage/jackets.png'),(3,'sneakers',0,0.00,'https://i.ibb.co/0jqHpnp/sneakers.png','/img/homepage/sneakers.png'),(4,'womens',0,0.00,'https://i.ibb.co/GCCdy8t/womens.png','/img/homepage/womens.png'),(5,'mens',0,0.00,'https://i.ibb.co/R70vBrQ/men.png','/img/homepage/mens.png'),(6,'Brown Brim',1,25.00,'https://i.ibb.co/ZYW3VTp/brown-brim.png','/img/hats/brown-brim.png'),(7,'Blue Beanie',1,18.00,'https://i.ibb.co/ypkgK0X/blue-beanie.png','/img/hats/blue-beanie.png'),(8,'Brown Cowboy',1,35.00,'https://i.ibb.co/QdJwgmp/brown-cowboy.png','/img/hats/brown-cowboy.png'),(9,'Grey Brim',1,25.00,'https://i.ibb.co/RjBLWxB/grey-brim.png','/img/hats/grey-brim.png'),(10,'Green Beanie',1,18.00,'https://i.ibb.co/YTjW3vF/green-beanie.png','/img/hats/green-beanie.png'),(11,'Palm Tree Cap',1,14.00,'https://i.ibb.co/rKBDvJX/palm-tree-cap.png','/img/hats/palm-tree-cap.png'),(12,'Red Beanie',1,18.00,'https://i.ibb.co/bLB646Z/red-beanie.png','/img/hats/red-beanie.png'),(13,'Wolf Cap',1,14.00,'https://i.ibb.co/1f2nWMM/wolf-cap.png','/img/hats/wolf-cap.png'),(14,'Blue Snapback',1,16.00,'https://i.ibb.co/X2VJP2W/blue-snapback.png','/img/hats/blue-snapback.png'),(15,'Black Jean Shearling',2,125.00,'https://i.ibb.co/XzcwL5s/black-shearling.png','/img/jackets/black-shearling.png'),(16,'Blue Jean Jacket',2,90.00,'https://i.ibb.co/mJS6vz0/blue-jean-jacket.png','/img/jackets/blue-jean-jacket.png'),(17,'Grey Jean Jacket',2,90.00,'https://i.ibb.co/N71k1ML/grey-jean-jacket.png','/img/jackets/grey-jean-jacket.png'),(18,'Brown Shearling',2,165.00,'https://i.ibb.co/s96FpdP/brown-shearling.png','/img/jackets/brown-shearling.png'),(19,'Tan Trench',2,185.00,'https://i.ibb.co/M6hHc3F/brown-trench.png','/img/jackets/brown-trench.png'),(20,'Adidas NMD',3,220.00,'https://i.ibb.co/0s3pdnc/adidas-nmd.png','/img/sneakers/adidas-nmd.png'),(21,'Adidas Yeezy',3,280.00,'https://i.ibb.co/dJbG1cT/yeezy.png','/img/sneakers/yeezy.png'),(22,'Black Converse',3,110.00,'https://i.ibb.co/bPmVXyP/black-converse.png','/img/sneakers/black-converse.png'),(23,'Nike White AirForce',3,160.00,'https://i.ibb.co/1RcFPk0/white-nike-high-tops.png','/img/sneakers/white-nike-high-tops.png'),(24,'Nike Red High Tops',3,160.00,'https://i.ibb.co/QcvzydB/nikes-red.png','/img/sneakers/nikes-red.png'),(25,'Nike Brown High Tops',3,160.00,'https://i.ibb.co/fMTV342/nike-brown.png','/img/sneakers/nike-brown.png'),(26,'Air Jordan Limited',3,190.00,'https://i.ibb.co/w4k6Ws9/nike-funky.png','/img/sneakers//nike-funky.png'),(27,'Timberlands',3,200.00,'https://i.ibb.co/Mhh6wBg/timberlands.png','/img/sneakers/timberlands.png'),(28,'Blue Tanktop',4,25.00,'https://i.ibb.co/7CQVJNm/blue-tank.png','/img/womens/blue-tank.png'),(29,'Floral Blouse',4,20.00,'https://i.ibb.co/4W2DGKm/floral-blouse.png','/img/womens/floral-blouse.png'),(30,'Floral Dress ',4,80.00,'https://i.ibb.co/KV18Ysr/floral-skirt.png','/img/womens/floral-skirt.png'),(31,'Red Dots Dress',4,80.00,'https://i.ibb.co/N3BN1bh/red-polka-dot-dress.png','/img/womens/red-polka-dot-dress.pn'),(32,'Striped Sweater',4,45.00,'https://i.ibb.co/KmSkMbH/striped-sweater.png','/img/womens/striped-sweater.png'),(33,'Yellow Track Suit',4,135.00,'https://i.ibb.co/v1cvwNf/yellow-track-suit.png','/img/womens/yellow-track-suit.png'),(34,'White Blouse',4,20.00,'https://i.ibb.co/qBcrsJg/white-vest.png','/img/womens/white-vest.png'),(35,'Camo Down Vest',5,325.00,'https://i.ibb.co/xJS0T3Y/camo-vest.png','/img/mens/camo-vest.png'),(36,'Floral T-shirt',5,20.00,'https://i.ibb.co/qMQ75QZ/floral-shirt.png','/img/mens/floral-shirt.png'),(37,'Black & White Longsleeve',5,25.00,'https://i.ibb.co/55z32tw/long-sleeve.png','/img/mens/long-sleeve.png'),(38,'Pink T-shirt ',5,25.00,'https://i.ibb.co/RvwnBL8/pink-shirt.png','/img/mens/pink-shirt.png'),(39,'Jean Long Sleeve',5,40.00,'https://i.ibb.co/VpW4x5t/roll-up-jean-shirt.png','/img/mens/roll-up-jean-shirt.png'),(40,'Burgundy T-shirt',5,25.00,'https://i.ibb.co/mh3VM1f/polka-dot-shirt.png','/img/mens/polka-dot-shirt.png');
/*!40000 ALTER TABLE `clothing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24 12:31:38
