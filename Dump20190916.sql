CREATE DATABASE  IF NOT EXISTS `pviajes` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pviajes`;

create user user_moduleDev identified by 'user_module123Dev';
GRANT ALL PRIVILEGES ON pviajes TO 'user_moduleDev'@'localhost';

-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: pviajes
-- ------------------------------------------------------
-- Server version	5.5.38

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
-- Table structure for table `camionetas`
--

DROP TABLE IF EXISTS `camionetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camionetas` (
  `IDCamioneta` int(11) NOT NULL AUTO_INCREMENT,
  `Placa` varchar(10) NOT NULL,
  `Activo` tinyint(1) NOT NULL DEFAULT '1',
  `Visible` tinyint(1) NOT NULL DEFAULT '1',
  `FechaCreacion` datetime DEFAULT NULL,
  `FechaActualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IDCamioneta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camionetas`
--

LOCK TABLES `camionetas` WRITE;
/*!40000 ALTER TABLE `camionetas` DISABLE KEYS */;
INSERT INTO `camionetas` VALUES (1,'1298SDC',1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(2,'837c687d',1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(3,'48739yfu98',1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(4,'9485ych98',1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(5,'3ch989',1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11');
/*!40000 ALTER TABLE `camionetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choferes`
--

DROP TABLE IF EXISTS `choferes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `choferes` (
  `IDChofer` int(11) NOT NULL AUTO_INCREMENT,
  `Licencia` varchar(20) DEFAULT NULL,
  `IDPersona` int(11) DEFAULT NULL,
  `Activo` tinyint(1) DEFAULT '1',
  `Visible` tinyint(1) DEFAULT '1',
  `FechaCreacion` datetime DEFAULT NULL,
  `FechaActualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IDChofer`),
  KEY `IDPersona` (`IDPersona`),
  CONSTRAINT `choferes_ibfk_1` FOREIGN KEY (`IDPersona`) REFERENCES `datospersona` (`IDPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choferes`
--

LOCK TABLES `choferes` WRITE;
/*!40000 ALTER TABLE `choferes` DISABLE KEYS */;
INSERT INTO `choferes` VALUES (1,'8768758',1,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(2,'8737y9de8i',2,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(3,'3847r98dx',3,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11');
/*!40000 ALTER TABLE `choferes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `IDCliente` int(11) NOT NULL AUTO_INCREMENT,
  `IDPersona` int(11) DEFAULT NULL,
  `Activo` tinyint(1) DEFAULT '1',
  `Visible` tinyint(1) DEFAULT '1',
  `FechaCreacion` datetime DEFAULT NULL,
  `FechaActualizacion` datetime DEFAULT NULL,
  `latitud` decimal(10,0) NOT NULL,
  `longitud` decimal(10,0) NOT NULL,
  PRIMARY KEY (`IDCliente`),
  KEY `IDPersona` (`IDPersona`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`IDPersona`) REFERENCES `datospersona` (`IDPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,4,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11',0,0),(2,5,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11',0,0);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datospersona`
--

DROP TABLE IF EXISTS `datospersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datospersona` (
  `IDPersona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(30) NOT NULL,
  `ApellidoP` varchar(30) NOT NULL,
  `ApellidoM` varchar(30) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Direccion` text,
  PRIMARY KEY (`IDPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datospersona`
--

LOCK TABLES `datospersona` WRITE;
/*!40000 ALTER TABLE `datospersona` DISABLE KEYS */;
INSERT INTO `datospersona` VALUES (1,'Luis Fernando','Prudencio','Cruz','isc@hotmail.com','valle de chalco solidaridad'),(2,'Juan Gabriel','Perez','garcia','isc@hotmail.com','valle de chalco solidaridad'),(3,'Ignacio','Zaragoza','Zarate','ig@hotmail.com','Mexico'),(4,'Rodrigo','Perez','Jolote','ig@hotmail.com','Mexico'),(5,'Allende','Cruz','Perez','allende@hotmail.com','valle de chalco solidaridad');
/*!40000 ALTER TABLE `datospersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallepedido`
--

DROP TABLE IF EXISTS `detallepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallepedido` (
  `IDPedido` int(11) DEFAULT NULL,
  `IDProducto` int(11) DEFAULT NULL,
  `Cantidad` int(11) NOT NULL,
  `PrecioU` decimal(10,0) DEFAULT NULL,
  KEY `IDPedido` (`IDPedido`),
  KEY `IDProducto` (`IDProducto`),
  CONSTRAINT `detallepedido_ibfk_1` FOREIGN KEY (`IDPedido`) REFERENCES `pedidosclientes` (`IDPedido`),
  CONSTRAINT `detallepedido_ibfk_2` FOREIGN KEY (`IDProducto`) REFERENCES `productos` (`IDProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepedido`
--

LOCK TABLES `detallepedido` WRITE;
/*!40000 ALTER TABLE `detallepedido` DISABLE KEYS */;
INSERT INTO `detallepedido` VALUES (1,1,2,500),(1,2,4,450),(2,1,2,500),(2,2,4,450),(2,6,1,1200),(3,1,2,500),(3,2,4,450),(3,4,1,8900),(4,1,2,500),(4,2,4,450),(4,6,1,1200),(5,1,2,500),(5,2,4,450),(5,4,1,8900),(6,1,2,500),(6,2,4,450),(6,5,1,2000);
/*!40000 ALTER TABLE `detallepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entregas` (
  `IDViaje` int(11) DEFAULT NULL,
  `IDPedido` int(11) DEFAULT NULL,
  `Entregado` tinyint(1) DEFAULT '0',
  `FechaEntrega` date DEFAULT NULL,
  `HoraEntrega` time DEFAULT NULL,
  KEY `IDViaje` (`IDViaje`),
  KEY `IDPedido` (`IDPedido`),
  CONSTRAINT `entregas_ibfk_1` FOREIGN KEY (`IDViaje`) REFERENCES `viajes` (`IDViaje`),
  CONSTRAINT `entregas_ibfk_2` FOREIGN KEY (`IDPedido`) REFERENCES `pedidosclientes` (`IDPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
INSERT INTO `entregas` VALUES (1,1,1,'2019-09-16','22:21:43'),(1,2,1,'2019-09-16','22:21:43'),(2,3,1,'2019-09-16','22:21:43'),(1,4,1,'2019-09-16','22:21:43'),(2,5,1,'2019-09-16','22:21:43');
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosclientes`
--

DROP TABLE IF EXISTS `pedidosclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidosclientes` (
  `IDPedido` int(11) NOT NULL AUTO_INCREMENT,
  `IDCliente` int(11) DEFAULT NULL,
  `FechaPedido` datetime NOT NULL,
  `Activo` tinyint(1) DEFAULT '1',
  `Visible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`IDPedido`),
  KEY `IDCliente` (`IDCliente`),
  CONSTRAINT `pedidosclientes_ibfk_1` FOREIGN KEY (`IDCliente`) REFERENCES `clientes` (`IDCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosclientes`
--

LOCK TABLES `pedidosclientes` WRITE;
/*!40000 ALTER TABLE `pedidosclientes` DISABLE KEYS */;
INSERT INTO `pedidosclientes` VALUES (1,1,'2019-09-13 20:18:11',1,1),(2,1,'2019-09-14 20:18:11',1,1),(3,2,'2019-09-14 20:18:11',1,1),(4,1,'2019-09-15 20:18:11',1,1),(5,2,'2019-09-15 20:18:11',1,1),(6,2,'2019-09-16 20:18:11',1,1),(7,1,'2019-09-17 20:18:11',1,1);
/*!40000 ALTER TABLE `pedidosclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `IDProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `PrecioU` decimal(10,0) DEFAULT NULL,
  `Activo` tinyint(1) DEFAULT '1',
  `Visible` tinyint(1) DEFAULT '1',
  `FechaCreacion` datetime DEFAULT NULL,
  `FechaActualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`IDProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Zapatos',34,500,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(2,'tenis',32,450,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(3,'Ropero',65,6500,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(4,'Pantalla LG',23,8900,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(5,'Modem Infinitum',76,2000,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11'),(6,'Pantalon Levis',98,1200,1,1,'2019-09-16 20:18:11','2019-09-16 20:18:11');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes`
--

DROP TABLE IF EXISTS `viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viajes` (
  `IDViaje` int(11) NOT NULL AUTO_INCREMENT,
  `FechaInicio` datetime NOT NULL,
  `FechaFin` datetime NOT NULL,
  `HoraSalida` time DEFAULT NULL,
  `HoraLlegada` time DEFAULT NULL,
  `IDChofer` int(11) DEFAULT NULL,
  `IDCamioneta` int(11) DEFAULT NULL,
  `Activo` tinyint(1) DEFAULT '1',
  `Visible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`IDViaje`),
  KEY `IDChofer` (`IDChofer`),
  KEY `IDCamioneta` (`IDCamioneta`),
  CONSTRAINT `viajes_ibfk_1` FOREIGN KEY (`IDChofer`) REFERENCES `choferes` (`IDChofer`),
  CONSTRAINT `viajes_ibfk_2` FOREIGN KEY (`IDCamioneta`) REFERENCES `camionetas` (`IDCamioneta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes`
--

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` VALUES (1,'2019-08-13 20:31:16','2019-09-16 13:31:16','09:31:16','20:31:16',1,2,1,1),(2,'2019-09-14 20:31:16','2019-09-14 20:31:16','09:31:16','20:31:16',3,4,1,1),(3,'2019-09-15 20:31:16','2019-09-15 20:31:16','09:31:16','20:31:16',2,1,1,1),(4,'2019-08-15 20:31:16','2019-09-15 20:31:16','09:31:16','20:31:16',1,5,1,1),(5,'2019-08-13 20:31:16','2019-09-15 20:31:16','09:31:16','20:31:16',3,1,1,1),(6,'2019-09-13 20:31:16','2019-09-15 20:31:16','09:31:16','20:31:16',3,2,1,1),(7,'2019-09-13 20:31:16','2019-09-15 20:31:16','09:31:16','20:31:16',2,1,1,1),(8,'2019-08-13 20:31:16','2019-09-15 20:31:16','09:31:16','20:31:16',1,3,1,1),(9,'2019-09-13 20:31:16','2019-09-15 20:31:16','09:31:16','20:31:16',3,4,1,1),(10,'2019-08-13 20:31:16','2019-09-15 20:31:16','09:31:16','20:31:16',2,2,1,1);
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pviajes'
--

--
-- Dumping routines for database 'pviajes'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_Clientes_Frecuentes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_moduleDev`@`localhost` PROCEDURE `SP_Clientes_Frecuentes`()
BEGIN
	SELECT CONCAT(DP.Nombres, ' ', DP.ApellidoP, ' ', DP.ApellidoM) AS nombreCompleto
		FROM Clientes AS C INNER JOIN DatosPersona AS DP ON (C.IDPersona = DP.IDPersona) 
		INNER JOIN PedidosClientes AS PC ON (C.IDCliente = PC.IDCliente)
		GROUP BY C.IDCliente
		ORDER BY COUNT(C.IDCliente) DESC LIMIT 5;
END ;;
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`user_moduleDev`@`localhost` PROCEDURE `SP_Obtener_Clientes`()
BEGIN
	SELECT latitud, longitud from clientes;
END$$
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Clientes_Lejanos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_moduleDev`@`localhost` PROCEDURE `SP_Clientes_Lejanos`()
BEGIN
	SELECT CONCAT(DP.Nombres, ' ', DP.ApellidoP, ' ', DP.ApellidoM) AS nombreCompleto
		FROM Clientes AS C INNER JOIN DatosPersona AS DP ON (C.IDPersona = DP.IDPersona) 
		ORDER BY C.latitud ASC, C.longitud ASC LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Ultimos10_Pedidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_moduleDev`@`localhost` PROCEDURE `SP_Ultimos10_Pedidos`()
BEGIN
	SELECT PC.IDPedido AS pedidoID, PC.FechaPedido AS fechaPedido, CONCAT(DP.Nombres, ' ', DP.ApellidoP, ' ', DP.ApellidoM) AS nombreCliente,
		CA.Placa AS placaCamioneta, (
			SELECT CONCAT(DP1.Nombres, ' ', DP1.ApellidoP, ' ', DP1.ApellidoM) 
				FROM DatosPersona AS DP1 WHERE DP1.IDpersona=CH.IDPersona
		) AS nombreChofer, CH.IDChofer AS choferID
		FROM PedidosClientes AS PC INNER JOIN Clientes AS C ON (PC.IDCliente=C.IDCliente) 
		INNER JOIN DatosPersona AS DP ON (C.IDPersona=DP.IDPersona)
		INNER JOIN Entregas AS E ON (PC.IDPedido=E.IDPedido)
		INNER JOIN Viajes AS V ON (V.IDViaje=E.IDViaje)
		INNER JOIN Camionetas AS CA ON (CA.IDCamioneta=V.IDCamioneta)
		INNER JOIN Choferes AS CH ON (CH.IDChofer=V.IDChofer)
		ORDER BY PC.FechaPedido DESC LIMIT 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Viajes_Ultimo_Mes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_moduleDev`@`localhost` PROCEDURE `SP_Viajes_Ultimo_Mes`()
BEGIN
	SELECT C.Licencia AS licencia, CONCAT(DP.Nombres, ' ', DP.ApellidoP, ' ', DP.ApellidoM) AS nombreCompleto
		FROM Choferes AS C INNER JOIN DatosPersona AS DP ON (C.IDPersona = DP.IDPersona) 
		INNER JOIN Viajes AS V ON (C.IDChofer = V.IDChofer)
		WHERE DATE_FORMAT(V.FechaInicio, '%m') = DATE_FORMAT(NOW(), '%m')
		GROUP BY C.IDChofer
		ORDER BY COUNT(C.IDChofer) DESC LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-16 23:28:46
CREATE DATABASE  IF NOT EXISTS `systempv` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `systempv`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: systempv
-- ------------------------------------------------------
-- Server version	5.5.38

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `existencia` int(11) DEFAULT '0',
  `presentacion` varchar(30) DEFAULT NULL,
  `capacidad` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Coca-cola','Refresco',14,298,'Litros',0.6),(2,'Coca-cola','Refresco',18,76,'Litros',1),(3,'Coca-cola','Refresco',26,0,'Litros',2),(4,'Coca-cola','Refresco',36,0,'Litros',3),(5,'Cerveza','corona en lata',12,0,'Pza',1),(6,'Sabritones','Sabritas',28,0,'Pza',1),(7,'Azucar','Azucar',16.5,0,'Kilo',1);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Perez Jolote','1234567890','Santa Cruz Xoxocotal'),(2,'Luis','Rodriguez Callenato','1234567891','San Juan Otzolotepec'),(3,'Pedro','Calletano Cruz','1234567892','Valle de chalco'),(4,'Alma Rosa','Galindo Lopez','1234567893',''),(5,'Zaira','Prudencio Cruz','1234567894','');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleentrada`
--

DROP TABLE IF EXISTS `detalleentrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleentrada` (
  `id_entrada` int(11) DEFAULT NULL,
  `id_article` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  KEY `id_entrada` (`id_entrada`),
  KEY `id_article` (`id_article`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `detalleentrada_ibfk_1` FOREIGN KEY (`id_entrada`) REFERENCES `entrada` (`id`),
  CONSTRAINT `detalleentrada_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`),
  CONSTRAINT `detalleentrada_ibfk_3` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleentrada`
--

LOCK TABLES `detalleentrada` WRITE;
/*!40000 ALTER TABLE `detalleentrada` DISABLE KEYS */;
INSERT INTO `detalleentrada` VALUES (1,1,300,4200,1),(1,2,77,1386,1);
/*!40000 ALTER TABLE `detalleentrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleventa` (
  `id_venta` int(11) DEFAULT NULL,
  `id_article` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  KEY `id_venta` (`id_venta`),
  KEY `id_article` (`id_article`),
  CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`),
  CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventa`
--

LOCK TABLES `detalleventa` WRITE;
/*!40000 ALTER TABLE `detalleventa` DISABLE KEYS */;
INSERT INTO `detalleventa` VALUES (1,1,2),(1,2,1),(2,1,1),(2,2,3),(4,1,2),(4,2,3),(6,1,2);
/*!40000 ALTER TABLE `detalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrada`
--

DROP TABLE IF EXISTS `entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  `ID_PROVEEDOR` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_PROVEEDOR` (`ID_PROVEEDOR`),
  CONSTRAINT `entrada_ibfk_1` FOREIGN KEY (`ID_PROVEEDOR`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrada`
--

LOCK TABLES `entrada` WRITE;
/*!40000 ALTER TABLE `entrada` DISABLE KEYS */;
INSERT INTO `entrada` VALUES (1,'2019-01-08',5586,NULL);
/*!40000 ALTER TABLE `entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rfc` varchar(30) DEFAULT NULL,
  `razon_social` varchar(40) DEFAULT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'JSDBFKJDSBF','Coca-cola','3683795342'),(2,'KSJDBVKJDDFG','Corona','3683793565'),(3,'KSFGDKJFKVNDLF','Barcel','3688395172');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2019-01-08',46,1),(2,'2019-01-08',68,4),(4,'2019-01-09',82,5),(6,'2019-01-09',28,4);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'systempv'
--

--
-- Dumping routines for database 'systempv'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-16 23:28:47
