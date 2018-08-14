-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: localhost    Database: mall
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'3490738403@qq.com','youth','123456');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comments` (
  `goodsId` int(11) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `DESC` varchar(45) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `goodsDetailId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`goodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `img` varchar(500) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `DESC` longtext,
  `unitPrice` float DEFAULT NULL,
  `specName` longtext,
  `stockNum` longtext,
  `updatetime` datetime DEFAULT NULL,
  `temp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'test','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',1,'2018-07-31 09:20:38','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',NULL,NULL,NULL,'2018-07-31 09:20:38',NULL),(2,'foo1','/build/screen/korea.png',2,NULL,NULL,3,'Korea','1011',NULL,3),(3,'Kejie','/build/screen/Kejie.jpg',3,NULL,NULL,10,'Kejie','1',NULL,4),(4,'/build/screen/model-developer.png','/build/screen/model-developer.png',4,NULL,NULL,1,'/build/screen/model-developer.png','1',NULL,5),(5,'test','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',1,'2018-07-31 09:02:15','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',NULL,NULL,NULL,'2018-07-31 09:02:15',6),(6,'foo','/build/screen/cart.gif',1,NULL,NULL,2,'spec name','1010',NULL,7),(7,'test','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',1,'2018-07-31 09:10:48','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',NULL,NULL,NULL,'2018-07-31 09:10:48',8),(8,'test','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',1,'2018-07-31 09:02:29','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',NULL,NULL,NULL,'2018-07-31 09:02:29',2),(9,'test','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',1,'2018-07-31 09:19:51','https://img03.sogoucdn.com/app/a/100520024/ff992b339fd70736850b02499771c536',NULL,NULL,NULL,'2018-07-31 09:19:51',NULL);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodsdetails`
--

DROP TABLE IF EXISTS `goodsdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goodsdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitPrice` float NOT NULL DEFAULT '0',
  `goodsId` int(11) NOT NULL DEFAULT '0',
  `specName` varchar(500) NOT NULL,
  `stockNum` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodsdetails`
--

LOCK TABLES `goodsdetails` WRITE;
/*!40000 ALTER TABLE `goodsdetails` DISABLE KEYS */;
INSERT INTO `goodsdetails` VALUES (1,0.5,1,'GIF',-1,'2018-07-31 00:00:00','2018-07-31 00:00:00'),(2,3,2,'Korea',-8,'2018-07-31 00:00:00','2018-07-31 00:00:00'),(3,2,3,'Kejie',5,'2018-07-31 00:00:00','2018-07-31 00:00:00'),(4,10,4,'/build/screen/model-developer.png',2,'2018-07-31 00:00:00','2018-07-31 00:00:00');
/*!40000 ALTER TABLE `goodsdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `state` enum('1','0') DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `goodsDetailId` int(11) DEFAULT NULL,
  `goodsNum` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `temp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,0,2,1,3,'2018-07-31 05:11:08','2018-07-31 05:11:08',1,1),(2,0,2,1,3,'2018-07-31 05:12:55','2018-07-31 05:12:55',1,2),(3,0,2,1,3,'2018-07-31 05:12:58','2018-07-31 05:12:58',1,3),(4,0,2,1,3,'2018-07-31 05:13:54','2018-07-31 05:13:54',1,4),(5,0,2,1,3,'2018-07-31 05:13:56','2018-07-31 05:13:56',1,5),(6,0,2,1,3,'2018-07-31 05:13:59','2018-07-31 05:13:59',1,6),(7,0,2,1,3,'2018-07-31 05:18:12','2018-07-31 05:18:12',1,7),(8,0,2,1,3,'2018-07-31 05:18:15','2018-07-31 05:18:15',1,8),(9,0,2,1,3,'2018-07-31 05:18:16','2018-07-31 05:18:16',1,9),(10,0,2,1,3,'2018-07-31 05:18:20','2018-07-31 05:18:20',1,10),(11,0,2,1,3,'2018-07-31 06:13:46','2018-07-31 06:13:46',1,11),(12,0,2,1,3,'2018-07-31 06:25:14','2018-07-31 06:25:14',1,12),(13,0,2,1,3,'2018-07-31 06:25:35','2018-07-31 06:25:35',1,13),(14,0,2,1,3,'2018-07-31 06:26:13','2018-07-31 06:26:13',1,14),(15,0,2,1,3,'2018-07-31 06:27:48','2018-07-31 06:27:48',1,15),(16,0,2,1,3,'2018-07-31 06:29:23','2018-07-31 06:29:23',1,16);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `types` (
  `type` longtext,
  `id` int(11) NOT NULL,
  `name` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (NULL,1,'home');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL DEFAULT '0',
  `email` longtext,
  `pwd` longtext,
  `nickname` longtext,
  `sex` varchar(45) DEFAULT NULL,
  `recipient` longtext,
  `address` longtext,
  `phone` longtext,
  `headimg` longtext,
  `updatetime` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'3490738403@qq.com','$2a$10$Eg2dIi7vuFOr10i7FrVKIePk9dPQ6ipV/3jBexNb3NhMrCD3sFU3y','youth','0','aaa','aaa','18888888888','http://tvax4.sinaimg.cn/crop.0.0.480.480.180/768c39d5ly8fjje1d0teej20dc0dcq35.jpg','2018-07-30 08:09:51','2018-07-30 08:09:51');
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

-- Dump completed on 2018-08-14 14:36:13
