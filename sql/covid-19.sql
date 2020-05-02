CREATE DATABASE  IF NOT EXISTS `covid-19` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `covid-19`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: covid-19
-- ------------------------------------------------------
-- Server version	8.0.18

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'HaNoi',230),(2,'Ha Long',230);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_day` datetime DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','2020-04-30 00:00:00','Asia'),(2,'Albania','2020-04-30 00:00:00','Europe'),(3,'Åland Islands','2020-04-30 00:00:00','Europe'),(4,'American Samoa','2020-04-30 00:00:00','Oceania'),(5,'Algeria','2020-04-30 00:00:00','Africa'),(6,'Andorra','2020-04-30 00:00:00','Europe'),(7,'Angola','2020-04-30 00:00:00','Africa'),(8,'Anguilla','2020-04-30 00:00:00','Europe'),(9,'Antigua and Barbuda','2020-04-30 00:00:00','America'),(10,'Antarctica','2020-04-30 00:00:00','Antarctica'),(11,'Australia','2020-04-30 00:00:00','Oceania'),(12,'Austria','2020-04-30 00:00:00','Europe'),(13,'Bahrain','2020-04-30 00:00:00','Asia'),(14,'Bangladesh','2020-04-30 00:00:00','Asia'),(15,'Benin','2020-04-30 00:00:00','Africa'),(16,'Belize','2020-04-30 00:00:00','America'),(17,'Argentina','2020-04-30 00:00:00','America'),(18,'Armenia','2020-04-30 00:00:00','Asia'),(19,'Bosnia and Herzegovina','2020-04-30 00:00:00','Europe'),(20,'Aruba','2020-04-30 00:00:00','Europe'),(21,'Azerbaijan','2020-04-30 00:00:00','Asia'),(22,'Bahamas','2020-04-30 00:00:00','America'),(23,'Brunei ','2020-04-30 00:00:00','Asia'),(24,'Bonaire, Sint Eustatius and Saba','2020-04-30 00:00:00','America'),(25,'Belarus','2020-04-30 00:00:00','Europe'),(26,'Barbados','2020-04-30 00:00:00','America'),(27,'British Indian Ocean Territory','2020-04-30 00:00:00','Asia'),(28,'Bermuda','2020-04-30 00:00:00','America'),(29,'Belgium','2020-04-30 00:00:00','Europe'),(30,'Cameroon','2020-04-30 00:00:00','Africa'),(31,'Bhutan','2020-04-30 00:00:00','Asia'),(32,'Bolivia','2020-04-30 00:00:00','America'),(33,'Cambodia','2020-04-30 00:00:00','Asia'),(34,'CAR','2020-04-30 00:00:00','Africa'),(35,'Botswana','2020-04-30 00:00:00','Africa'),(36,'Chad','2020-04-30 00:00:00','Africa'),(37,'Bulgaria','2020-04-30 00:00:00','Europe'),(38,'Bouvet Island','2020-04-30 00:00:00','Antarctica'),(39,'Brazil','2020-04-30 00:00:00','America'),(40,'Cocos (Keeling) Islands','2020-04-30 00:00:00','Asia'),(41,'Colombia','2020-04-30 00:00:00','America'),(42,'Canada','2020-04-30 00:00:00','America'),(43,'Burkina Faso','2020-04-30 00:00:00','Africa'),(44,'Burundi','2020-04-30 00:00:00','Africa'),(45,'Costa Rica','2020-04-30 00:00:00','America'),(46,'Cape Verde','2020-04-30 00:00:00','Africa'),(47,'Cayman Islands','2020-04-30 00:00:00','America'),(48,'Cook Islands','2020-04-30 00:00:00','Oceania'),(49,'China','2020-04-30 00:00:00','Asia'),(50,'Curaçao','2020-04-30 00:00:00','America'),(51,'Cyprus','2020-04-30 00:00:00','Europe'),(52,'Christmas Island','2020-04-30 00:00:00','Asia'),(53,'Chile','2020-04-30 00:00:00','America'),(54,'Dominican Republic','2020-04-30 00:00:00','America'),(55,'Comoros','2020-04-30 00:00:00','Africa'),(56,'Congo','2020-04-30 00:00:00','Africa'),(57,'DRC','2020-04-30 00:00:00','Africa'),(58,'Dominica','2020-04-30 00:00:00','America'),(59,'Equatorial Guinea','2020-04-30 00:00:00','Africa'),(60,'Côte d\'Ivoire','2020-04-30 00:00:00','Africa'),(61,'Croatia','2020-04-30 00:00:00','Europe'),(62,'Cuba','2020-04-30 00:00:00','America'),(63,'Eritrea','2020-04-30 00:00:00','Africa'),(64,'Czechia','2020-04-30 00:00:00','Europe'),(65,'Denmark','2020-04-30 00:00:00','Europe'),(66,'Djibouti','2020-04-30 00:00:00','Africa'),(67,'Fiji','2020-04-30 00:00:00','Oceania'),(68,'Faroe Islands','2020-04-30 00:00:00','Europe'),(69,'El Salvador','2020-04-30 00:00:00','America'),(70,'Egypt','2020-04-30 00:00:00','Africa'),(71,'French Southern Territories','2020-04-30 00:00:00','Antarctic'),(72,'French Polynesia','2020-04-30 00:00:00','Oceania'),(73,'Ecuador','2020-04-30 00:00:00','America'),(74,'Ghana','2020-04-30 00:00:00','Africa'),(75,'Estonia','2020-04-30 00:00:00','Europe'),(76,'Ethiopia','2020-04-30 00:00:00','Africa'),(77,'Germany','2020-04-30 00:00:00','Europe'),(78,'Falkland Islands','2020-04-30 00:00:00','America'),(79,'Finland','2020-04-30 00:00:00','Europe'),(80,'Grenada','2020-04-30 00:00:00','America'),(81,'France','2020-04-30 00:00:00','Europe'),(82,'Guadeloupe','2020-04-30 00:00:00','America'),(83,'Gabon','2020-04-30 00:00:00','Africa'),(84,'French Guiana','2020-04-30 00:00:00','America'),(85,'Guinea','2020-04-30 00:00:00','Africa'),(86,'Gambia','2020-04-30 00:00:00','Africa'),(87,'Guinea-Bissau','2020-04-30 00:00:00','Africa'),(88,'Honduras','2020-04-30 00:00:00','America'),(89,'Gibraltar','2020-04-30 00:00:00','Europe'),(90,'Georgia','2020-04-30 00:00:00','Europe'),(91,'Greece','2020-04-30 00:00:00','Europe'),(92,'Greenland','2020-04-30 00:00:00','America'),(93,'Vatican City','2020-04-30 00:00:00','Europe'),(94,'Guatemala','2020-04-30 00:00:00','America'),(95,'Indonesia','2020-04-30 00:00:00','Asia'),(96,'Guernsey','2020-04-30 00:00:00','Europe'),(97,'India','2020-04-30 00:00:00','Asia'),(98,'Guam','2020-04-30 00:00:00','Oceania'),(99,'Isle of Man','2020-04-30 00:00:00','Europe'),(100,'Israel','2020-04-30 00:00:00','Asia'),(101,'Guyana','2020-04-30 00:00:00','America'),(102,'Hong Kong','2020-04-30 00:00:00','Asia'),(103,'Haiti','2020-04-30 00:00:00','America'),(104,'Heard Island and McDonald Islands','2020-04-30 00:00:00','Antarctica'),(105,'Jersey','2020-04-30 00:00:00','Europe'),(106,'Hungary','2020-04-30 00:00:00','Europe'),(107,'Iceland','2020-04-30 00:00:00','Europe'),(108,'Iran','2020-04-30 00:00:00','Asia'),(109,'Iraq','2020-04-30 00:00:00','Asia'),(110,'Ireland','2020-04-30 00:00:00','Europe'),(111,'Italy','2020-04-30 00:00:00','Europe'),(112,'Jamaica','2020-04-30 00:00:00','Africa'),(113,'Japan','2020-04-30 00:00:00','Asia'),(114,'Korea, Democratic People\'s Republic of','2020-04-30 00:00:00','Asia'),(115,'Latvia','2020-04-30 00:00:00','Europe'),(116,'Liechtenstein','2020-04-30 00:00:00','Europe'),(117,'Madagascar','2020-04-30 00:00:00','Africa'),(118,'Malta','2020-04-30 00:00:00','Europe'),(119,'Mayotte','2020-04-30 00:00:00','Africa'),(120,'Mongolia','2020-04-30 00:00:00','Asia'),(121,'Myanmar','2020-04-30 00:00:00','Asia'),(122,'New Caledonia','2020-04-30 00:00:00','Oceania'),(123,'Niue','2020-04-30 00:00:00','Oceania'),(124,'Jordan','2020-04-30 00:00:00','Asia'),(125,'S. Korea','2020-04-30 00:00:00','Asia'),(126,'Lebanon','2020-04-30 00:00:00','Asia'),(127,'Lithuania','2020-04-30 00:00:00','Europe'),(128,'Malawi','2020-04-30 00:00:00','Africa'),(129,'Marshall Islands','2020-04-30 00:00:00','Oceania'),(130,'Kenya','2020-04-30 00:00:00','Africa'),(131,'Mexico','2020-04-30 00:00:00','America'),(132,'Kyrgyzstan','2020-04-30 00:00:00','Asia'),(133,'Montenegro','2020-04-30 00:00:00','Europe'),(134,'Kiribati','2020-04-30 00:00:00','Oceania'),(135,'Liberia','2020-04-30 00:00:00','Africa'),(136,'Laos','2020-04-30 00:00:00','Asia'),(137,'Macao','2020-04-30 00:00:00','Asia'),(138,'Libya','2020-04-30 00:00:00','Africa'),(139,'Maldives','2020-04-30 00:00:00','Asia'),(140,'North Macedonia','2020-04-30 00:00:00','Europe'),(141,'Mauritania','2020-04-30 00:00:00','Africa'),(142,'Mali','2020-04-30 00:00:00','Africa'),(143,'Mauritius','2020-04-30 00:00:00','Africa'),(144,'Namibia','2020-04-30 00:00:00','Africa'),(145,'Pakistan','2020-04-30 00:00:00','Asia'),(146,'Moldova','2020-04-30 00:00:00','Europe'),(147,'New Zealand','2020-04-30 00:00:00','Oceania'),(148,'Morocco','2020-04-30 00:00:00','Africa'),(149,'Norfolk Island','2020-04-30 00:00:00','Oceania'),(150,'Nepal','2020-04-30 00:00:00','Asia'),(151,'Paraguay','2020-04-30 00:00:00','America'),(152,'Niger','2020-04-30 00:00:00','Africa'),(153,'Monaco','2020-04-30 00:00:00','Europe'),(154,'Mozambique','2020-04-30 00:00:00','Africa'),(155,'Netherlands','2020-04-30 00:00:00','Europe'),(156,'Norway','2020-04-30 00:00:00','Europe'),(157,'Nigeria','2020-04-30 00:00:00','Africa'),(158,'Portugal','2020-04-30 00:00:00','Europe'),(159,'Oman','2020-04-30 00:00:00','Asia'),(160,'Russia','2020-04-30 00:00:00','Europe'),(161,'Saint Lucia','2020-04-30 00:00:00','America'),(162,'San Marino','2020-04-30 00:00:00','Europe'),(163,'Palau','2020-04-30 00:00:00','Oceania'),(164,'Seychelles','2020-04-30 00:00:00','Africa'),(165,'Peru','2020-04-30 00:00:00','Africa'),(166,'Slovenia','2020-04-30 00:00:00','Europe'),(167,'Puerto Rico','2020-04-30 00:00:00','America'),(168,'South Sudan','2020-04-30 00:00:00','Africa'),(169,'Rwanda','2020-04-30 00:00:00','Africa'),(170,'Svalbard and Jan Mayen','2020-04-30 00:00:00','Europe'),(171,'Saint Martin','2020-04-30 00:00:00','America'),(172,'Taiwan','2020-04-30 00:00:00','Asia'),(173,'Sao Tome and Principe','2020-04-30 00:00:00','Africa'),(174,'Togo','2020-04-30 00:00:00','Africa'),(175,'Sierra Leone','2020-04-30 00:00:00','Africa'),(176,'Turkey','2020-04-30 00:00:00','Europe'),(177,'Solomon Islands','2020-04-30 00:00:00','Oceania'),(178,'Ukraine','2020-04-30 00:00:00','Europe'),(179,'Spain','2020-04-30 00:00:00','Europe'),(180,'Uruguay','2020-04-30 00:00:00','America'),(181,'Swaziland','2020-04-30 00:00:00','Africa'),(182,'British Virgin Islands','2020-04-30 00:00:00','America'),(183,'Tajikistan','2020-04-30 00:00:00','Asia'),(184,'Tokelau','2020-04-30 00:00:00','Oceania'),(185,'Turkmenistan','2020-04-30 00:00:00','Asia'),(186,'United Arab Emirates','2020-04-30 00:00:00','Asia'),(187,'Uzbekistan','2020-04-30 00:00:00','Asia'),(188,'U.S. Virgin Islands','2020-04-30 00:00:00','America'),(189,'Zimbabwe','2020-04-30 00:00:00','Africa'),(190,'Kazakhstan','2020-04-30 00:00:00','Asia'),(191,'Kuwait','2020-04-30 00:00:00','Asia'),(192,'Lesotho','2020-04-30 00:00:00','Africa'),(193,'Luxembourg','2020-04-30 00:00:00','Europe'),(194,'Malaysia','2020-04-30 00:00:00','Asia'),(195,'Martinique','2020-04-30 00:00:00','America'),(196,'Micronesia, Federated States of','2020-04-30 00:00:00','Oceania'),(197,'Montserrat','2020-04-30 00:00:00','America'),(198,'Nauru','2020-04-30 00:00:00','Oceania'),(199,'Nicaragua','2020-04-30 00:00:00','America'),(200,'Northern Mariana Islands','2020-04-30 00:00:00','Oceania'),(201,'Panama','2020-04-30 00:00:00','America'),(202,'Pitcairn','2020-04-30 00:00:00','Oceania'),(203,'Réunion','2020-04-30 00:00:00','Africa'),(204,'Saint Helena, Ascension and Tristan da Cunha','2020-04-30 00:00:00','Africa'),(205,'Saint Vincent Grenadines','2020-04-30 00:00:00','America'),(206,'Senegal','2020-04-30 00:00:00','Africa'),(207,'Sint Maarten','2020-04-30 00:00:00','America'),(208,'South Africa','2020-04-30 00:00:00','Africa'),(209,'Sudan','2020-04-30 00:00:00','Africa'),(210,'Switzerland','2020-04-30 00:00:00','Europe'),(211,'Thailand','2020-04-30 00:00:00','Asia'),(212,'Trinidad and Tobago','2020-04-30 00:00:00','America'),(213,'Tuvalu','2020-04-30 00:00:00','Oceania'),(214,'USA','2020-04-30 00:00:00','America'),(215,'Venezuela','2020-04-30 00:00:00','America'),(216,'Papua New Guinea','2020-04-30 00:00:00','Oceania'),(217,'Poland','2020-04-30 00:00:00','Europe'),(218,'Romania','2020-04-30 00:00:00','Europe'),(219,'Saint Kitts and Nevis','2020-04-30 00:00:00','America'),(220,'Samoa','2020-04-30 00:00:00','Oceania'),(221,'Serbia','2020-04-30 00:00:00','Europe'),(222,'Slovakia','2020-04-30 00:00:00','Europe'),(223,'South Georgia and the South Sandwich Islands','2020-04-30 00:00:00','Antarctica'),(224,'Suriname','2020-04-30 00:00:00','America'),(225,'Syria','2020-04-30 00:00:00','Asia'),(226,'Timor-Leste','2020-04-30 00:00:00','Asia'),(227,'Tunisia','2020-04-30 00:00:00','Africa'),(228,'Uganda','2020-04-30 00:00:00','Africa'),(229,'United States Minor Outlying Islands','2020-04-30 00:00:00','America'),(230,'Vietnam','2020-04-30 00:00:00','Asia'),(231,'Palestine','2020-04-30 00:00:00','Asia'),(232,'Philippines','2020-04-30 00:00:00','Asia'),(233,'Qatar','2020-04-30 00:00:00','Asia'),(234,'Saint Barth','2020-04-30 00:00:00','America'),(235,'Saint Pierre Miquelon','2020-04-30 00:00:00','America'),(236,'Saudi Arabia','2020-04-30 00:00:00','Asia'),(237,'Singapore','2020-04-30 00:00:00','Asia'),(238,'Somalia','2020-04-30 00:00:00','Africa'),(239,'Sri Lanka','2020-04-30 00:00:00','Asia'),(240,'Sweden','2020-04-30 00:00:00','Europe'),(241,'Tanzania','2020-04-30 00:00:00','Africa'),(242,'Tonga','2020-04-30 00:00:00','Oceania'),(243,'Turks and Caicos','2020-04-30 00:00:00','America'),(244,'UK','2020-04-30 00:00:00','Europe'),(245,'Vanuatu','2020-04-30 00:00:00','Oceania'),(246,'Wallis and Futuna','2020-04-30 00:00:00','Oceania'),(247,'Zambia','2020-04-30 00:00:00','Africa'),(248,'Western Sahara','2020-04-30 00:00:00','Africa'),(249,'Yemen','2020-04-30 00:00:00','Asia');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covid_data`
--

LOCK TABLES `covid_data` WRITE;
/*!40000 ALTER TABLE `covid_data` DISABLE KEYS */;
INSERT INTO `covid_data` VALUES (3,260,2171,7,64,1,0),(4,470,773,4,31,2,0),(5,0,0,0,0,3,0),(6,0,0,0,0,4,0),(7,1702,3848,22,444,5,0),(8,423,743,17,42,6,0),(9,7,27,0,2,7,0),(10,3,3,0,0,8,0),(11,11,24,1,3,9,0),(12,0,0,0,0,10,0),(13,5715,6753,34,91,11,0),(14,12907,15452,128,584,12,0),(15,1495,3037,1,8,13,0),(16,160,7667,1,168,14,0),(17,33,64,0,1,15,0),(18,9,18,1,2,16,0),(19,1192,4285,144,214,17,0),(20,929,2066,10,32,18,0),(21,727,1757,4,69,19,0),(22,73,100,4,2,20,0),(23,1267,1766,18,23,21,0),(24,25,80,1,11,22,0),(25,124,138,2,1,23,0),(26,0,0,0,0,24,0),(27,2386,14027,92,89,25,0),(28,39,80,4,7,26,0),(29,0,0,0,0,27,0),(30,48,111,10,6,28,0),(31,11576,48519,769,7594,29,0),(32,934,1832,12,61,30,0),(33,5,7,0,0,31,0),(34,117,1110,3,59,32,0),(35,119,122,1,0,33,0),(36,10,50,0,0,34,0),(37,5,23,0,1,35,0),(38,19,52,0,2,36,0),(39,266,1488,38,65,37,0),(40,0,0,0,0,38,0),(41,34132,79685,8318,5513,39,0),(42,0,0,0,0,40,0),(43,1411,6211,118,278,41,0),(44,20327,51597,557,2996,42,0),(45,498,641,0,43,43,0),(46,4,11,0,1,44,0),(47,323,713,8,6,45,0),(48,0,0,0,0,46,0),(49,10,73,3,1,47,0),(50,0,0,0,0,48,0),(51,77610,82862,41,4633,49,0),(52,13,16,0,1,50,0),(53,148,843,15,15,51,0),(54,0,0,0,0,52,0),(55,8057,15135,377,216,53,0),(56,1228,6652,144,293,54,0),(57,0,0,0,0,55,0),(58,19,220,0,9,56,0),(59,65,500,0,31,57,0),(60,13,16,0,0,58,0),(61,9,315,0,1,59,0),(62,0,0,0,0,60,0),(63,1348,2076,19,69,61,0),(64,617,1467,14,58,62,0),(65,19,39,0,0,63,0),(66,3120,7581,68,227,64,0),(67,6546,9158,62,452,65,0),(68,599,1077,0,2,66,0),(69,12,18,0,0,67,0),(70,0,0,0,0,68,0),(71,118,395,3,9,69,0),(72,1335,5268,0,380,70,0),(73,0,0,0,0,71,0),(74,50,58,1,0,72,0),(75,1557,24675,146,883,73,0),(76,212,2074,4,17,74,0),(77,249,1689,9,52,75,0),(78,59,131,0,3,76,0),(79,123500,161552,2415,6467,77,0),(80,11,13,0,0,78,0),(81,2800,4995,51,206,79,0),(82,13,20,4,0,80,0),(83,48228,166420,4207,24087,81,0),(84,95,151,11,12,82,0),(85,67,276,1,3,83,0),(86,94,126,2,1,84,0),(87,313,1351,0,7,85,0),(88,8,11,0,1,86,0),(89,19,205,0,1,87,0),(90,79,771,10,71,88,0),(91,131,141,0,0,89,0),(92,178,539,6,6,90,0),(93,577,2576,41,139,91,0),(94,11,11,0,0,92,0),(95,2,10,0,0,93,0),(96,65,585,5,16,94,0),(97,1522,10118,0,792,95,0),(98,0,0,0,0,96,0),(99,8437,33062,0,1079,97,0),(100,0,32,0,1,98,0),(101,258,313,21,21,99,0),(102,8412,15870,117,219,100,0),(103,18,78,3,8,101,0),(104,846,1038,4,4,102,0),(105,8,76,0,7,103,0),(106,0,0,0,0,104,0),(107,0,0,0,0,105,0),(108,581,2775,54,312,106,0),(109,1656,1797,0,10,107,0),(110,75103,94640,2976,6028,108,0),(111,1346,2003,0,92,109,0),(112,13386,20253,129,1190,110,0),(113,71252,203591,1795,27682,111,0),(114,29,396,3,7,112,0),(115,2368,13965,306,425,113,0),(116,0,0,0,0,114,0),(117,348,858,3,15,115,0),(118,55,82,0,1,116,0),(119,92,128,1,0,117,0),(120,351,465,1,4,118,0),(121,235,539,4,4,119,0),(122,10,38,0,0,120,0),(123,27,150,0,6,121,0),(124,17,18,1,0,122,0),(125,0,0,0,0,123,0),(126,356,451,5,8,124,0),(127,9059,10765,55,247,125,0),(128,150,725,44,24,126,0),(129,589,1385,17,45,127,0),(130,7,36,1,3,128,0),(131,0,0,0,0,129,0),(132,129,384,2,15,130,0),(133,11423,17799,378,1732,131,0),(134,462,746,12,8,132,0),(135,206,322,2,7,133,0),(136,0,0,0,0,134,0),(137,45,141,0,16,135,0),(138,8,19,0,0,136,0),(139,35,45,1,0,137,0),(140,18,61,0,2,138,0),(141,17,301,2,1,139,0),(142,738,1465,13,77,140,0),(143,6,8,0,1,141,0),(144,129,482,0,25,142,0),(145,306,332,3,10,143,0),(146,8,16,0,0,144,0),(147,4052,15759,111,346,145,0),(148,1182,3771,237,116,146,0),(149,1241,1476,1,19,147,0),(150,969,4359,1,168,148,0),(151,0,0,0,0,149,0),(152,16,57,0,0,150,0),(153,111,249,1,9,151,0),(154,435,713,0,32,152,0),(155,58,95,1,4,153,0),(156,12,76,0,0,154,0),(157,0,39316,804,4795,155,0),(158,32,7710,40,207,156,0),(159,307,1728,2,51,157,0),(160,1519,25045,172,989,158,0),(161,495,2348,3,11,159,0),(162,11619,106498,2300,1073,160,0),(163,15,17,0,0,161,0),(164,69,563,6,41,162,0),(165,0,0,0,0,163,0),(166,6,11,0,0,164,0),(167,10037,33931,623,943,165,0),(168,233,1429,22,91,166,0),(169,1,39,0,2,167,0),(170,0,35,0,0,168,0),(171,98,225,0,0,169,0),(172,0,0,0,0,170,0),(173,24,38,3,3,171,0),(174,322,429,0,6,172,0),(175,4,14,0,0,173,0),(176,64,109,0,7,174,0),(177,21,124,0,7,175,0),(178,44040,117589,1574,3081,176,0),(179,0,0,0,0,177,0),(180,1238,10406,138,261,178,0),(181,132929,236899,7764,24275,179,0),(182,412,630,11,15,180,0),(183,0,0,0,0,181,0),(184,3,6,0,1,182,0),(185,0,15,0,0,183,0),(186,0,0,0,0,184,0),(187,0,0,0,0,185,0),(188,0,0,0,0,186,0),(189,1096,2017,8,9,187,0),(190,0,17,0,0,188,0),(191,5,40,0,4,189,0),(192,819,3356,41,25,190,0),(193,1539,4024,66,26,191,0),(194,0,0,0,0,192,0),(195,3134,3769,21,89,193,0),(196,4171,6002,40,102,194,0),(197,83,178,5,14,195,0),(198,0,0,0,0,196,0),(199,2,11,1,1,197,0),(200,0,0,0,0,198,0),(201,7,13,0,3,199,0),(202,0,0,0,0,200,0),(203,527,6378,92,178,201,0),(204,0,0,0,0,202,0),(205,300,420,2,0,203,0),(206,0,0,0,0,204,0),(207,0,0,0,0,205,0),(208,334,933,1,9,206,0),(209,33,75,7,13,207,0),(210,2073,5350,36,103,208,0),(211,32,375,0,28,209,0),(212,23100,29586,167,1716,210,0),(213,2684,2954,61,54,211,0),(214,72,116,0,8,212,0),(215,0,0,0,0,213,0),(216,147411,1064819,18851,61680,214,0),(217,142,331,2,10,215,0),(218,0,8,0,0,216,0),(219,3236,12781,160,628,217,0),(220,4017,12240,221,695,218,0),(221,6,15,0,0,219,0),(222,0,0,0,0,220,0),(223,1292,8724,78,173,221,0),(224,524,1396,8,23,222,0),(225,0,0,0,0,223,0),(226,8,10,0,1,224,0),(227,21,43,0,3,225,0),(228,16,24,0,0,226,0),(229,294,980,20,40,227,0),(230,52,81,0,0,228,0),(231,0,0,0,0,229,0),(232,219,270,8,0,230,0),(233,71,344,0,2,231,0),(234,1043,8488,31,568,232,0),(235,1372,13409,72,10,233,0),(236,0,0,0,0,234,0),(237,0,1,0,0,235,0),(238,2953,21402,125,157,236,0),(239,1188,16169,22,14,237,0),(240,20,582,2,28,238,0),(241,139,649,1,7,239,0),(242,1005,21092,531,2586,240,0),(243,167,480,7,16,241,0),(244,0,0,0,0,242,0),(245,5,12,0,1,243,0),(246,0,165221,1559,26097,244,0),(247,0,0,0,0,245,0),(248,0,0,0,0,246,0),(249,54,97,1,3,247,0),(250,5,6,0,0,248,0),(251,1,6,0,2,249,0);
/*!40000 ALTER TABLE `covid_data` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cadang','0123456c','admin','HN, VN','2020-04-30 00:00:00');
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

-- Dump completed on 2020-05-02 16:00:38
