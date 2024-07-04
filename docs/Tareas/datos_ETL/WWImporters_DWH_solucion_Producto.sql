-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 157.253.236.116    Database: WWImporters_DWH_solucion
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.20.04.3

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
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producto` (
  `ID_Producto_DWH` int NOT NULL AUTO_INCREMENT,
  `ID_Producto_T` int DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Necesita_refrigeración` int DEFAULT NULL,
  `Dias_tiempo_entrega` int DEFAULT NULL,
  `Precio_minorista_recomendado` decimal(10,0) DEFAULT NULL,
  `Impuesto` decimal(10,0) DEFAULT NULL,
  `Precio_unitario` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_Producto_DWH`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (1,1,'USB missile launcher (Green)',NULL,'missing',0,14,37,15,25),(2,2,'USB rocket launcher (Gray)',NULL,'Steel Gray',0,14,37,15,25),(3,3,'Office cube periscope (Black)',NULL,'Black',0,14,28,15,19),(4,4,'USB food flash drive - sushi roll',NULL,'missing',0,14,48,15,32),(5,5,'USB food flash drive - hamburger',NULL,'missing',0,14,48,15,32),(6,6,'USB food flash drive - hot dog',NULL,'missing',0,14,48,15,32),(7,7,'USB food flash drive - pizza slice',NULL,'missing',0,14,48,15,32),(8,8,'USB food flash drive - dim sum 10 drive variety pack',NULL,'missing',0,14,359,15,240),(9,9,'USB food flash drive - banana',NULL,'missing',0,14,48,15,32),(10,10,'USB food flash drive - chocolate bar',NULL,'missing',0,14,48,15,32),(11,11,'USB food flash drive - cookie',NULL,'missing',0,14,48,15,32),(12,12,'USB food flash drive - donut',NULL,'missing',0,14,48,15,32),(13,13,'USB food flash drive - shrimp cocktail',NULL,'missing',0,14,48,15,32),(14,14,'USB food flash drive - fortune cookie',NULL,'missing',0,14,48,15,32),(15,15,'USB food flash drive - dessert 10 drive variety pack',NULL,'missing',0,14,359,15,240),(16,16,'DBA joke mug - mind if I join you? (White)',NULL,'White',0,12,19,15,13),(17,17,'DBA joke mug - mind if I join you? (Black)',NULL,'Black',0,12,19,15,13),(18,18,'DBA joke mug - daaaaaa-ta (White)',NULL,'White',0,12,19,15,13),(19,19,'DBA joke mug - daaaaaa-ta (Black)',NULL,'Black',0,12,19,15,13),(20,20,'DBA joke mug - you might be a DBA if (White)',NULL,'White',0,12,19,15,13),(21,21,'DBA joke mug - you might be a DBA if (Black)',NULL,'Black',0,12,19,15,13),(22,22,'DBA joke mug - it depends (White)',NULL,'White',0,12,19,15,13),(23,23,'DBA joke mug - it depends (Black)',NULL,'Black',0,12,19,15,13),(24,24,'DBA joke mug - I will get you in order (White)',NULL,'White',0,12,19,15,13),(25,25,'DBA joke mug - I will get you in order (Black)',NULL,'Black',0,12,19,15,13),(26,26,'DBA joke mug - SELECT caffeine FROM mug (White)',NULL,'White',0,12,19,15,13),(27,27,'DBA joke mug - SELECT caffeine FROM mug (Black)',NULL,'Black',0,12,19,15,13),(28,28,'DBA joke mug - two types of DBAs (White)',NULL,'White',0,12,19,15,13),(29,29,'DBA joke mug - two types of DBAs (Black)',NULL,'Black',0,12,19,15,13),(30,30,'Developer joke mug - Oct 31 = Dec 25 (White)',NULL,'White',0,12,19,15,13),(31,31,'Developer joke mug - Oct 31 = Dec 25 (Black)',NULL,'Black',0,12,19,15,13),(32,32,'Developer joke mug - that\'s a hardware problem (White)',NULL,'White',0,12,19,15,13),(33,33,'Developer joke mug - that\'s a hardware problem (Black)',NULL,'Black',0,12,19,15,13),(34,34,'Developer joke mug - fun was unexpected at this time (White)',NULL,'White',0,12,19,15,13),(35,35,'Developer joke mug - fun was unexpected at this time (Black)',NULL,'Black',0,12,19,15,13),(36,36,'Developer joke mug - when your hammer is C++ (White)',NULL,'White',0,12,19,15,13),(37,37,'Developer joke mug - when your hammer is C++ (Black)',NULL,'Black',0,12,19,15,13),(38,38,'Developer joke mug - inheritance is the OO way to become wealthy (White)',NULL,'White',0,12,19,15,13),(39,39,'Developer joke mug - inheritance is the OO way to become wealthy (Black)',NULL,'Black',0,12,19,15,13),(40,40,'Developer joke mug - (hip, hip, array) (White)',NULL,'White',0,12,19,15,13),(41,41,'Developer joke mug - (hip, hip, array) (Black)',NULL,'Black',0,12,19,15,13),(42,42,'Developer joke mug - understanding recursion requires understanding recursion (White)',NULL,'White',0,12,19,15,13),(43,43,'Developer joke mug - understanding recursion requires understanding recursion (Black)',NULL,'Black',0,12,19,15,13),(44,44,'Developer joke mug - there are 10 types of people in the world (White)',NULL,'White',0,12,19,15,13),(45,45,'Developer joke mug - there are 10 types of people in the world (Black)',NULL,'Black',0,12,19,15,13),(46,46,'Developer joke mug - a foo walks into a bar (White)',NULL,'White',0,12,19,15,13),(47,47,'Developer joke mug - a foo walks into a bar (Black)',NULL,'Black',0,12,19,15,13),(48,48,'Developer joke mug - this code was generated by a tool (White)',NULL,'White',0,12,19,15,13),(49,49,'Developer joke mug - this code was generated by a tool (Black)',NULL,'Black',0,12,19,15,13),(50,50,'Developer joke mug - old C developers never die (White)',NULL,'White',0,12,19,15,13),(51,51,'Developer joke mug - old C developers never die (Black)',NULL,'Black',0,12,19,15,13),(52,52,'IT joke mug - keyboard not found … press F1 to continue (White)',NULL,'White',0,12,19,15,13),(53,53,'IT joke mug - keyboard not found … press F1 to continue (Black)',NULL,'Black',0,12,19,15,13),(54,54,'IT joke mug - that behavior is by design (White)',NULL,'White',0,12,19,15,13),(55,55,'IT joke mug - that behavior is by design (Black)',NULL,'Black',0,12,19,15,13),(56,56,'IT joke mug - hardware: part of the computer that can be kicked (White)',NULL,'White',0,12,19,15,13),(57,57,'IT joke mug - hardware: part of the computer that can be kicked (Black)',NULL,'Black',0,12,19,15,13),(58,58,'RC toy sedan car with remote control (Black) 1/50 scale','Northwind','Black',0,14,37,15,25),(59,59,'RC toy sedan car with remote control (Red) 1/50 scale','Northwind','Red',0,14,37,15,25),(60,60,'RC toy sedan car with remote control (Blue) 1/50 scale','Northwind','Blue',0,14,37,15,25),(61,61,'RC toy sedan car with remote control (Green) 1/50 scale','Northwind','missing',0,14,37,15,25),(62,62,'RC toy sedan car with remote control (Yellow) 1/50 scale','Northwind','Yellow',0,14,37,15,25),(63,63,'RC toy sedan car with remote control (Pink) 1/50 scale','Northwind','missing',0,14,37,15,25),(64,64,'RC vintage American toy coupe with remote control (Red) 1/50 scale','Northwind','Red',0,14,45,15,30),(65,65,'RC vintage American toy coupe with remote control (Black) 1/50 scale','Northwind','Black',0,14,45,15,30),(66,66,'RC big wheel monster truck with remote control (Black) 1/50 scale','Northwind','Black',0,14,67,15,45),(67,67,'Ride on toy sedan car (Black) 1/12 scale','Northwind','Black',0,14,344,15,230),(68,68,'Ride on toy sedan car (Red) 1/12 scale','Northwind','Red',0,14,344,15,230),(69,69,'Ride on toy sedan car (Blue) 1/12 scale','Northwind','Blue',0,14,344,15,230),(70,70,'Ride on toy sedan car (Green) 1/12 scale','Northwind','missing',0,14,344,15,230),(71,71,'Ride on toy sedan car (Yellow) 1/12 scale','Northwind','Yellow',0,14,344,15,230),(72,72,'Ride on toy sedan car (Pink) 1/12 scale','Northwind','missing',0,14,344,15,230),(73,73,'Ride on vintage American toy coupe (Red) 1/12 scale','Northwind','Red',0,14,426,15,285),(74,74,'Ride on vintage American toy coupe (Black) 1/12 scale','Northwind','Black',0,14,426,15,285),(75,75,'Ride on big wheel monster truck (Black) 1/12 scale','Northwind','Black',0,14,516,15,345),(76,76,'\"The Gu\" red shirt XML tag t-shirt (White) 3XS',NULL,'White',0,7,27,15,18),(77,77,'\"The Gu\" red shirt XML tag t-shirt (White) XXS',NULL,'White',0,7,27,15,18),(78,78,'\"The Gu\" red shirt XML tag t-shirt (White) XS',NULL,'White',0,7,27,15,18),(79,79,'\"The Gu\" red shirt XML tag t-shirt (White) S',NULL,'White',0,7,27,15,18),(80,80,'\"The Gu\" red shirt XML tag t-shirt (White) M',NULL,'White',0,7,27,15,18),(81,81,'\"The Gu\" red shirt XML tag t-shirt (White) L',NULL,'White',0,7,27,15,18),(82,82,'\"The Gu\" red shirt XML tag t-shirt (White) XL',NULL,'White',0,7,27,15,18),(83,83,'\"The Gu\" red shirt XML tag t-shirt (White) XXL',NULL,'White',0,7,27,15,18),(84,84,'\"The Gu\" red shirt XML tag t-shirt (White) 3XL',NULL,'White',0,7,27,15,18),(85,85,'\"The Gu\" red shirt XML tag t-shirt (White) 4XL',NULL,'White',0,7,27,15,18),(86,86,'\"The Gu\" red shirt XML tag t-shirt (White) 5XL',NULL,'White',0,7,27,15,18),(87,87,'\"The Gu\" red shirt XML tag t-shirt (White) 6XL',NULL,'White',0,7,27,15,18),(88,88,'\"The Gu\" red shirt XML tag t-shirt (White) 7XL',NULL,'White',0,7,27,15,18),(89,89,'\"The Gu\" red shirt XML tag t-shirt (Black) 3XS',NULL,'Black',0,7,27,15,18),(90,90,'\"The Gu\" red shirt XML tag t-shirt (Black) XXS',NULL,'Black',0,7,27,15,18),(91,91,'\"The Gu\" red shirt XML tag t-shirt (Black) XS',NULL,'Black',0,7,27,15,18),(92,92,'\"The Gu\" red shirt XML tag t-shirt (Black) S',NULL,'Black',0,7,27,15,18),(93,93,'\"The Gu\" red shirt XML tag t-shirt (Black) M',NULL,'Black',0,7,27,15,18),(94,94,'\"The Gu\" red shirt XML tag t-shirt (Black) L',NULL,'Black',0,7,27,15,18),(95,95,'\"The Gu\" red shirt XML tag t-shirt (Black) XL',NULL,'Black',0,7,27,15,18),(96,96,'\"The Gu\" red shirt XML tag t-shirt (Black) XXL',NULL,'Black',0,7,27,15,18),(97,97,'\"The Gu\" red shirt XML tag t-shirt (Black) 3XL',NULL,'Black',0,7,27,15,18),(98,98,'\"The Gu\" red shirt XML tag t-shirt (Black) 4XL',NULL,'Black',0,7,27,15,18),(99,99,'\"The Gu\" red shirt XML tag t-shirt (Black) 5XL',NULL,'Black',0,7,27,15,18),(100,100,'\"The Gu\" red shirt XML tag t-shirt (Black) 6XL',NULL,'Black',0,7,27,15,18),(101,101,'\"The Gu\" red shirt XML tag t-shirt (Black) 7XL',NULL,'Black',0,7,27,15,18),(102,102,'Alien officer hoodie (Black) XL',NULL,'Black',0,12,52,15,35),(103,103,'Alien officer hoodie (Black) XXL',NULL,'Black',0,12,52,15,35),(104,104,'Alien officer hoodie (Black) 3XL',NULL,'Black',0,12,52,15,35),(105,105,'Alien officer hoodie (Black) 4XL',NULL,'Black',0,12,52,15,35),(106,106,'Alien officer hoodie (Black) 5XL',NULL,'Black',0,12,52,15,35),(107,107,'Superhero action jacket (Blue) 3XS',NULL,'Blue',0,12,37,15,25),(108,108,'Superhero action jacket (Blue) XXS',NULL,'Blue',0,12,37,15,25),(109,109,'Superhero action jacket (Blue) XS',NULL,'Blue',0,12,37,15,25),(110,110,'Superhero action jacket (Blue) S',NULL,'Blue',0,12,37,15,25),(111,111,'Superhero action jacket (Blue) M',NULL,'Blue',0,12,45,15,30),(112,112,'Superhero action jacket (Blue) L',NULL,'Blue',0,12,45,15,30),(113,113,'Superhero action jacket (Blue) XL',NULL,'Blue',0,12,45,15,30),(114,114,'Superhero action jacket (Blue) XXL',NULL,'Blue',0,12,45,15,30),(115,115,'Superhero action jacket (Blue) 3XL',NULL,'Blue',0,12,51,15,34),(116,116,'Superhero action jacket (Blue) 4XL',NULL,'Blue',0,12,51,15,34),(117,117,'Superhero action jacket (Blue) 5XL',NULL,'Blue',0,12,51,15,34),(118,118,'Dinosaur battery-powered slippers (Green) S',NULL,'missing',0,12,48,15,32),(119,119,'Dinosaur battery-powered slippers (Green) M',NULL,'missing',0,12,48,15,32),(120,120,'Dinosaur battery-powered slippers (Green) L',NULL,'missing',0,12,48,15,32),(121,121,'Dinosaur battery-powered slippers (Green) XL',NULL,'missing',0,12,48,15,32),(122,122,'Ogre battery-powered slippers (Green) S',NULL,'missing',0,12,48,15,32),(123,123,'Ogre battery-powered slippers (Green) M',NULL,'missing',0,12,48,15,32),(124,124,'Ogre battery-powered slippers (Green) L',NULL,'missing',0,12,48,15,32),(125,125,'Ogre battery-powered slippers (Green) XL',NULL,'missing',0,12,48,15,32),(126,126,'Plush shark slippers (Gray) S',NULL,'Steel Gray',0,12,48,15,32),(127,127,'Plush shark slippers (Gray) M',NULL,'Steel Gray',0,12,48,15,32),(128,128,'Plush shark slippers (Gray) L',NULL,'Steel Gray',0,12,48,15,32),(129,129,'Plush shark slippers (Gray) XL',NULL,'Steel Gray',0,12,48,15,32),(130,130,'Furry gorilla with big eyes slippers (Black) S',NULL,'Black',0,12,48,15,32),(131,131,'Furry gorilla with big eyes slippers (Black) M',NULL,'Black',0,12,48,15,32),(132,132,'Furry gorilla with big eyes slippers (Black) L',NULL,'Black',0,12,48,15,32),(133,133,'Furry gorilla with big eyes slippers (Black) XL',NULL,'Black',0,12,48,15,32),(134,134,'Animal with big feet slippers (Brown) S',NULL,'missing',0,12,48,15,32),(135,135,'Animal with big feet slippers (Brown) M',NULL,'missing',0,12,48,15,32),(136,136,'Animal with big feet slippers (Brown) L',NULL,'missing',0,12,48,15,32),(137,137,'Animal with big feet slippers (Brown) XL',NULL,'missing',0,12,48,15,32),(138,138,'Furry animal socks (Pink) S',NULL,'missing',0,12,7,15,5),(139,139,'Furry animal socks (Pink) M',NULL,'missing',0,12,7,15,5),(140,140,'Furry animal socks (Pink) L',NULL,'missing',0,12,7,15,5),(141,141,'Furry animal socks (Pink) XL',NULL,'missing',0,12,7,15,5),(142,142,'Halloween zombie mask (Light Brown) S',NULL,'Light Brown',0,12,27,15,18),(143,143,'Halloween zombie mask (Light Brown) M',NULL,'Light Brown',0,12,27,15,18),(144,144,'Halloween zombie mask (Light Brown) L',NULL,'Light Brown',0,12,27,15,18),(145,145,'Halloween zombie mask (Light Brown) XL',NULL,'Light Brown',0,12,27,15,18),(146,146,'Halloween skull mask (Gray) S',NULL,'Steel Gray',0,12,27,15,18),(147,147,'Halloween skull mask (Gray) M',NULL,'Steel Gray',0,12,27,15,18),(148,148,'Halloween skull mask (Gray) L',NULL,'Steel Gray',0,12,27,15,18),(149,149,'Halloween skull mask (Gray) XL',NULL,'Steel Gray',0,12,27,15,18),(150,150,'Pack of 12 action figures (variety)',NULL,'missing',0,2,24,15,16),(151,151,'Pack of 12 action figures (male)',NULL,'missing',0,2,24,15,16),(152,152,'Pack of 12 action figures (female)',NULL,'missing',0,2,24,15,16),(153,153,'Small sized bubblewrap roll 10m',NULL,'missing',0,14,7,15,5),(154,154,'Medium sized bubblewrap roll 20m',NULL,'missing',0,14,30,15,20),(155,155,'Large sized bubblewrap roll 50m',NULL,'missing',0,14,36,15,24),(156,156,'10 mm Double sided bubble wrap 10m',NULL,'missing',0,14,22,15,15),(157,157,'10 mm Double sided bubble wrap 20m',NULL,'missing',0,14,45,15,30),(158,158,'10 mm Double sided bubble wrap 50m',NULL,'missing',0,14,157,15,105),(159,159,'20 mm Double sided bubble wrap 10m',NULL,'missing',0,14,27,15,18),(160,160,'20 mm Double sided bubble wrap 20m',NULL,'missing',0,14,49,15,33),(161,161,'20 mm Double sided bubble wrap 50m',NULL,'missing',0,14,161,15,108),(162,162,'32 mm Double sided bubble wrap 10m',NULL,'missing',0,14,33,15,22),(163,163,'32 mm Double sided bubble wrap 20m',NULL,'missing',0,14,55,15,37),(164,164,'32 mm Double sided bubble wrap 50m',NULL,'missing',0,14,167,15,112),(165,165,'10 mm Anti static bubble wrap (Blue) 10m',NULL,'Blue',0,14,39,15,26),(166,166,'10 mm Anti static bubble wrap (Blue) 20m',NULL,'Blue',0,14,63,15,42),(167,167,'10 mm Anti static bubble wrap (Blue) 50m',NULL,'Blue',0,14,148,15,99),(168,168,'20 mm Anti static bubble wrap (Blue) 10m',NULL,'Blue',0,14,43,15,29),(169,169,'20 mm Anti static bubble wrap (Blue) 20m',NULL,'Blue',0,14,67,15,45),(170,170,'20 mm Anti static bubble wrap (Blue) 50m',NULL,'Blue',0,14,152,15,102),(171,171,'32 mm Anti static bubble wrap (Blue) 10m',NULL,'Blue',0,14,48,15,32),(172,172,'32 mm Anti static bubble wrap (Blue) 20m',NULL,'Blue',0,14,72,15,48),(173,173,'32 mm Anti static bubble wrap (Blue) 50m',NULL,'Blue',0,14,157,15,105),(174,174,'Bubblewrap dispenser (Black) 1.5m',NULL,'Black',0,14,359,15,240),(175,175,'Bubblewrap dispenser (Blue) 1.5m',NULL,'Blue',0,14,359,15,240),(176,176,'Bubblewrap dispenser (Red) 1.5m',NULL,'Red',0,14,359,15,240),(177,177,'Shipping carton (Brown) 413x285x187mm',NULL,'missing',0,14,2,15,1),(178,178,'Shipping carton (Brown) 500x310x310mm',NULL,'missing',0,14,4,15,3),(179,179,'Shipping carton (Brown) 229x229x229mm',NULL,'missing',0,14,2,15,1),(180,180,'Shipping carton (Brown) 279x254x217mm',NULL,'missing',0,14,2,15,1),(181,181,'Shipping carton (Brown) 356x229x229mm',NULL,'missing',0,14,2,15,1),(182,182,'Shipping carton (Brown) 457x279x279mm',NULL,'missing',0,14,2,15,1),(183,183,'Shipping carton (Brown) 480x270x320mm',NULL,'missing',0,14,4,15,3),(184,184,'Shipping carton (Brown) 305x305x305mm',NULL,'missing',0,14,5,15,4),(185,185,'Shipping carton (Brown) 356x356x279mm',NULL,'missing',0,14,3,15,2),(186,186,'Shipping carton (Brown) 457x457x457mm',NULL,'missing',0,14,3,15,2),(187,187,'Express post box 5kg (White) 350x280x130mm',NULL,'missing',0,14,1,15,1),(188,188,'3 kg Courier post bag (White) 300x190x95mm',NULL,'missing',0,14,1,15,1),(189,189,'Clear packaging tape 48mmx75m',NULL,'missing',0,14,4,15,3),(190,190,'Clear packaging tape 48mmx100m',NULL,'missing',0,14,5,15,4),(191,191,'Black and orange fragile despatch tape 48mmx75m',NULL,'missing',0,14,6,15,4),(192,192,'Black and orange fragile despatch tape 48mmx100m',NULL,'missing',0,14,6,15,4),(193,193,'Black and orange glass with care despatch tape 48mmx75m',NULL,'missing',0,14,6,15,4),(194,194,'Black and orange glass with care despatch tape  48mmx100m',NULL,'missing',0,14,6,15,4),(195,195,'Black and orange handle with care despatch tape  48mmx75m',NULL,'missing',0,14,6,15,4),(196,196,'Black and orange handle with care despatch tape  48mmx100m',NULL,'missing',0,14,6,15,4),(197,197,'Black and orange this way up despatch tape 48mmx75m',NULL,'missing',0,14,6,15,4),(198,198,'Black and orange this way up despatch tape  48mmx100m',NULL,'missing',0,14,6,15,4),(199,199,'Black and yellow heavy despatch tape  48mmx75m',NULL,'missing',0,14,6,15,4),(200,200,'Black and yellow heavy despatch tape 48mmx100m',NULL,'missing',0,14,6,15,4),(201,201,'Red and white urgent despatch tape 48mmx75m',NULL,'missing',0,14,6,15,4),(202,202,'Red and white urgent  heavy despatch tape  48mmx100m',NULL,'missing',0,14,6,15,4),(203,203,'Tape dispenser (Black)',NULL,'missing',0,20,48,15,32),(204,204,'Tape dispenser (Red)',NULL,'missing',0,20,48,15,32),(205,205,'Tape dispenser (Blue)',NULL,'missing',0,20,48,15,32),(206,206,'Permanent marker black 5mm nib (Black) 5mm',NULL,'missing',0,14,4,15,3),(207,207,'Permanent marker blue 5mm nib (Blue) 5mm',NULL,'missing',0,14,4,15,3),(208,208,'Permanent marker red 5mm nib (Red) 5mm',NULL,'missing',0,14,4,15,3),(209,209,'Packing knife with metal insert blade (Yellow) 9mm',NULL,'missing',0,14,3,15,2),(210,210,'Packing knife with metal insert blade (Yellow) 18mm',NULL,'missing',0,14,4,15,2),(211,211,'Small 9mm replacement blades 9mm',NULL,'missing',0,14,6,15,4),(212,212,'Large  replacement blades 18mm',NULL,'missing',0,14,6,15,4),(213,213,'Air cushion film 200mmx100mm 325m',NULL,'missing',0,14,130,15,87),(214,214,'Air cushion film 200mmx200mm 325m',NULL,'missing',0,14,135,15,90),(215,215,'Air cushion machine (Blue)',NULL,'missing',0,20,2839,15,1899),(216,216,'Void fill 100 L bag (White) 100L',NULL,'missing',0,14,19,15,13),(217,217,'Void fill 200 L bag (White) 200L',NULL,'missing',0,14,37,15,25),(218,218,'Void fill 300 L bag (White) 300L',NULL,'missing',0,14,56,15,38),(219,219,'Void fill 400 L bag (White) 400L',NULL,'missing',0,14,75,15,50),(220,220,'Novelty chilli chocolates 250g',NULL,'missing',1,3,12,10,9),(221,221,'Novelty chilli chocolates 500g',NULL,'missing',1,3,21,10,15),(222,222,'Chocolate beetles 250g',NULL,'missing',1,3,12,10,9),(223,223,'Chocolate echidnas 250g',NULL,'missing',1,3,12,10,9),(224,224,'Chocolate frogs 250g',NULL,'missing',1,3,12,10,9),(225,225,'Chocolate sharks 250g',NULL,'missing',1,3,12,10,9),(226,226,'White chocolate snow balls 250g',NULL,'missing',1,3,12,10,9),(227,227,'White chocolate moon rocks 250g',NULL,'missing',1,3,12,10,9);
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04  9:44:59