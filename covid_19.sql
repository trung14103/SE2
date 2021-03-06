CREATE DATABASE  IF NOT EXISTS `covid-19` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `covid-19`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: covid-19
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `infected` int(11) NOT NULL,
  `critical` int(11) NOT NULL,
  `death` int(11) NOT NULL,
  `recovered` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Hà Nội',227,108,1,0,99),(2,'Hồ Chí Minh',230,55,0,0,50),(3,'Vĩnh Phúc',230,19,0,0,14),(4,'Ninh Bình',230,13,0,0,11),(5,'Bình Thuận',230,9,0,0,8),(6,'Quảng Ninh',230,7,0,0,5),(7,'Đà Nẵng',230,6,0,0,6),(8,'Bắc Giang',230,4,0,0,3),(9,'Đồng Tháp',230,4,0,0,4),(10,'Hà Tĩnh',230,4,0,0,3),(11,'Hà Nam',230,4,0,0,3),(12,'Thanh Hóa',230,3,0,0,2),(13,'Bạc Liêu',230,3,0,0,3),(14,'Quảng Nam',230,3,0,0,3),(15,'Tây Ninh',230,3,0,0,3),(16,'Cần Thơ',230,2,0,0,2),(17,'Trà Vinh',230,2,0,0,2),(18,'Ninh Thuận',230,2,0,0,2),(19,'Lào Cai',230,2,0,0,2),(20,'Thái Bình',230,2,0,0,0),(21,'Thừa Thiên Huế',230,2,0,0,2),(22,'Hưng Yên',230,1,0,0,1),(23,'Đồng Nai',230,1,0,0,1),(24,'Hà Giang',230,1,0,0,1),(25,'Hải Dương',230,1,0,0,1),(26,'Khánh Hòa',230,1,0,0,1),(27,'Bến Tre',230,1,0,0,1),(28,'Bắc Ninh',230,1,0,0,1),(29,'Thái Nguyên',230,1,0,0,0),(30,'Lai Châu',230,1,0,0,1),(35,'SaiGon',230,230,7,0,222);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `updated_day` datetime DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','2020-04-30 00:00:00','Asia'),(2,'Albania','2020-06-06 00:00:00','Europe'),(3,'Åland Islands','2020-04-30 00:00:00','Europe'),(4,'American Samoa','2020-04-30 00:00:00','Oceania'),(5,'Algeria','2020-04-30 00:00:00','Africa'),(6,'Andorra','2020-04-30 00:00:00','Europe'),(7,'Angola','2020-04-30 00:00:00','Africa'),(8,'Anguilla','2020-04-30 00:00:00','Europe'),(9,'Antigua and Barbuda','2020-04-30 00:00:00','America'),(10,'Antarctica','2020-04-30 00:00:00','Antarctica'),(11,'Australia','2020-04-30 00:00:00','Oceania'),(12,'Austria','2020-04-30 00:00:00','Europe'),(13,'Bahrain','2020-04-30 00:00:00','Asia'),(14,'Bangladesh','2020-04-30 00:00:00','Asia'),(15,'Benin','2020-04-30 00:00:00','Africa'),(16,'Belize','2020-04-30 00:00:00','America'),(17,'Argentina','2020-04-30 00:00:00','America'),(18,'Armenia','2020-04-30 00:00:00','Asia'),(19,'Bosnia and Herzegovina','2020-04-30 00:00:00','Europe'),(20,'Aruba','2020-04-30 00:00:00','Europe'),(21,'Azerbaijan','2020-04-30 00:00:00','Asia'),(22,'Bahamas','2020-04-30 00:00:00','America'),(23,'Brunei ','2020-04-30 00:00:00','Asia'),(24,'Bonaire, Sint Eustatius and Saba','2020-04-30 00:00:00','America'),(25,'Belarus','2020-04-30 00:00:00','Europe'),(26,'Barbados','2020-04-30 00:00:00','America'),(27,'British Indian Ocean Territory','2020-04-30 00:00:00','Asia'),(28,'Bermuda','2020-04-30 00:00:00','America'),(29,'Belgium','2020-04-30 00:00:00','Europe'),(30,'Cameroon','2020-04-30 00:00:00','Africa'),(31,'Bhutan','2020-04-30 00:00:00','Asia'),(32,'Bolivia','2020-04-30 00:00:00','America'),(33,'Cambodia','2020-04-30 00:00:00','Asia'),(34,'CAR','2020-04-30 00:00:00','Africa'),(35,'Botswana','2020-04-30 00:00:00','Africa'),(36,'Chad','2020-04-30 00:00:00','Africa'),(37,'Bulgaria','2020-04-30 00:00:00','Europe'),(38,'Bouvet Island','2020-04-30 00:00:00','Antarctica'),(39,'Brazil','2020-04-30 00:00:00','America'),(40,'Cocos (Keeling) Islands','2020-04-30 00:00:00','Asia'),(41,'Colombia','2020-04-30 00:00:00','America'),(42,'Canada','2020-04-30 00:00:00','America'),(43,'Burkina Faso','2020-04-30 00:00:00','Africa'),(44,'Burundi','2020-04-30 00:00:00','Africa'),(45,'Costa Rica','2020-04-30 00:00:00','America'),(46,'Cape Verde','2020-04-30 00:00:00','Africa'),(47,'Cayman Islands','2020-04-30 00:00:00','America'),(48,'Cook Islands','2020-04-30 00:00:00','Oceania'),(49,'China','2020-04-30 00:00:00','Asia'),(50,'Curaçao','2020-04-30 00:00:00','America'),(51,'Cyprus','2020-04-30 00:00:00','Europe'),(52,'Christmas Island','2020-04-30 00:00:00','Asia'),(53,'Chile','2020-04-30 00:00:00','America'),(54,'Dominican Republic','2020-04-30 00:00:00','America'),(55,'Comoros','2020-04-30 00:00:00','Africa'),(56,'Congo','2020-04-30 00:00:00','Africa'),(57,'DRC','2020-04-30 00:00:00','Africa'),(58,'Dominica','2020-04-30 00:00:00','America'),(59,'Equatorial Guinea','2020-04-30 00:00:00','Africa'),(60,'Côte d\'Ivoire','2020-04-30 00:00:00','Africa'),(61,'Croatia','2020-04-30 00:00:00','Europe'),(62,'Cuba','2020-04-30 00:00:00','America'),(63,'Eritrea','2020-04-30 00:00:00','Africa'),(64,'Czechia','2020-04-30 00:00:00','Europe'),(65,'Denmark','2020-04-30 00:00:00','Europe'),(66,'Djibouti','2020-04-30 00:00:00','Africa'),(67,'Fiji','2020-04-30 00:00:00','Oceania'),(68,'Faroe Islands','2020-04-30 00:00:00','Europe'),(69,'El Salvador','2020-04-30 00:00:00','America'),(70,'Egypt','2020-04-30 00:00:00','Africa'),(71,'French Southern Territories','2020-04-30 00:00:00','Antarctic'),(72,'French Polynesia','2020-04-30 00:00:00','Oceania'),(73,'Ecuador','2020-04-30 00:00:00','America'),(74,'Ghana','2020-04-30 00:00:00','Africa'),(75,'Estonia','2020-04-30 00:00:00','Europe'),(76,'Ethiopia','2020-04-30 00:00:00','Africa'),(77,'Germany','2020-04-30 00:00:00','Europe'),(78,'Falkland Islands','2020-04-30 00:00:00','America'),(79,'Finland','2020-04-30 00:00:00','Europe'),(80,'Grenada','2020-04-30 00:00:00','America'),(81,'France','2020-04-30 00:00:00','Europe'),(82,'Guadeloupe','2020-04-30 00:00:00','America'),(83,'Gabon','2020-04-30 00:00:00','Africa'),(84,'French Guiana','2020-04-30 00:00:00','America'),(85,'Guinea','2020-04-30 00:00:00','Africa'),(86,'Gambia','2020-04-30 00:00:00','Africa'),(87,'Guinea-Bissau','2020-04-30 00:00:00','Africa'),(88,'Honduras','2020-04-30 00:00:00','America'),(89,'Gibraltar','2020-04-30 00:00:00','Europe'),(90,'Georgia','2020-04-30 00:00:00','Europe'),(91,'Greece','2020-04-30 00:00:00','Europe'),(92,'Greenland','2020-04-30 00:00:00','America'),(93,'Vatican City','2020-04-30 00:00:00','Europe'),(94,'Guatemala','2020-04-30 00:00:00','America'),(95,'Indonesia','2020-04-30 00:00:00','Asia'),(96,'Guernsey','2020-04-30 00:00:00','Europe'),(97,'India','2020-04-30 00:00:00','Asia'),(98,'Guam','2020-04-30 00:00:00','Oceania'),(99,'Isle of Man','2020-04-30 00:00:00','Europe'),(100,'Israel','2020-04-30 00:00:00','Asia'),(101,'Guyana','2020-04-30 00:00:00','America'),(102,'Hong Kong','2020-04-30 00:00:00','Asia'),(103,'Haiti','2020-04-30 00:00:00','America'),(104,'Heard Island and McDonald Islands','2020-04-30 00:00:00','Antarctica'),(105,'Jersey','2020-04-30 00:00:00','Europe'),(106,'Hungary','2020-04-30 00:00:00','Europe'),(107,'Iceland','2020-04-30 00:00:00','Europe'),(108,'Iran','2020-04-30 00:00:00','Asia'),(109,'Iraq','2020-04-30 00:00:00','Asia'),(110,'Ireland','2020-04-30 00:00:00','Europe'),(111,'Italy','2020-04-30 00:00:00','Europe'),(112,'Jamaica','2020-04-30 00:00:00','Africa'),(113,'Japan','2020-04-30 00:00:00','Asia'),(114,'Korea, Democratic People\'s Republic of','2020-04-30 00:00:00','Asia'),(115,'Latvia','2020-04-30 00:00:00','Europe'),(116,'Liechtenstein','2020-04-30 00:00:00','Europe'),(117,'Madagascar','2020-04-30 00:00:00','Africa'),(118,'Malta','2020-04-30 00:00:00','Europe'),(119,'Mayotte','2020-04-30 00:00:00','Africa'),(120,'Mongolia','2020-04-30 00:00:00','Asia'),(121,'Myanmar','2020-04-30 00:00:00','Asia'),(122,'New Caledonia','2020-04-30 00:00:00','Oceania'),(123,'Niue','2020-04-30 00:00:00','Oceania'),(124,'Jordan','2020-04-30 00:00:00','Asia'),(125,'S. Korea','2020-04-30 00:00:00','Asia'),(126,'Lebanon','2020-04-30 00:00:00','Asia'),(127,'Lithuania','2020-04-30 00:00:00','Europe'),(128,'Malawi','2020-04-30 00:00:00','Africa'),(129,'Marshall Islands','2020-04-30 00:00:00','Oceania'),(130,'Kenya','2020-04-30 00:00:00','Africa'),(131,'Mexico','2020-04-30 00:00:00','America'),(132,'Kyrgyzstan','2020-04-30 00:00:00','Asia'),(133,'Montenegro','2020-04-30 00:00:00','Europe'),(134,'Kiribati','2020-04-30 00:00:00','Oceania'),(135,'Liberia','2020-04-30 00:00:00','Africa'),(136,'Laos','2020-04-30 00:00:00','Asia'),(137,'Macao','2020-04-30 00:00:00','Asia'),(138,'Libya','2020-04-30 00:00:00','Africa'),(139,'Maldives','2020-04-30 00:00:00','Asia'),(140,'North Macedonia','2020-04-30 00:00:00','Europe'),(141,'Mauritania','2020-04-30 00:00:00','Africa'),(142,'Mali','2020-04-30 00:00:00','Africa'),(143,'Mauritius','2020-04-30 00:00:00','Africa'),(144,'Namibia','2020-04-30 00:00:00','Africa'),(145,'Pakistan','2020-04-30 00:00:00','Asia'),(146,'Moldova','2020-04-30 00:00:00','Europe'),(147,'New Zealand','2020-04-30 00:00:00','Oceania'),(148,'Morocco','2020-04-30 00:00:00','Africa'),(149,'Norfolk Island','2020-04-30 00:00:00','Oceania'),(150,'Nepal','2020-04-30 00:00:00','Asia'),(151,'Paraguay','2020-04-30 00:00:00','America'),(152,'Niger','2020-04-30 00:00:00','Africa'),(153,'Monaco','2020-04-30 00:00:00','Europe'),(154,'Mozambique','2020-04-30 00:00:00','Africa'),(155,'Netherlands','2020-04-30 00:00:00','Europe'),(156,'Norway','2020-04-30 00:00:00','Europe'),(157,'Nigeria','2020-04-30 00:00:00','Africa'),(158,'Portugal','2020-04-30 00:00:00','Europe'),(159,'Oman','2020-04-30 00:00:00','Asia'),(160,'Russia','2020-04-30 00:00:00','Europe'),(161,'Saint Lucia','2020-04-30 00:00:00','America'),(162,'San Marino','2020-04-30 00:00:00','Europe'),(163,'Palau','2020-04-30 00:00:00','Oceania'),(164,'Seychelles','2020-04-30 00:00:00','Africa'),(165,'Peru','2020-04-30 00:00:00','Africa'),(166,'Slovenia','2020-04-30 00:00:00','Europe'),(167,'Puerto Rico','2020-04-30 00:00:00','America'),(168,'South Sudan','2020-04-30 00:00:00','Africa'),(169,'Rwanda','2020-04-30 00:00:00','Africa'),(170,'Svalbard and Jan Mayen','2020-04-30 00:00:00','Europe'),(171,'Saint Martin','2020-04-30 00:00:00','America'),(172,'Taiwan','2020-04-30 00:00:00','Asia'),(173,'Sao Tome and Principe','2020-04-30 00:00:00','Africa'),(174,'Togo','2020-04-30 00:00:00','Africa'),(175,'Sierra Leone','2020-04-30 00:00:00','Africa'),(176,'Turkey','2020-04-30 00:00:00','Europe'),(177,'Solomon Islands','2020-04-30 00:00:00','Oceania'),(178,'Ukraine','2020-04-30 00:00:00','Europe'),(179,'Spain','2020-04-30 00:00:00','Europe'),(180,'Uruguay','2020-04-30 00:00:00','America'),(181,'Swaziland','2020-04-30 00:00:00','Africa'),(182,'British Virgin Islands','2020-04-30 00:00:00','America'),(183,'Tajikistan','2020-04-30 00:00:00','Asia'),(184,'Tokelau','2020-04-30 00:00:00','Oceania'),(185,'Turkmenistan','2020-04-30 00:00:00','Asia'),(186,'United Arab Emirates','2020-04-30 00:00:00','Asia'),(187,'Uzbekistan','2020-04-30 00:00:00','Asia'),(188,'U.S. Virgin Islands','2020-04-30 00:00:00','America'),(189,'Zimbabwe','2020-04-30 00:00:00','Africa'),(190,'Kazakhstan','2020-04-30 00:00:00','Asia'),(191,'Kuwait','2020-04-30 00:00:00','Asia'),(192,'Lesotho','2020-04-30 00:00:00','Africa'),(193,'Luxembourg','2020-04-30 00:00:00','Europe'),(194,'Malaysia','2020-04-30 00:00:00','Asia'),(195,'Martinique','2020-04-30 00:00:00','America'),(196,'Micronesia, Federated States of','2020-04-30 00:00:00','Oceania'),(197,'Montserrat','2020-04-30 00:00:00','America'),(198,'Nauru','2020-04-30 00:00:00','Oceania'),(199,'Nicaragua','2020-04-30 00:00:00','America'),(200,'Northern Mariana Islands','2020-04-30 00:00:00','Oceania'),(201,'Panama','2020-04-30 00:00:00','America'),(202,'Pitcairn','2020-04-30 00:00:00','Oceania'),(203,'Réunion','2020-04-30 00:00:00','Africa'),(204,'Saint Helena, Ascension and Tristan da Cunha','2020-04-30 00:00:00','Africa'),(205,'Saint Vincent Grenadines','2020-04-30 00:00:00','America'),(206,'Senegal','2020-04-30 00:00:00','Africa'),(207,'Sint Maarten','2020-04-30 00:00:00','America'),(208,'South Africa','2020-04-30 00:00:00','Africa'),(209,'Sudan','2020-04-30 00:00:00','Africa'),(210,'Switzerland','2020-04-30 00:00:00','Europe'),(211,'Thailand','2020-04-30 00:00:00','Asia'),(212,'Trinidad and Tobago','2020-04-30 00:00:00','America'),(213,'Tuvalu','2020-04-30 00:00:00','Oceania'),(214,'USA','2020-04-30 00:00:00','America'),(215,'Venezuela','2020-04-30 00:00:00','America'),(216,'Papua New Guinea','2020-04-30 00:00:00','Oceania'),(217,'Poland','2020-04-30 00:00:00','Europe'),(218,'Romania','2020-04-30 00:00:00','Europe'),(219,'Saint Kitts and Nevis','2020-04-30 00:00:00','America'),(220,'Samoa','2020-04-30 00:00:00','Oceania'),(221,'Serbia','2020-04-30 00:00:00','Europe'),(222,'Slovakia','2020-04-30 00:00:00','Europe'),(223,'South Georgia and the South Sandwich Islands','2020-04-30 00:00:00','Antarctica'),(224,'Suriname','2020-04-30 00:00:00','America'),(225,'Syria','2020-04-30 00:00:00','Asia'),(226,'Timor-Leste','2020-04-30 00:00:00','Asia'),(227,'Tunisia','2020-04-30 00:00:00','Africa'),(228,'Uganda','2020-04-30 00:00:00','Africa'),(229,'United States Minor Outlying Islands','2020-04-30 00:00:00','America'),(230,'Vietnam','2020-04-30 00:00:00','Asia'),(231,'Palestine','2020-04-30 00:00:00','Asia'),(232,'Philippines','2020-04-30 00:00:00','Asia'),(233,'Qatar','2020-04-30 00:00:00','Asia'),(234,'Saint Barth','2020-04-30 00:00:00','America'),(235,'Saint Pierre Miquelon','2020-04-30 00:00:00','America'),(236,'Saudi Arabia','2020-04-30 00:00:00','Asia'),(237,'Singapore','2020-04-30 00:00:00','Asia'),(238,'Somalia','2020-04-30 00:00:00','Africa'),(239,'Sri Lanka','2020-04-30 00:00:00','Asia'),(240,'Sweden','2020-04-30 00:00:00','Europe'),(241,'Tanzania','2020-04-30 00:00:00','Africa'),(242,'Tonga','2020-04-30 00:00:00','Oceania'),(243,'Turks and Caicos','2020-04-30 00:00:00','America'),(244,'UK','2020-04-30 00:00:00','Europe'),(245,'Vanuatu','2020-04-30 00:00:00','Oceania'),(246,'Wallis and Futuna','2020-04-30 00:00:00','Oceania'),(247,'Zambia','2020-04-30 00:00:00','Africa'),(248,'Western Sahara','2020-04-30 00:00:00','Africa'),(249,'Yemen','2020-04-30 00:00:00','Asia');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covid_data`
--

DROP TABLE IF EXISTS `covid_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `covid_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recovered` int(32) NOT NULL,
  `infected` int(32) NOT NULL,
  `critical` int(32) NOT NULL,
  `death` int(32) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `updated_day` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covid_data`
--

LOCK TABLES `covid_data` WRITE;
/*!40000 ALTER TABLE `covid_data` DISABLE KEYS */;
INSERT INTO `covid_data` VALUES (3,1875,20342,18110,357,1,0,'2020-06-07 00:00:00'),(4,938,1246,274,34,2,0,'2020-06-07 00:00:00'),(5,0,0,0,0,3,0,'2020-06-07 00:00:00'),(6,0,0,0,0,4,0,'2020-06-07 00:00:00'),(7,6631,10050,2721,698,5,0,'2020-06-07 00:00:00'),(8,741,852,60,51,6,0,'2020-06-07 00:00:00'),(9,24,88,60,4,7,0,'2020-06-07 00:00:00'),(10,3,3,0,0,8,0,'2020-06-07 00:00:00'),(11,20,26,3,3,9,0,'2020-06-07 00:00:00'),(12,0,0,0,0,10,0,'2020-06-07 00:00:00'),(13,6703,7260,455,102,11,0,'2020-06-07 00:00:00'),(14,15789,16898,437,672,12,0,'2020-06-07 00:00:00'),(15,9468,14745,5252,25,13,0,'2020-06-07 00:00:00'),(16,13903,65769,50978,888,14,0,'2020-06-07 00:00:00'),(17,151,261,107,3,15,0,'2020-06-07 00:00:00'),(18,16,19,1,2,16,0,'2020-06-07 00:00:00'),(19,6180,22020,15192,648,17,0,'2020-06-07 00:00:00'),(20,4014,13130,8916,200,18,0,'2020-06-07 00:00:00'),(21,1968,2606,479,159,19,0,'2020-06-07 00:00:00'),(22,98,101,0,3,20,0,'2020-06-07 00:00:00'),(23,4024,7239,3131,84,21,0,'2020-06-07 00:00:00'),(24,62,103,30,11,22,0,'2020-06-07 00:00:00'),(25,138,141,1,2,23,0,'2020-06-07 00:00:00'),(26,0,0,0,0,24,0,'2020-06-07 00:00:00'),(27,23647,48630,24714,269,25,0,'2020-06-07 00:00:00'),(28,81,92,4,7,26,0,'2020-06-07 00:00:00'),(29,0,0,0,0,27,0,'2020-06-07 00:00:00'),(30,114,141,18,9,28,0,'2020-06-07 00:00:00'),(31,16291,59226,33340,9595,29,0,'2020-06-07 00:00:00'),(32,4587,7599,2800,212,30,0,'2020-06-07 00:00:00'),(33,11,48,37,0,31,0,'2020-06-07 00:00:00'),(34,1902,13358,11002,454,32,0,'2020-06-07 00:00:00'),(35,123,125,2,0,33,0,'2020-06-07 00:00:00'),(36,37,1570,1528,5,34,0,'2020-06-07 00:00:00'),(37,23,40,16,1,35,0,'2020-06-07 00:00:00'),(38,672,836,95,69,36,0,'2020-06-07 00:00:00'),(39,1545,2711,1006,160,37,0,'2020-06-07 00:00:00'),(40,0,0,0,0,38,0,'2020-06-07 00:00:00'),(41,302084,676494,338366,36044,39,0,'2020-06-07 00:00:00'),(42,0,0,0,0,40,0,'2020-06-07 00:00:00'),(43,14382,38027,22440,1205,41,0,'2020-06-07 00:00:00'),(44,53614,95057,33670,7773,42,0,'2020-06-07 00:00:00'),(45,765,888,70,53,43,0,'2020-06-07 00:00:00'),(46,45,83,37,1,44,0,'2020-06-07 00:00:00'),(47,701,1263,552,10,45,0,'2020-06-07 00:00:00'),(48,0,0,0,0,46,0,'2020-06-07 00:00:00'),(49,93,164,70,1,47,0,'2020-06-07 00:00:00'),(50,0,0,0,0,48,0,'2020-06-07 00:00:00'),(51,78332,83036,70,4634,49,0,'2020-06-07 00:00:00'),(52,15,21,5,1,50,0,'2020-06-07 00:00:00'),(53,807,960,135,18,51,0,'2020-06-07 00:00:00'),(54,0,0,0,0,52,0,'2020-06-07 00:00:00'),(55,95631,127745,30573,1541,53,0,'2020-06-07 00:00:00'),(56,11919,19195,6740,536,54,0,'2020-06-07 00:00:00'),(57,67,141,72,2,55,0,'2020-06-07 00:00:00'),(58,210,683,451,22,56,0,'2020-06-07 00:00:00'),(59,537,4016,3394,85,57,0,'2020-06-07 00:00:00'),(60,16,18,2,0,58,0,'2020-06-07 00:00:00'),(61,200,1306,1094,12,59,0,'2020-06-07 00:00:00'),(62,0,0,0,0,60,0,'2020-06-07 00:00:00'),(63,2126,2247,17,104,61,0,'2020-06-07 00:00:00'),(64,1855,2173,235,83,62,0,'2020-06-07 00:00:00'),(65,39,39,0,0,63,0,'2020-06-07 00:00:00'),(66,6885,9574,2362,327,64,0,'2020-06-07 00:00:00'),(67,10755,11948,604,589,65,0,'2020-06-07 00:00:00'),(68,1815,4169,2328,26,66,0,'2020-06-07 00:00:00'),(69,18,18,0,0,67,0,'2020-06-07 00:00:00'),(70,0,0,0,0,68,0,'2020-06-07 00:00:00'),(71,1305,3015,1657,53,69,0,'2020-06-07 00:00:00'),(72,8538,32612,22876,1198,70,0,'2020-06-07 00:00:00'),(73,0,0,0,0,71,0,'2020-06-07 00:00:00'),(74,60,60,0,0,72,0,'2020-06-07 00:00:00'),(75,21020,42728,18100,3608,73,0,'2020-06-07 00:00:00'),(76,3547,9462,5871,44,74,0,'2020-06-07 00:00:00'),(77,1681,1939,189,69,75,0,'2020-06-07 00:00:00'),(78,344,2020,1649,27,76,0,'2020-06-07 00:00:00'),(79,169100,185713,7844,8769,77,0,'2020-06-07 00:00:00'),(80,13,13,0,0,78,0,'2020-06-07 00:00:00'),(81,5800,6981,858,323,79,0,'2020-06-07 00:00:00'),(82,22,23,1,0,80,0,'2020-06-07 00:00:00'),(83,70806,153634,53686,29142,81,0,'2020-06-07 00:00:00'),(84,144,164,6,14,82,0,'2020-06-07 00:00:00'),(85,833,3101,2247,21,83,0,'2020-06-07 00:00:00'),(86,348,639,290,1,84,0,'2020-06-07 00:00:00'),(87,2857,4117,1237,23,85,0,'2020-06-07 00:00:00'),(88,21,26,4,1,86,0,'2020-06-07 00:00:00'),(89,153,1368,1203,12,87,0,'2020-06-07 00:00:00'),(90,697,6155,5208,250,88,0,'2020-06-07 00:00:00'),(91,164,176,12,0,89,0,'2020-06-07 00:00:00'),(92,674,809,122,13,90,0,'2020-06-07 00:00:00'),(93,1374,2980,1426,180,91,0,'2020-06-07 00:00:00'),(94,13,13,0,0,92,0,'2020-06-07 00:00:00'),(95,12,12,0,0,93,0,'2020-06-07 00:00:00'),(96,1133,6792,5429,230,94,0,'2020-06-07 00:00:00'),(97,10498,31186,18837,1851,95,0,'2020-06-07 00:00:00'),(98,0,0,0,0,96,0,'2020-06-07 00:00:00'),(99,119396,248221,121868,6957,97,0,'2020-06-07 00:00:00'),(100,0,32,0,1,98,0,'2020-06-07 00:00:00'),(101,312,336,0,24,99,0,'2020-06-07 00:00:00'),(102,15064,17783,2422,297,100,0,'2020-06-07 00:00:00'),(103,80,154,62,12,101,0,'2020-06-07 00:00:00'),(104,1049,1107,54,4,102,0,'2020-06-07 00:00:00'),(105,24,3072,2998,50,103,0,'2020-06-07 00:00:00'),(106,0,0,0,0,104,0,'2020-06-07 00:00:00'),(107,0,0,0,0,105,0,'2020-06-07 00:00:00'),(108,2279,4008,1183,546,106,0,'2020-06-07 00:00:00'),(109,1794,1807,3,10,107,0,'2020-06-07 00:00:00'),(110,134349,171789,29159,8281,108,0,'2020-06-07 00:00:00'),(111,4904,11098,5876,318,109,0,'2020-06-07 00:00:00'),(112,22698,25183,807,1678,110,0,'2020-06-07 00:00:00'),(113,165078,234801,35877,33846,111,0,'2020-06-07 00:00:00'),(114,404,596,182,10,112,0,'2020-06-07 00:00:00'),(115,15079,17103,1110,914,113,0,'2020-06-07 00:00:00'),(116,0,0,0,0,114,0,'2020-06-07 00:00:00'),(117,781,1088,282,25,115,0,'2020-06-07 00:00:00'),(118,55,82,26,1,116,0,'2020-06-07 00:00:00'),(119,233,1052,810,9,117,0,'2020-06-07 00:00:00'),(120,596,629,24,9,118,0,'2020-06-07 00:00:00'),(121,1523,2079,531,25,119,0,'2020-06-07 00:00:00'),(122,75,193,118,0,120,0,'2020-06-07 00:00:00'),(123,156,240,78,6,121,0,'2020-06-07 00:00:00'),(124,18,20,2,0,122,0,'2020-06-07 00:00:00'),(125,0,0,0,0,123,0,'2020-06-07 00:00:00'),(126,586,795,200,9,124,0,'2020-06-07 00:00:00'),(127,10552,11776,951,273,125,0,'2020-06-07 00:00:00'),(128,768,1331,533,30,126,0,'2020-06-07 00:00:00'),(129,1328,1714,315,71,127,0,'2020-06-07 00:00:00'),(130,55,409,350,4,128,0,'2020-06-07 00:00:00'),(131,0,0,0,0,129,0,'2020-06-07 00:00:00'),(132,706,2600,1811,83,130,0,'2020-06-07 00:00:00'),(133,81544,113619,18564,13511,131,0,'2020-06-07 00:00:00'),(134,1425,2007,560,22,132,0,'2020-06-07 00:00:00'),(135,315,324,0,9,133,0,'2020-06-07 00:00:00'),(136,0,0,0,0,134,0,'2020-06-07 00:00:00'),(137,185,345,130,30,135,0,'2020-06-07 00:00:00'),(138,18,19,1,0,136,0,'2020-06-07 00:00:00'),(139,45,45,0,0,137,0,'2020-06-07 00:00:00'),(140,52,256,199,5,138,0,'2020-06-07 00:00:00'),(141,763,1901,1130,8,139,0,'2020-06-07 00:00:00'),(142,1646,3025,1226,153,140,0,'2020-06-07 00:00:00'),(143,104,947,794,49,141,0,'2020-06-07 00:00:00'),(144,845,1523,588,90,142,0,'2020-06-07 00:00:00'),(145,324,337,3,10,143,0,'2020-06-07 00:00:00'),(146,16,29,13,0,144,0,'2020-06-07 00:00:00'),(147,33465,98943,63476,2002,145,0,'2020-06-07 00:00:00'),(148,5638,9511,3538,335,146,0,'2020-06-07 00:00:00'),(149,1481,1504,1,22,147,0,'2020-06-07 00:00:00'),(150,7328,8177,641,208,148,0,'2020-06-07 00:00:00'),(151,0,0,0,0,149,0,'2020-06-07 00:00:00'),(152,467,3448,2968,13,150,0,'2020-06-07 00:00:00'),(153,532,1090,547,11,151,0,'2020-06-07 00:00:00'),(154,867,970,38,65,152,0,'2020-06-07 00:00:00'),(155,93,99,2,4,153,0,'2020-06-07 00:00:00'),(156,127,424,295,2,154,0,'2020-06-07 00:00:00'),(157,0,47574,0,6013,155,0,'2020-06-07 00:00:00'),(158,8138,8542,166,238,156,0,'2020-06-07 00:00:00'),(159,3826,12233,8065,342,157,0,'2020-06-07 00:00:00'),(160,20995,34693,12219,1479,158,0,'2020-06-07 00:00:00'),(161,3451,16882,13356,75,159,0,'2020-06-07 00:00:00'),(162,226731,467673,235083,5859,160,0,'2020-06-07 00:00:00'),(163,18,19,1,0,161,0,'2020-06-07 00:00:00'),(164,428,680,210,42,162,0,'2020-06-07 00:00:00'),(165,0,0,0,0,163,0,'2020-06-07 00:00:00'),(166,11,11,0,0,164,0,'2020-06-07 00:00:00'),(167,82731,191758,103726,5301,165,0,'2020-06-07 00:00:00'),(168,1359,1485,17,109,166,0,'2020-06-07 00:00:00'),(169,1,39,0,2,167,0,'2020-06-07 00:00:00'),(170,6,1317,1297,14,168,0,'2020-06-07 00:00:00'),(171,283,431,146,2,169,0,'2020-06-07 00:00:00'),(172,0,0,0,0,170,0,'2020-06-07 00:00:00'),(173,33,41,5,3,171,0,'2020-06-07 00:00:00'),(174,430,443,6,7,172,0,'2020-06-07 00:00:00'),(175,68,499,419,12,173,0,'2020-06-07 00:00:00'),(176,240,487,234,13,174,0,'2020-06-07 00:00:00'),(177,608,969,313,48,175,0,'2020-06-07 00:00:00'),(178,135322,169218,29227,4669,176,0,'2020-06-07 00:00:00'),(179,0,0,0,0,177,0,'2020-06-07 00:00:00'),(180,12054,26999,14157,788,178,0,'2020-06-07 00:00:00'),(181,0,288390,0,27135,179,0,'2020-06-07 00:00:00'),(182,726,845,96,23,180,0,'2020-06-07 00:00:00'),(183,0,0,0,0,181,0,'2020-06-07 00:00:00'),(184,7,8,0,1,182,0,'2020-06-07 00:00:00'),(185,2583,4453,1822,48,183,0,'2020-06-07 00:00:00'),(186,0,0,0,0,184,0,'2020-06-07 00:00:00'),(187,0,0,0,0,185,0,'2020-06-07 00:00:00'),(188,0,0,0,0,186,0,'2020-06-07 00:00:00'),(189,3330,4181,834,17,187,0,'2020-06-07 00:00:00'),(190,0,17,0,0,188,0,'2020-06-07 00:00:00'),(191,33,279,242,4,189,0,'2020-06-07 00:00:00'),(192,7135,12694,5506,53,190,0,'2020-06-07 00:00:00'),(193,20205,31848,11379,264,191,0,'2020-06-07 00:00:00'),(194,2,4,2,0,192,0,'2020-06-07 00:00:00'),(195,3888,4035,37,110,193,0,'2020-06-07 00:00:00'),(196,6674,8322,1531,117,194,0,'2020-06-07 00:00:00'),(197,98,202,90,14,195,0,'2020-06-07 00:00:00'),(198,0,0,0,0,196,0,'2020-06-07 00:00:00'),(199,10,11,0,1,197,0,'2020-06-07 00:00:00'),(200,0,0,0,0,198,0,'2020-06-07 00:00:00'),(201,370,1118,702,46,199,0,'2020-06-07 00:00:00'),(202,0,0,0,0,200,0,'2020-06-07 00:00:00'),(203,10118,16004,5500,386,201,0,'2020-06-07 00:00:00'),(204,0,0,0,0,202,0,'2020-06-07 00:00:00'),(205,411,480,68,1,203,0,'2020-06-07 00:00:00'),(206,0,0,0,0,204,0,'2020-06-07 00:00:00'),(207,0,0,0,0,205,0,'2020-06-07 00:00:00'),(208,2588,4328,1691,49,206,0,'2020-06-07 00:00:00'),(209,61,77,1,15,207,0,'2020-06-07 00:00:00'),(210,24258,45973,20763,952,208,0,'2020-06-07 00:00:00'),(211,2014,6081,3708,359,209,0,'2020-06-07 00:00:00'),(212,28700,30965,344,1921,210,0,'2020-06-07 00:00:00'),(213,2972,3112,82,58,211,0,'2020-06-07 00:00:00'),(214,108,117,1,8,212,0,'2020-06-07 00:00:00'),(215,0,0,0,0,213,0,'2020-06-07 00:00:00'),(216,752048,1988700,1124551,112101,214,0,'2020-06-07 00:00:00'),(217,385,2316,1909,22,215,0,'2020-06-07 00:00:00'),(218,8,8,0,0,216,0,'2020-06-07 00:00:00'),(219,12855,26249,12239,1155,217,0,'2020-06-07 00:00:00'),(220,14638,20479,4515,1326,218,0,'2020-06-07 00:00:00'),(221,15,15,0,0,219,0,'2020-06-07 00:00:00'),(222,0,0,0,0,220,0,'2020-06-07 00:00:00'),(223,11056,11741,437,248,221,0,'2020-06-07 00:00:00'),(224,1389,1528,111,28,222,0,'2020-06-07 00:00:00'),(225,0,0,0,0,223,0,'2020-06-07 00:00:00'),(226,9,100,90,1,224,0,'2020-06-07 00:00:00'),(227,58,125,61,6,225,0,'2020-06-07 00:00:00'),(228,24,24,0,0,226,0,'2020-06-07 00:00:00'),(229,982,1087,56,49,227,0,'2020-06-07 00:00:00'),(230,82,593,511,0,228,0,'2020-06-07 00:00:00'),(231,0,0,0,0,229,0,'2020-06-07 00:00:00'),(232,307,329,22,0,230,0,'2020-06-07 00:00:00'),(233,400,464,61,3,231,0,'2020-06-07 00:00:00'),(234,4530,21895,16362,1003,232,0,'2020-06-07 00:00:00'),(235,44338,68790,24398,54,233,0,'2020-06-07 00:00:00'),(236,0,0,0,0,234,0,'2020-06-07 00:00:00'),(237,1,1,0,0,235,0,'2020-06-07 00:00:00'),(238,72817,101914,28385,712,236,0,'2020-06-07 00:00:00'),(239,24559,37910,13326,25,237,0,'2020-06-07 00:00:00'),(240,431,2289,1776,82,238,0,'2020-06-07 00:00:00'),(241,941,1814,862,11,239,0,'2020-06-07 00:00:00'),(242,0,44730,0,4659,240,0,'2020-06-07 00:00:00'),(243,183,509,305,21,241,0,'2020-06-07 00:00:00'),(244,0,0,0,0,242,0,'2020-06-07 00:00:00'),(245,11,12,0,1,243,0,'2020-06-07 00:00:00'),(246,0,284868,0,40465,244,0,'2020-06-07 00:00:00'),(247,0,0,0,0,245,0,'2020-06-07 00:00:00'),(248,0,0,0,0,246,0,'2020-06-07 00:00:00'),(249,912,1089,170,7,247,0,'2020-06-07 00:00:00'),(250,6,9,2,1,248,0,'2020-06-07 00:00:00'),(251,23,482,348,111,249,0,'2020-06-07 00:00:00');
/*!40000 ALTER TABLE `covid_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_satistics`
--

DROP TABLE IF EXISTS `total_satistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_satistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_death` int(255) DEFAULT NULL,
  `total_recovered` int(255) DEFAULT NULL,
  `total_critical` int(255) DEFAULT NULL,
  `total_infected` int(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_satistics`
--

LOCK TABLES `total_satistics` WRITE;
/*!40000 ALTER TABLE `total_satistics` DISABLE KEYS */;
INSERT INTO `total_satistics` VALUES (81,402459,3201404,0,6976555,'2020-06-07 00:00:00'),(82,394821,2744142,0,6731525,'2020-06-05 00:00:00'),(83,391082,2867916,0,6630422,'2020-06-04 00:00:00'),(84,385893,2802943,0,6506082,'2020-06-03 00:00:00'),(85,380196,2727532,0,6375770,'2020-06-02 00:00:00'),(86,375505,2694019,0,6263730,'2020-06-01 00:00:00'),(87,371981,2639339,0,6164489,'2020-05-31 00:00:00'),(88,369072,2562715,0,6056561,'2020-05-30 00:00:00'),(89,364813,2491585,0,5921853,'2020-05-29 00:00:00'),(90,360254,2414014,0,5806525,'2020-05-28 00:00:00'),(91,355575,2348152,0,5689382,'2020-05-27 00:00:00'),(92,350399,2285025,0,5587232,'2020-05-26 00:00:00'),(93,346178,2229816,0,5492676,'2020-05-25 00:00:00'),(94,345006,2166648,0,5405236,'2020-05-24 00:00:00'),(95,342044,2110284,0,5307992,'2020-05-23 00:00:00'),(96,338108,2054758,0,5208470,'2020-05-22 00:00:00'),(97,332872,1946862,0,5100078,'2020-05-21 00:00:00'),(98,328063,1895592,0,4994165,'2020-05-20 00:00:00'),(99,323233,1837125,0,4895198,'2020-05-19 00:00:00'),(100,318429,1785095,0,4799688,'2020-05-18 00:00:00');
/*!40000 ALTER TABLE `total_satistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cadang','0123456c','admin','HN, VN','2020-04-30 00:00:00',NULL),(10,'trung','123456','admin','SaiGon','2020-05-03 00:00:00','trung@gmail.com'),(11,'trung123','123456','admin','Saigon','2020-05-03 00:00:00','trung@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'covid-19'
--

--
-- Dumping routines for database 'covid-19'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-07 22:06:00
