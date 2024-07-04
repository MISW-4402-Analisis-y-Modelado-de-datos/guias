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
-- Table structure for table `Proveedor`
--

DROP TABLE IF EXISTS `Proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedor` (
  `ID_Proveedor_T` int DEFAULT NULL,
  `Nombre` text,
  `Contacto_Principal` int DEFAULT NULL,
  `Codigo_Postal` int DEFAULT NULL,
  `Categoria` text,
  `Dias_pago` int DEFAULT NULL,
  `ID_Proveedor_DWH` bigint NOT NULL,
  PRIMARY KEY (`ID_Proveedor_DWH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedor`
--

LOCK TABLES `Proveedor` WRITE;
/*!40000 ALTER TABLE `Proveedor` DISABLE KEYS */;
INSERT INTO `Proveedor` VALUES (0,'missing',NULL,NULL,NULL,0,0),(5,'Graphic Design Institute',29,64847,'productos novedosos',14,1),(9,'Nod Publishers',37,27906,'productos novedosos',7,2),(12,'The Phone Company',43,56732,'productos novedosos',30,3),(2,'Contoso, Ltd.',23,98253,'productos novedosos',7,4),(8,'Lucerne Publishing',35,37659,'productos novedosos',30,5),(1,'A Datum Corporation',21,46077,'productos novedosos',14,6),(10,'Northwind Electric Cars',39,7860,'juguetes',30,7),(4,'Fabrikam, Inc.',27,40351,'ropa',30,8),(7,'Litware, Inc.',33,95245,'embalaje',30,9),(3,'Consolidated Messenger',25,94101,'servicios de mensajeria',30,10),(13,'Woodgrove Bank',45,94101,'servicios financieros',7,11),(11,'Trey Research',41,57543,'servicios de marketing',7,12),(6,'Humongous Insurance',31,37770,'servicios de seguros',14,13);
/*!40000 ALTER TABLE `Proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04  9:44:58
