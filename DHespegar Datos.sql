-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: dbmysqlariel.cskgslsmqktz.us-east-2.rds.amazonaws.com    Database: DHespegar
-- ------------------------------------------------------
-- Server version	8.0.23

CREATE DATABASE DHespegar;
USE DHespegar;

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `categoriasvuelos`
--

DROP TABLE IF EXISTS `categoriasvuelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriasvuelos` (
  `idcategoriasvuelos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategoriasvuelos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriasvuelos`
--

LOCK TABLES `categoriasvuelos` WRITE;
/*!40000 ALTER TABLE `categoriasvuelos` DISABLE KEYS */;
INSERT INTO `categoriasvuelos` VALUES (1,'Primera'),(2,'Turista');
/*!40000 ALTER TABLE `categoriasvuelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `numeroPasaporte` varchar(11) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `idPais` int DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `FK_clientes_paises_idx` (`idPais`),
  CONSTRAINT `FK_clientes_paises` FOREIGN KEY (`idPais`) REFERENCES `paises` (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Agustin','Rodriguez','AR407924','La Plata 6002','Mendoza','+542616556315',1),(2,'Angela','Liberatto','AR429117','San Martin 223','Viedma','+5429207337962',1),(3,'Carla','Arrieta','CH5898108','Huston 9512','Los Andes','+563487833726',2),(4,'Alegria','Oro','CO980801','Pampa 5232','Medellín','+574653323',5),(5,'Hernesto','Esteban','PE805508','Candelaria 512','Coronel Portillo','+516125915813',3),(6,'Florencia','Hoy','EC961883','Guiñazú 512','Pastaza','+5933231111',4),(7,'Andres','Santoro','CH655002','Marmol y Sares 512','Arica','+565873379260',2),(8,'Marcos','Orozco','CO429117','Alpatacal 2443','Medellín','+574662131',5),(9,'Carolina','Clavero','CH890545','San José 8282','Talca','+567178990382',2),(10,'Maria Jose','Arce','UR172919','Castañeda 152','Montevideo','+5982125485',7),(11,'Franco','Salcedo','AR620046','Esperanza 342','Cordoba','+543519101211',1),(12,'Sergio','Alderisi','AR596673','San Martin 3358','Salta','+543877261521',1),(13,'Camila','Altamira','EC158846','Altamirano 929','Orellana','+5936592497',4),(14,'Nora','Pérez','CO723634','Sarmiento 2234','Medellín','+574555834',5),(15,'Maria Laura','Tuninetti','UR140512','San Martin 5549','Montevideo','+5982335955',7),(16,'Isaac','Vergara','AR535557','Saenz Peña 114','Mendoza','+542617097699',1),(17,'Maria Florencia','Arce','EC831690','Guiñazú 3332','Santa Elena','+5934803230',4),(18,'Laura','Aguilar','AR847874','Sarmiento 5123','Misiones','+543768009966',1),(19,'Alberto','Rossi','AR356969','Payupeyu 6132','Buenos Aires','+54118499787',1),(20,'Pamela','Castro','PE512291','Alpatacal 512','Calca','+518465860126',3),(21,'Federica','Hernandez','EC620757','Santa Teresa 82','Guayas','+5943207006',4),(22,'Carla','Ramos','CO467365','Armaru 2422','Medellín','+574623453',5),(23,'Maria del Carmen','Spadaro','CH658330','San Fernando 5120','Santiago de Chile','+56254770319',2),(24,'Rodrigo','Solana','AR823924','España 2544','Buenos Aires','+54116103013',1),(25,'Camilo','Sexto','BO458184','San Martin 8948','La Paz','+5915599667',6),(26,'Sofia','Morales','CH420000','Los Arenales 5812','Santiago de Chile','+56235189114',2),(27,'Natalia','Moyano','AR317918','Sarmiento 5123','Misiones','+543765545850',1),(28,'Andrea','Afise','PE969252','Apeteco 1232','San Marcos','+517611797056',3),(29,'Mariano','Simunic','CH686238','San José 8282','Arica','+565879494940',2),(30,'Carlos','Abrego','AR804793','España 1185','Mendoza','+542619101421',1),(31,'José','Junco','CO847874','Coresa 644','Medellín','+574843745',5),(32,'Sofia','Gonzales','PE847874','San Fermin 28','San Marcos','+517675057417',3),(33,'Leandro','Spadaro','AR620757','Carrilo 9693','Buenos Aires','+54118554754',1),(34,'Sandra','Amarillo','CO837891','Los Alamos 2431','Arauca','+577382414',5),(35,'Sergio','Gonzales','EC843765','Mar Antartico 2412','Pastaza','+5933924158',4),(36,'Manuel','Santos','AR797629','Asamblea Norte 223','Buenos Aires','+54119124197',1),(37,'Maria Sofia','Castro','UR432667','San Martin 28','Montevideo','+5982369696',7),(38,'Federico','Vergara','EC851258','Anzorena 4548','Guayas','+5934456622',4),(39,'Veronica','Paez','EC969252','Saltamon 5412','Guayas','+5934319346',4),(40,'Nora','Harris','CO594488','Alpatacal 123','Arauca','+5773374148',5),(41,'Carlos','Mondero','CH888103','Piedra Buena 42','Santiago de Chile','+56264128339',2),(42,'Sergio','Santander','AR335073','Godoy Cruz 251','Corrientes','+543796726908',1),(43,'Estefania','Lorenzo','BO271502','San Jorge 88','Cochabamba','+5918956322',6),(44,'Tim','Wesne','BO434301','San Jorge 232','La Paz','+59155859455',6),(45,'Maria Emilia','Arce','BO550322','Alvear 38','La Paz','+59112585958',6),(46,'Laura','Lorenzo','PE594488','Corredor O. Britos 411','Calca','+518471425647',3),(47,'Kevin','Soloa','EC686238','Puerto Pong 881','Orellana','+5936243077',4),(48,'María','Hernández','MX023544','Av Principal 854','Puebla','+5225468987',14),(49,'Pedro','Hernández','MX023541','Av Principal 854','Puebla','+5225468988',14),(50,'Lupita','Ramirez','MX123534','Av Guadalajara 62','Guadalajara','+5225468777',14),(51,'Angel','Quezada','MX123566','Mexicali 457','Guadalajara','+5225466470',14),(52,'Luis','Garcia','MX123060','CDMX 157','Cancun','+5225466000',14),(53,'Florinda','Meza','MX823760','Robledo 157','Cancun','+5225866300',14),(54,'Mario','Montilla','VZ023541','Av Caracas 854','Caracas','+5825468988',11),(55,'Lisbeth','Martinez','VZ123534','Av Caracas 3512','Caracas','+5825468777',11),(56,'Aura','Moreno','VZ123566','Simon Bolivar 457','Maracaibo','+5825466470',11),(57,'Luis','Chavez','VZ123060','Simon Bolivar 1107','Maracaibo','+5825466000',11),(58,'Catherine','Fulop','VZ823760','Av.Buenos Aires 57','Mérida','+5825866300',11),(59,'Alessandro','Rossi','IT023541','Via Mazzini 85','Roma','+3925468900',15),(60,'Andrea','De Luca','IT123534','Via Giovan Battista Zannoni 351','Roma','+3925468755',15),(61,'Chiara','Lombardi','IT123566','Via Toledo 45','Verona','+3925466077',15),(62,'Bianca','Coppola','IT123060','Via Toledo 11','Florencia','+3925466111',15),(63,'Constanzo','De Santis','IT823760','Via del Corso 51','Florencia','+3925866333',15),(64,'Smith','Murphy','IN023541','Carnaby Street 33','Londres','+4425468900',9),(65,'Jones','Callum','IN123534','Portobello Road 512','Londres','+4425468755',9),(66,'Williams','Brown','IN123566','Oxford Street 10','Leeds','+4425466077',9),(67,'Thomas','Liam','IN123060','Downing Street 54','Leeds','+4425466111',9),(68,'Kyle','Connor','IN823760','Downing Street 78','Southampton','+4425866333',9),(69,'Charlie','Reece','IN124260','Whitehall Road 11','Southampton','+4425466111',9),(70,'William','David','IN823110','Whitehall Road 51','Oxford','+4425866333',9);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteles`
--

DROP TABLE IF EXISTS `hoteles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoteles` (
  `idhotel` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `cantidadHabitaciones` int DEFAULT NULL,
  `idPais` int DEFAULT NULL,
  PRIMARY KEY (`idhotel`),
  KEY `FK_hoteles_paises_idx` (`idPais`),
  CONSTRAINT `FK_hoteles_paises` FOREIGN KEY (`idPais`) REFERENCES `paises` (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteles`
--

LOCK TABLES `hoteles` WRITE;
/*!40000 ALTER TABLE `hoteles` DISABLE KEYS */;
INSERT INTO `hoteles` VALUES (1,'Park Hyatt Mendoza','San Carlos 1542 ','Mendoza','+542616584245',88,1),(2,'Casablanca','Los Toneles 523','Santa Marta','+579978531251',39,5),(3,'Paredes Park ','San Arnoldo 4512','Bogotá','+57699658785',44,5),(4,'El Trebol Hotel II','Casino Rojo 4523','Cartagena','+57187598758',102,5),(5,'Courrier Hotel','Rosario 2838','Lima','+51335696485',64,3),(6,'Park Hyatt Cuzco','Santa Catalina 286','Cuzco','+513365988',35,3),(7,'Paredes Park ','Fernandez y Rosas 1329','Corrientes','+54234696978',30,1),(8,'Solar del Plata','Arisu 2382','Bogotá','+5712365895',20,5),(9,'Flamenco Dorado','Rosario 2733','Lima','+519878582',30,3),(10,'Intendente Solar','Ruta 43 km 2','Salta','+54336897488',10,1),(11,'Rosas Rojas','Ruta 8 km 233','Salta','+54260897455',64,1),(12,'El Trebol Hotel III','Ruta 3 km 28','Jujuy','+5435895866',35,1),(13,'El Trebol Hotel I','Ruta 43 km 10','Bogotá','+57268969877',11,5),(14,'Park Hyatt Bs As','Belgrano 3054','Mendoza','+542616584245',88,1),(15,'Santiago Hotel','Santos Patos 1225','Santiago de Chile','+56285845585',102,2),(16,'Salto del Tigre Hotel','Aromos 22','Quito','',111,4),(17,'El Trebol Original','Sarmiento y Escalada 512','Caracas',NULL,70,12),(18,'Viento Azul','Las palmas 1342','La Paz',NULL,150,6),(19,'Viento Azul II','Colonial 5233','Sucre',NULL,75,6),(20,'Hotel Amparo','San Miguel de Allende 645','Ciudad de México','+52415152081',25,14),(21,'Fogo Island Inn','210 Main Road','Newfoundland','+17096583444',19,19),(22,'Finca Cortesin Hotel Golf & Spa','Francisco de Lancastre Nº 61','Málaga','+34952937800',30,8),(23,'Tensing Pen','P.O. Box 3013','Negril','+18769570387',18,24),(24,'The Leela Palace Udaipur','Bengaluru 560','Nueva Delhi','+91001031444',18,20),(25,'Katikies Santorini','Bengaluru 560','Atenas','+30228607238',42,12),(26,'Belmond Jimbaran Puri','4B Victoria House','Bali','+91800800015',35,18),(27,'The Oberoi Rajvilas','Babaji Ka Modh 302','Jaipur','+91112389060',40,18),(28,'Hotel Caesar Augustus','Via G.Orlandi 4','Napoles','+39088371444',36,15),(29,'Jamaica Inn','West Indies North 54','Ocho Rios','+18764412044',50,24),(30,'Casa Chameleon At Las Catalinas','San Jose 4785','Guanacaste','+50621031212',56,17);
/*!40000 ALTER TABLE `hoteles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelesxreserva`
--

DROP TABLE IF EXISTS `hotelesxreserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelesxreserva` (
  `idhotelesxreserva` int NOT NULL AUTO_INCREMENT,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `idHotel` int DEFAULT NULL,
  `idReserva` int DEFAULT NULL,
  `idTiposHospedaje` int DEFAULT NULL,
  PRIMARY KEY (`idhotelesxreserva`),
  KEY `FK_hotelesxreserva_reservas_idx` (`idReserva`),
  KEY `FK_hotelesxreserva_hoteles_idx` (`idHotel`),
  KEY `FK_hotelesxreserva_tiposhospedaje_idx` (`idTiposHospedaje`),
  CONSTRAINT `FK_hotelesxreserva_hoteles` FOREIGN KEY (`idHotel`) REFERENCES `hoteles` (`idhotel`),
  CONSTRAINT `FK_hotelesxreserva_reservas` FOREIGN KEY (`idReserva`) REFERENCES `reservas` (`idreserva`),
  CONSTRAINT `FK_hotelesxreserva_tiposhospedaje` FOREIGN KEY (`idTiposHospedaje`) REFERENCES `tiposhospedaje` (`idtiposhospedaje`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelesxreserva`
--

LOCK TABLES `hotelesxreserva` WRITE;
/*!40000 ALTER TABLE `hotelesxreserva` DISABLE KEYS */;
INSERT INTO `hotelesxreserva` VALUES (1,'2022-02-10 11:20:00','2022-02-10 17:00:00',7,1,1),(2,'2022-02-10 20:00:00','2022-02-10 21:15:00',16,1,1),(3,'2022-02-10 18:10:00','2022-02-11 00:00:00',11,3,2),(4,'2022-02-10 16:50:00','2022-02-10 17:00:00',17,4,1),(5,'2022-02-10 21:10:00','2022-02-10 22:00:00',18,6,1),(6,'2022-02-10 22:15:00','2022-02-10 23:00:00',15,6,2),(7,'2022-02-10 19:50:00','2022-02-10 21:30:00',16,10,1),(8,'2022-02-10 19:50:00','2022-02-10 21:30:00',16,11,1),(9,'2022-02-10 19:50:00','2022-02-10 21:30:00',16,13,2),(10,'2022-02-10 22:50:00','2022-02-11 03:30:00',15,13,2),(11,'2022-02-11 04:25:00','2022-02-11 14:30:00',19,13,2),(12,'2022-02-10 13:00:00','2022-02-10 22:00:00',14,15,1),(13,'2022-02-10 15:15:00','2022-02-11 00:00:00',12,16,1),(14,'2022-02-10 19:45:00','2022-02-10 21:45:00',16,17,1),(15,'2022-02-10 22:45:00','2022-02-11 03:00:00',15,17,1),(16,'2022-02-11 04:00:00','2022-02-10 15:00:00',7,18,2),(17,'2022-02-11 07:10:00','2022-02-11 23:45:00',6,20,2),(18,'2022-02-10 21:30:00','2022-02-15 23:10:00',4,21,1),(19,'2022-02-11 04:15:00','2022-02-11 06:15:00',19,22,1),(20,'2022-02-11 00:00:00','2022-02-11 11:10:00',16,25,1),(21,'2022-02-11 09:00:00','2022-02-15 09:00:00',15,27,1),(22,'2022-02-10 19:50:00','2022-02-10 20:00:00',16,28,1),(23,'2022-02-10 21:30:00','2022-02-13 19:10:00',8,28,1),(24,'2022-02-10 11:35:00','2022-02-10 18:00:00',8,30,1),(25,'2022-02-10 11:35:00','2022-02-10 18:00:00',8,31,1),(26,'2022-02-10 22:37:00','2022-02-11 22:37:00',15,32,2),(27,'2022-02-10 11:45:00','2022-02-12 11:15:00',13,33,2),(28,'2022-02-11 04:10:00','2022-02-13 02:10:00',18,34,1),(29,'2022-02-11 04:10:00','2022-02-11 04:10:00',16,35,2),(30,'2022-02-11 04:10:00','2022-02-15 12:10:00',28,36,1),(31,'2022-04-12 04:10:00','2022-04-19 12:00:00',28,37,2),(32,'2022-05-15 04:10:00','2022-05-25 12:00:00',28,38,2),(33,'2022-05-19 04:10:00','2022-05-26 12:00:00',28,39,1),(34,'2022-05-23 04:10:00','2022-05-23 12:00:00',28,40,2),(35,'2022-05-28 04:10:00','2022-05-29 12:00:00',28,41,1);
/*!40000 ALTER TABLE `hotelesxreserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodospago`
--

DROP TABLE IF EXISTS `metodospago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodospago` (
  `idmetodospago` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmetodospago`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodospago`
--

LOCK TABLES `metodospago` WRITE;
/*!40000 ALTER TABLE `metodospago` DISABLE KEYS */;
INSERT INTO `metodospago` VALUES (1,'Efectivo'),(2,'Transferencia Bancaria'),(3,'Tarjeta de Crédito'),(4,'Tarjeta de Débito');
/*!40000 ALTER TABLE `metodospago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `idpago` int NOT NULL AUTO_INCREMENT,
  `precioTotal` double DEFAULT NULL,
  `cantidadCuotas` int DEFAULT NULL,
  `idMetodosPago` int DEFAULT NULL,
  PRIMARY KEY (`idpago`),
  KEY `FK_pagos_metodospago_idx` (`idMetodosPago`),
  CONSTRAINT `FK_pagos_metodospago` FOREIGN KEY (`idMetodosPago`) REFERENCES `metodospago` (`idmetodospago`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,500,0,1),(2,1252,9,3),(3,466,0,2),(4,3297,0,2),(5,3168,0,2),(6,2255,5,3),(7,2860,0,2),(8,2487,8,3),(9,1844,3,3),(10,3088,0,2),(11,1319,0,1),(12,567,9,3),(13,1347,0,2),(14,3438,0,1),(15,1836,9,3),(16,1309,0,2),(17,771,0,1),(18,1712,0,2),(19,1736,4,3),(20,1896,0,2),(21,2152,0,2),(22,1570,0,1),(23,2229,0,2),(24,1983,5,3),(25,1340,0,1),(26,2041,0,1),(27,3060,0,1),(28,2375,0,2),(29,1880,6,3),(30,1723,8,3),(31,639,0,1),(32,2664,0,1),(33,1478,9,3),(34,2908,0,1),(35,1813,4,3),(36,2258,7,3),(37,2397,8,3),(38,1218,0,2),(39,3212,0,1),(40,2960,0,1),(41,2815,3,3),(42,1377,0,2),(43,1192,4,3),(44,1869,0,1),(45,1349,0,2),(46,2314,7,3),(47,566,0,2),(48,1543,0,1),(49,3167,0,2),(50,3339,0,2),(51,354,0,2),(52,3312,0,1),(53,996,0,2),(54,2623,7,3),(55,1534,0,1),(56,3303,0,2),(57,3295,0,2),(58,816,0,2),(59,3025,0,2),(60,2458,0,1),(61,1929,0,1),(62,1743,3,3);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `idpais` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Argentina'),(2,'Chile'),(3,'Perú'),(4,'Ecuador'),(5,'Colombia'),(6,'Bolivia'),(7,'Uruguay'),(8,'España'),(9,'Inglaterra'),(10,'Egipto'),(11,'Venezuela'),(12,'Grecia'),(13,'Brasil'),(14,'Mexico'),(15,'Italia'),(16,'Rusia'),(17,'Costa Rica'),(18,'Indonesia'),(19,'Canada'),(20,'India'),(21,'Paraguay'),(22,'Portugal'),(23,'Puerto Rico'),(24,'Jamaica'),(25,'Honduras'),(26,'Japon'),(27,'China'),(28,'Corea del Sur'),(29,'Turquia'),(30,'Cuba');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `idreserva` int NOT NULL AUTO_INCREMENT,
  `codigoReserva` varchar(6) DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idSucursal` int DEFAULT NULL,
  `idPago` int DEFAULT NULL,
  PRIMARY KEY (`idreserva`),
  KEY `FK_reservas_clientes_idx` (`idCliente`),
  KEY `FK_reservas_sucursales_idx` (`idSucursal`),
  KEY `FK_reservas_pagos_idx` (`idPago`),
  CONSTRAINT `FK_reservas_clientes` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idcliente`),
  CONSTRAINT `FK_reservas_pagos` FOREIGN KEY (`idPago`) REFERENCES `pagos` (`idpago`),
  CONSTRAINT `FK_reservas_sucursales` FOREIGN KEY (`idSucursal`) REFERENCES `sucursales` (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'AE300Y','2022-01-16 15:35:00',1,1,1),(2,'1C4D87','2022-01-16 15:51:00',1,5,2),(3,'32E515','2022-01-16 16:17:00',34,4,3),(4,'8E39CC','2022-01-16 16:42:00',29,3,4),(5,'C13C52','2022-01-16 17:14:00',27,1,5),(6,'92905B','2022-01-16 17:37:00',30,5,6),(7,'8EDACD','2022-01-16 18:08:00',13,4,7),(8,'65B9A7','2022-01-16 18:28:00',5,4,8),(9,'A2D300','2022-01-16 18:47:00',4,5,9),(10,'D5103D','2022-01-16 19:18:00',11,3,10),(11,'7C2503','2022-01-16 19:33:00',1,6,11),(12,'3A3D91','2022-01-16 19:53:00',37,1,12),(13,'0EAD9D','2022-01-16 20:09:00',43,3,13),(14,'8B5317','2022-01-16 20:24:00',7,4,14),(15,'49209D','2022-01-16 20:53:00',17,3,15),(16,'ADC2EF','2022-01-16 21:25:00',30,3,16),(17,'9A4EAA','2022-01-16 21:47:00',13,1,17),(18,'FB0F8A','2022-01-16 22:12:00',8,1,18),(19,'28683B','2022-01-16 22:36:00',37,3,19),(20,'316F97','2022-01-16 22:58:00',23,2,20),(21,'F0EA58','2022-01-16 23:13:00',38,1,21),(22,'EE3045','2022-01-16 23:32:00',24,5,22),(23,'23684B','2022-01-16 23:50:00',41,5,23),(24,'6E79CB','2022-01-17 00:21:00',33,5,24),(25,'8FD548','2022-01-17 00:46:00',5,5,25),(26,'C2F2B6','2022-01-17 01:10:00',38,4,26),(27,'18C82E','2022-01-17 01:38:00',8,3,27),(28,'C5E442','2022-01-17 02:01:00',13,5,28),(29,'B18E27','2022-01-17 02:23:00',22,5,29),(30,'0E30F4','2022-01-17 02:50:00',33,3,30),(31,'1700A8','2022-01-17 03:12:00',25,2,31),(32,'282945','2022-01-17 03:35:00',33,1,32),(33,'1EDC02','2022-01-17 04:02:00',31,2,33),(34,'09C0F6','2022-01-17 04:24:00',10,4,34),(35,'B8533C','2022-01-17 04:50:00',1,1,35),(36,'7EF84F','2022-01-17 05:09:00',53,1,36),(37,'A387C7','2022-01-17 05:34:00',3,2,37),(38,'01B062','2022-01-17 06:00:00',66,4,38),(39,'31B918','2022-01-17 06:24:00',17,3,39),(40,'FF5DB4','2022-01-17 06:56:00',47,3,40),(41,'78A290','2022-01-17 07:16:00',17,2,41),(42,'C13F76','2022-01-17 07:40:00',60,4,42),(43,'732B70','2022-01-17 08:02:00',57,4,43),(44,'77CFA1','2022-01-17 08:29:00',11,4,44),(45,'3CE95C','2022-01-17 08:52:00',44,4,45),(46,'7FA6ED','2022-01-17 09:22:00',30,3,46),(47,'D1BED2','2022-01-17 09:45:00',15,4,47),(48,'42827B','2022-01-17 10:04:00',36,4,48),(49,'074DA2','2022-01-17 10:20:00',7,2,49),(50,'986AFA','2022-01-17 10:36:00',11,3,50),(51,'B73C1C','2022-01-17 11:04:00',44,5,51),(52,'998AB2','2022-01-17 11:22:00',43,3,52),(53,'2C9FD6','2022-01-17 11:49:00',60,1,53),(54,'343527','2022-01-17 12:12:00',7,5,54),(55,'B29C00','2022-01-17 12:41:00',50,2,55),(56,'9C741D','2022-01-17 13:09:00',49,2,56),(57,'373518','2022-01-17 13:36:00',52,4,57),(58,'82F149','2022-01-17 13:57:00',22,3,58),(59,'01220E','2022-01-17 14:27:00',13,1,59),(60,'F153EB','2022-01-17 14:54:00',62,3,60),(61,'A2CB31','2022-01-17 15:18:00',27,2,61),(62,'E8D15D','2022-01-17 15:33:00',32,2,62);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `idSucursal` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `idPais` int DEFAULT NULL,
  PRIMARY KEY (`idSucursal`),
  KEY `FK_sucursales_paises_idx` (`idPais`),
  CONSTRAINT `FK_sucursales_paises` FOREIGN KEY (`idPais`) REFERENCES `paises` (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'San Martin 1003','Mendoza','+542616614483',1),(2,'Viña Roja','Caracas','+57996455285',5),(3,'Salta Montes 22','Bogotá','+572873345878',5),(4,'Alamos Rojos 1054','Buenos Aires','+54112658744',1),(5,'Cierras Andinas 940','Bogotá','+572148897585',5),(6,'Mar Antartico 743','Jujuy','+543562654458',1);
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposhospedaje`
--

DROP TABLE IF EXISTS `tiposhospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiposhospedaje` (
  `idtiposhospedaje` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtiposhospedaje`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposhospedaje`
--

LOCK TABLES `tiposhospedaje` WRITE;
/*!40000 ALTER TABLE `tiposhospedaje` DISABLE KEYS */;
INSERT INTO `tiposhospedaje` VALUES (1,'Media Pensión '),(2,'Pensión Completa');
/*!40000 ALTER TABLE `tiposhospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelos`
--

DROP TABLE IF EXISTS `vuelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vuelos` (
  `idvuelo` int NOT NULL AUTO_INCREMENT,
  `nroVuelo` varchar(6) DEFAULT NULL,
  `fechaPartida` datetime DEFAULT NULL,
  `fechaLlegada` datetime DEFAULT NULL,
  `origen` varchar(100) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `cantidadTurista` int DEFAULT NULL,
  `cantidadPrimeraClase` int DEFAULT NULL,
  PRIMARY KEY (`idvuelo`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelos`
--

LOCK TABLES `vuelos` WRITE;
/*!40000 ALTER TABLE `vuelos` DISABLE KEYS */;
INSERT INTO `vuelos` VALUES (1,'AE8589','2022-02-10 10:00:00','2022-02-10 11:15:00','ARGENTINA','COLOMBIA',120,20),(2,'4A23EF','2022-02-10 18:11:00','2022-02-10 23:41:00','COLOMBIA','ARGENTINA',97,22),(3,'A945B4','2022-02-10 12:45:00','2022-02-10 13:57:00','ARGENTINA','CHILE',99,16),(4,'F53C19','2022-02-10 14:15:00','2022-02-10 15:00:00','CHILE','ARGENTINA',108,22),(5,'0138BD','2022-02-10 15:26:00','2022-02-10 16:44:00','ARGENTINA','VENEZUELA',66,14),(6,'B53CBE','2022-02-10 17:04:00','2022-02-10 17:59:00','VENEZUELA','ARGENTINA',79,23),(7,'4AF130','2022-02-10 18:39:00','2022-02-10 19:36:00','COLOMBIA','ECUADOR',80,22),(8,'7E291D','2022-02-10 20:18:00','2022-02-10 21:10:00','ECUADOR','COLOMBIA',111,19),(9,'FEC292','2022-02-10 21:53:00','2022-02-10 22:37:00','ECUADOR','CHILE',94,16),(10,'0415E3','2022-02-10 23:16:00','2022-02-10 23:55:00','CHILE','ECUADOR',80,21),(11,'B02925','2022-02-11 00:24:00','2022-02-11 00:57:00','ARGENTINA','BOLIVIA',106,21),(12,'4772AD','2022-02-11 02:06:00','2022-02-11 02:20:00','BOLIVIA','ARGENTINA',108,23),(13,'82CF18','2022-02-11 03:42:00','2022-02-11 04:10:00','CHILE','BOLIVIA',85,18),(14,'662095','2022-02-11 05:38:00','2022-02-11 05:17:00','BOLIVIA','CHILE',108,20),(15,'625D64','2022-02-11 06:45:00','2022-02-11 06:45:00','BOLIVIA','PERU',119,18),(16,'CDF3D5','2022-02-11 08:15:00','2022-02-11 07:46:00','PERU','ARGENTINA',97,10),(17,'BF3156','2022-02-11 09:40:00','2022-02-11 08:58:00','PERU','CHILE',105,12),(18,'3B954D','2022-02-11 11:18:00','2022-02-11 10:12:00','ECUADOR','COLOMBIA',77,21),(19,'67F6B8','2022-02-11 18:11:00','2022-02-11 23:59:00','COLOMBIA','ARGENTINA',67,21),(20,'66G28Q','2022-02-10 21:53:00','2022-02-10 22:10:00','COLOMBIA','CHILE',111,20),(21,'88958A','2022-02-12 15:00:00','2022-02-12 15:45:00','ARGENTINA','INGLATERRA',100,10),(22,'1658C1','2022-02-12 16:43:00','2022-02-12 17:03:00','ARGENTINA','VENEZUELA',82,23),(23,'2E63C3','2022-02-12 18:41:00','2022-02-12 18:16:00','RUSIA','MEXICO',70,12),(24,'C48719','2022-02-12 20:02:00','2022-02-12 19:57:00','ITALIA','PERU',80,19),(25,'59626C','2022-02-12 21:43:00','2022-02-12 21:04:00','INGLATERRA','JAMAICA',94,17),(26,'3AF050','2022-02-12 23:01:00','2022-02-12 22:17:00','INDIA','ARGENTINA',74,17),(27,'376DA0','2022-02-13 00:58:00','2022-02-12 23:19:00','CHINA','MEXICO',78,17),(28,'79C829','2022-02-13 02:44:00','2022-02-13 00:51:00','URUGUAY','INDONESIA',83,15),(29,'56D6CA','2022-02-13 04:13:00','2022-02-13 02:49:00','ARGENTINA','JAMAICA',82,24),(30,'0AE890','2022-02-13 05:42:00','2022-02-13 04:13:00','COLOMBIA','JAMAICA',94,19),(31,'46E652','2022-02-13 07:18:00','2022-02-13 05:44:00','COLOMBIA ','MEXICO',106,15),(32,'5F08D6','2022-02-13 09:01:00','2022-02-13 07:18:00','MEXICO','ITALIA',103,23),(33,'344816','2022-02-13 10:26:00','2022-02-13 08:46:00','JAMAICA ','COLOMBIA',83,13),(34,'D51C86','2022-02-13 12:08:00','2022-02-13 10:37:00','MEXICO','COLOMBIA',69,13),(35,'3F0521','2022-02-13 13:30:00','2022-02-13 11:41:00','ITALIA','MEXICO',74,10),(36,'3973D7','2022-02-13 15:06:00','2022-02-13 12:42:00','INGLATERRA','ARGENTINA',76,15),(37,'44C285','2022-02-13 16:39:00','2022-02-13 13:43:00','VENEZUELA','ARGENTINA',87,13),(38,'B228D5','2022-02-13 18:16:00','2022-02-13 14:52:00','MEXICO','RUSIA',116,13),(39,'27578E','2022-02-13 20:07:00','2022-02-13 16:14:00','PERU','ITALIA',75,13),(40,'8D7117','2022-02-13 21:43:00','2022-02-13 17:31:00','JAMAICA','INGLATERRA',97,13),(41,'9C4396','2022-02-13 23:28:00','2022-02-13 19:26:00','ARGENTINA','INDIA',82,11),(42,'5D895E','2022-02-14 01:19:00','2022-02-13 21:25:00','MEXICO','CHINA',83,24),(43,'6001AA','2022-02-14 02:22:00','2022-02-13 22:56:00','INDONESIA','URUGUAY',89,23),(44,'83B868','2022-02-14 04:21:00','2022-02-14 00:04:00','JAMAICA ','ARGENTINA',105,15),(45,'AFBC2E','2022-02-14 05:53:00','2022-02-14 01:12:00','ARGENTINA','CUBA',64,24),(46,'FFE044','2022-02-14 07:49:00','2022-02-14 02:14:00','MEXICO','HONDURAS',81,19),(47,'20B632','2022-02-14 08:59:00','2022-02-14 03:26:00','COLOMBIA','HONDURAS',92,10),(48,'467316','2022-02-14 10:29:00','2022-02-14 05:25:00','COLOMBIA','CUBA',88,15),(49,'186F2C','2022-02-14 11:54:00','2022-02-14 06:41:00','COSTA RICA','ARGENTINA',64,18),(50,'0417DC','2022-02-14 13:17:00','2022-02-14 07:45:00','COSTA RICA','CUBA',74,24),(51,'D0CB8E','2022-02-14 14:45:00','2022-02-14 08:55:00','CHINA','CUBA',88,22),(52,'D5785C','2022-02-14 15:53:00','2022-02-14 10:26:00','ITALIA','CUBA',72,17),(53,'51ED19','2022-02-14 17:33:00','2022-02-14 12:18:00','ITALIA','HONDURAS',80,10),(54,'15EC6B','2022-02-14 18:55:00','2022-02-14 14:15:00','ITALIA','COSTA RICA',99,15),(55,'ABDAC3','2022-02-14 20:52:00','2022-02-14 15:57:00','RUSIA','CUBA',98,11),(56,'9B741C','2022-02-14 22:44:00','2022-02-14 17:23:00','CUBA','ARGENTINA',95,19),(57,'A53A81','2022-02-15 00:37:00','2022-02-14 18:47:00','HONDURAS','MEXICO',80,17),(58,'F1891B','2022-02-15 02:31:00','2022-02-14 19:54:00','HONDURAS','COLOMBIA',112,10),(59,'D110CC','2022-02-15 04:24:00','2022-02-14 21:12:00','CUBA','COLOMBIA',110,15),(60,'A9C496','2022-02-15 06:10:00','2022-02-14 22:36:00','ARGENTINA','COSTA RICA',103,15),(61,'9A99CF','2022-02-15 07:53:00','2022-02-14 23:53:00','CUBA','CHINA',76,17);
/*!40000 ALTER TABLE `vuelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelosxreserva`
--

DROP TABLE IF EXISTS `vuelosxreserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vuelosxreserva` (
  `idvuelosxreserva` int NOT NULL AUTO_INCREMENT,
  `idVuelo` int DEFAULT NULL,
  `idReserva` int DEFAULT NULL,
  `idCategoriasVuelos` int DEFAULT NULL,
  PRIMARY KEY (`idvuelosxreserva`),
  KEY `FK_vuelosxreserva_reservas_idx` (`idReserva`),
  KEY `FK_vuelosxreserva_vuelos_idx` (`idVuelo`),
  KEY `FK_vuelosxreserva_categoriasvuelos_idx` (`idCategoriasVuelos`),
  CONSTRAINT `FK_vuelosxreserva_categoriasvuelos` FOREIGN KEY (`idCategoriasVuelos`) REFERENCES `categoriasvuelos` (`idcategoriasvuelos`),
  CONSTRAINT `FK_vuelosxreserva_reservas` FOREIGN KEY (`idReserva`) REFERENCES `reservas` (`idreserva`),
  CONSTRAINT `FK_vuelosxreserva_vuelos` FOREIGN KEY (`idVuelo`) REFERENCES `vuelos` (`idvuelo`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelosxreserva`
--

LOCK TABLES `vuelosxreserva` WRITE;
/*!40000 ALTER TABLE `vuelosxreserva` DISABLE KEYS */;
INSERT INTO `vuelosxreserva` VALUES (1,1,1,2),(2,7,1,1),(3,8,1,2),(4,1,2,1),(5,6,3,2),(6,11,3,2),(7,5,4,1),(8,6,4,2),(9,11,4,2),(10,12,5,1),(11,8,6,2),(12,20,6,2),(13,10,6,1),(14,2,7,2),(15,3,7,2),(16,10,7,2),(17,13,8,2),(18,14,8,2),(19,17,9,2),(20,7,10,2),(21,9,10,2),(22,7,11,2),(23,9,11,2),(24,11,12,1),(25,7,13,2),(26,9,13,1),(27,13,13,2),(28,5,14,2),(29,6,14,2),(30,2,15,2),(31,4,16,2),(32,11,16,2),(33,7,17,2),(34,9,17,1),(35,13,17,2),(36,2,18,2),(37,5,18,2),(38,15,19,1),(39,15,20,1),(40,8,21,2),(41,14,22,2),(42,13,23,2),(43,15,23,2),(44,6,24,2),(45,11,24,1),(46,10,25,2),(47,18,25,2),(48,11,26,1),(49,17,27,1),(50,7,28,2),(51,8,28,2),(52,7,29,2),(53,8,29,1),(54,19,29,2),(55,1,30,1),(56,2,30,1),(57,1,31,2),(58,2,31,1),(59,9,32,2),(60,1,33,1),(61,13,34,2);
/*!40000 ALTER TABLE `vuelosxreserva` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-12 19:25:52
