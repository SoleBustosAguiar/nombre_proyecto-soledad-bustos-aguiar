CREATE DATABASE  IF NOT EXISTS `cine` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cine`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cine
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `id_actor` int NOT NULL,
  `animado` tinyint(1) DEFAULT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_actor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,0,'Smith','John'),(2,0,'Johnson','Emma'),(3,1,'Mouse','Mickey'),(4,1,'Duck','Donald'),(5,0,'Gonzalez','María'),(6,0,'Lee','David'),(7,1,'Bunny','Bugs'),(8,0,'Rodriguez','Carlos'),(9,0,'Wong','Jennifer'),(10,1,'Simpson','Homer'),(11,0,'Chen','Lily'),(12,0,'Patel','Raj'),(13,1,'Griffin','Peter'),(14,0,'Brown','Sarah'),(15,0,'Martinez','Ana'),(16,1,'Flintstone','Fred'),(17,1,'Jetson','George'),(18,0,'Nguyen','Tran'),(19,0,'Garcia','Luis'),(20,1,'Pikachu','Ash'),(21,0,'Taylor','Emily'),(22,0,'Kim','James'),(23,1,'Spongebob','Squarepants'),(24,1,'Scooby','Doo'),(25,0,'Lopez','Juan'),(26,0,'Hernandez','Jessica'),(27,1,'Bart','Simpson'),(28,0,'Wilson','Michael'),(29,0,'Chang','Sophia'),(30,1,'Goku','Son'),(31,0,'Walker','Lauren'),(32,0,'Ali','Mohammed'),(33,1,'Tom','Jerry'),(34,0,'Adams','Elizabeth'),(35,0,'Gomez','Daniel'),(36,1,'Minnie','Mouse'),(37,1,'Goofy','Goof'),(38,0,'Carter','Olivia'),(39,0,'Li','Kevin'),(40,1,'Popeye',NULL),(41,0,'Torres','Isabella'),(42,0,'Singh','Amit'),(43,1,'Simba',NULL),(44,1,'Aladdin',NULL),(45,0,'Smith','Sophie'),(46,0,'Khan','Ali'),(47,1,'Elsa',NULL),(48,0,'White','Emily'),(49,0,'Lam','Andy'),(50,1,'Buzz','Lightyear'),(51,0,'Martinez','David'),(52,0,'Yang','Grace'),(53,1,'Snoopy',NULL),(54,0,'Gonzalez','Alex'),(55,0,'Li','Grace'),(56,1,'Daffy','Duck'),(57,0,'Thompson','Sophia'),(58,0,'Cheng','Jack'),(59,1,'Shrek',NULL),(60,0,'Huang','Tiffany'),(61,0,'Young','Chris'),(62,1,'Road','Runner'),(63,1,'Jerry','Mouse'),(64,0,'Kim','Hannah'),(65,0,'Wong','Justin'),(66,1,'Tweety',NULL),(67,0,'Wilson','Sophie'),(68,0,'Chan','Tony'),(69,1,'Stitch',NULL),(70,0,'Hernandez','Eva'),(71,0,'Smith','Nathan'),(72,1,'Winnie','the Pooh'),(73,1,'Mickey','Mouse'),(74,0,'Tran','Michelle'),(75,0,'Le','Derek'),(76,1,'Mickey','Mouse'),(77,0,'Nguyen','Sophia'),(78,0,'Wang','Bella'),(79,1,'Patrick','Star'),(80,0,'Miller','Joshua'),(81,0,'Zhang','Emily'),(82,1,'Bambi',NULL),(83,1,'Pumbaa',NULL),(84,0,'Garcia','Sophia'),(85,0,'Brown','Andrew'),(86,1,'Dumbo',NULL),(87,1,'Yogi','Bear'),(88,0,'Li','Jason'),(89,0,'Gonzalez','Natalie'),(90,1,'Porky','Pig'),(91,0,'Smith','Olivia'),(92,0,'Nguyen','Ethan'),(93,1,'Sylvester','Cat'),(94,1,'Felix','the Cat'),(95,0,'Kim','Grace'),(96,0,'Chen','Austin'),(97,1,'Pikachu',NULL),(98,0,'Wu','Ella'),(99,0,'Chavez','Angel'),(100,1,'Garfield',NULL);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion` (
  `id_calificacion` int NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_calificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (1,'ATP: Apto para Todo Público'),(2,'mayor 13: Apta mayores de 13 años'),(3,'mayor 16: Apta mayores de 16 años'),(4,'mayor 18: Apta mayores de 18 años');
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cine`
--

DROP TABLE IF EXISTS `cine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cine` (
  `id_cine` int NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `fecha_inauguracion` datetime DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `precio_entrada` double DEFAULT NULL,
  PRIMARY KEY (`id_cine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cine`
--

LOCK TABLES `cine` WRITE;
/*!40000 ALTER TABLE `cine` DISABLE KEYS */;
INSERT INTO `cine` VALUES (1,'Rivadavia 123, Peatonal Sur','2022-01-15 10:00:00','Cine PEATONAL',1500),(2,'Avenida Belgrano, Shopping Terminal','2021-08-20 09:30:00','Cine TERMINAL',2000),(3,'Prado 456, Shopping Solar','2020-05-10 11:00:00','Cine SOLAR',1500),(4,'Avenida Alem, Shopping UP','2019-11-03 12:00:00','Cine UP',1500),(5,'Perú 789, Galerias V','2023-02-28 14:30:00','Cine V',1500);
/*!40000 ALTER TABLE `cine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrada`
--

DROP TABLE IF EXISTS `entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrada` (
  `id_entrada` int NOT NULL,
  `fecha_hora_funcion` datetime DEFAULT NULL,
  `fecha_hora_venta` datetime DEFAULT NULL,
  `precio_cobrado` float DEFAULT NULL,
  `ticket_nro` int DEFAULT NULL,
  `numero` int NOT NULL,
  PRIMARY KEY (`id_entrada`),
  KEY `fk_entrada_funcion` (`numero`),
  CONSTRAINT `fk_entrada_funcion` FOREIGN KEY (`numero`) REFERENCES `funcion` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrada`
--

LOCK TABLES `entrada` WRITE;
/*!40000 ALTER TABLE `entrada` DISABLE KEYS */;
INSERT INTO `entrada` VALUES (1,'2024-04-11 14:00:00',NULL,NULL,NULL,1),(2,'2024-04-12 15:00:00',NULL,NULL,NULL,2),(3,'2024-04-13 16:00:00',NULL,NULL,NULL,3),(4,'2024-04-14 17:00:00',NULL,NULL,NULL,4),(5,'2024-04-15 18:00:00',NULL,NULL,NULL,5),(6,'2024-04-16 19:00:00',NULL,NULL,NULL,6),(7,'2024-04-17 20:00:00',NULL,NULL,NULL,7),(8,'2024-04-18 21:00:00',NULL,NULL,NULL,8),(9,'2024-04-19 22:00:00',NULL,NULL,NULL,9),(10,'2024-04-20 23:00:00',NULL,NULL,NULL,10),(11,'2024-04-11 14:00:00',NULL,NULL,NULL,1),(12,'2024-04-12 15:00:00',NULL,NULL,NULL,2),(13,'2024-04-13 16:00:00',NULL,NULL,NULL,3),(14,'2024-04-14 17:00:00',NULL,NULL,NULL,4),(15,'2024-04-15 18:00:00',NULL,NULL,NULL,5),(16,'2024-04-16 19:00:00',NULL,NULL,NULL,6),(17,'2024-04-17 20:00:00',NULL,NULL,NULL,7),(18,'2024-04-18 21:00:00',NULL,NULL,NULL,8),(19,'2024-04-19 22:00:00',NULL,NULL,NULL,9),(20,'2024-04-20 23:00:00',NULL,NULL,NULL,10);
/*!40000 ALTER TABLE `entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcion`
--

DROP TABLE IF EXISTS `funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcion` (
  `numero` int NOT NULL,
  `dia_semana` varchar(45) DEFAULT NULL,
  `duracion` varchar(45) DEFAULT NULL,
  `hora_inicio` varchar(45) DEFAULT NULL,
  `id_programacion` int NOT NULL,
  `id_pelicula` int NOT NULL,
  `id_sala` int NOT NULL,
  PRIMARY KEY (`numero`),
  KEY `fk_funcion_pelicula` (`id_pelicula`),
  KEY `fk_funcion_programacion` (`id_programacion`),
  KEY `fk_funcion_sala` (`id_sala`),
  CONSTRAINT `fk_funcion_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  CONSTRAINT `fk_funcion_programacion` FOREIGN KEY (`id_programacion`) REFERENCES `programacion` (`id_programacion`),
  CONSTRAINT `fk_funcion_sala` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcion`
--

LOCK TABLES `funcion` WRITE;
/*!40000 ALTER TABLE `funcion` DISABLE KEYS */;
INSERT INTO `funcion` VALUES (1,'Lunes','2 horas','14:00',1,1,1),(2,'Martes','2 horas','15:00',2,22,2),(3,'Miércoles','2 horas','16:00',3,23,3),(4,'Jueves','2 horas','17:00',4,24,4),(5,'Viernes','2 horas','18:00',5,25,5),(6,'Sábado','2 horas','19:00',1,26,1),(7,'Domingo','2 horas','20:00',2,27,2),(8,'Lunes','2 horas','21:00',3,28,3),(9,'Martes','2 horas','22:00',4,29,4),(10,'Miércoles','2 horas','23:00',3,30,5);
/*!40000 ALTER TABLE `funcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id_genero` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Acción'),(2,'Aventura'),(3,'Catástrofe'),(4,'Ciencia Ficción'),(5,'Comedia'),(6,'Documentales'),(7,'Drama'),(8,'Fantasía'),(9,'Musicales'),(10,'Suspenso'),(11,'Terror'),(12,'Pornográfico'),(13,'Infantiles'),(14,'Juveniles'),(15,'Adultos'),(16,'Animadas'),(17,'Bélicas'),(18,'Crimen'),(19,'Deportivas'),(20,'Gangsters'),(21,'Históricas'),(22,'Policiacas'),(23,'Western'),(24,'Religioso'),(25,'Épicas'),(26,'Futuristas');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horariofuncion`
--

DROP TABLE IF EXISTS `horariofuncion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horariofuncion` (
  `id_horario_funcion` int NOT NULL,
  `duracion_intervalo` int DEFAULT NULL,
  `duracion_publicidad` int DEFAULT NULL,
  `es_trasnoche` tinyint(1) DEFAULT NULL,
  `hora_primera_funcion` datetime DEFAULT NULL,
  `hora_ultima_funcion` datetime DEFAULT NULL,
  `id_cine` int NOT NULL,
  PRIMARY KEY (`id_horario_funcion`),
  KEY `fk_horariofuncion_cine` (`id_cine`),
  CONSTRAINT `fk_horariofuncion_cine` FOREIGN KEY (`id_cine`) REFERENCES `cine` (`id_cine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariofuncion`
--

LOCK TABLES `horariofuncion` WRITE;
/*!40000 ALTER TABLE `horariofuncion` DISABLE KEYS */;
INSERT INTO `horariofuncion` VALUES (1,15,10,0,'2022-01-15 10:30:00','2022-01-15 23:30:00',1),(2,20,12,0,'2022-01-15 10:15:00','2022-01-15 23:00:00',1),(3,15,10,0,'2022-01-15 10:00:00','2022-01-15 22:45:00',2),(4,20,12,0,'2022-01-15 10:10:00','2022-01-15 22:50:00',2),(5,15,10,0,'2022-01-15 11:00:00','2022-01-15 23:45:00',3),(6,20,12,0,'2022-01-15 11:30:00','2022-01-15 23:30:00',3),(7,15,10,0,'2022-01-15 10:45:00','2022-01-15 23:15:00',4),(8,20,12,0,'2022-01-15 10:20:00','2022-01-15 23:00:00',4),(9,15,10,0,'2022-01-15 11:15:00','2022-01-15 23:45:00',5),(10,20,12,0,'2022-01-15 10:30:00','2022-01-15 23:30:00',5),(11,15,10,0,'2022-01-15 10:45:00','2022-01-15 23:15:00',1),(12,20,12,0,'2022-01-15 10:15:00','2022-01-15 23:00:00',1),(13,15,10,0,'2022-01-15 11:00:00','2022-01-15 22:45:00',2),(14,20,12,0,'2022-01-15 10:30:00','2022-01-15 23:00:00',2),(15,15,10,0,'2022-01-15 10:45:00','2022-01-15 23:15:00',3),(16,20,12,0,'2022-01-15 11:30:00','2022-01-15 23:30:00',3),(17,15,10,0,'2022-01-15 10:30:00','2022-01-15 23:00:00',4),(18,20,12,0,'2022-01-15 10:45:00','2022-01-15 23:15:00',4),(19,15,10,0,'2022-01-15 11:15:00','2022-01-15 23:45:00',5),(20,20,12,0,'2022-01-15 10:20:00','2022-01-15 23:00:00',5);
/*!40000 ALTER TABLE `horariofuncion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_pelicula_audi`
--

DROP TABLE IF EXISTS `log_pelicula_audi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_pelicula_audi` (
  `id_auditoria` int NOT NULL AUTO_INCREMENT,
  `id_pelicula` int NOT NULL,
  `anio_estreno` int DEFAULT NULL,
  `disponible` tinyint NOT NULL,
  `duracion` int NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `titulo_original` varchar(100) DEFAULT NULL,
  `id_calificacion` int NOT NULL,
  `id_pais_de_origen` int NOT NULL,
  `id_genero` int NOT NULL,
  `mensaje_auditoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_pelicula_audi`
--

LOCK TABLES `log_pelicula_audi` WRITE;
/*!40000 ALTER TABLE `log_pelicula_audi` DISABLE KEYS */;
INSERT INTO `log_pelicula_audi` VALUES (1,50,2024,1,110,'2024-05-02','fun ku panada 4','kun fu panda 4',1,40,13,'La pelicula fun ku panada 4 se ha agregado correctamente');
/*!40000 ALTER TABLE `log_pelicula_audi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paisdeorigen`
--

DROP TABLE IF EXISTS `paisdeorigen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paisdeorigen` (
  `id_pais_de_origen` int NOT NULL,
  `idioma` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pais_de_origen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paisdeorigen`
--

LOCK TABLES `paisdeorigen` WRITE;
/*!40000 ALTER TABLE `paisdeorigen` DISABLE KEYS */;
INSERT INTO `paisdeorigen` VALUES (1,'albanés','albania'),(2,'alemán','alemania'),(3,'catalán','andorra'),(4,'armenio','armenia'),(5,'alemán','austria'),(6,'azerí','azerbaiyán'),(7,'neerlandés francés y alemán','bélgica'),(8,'bielorruso y ruso','bielorrusia'),(9,'bosnio, croata y serbio','bosnia y herzegovina'),(10,'búlgaro','bulgaria'),(11,'griego y turco','chipre'),(12,'latín e italiano','ciudad el vaticano'),(13,'croata','croacia'),(14,'danés','dinamarca'),(15,'eslovaco','eslovaquia'),(16,'esloveno','eslovenia'),(17,'español','españa'),(18,'estonio','estonia'),(19,'finés y sueco','finlandia'),(20,'francés','francia'),(21,'georgiano','georgia'),(22,'griego','grecia'),(23,'húngaro','hungría'),(24,'irlandés e inglés','irlanda'),(25,'islandés','islandia'),(26,'italiano','italia'),(27,'kazajo y ruso','kazajistán'),(28,'letón','letonia'),(29,'alemán','liechtenstein'),(30,'lituano','lituania'),(31,'luxemburgués francés y alemán','luxemburgo'),(32,'maltés e inglés','malta'),(33,'rumano','moldavia'),(34,'francés','mónaco'),(35,'montenegrino','montenegro'),(36,'noruego','noruega'),(37,'neerlandés','países bajos'),(38,'polaco','polonia'),(39,'portugués','portugal'),(40,'inglés','reino unido'),(41,'checo','república checa'),(42,'macedonio','república de macedonia'),(43,'rumano','rumania'),(44,'ruso','rusia'),(45,'italiano','san marino'),(46,'serbio','serbia'),(47,'sueco','suecia'),(48,'alemán francés italiano y romance','suiza'),(49,'turco','turquía'),(50,'ucraniano','ucrania');
/*!40000 ALTER TABLE `paisdeorigen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula` (
  `id_pelicula` int NOT NULL,
  `anio_estreno` int DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL,
  `duracion` int NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `titulo_original` varchar(100) DEFAULT NULL,
  `id_calificacion` int NOT NULL,
  `id_pais_de_origen` int NOT NULL,
  `id_genero` int NOT NULL,
  PRIMARY KEY (`id_pelicula`),
  KEY `fk_pelicula_calificacion` (`id_calificacion`),
  KEY `fk_pelicula_paisdeorigen` (`id_pais_de_origen`),
  KEY `fk_pelicula_genero` (`id_genero`),
  KEY `titulo_original` (`titulo_original`),
  CONSTRAINT `fk_pelicula_calificacion` FOREIGN KEY (`id_calificacion`) REFERENCES `calificacion` (`id_calificacion`),
  CONSTRAINT `fk_pelicula_genero` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`),
  CONSTRAINT `fk_pelicula_paisdeorigen` FOREIGN KEY (`id_pais_de_origen`) REFERENCES `paisdeorigen` (`id_pais_de_origen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,2009,1,11,'2020-01-01','ACERO PURO','',1,29,1),(2,2010,1,95,'2020-01-01','AEON FLUX','',3,2,1),(22,2016,1,110,'2020-01-01','BREAKDOWN','',2,3,11),(23,2016,1,106,'2020-01-01','CAPITÁN PHILLIPS','',1,2,1),(24,2012,1,112,'2020-01-01','EL DESCONOCIDO','',2,4,1),(25,2014,1,113,'2020-01-01','EL FRANCOTIRADOR','',2,5,1),(26,2014,1,120,'2020-01-01','GUERRA MUNDIAL Z','',3,7,1),(27,2012,1,114,'2020-01-01','EL PRECIO DEL MAÑANA','',3,8,1),(28,2015,1,89,'2020-01-01','JURASSIC WORLD','',1,9,1),(29,2016,1,104,'2020-01-01','LOS GOONIES','',1,10,1),(30,2007,1,103,'2020-01-01','MEMENTO','',3,11,1),(31,2008,1,102,'2020-01-01','MISIÓN IMPOSIBLE','',2,12,1),(32,2014,1,105,'2020-01-01','FRECUENCIA MORTAL','',3,2,1),(33,2016,1,106,'2020-01-01','OPERACIÓN RENO','',2,25,1),(34,2015,1,99,'2020-01-01','EL PLAN PERFECTO','',3,38,1),(35,2002,1,98,'2020-01-01','PULP FICTION','',3,40,1),(36,2006,1,111,'2020-01-01','LA MEXICANA','',2,41,1),(37,2010,1,112,'2020-01-01','INVENCIBLE','',1,27,1),(38,2011,1,113,'2020-01-01','YO FRANKENSTEIN','',1,50,1),(50,2024,1,110,'2024-05-02','fun ku panada 4','kun fu panda 4',1,40,13);
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `nombre_enmayuscula_pelicula` BEFORE INSERT ON `pelicula` FOR EACH ROW SET NEW.nombre = UPPER(NEW.nombre) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `despues_agregar_pelicula` AFTER INSERT ON `pelicula` FOR EACH ROW INSERT INTO log_pelicula_audi (id_pelicula, 
		anio_estreno,
		disponible,
		duracion,
		fecha_ingreso, 
		nombre, 
		titulo_original, 
		id_calificacion,
		id_pais_de_origen, 
		id_genero,   
		mensaje_auditoria) 
VALUES ( 
	    NEW.id_pelicula, 
		NEW.anio_estreno,
		NEW.disponible,
		NEW.duracion,
		NEW.fecha_ingreso, 
		NEW.nombre, 
		NEW.titulo_original, 
		NEW.id_calificacion,
		NEW.id_pais_de_origen, 
		NEW.id_genero,   
        concat('La pelicula ', NEW.nombre,' se ha agregado correctamente')) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `personaje`
--

DROP TABLE IF EXISTS `personaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personaje` (
  `id_personaje` int NOT NULL,
  `nombreEnPelicula` varchar(40) NOT NULL,
  `id_actor` int NOT NULL,
  PRIMARY KEY (`id_personaje`),
  KEY `fk_personaje_actor` (`id_actor`),
  KEY `id_personaje` (`id_personaje`),
  CONSTRAINT `fk_personaje_actor` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id_actor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personaje`
--

LOCK TABLES `personaje` WRITE;
/*!40000 ALTER TABLE `personaje` DISABLE KEYS */;
INSERT INTO `personaje` VALUES (1,'Mickey Mouse',3),(2,'Donald Duck',4),(3,'Bugs Bunny',7),(4,'Homer Simpson',10),(5,'Peter Griffin',13),(6,'Fred Flintstone',16),(7,'George Jetson',17),(8,'Minnie Mouse',36),(9,'Goofy',37),(10,'Bart Simpson',27),(11,'Tom',33),(12,'Snoopy',53),(13,'Daffy Duck',56),(14,'Shrek',59),(15,'Winnie the Pooh',72),(16,'Mickey Mouse',73),(17,'Stitch',69),(18,'Patrick Star',79),(19,'Bambi',82),(20,'Dumbo',86);
/*!40000 ALTER TABLE `personaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programacion`
--

DROP TABLE IF EXISTS `programacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programacion` (
  `id_programacion` int NOT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `fecha_hora_creada` datetime DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `id_cine` int NOT NULL,
  PRIMARY KEY (`id_programacion`),
  KEY `fk_programacion_cine` (`id_cine`),
  CONSTRAINT `fk_programacion_cine` FOREIGN KEY (`id_cine`) REFERENCES `cine` (`id_cine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programacion`
--

LOCK TABLES `programacion` WRITE;
/*!40000 ALTER TABLE `programacion` DISABLE KEYS */;
INSERT INTO `programacion` VALUES (1,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',1),(2,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',2),(3,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',3),(4,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',4),(5,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',5),(6,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',1),(7,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',2),(8,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',3),(9,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',4),(10,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',5),(11,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',1),(12,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',2),(13,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',3),(14,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',4),(15,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',5),(16,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',1),(17,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',2),(18,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',3),(19,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',4),(20,'2022-02-28 23:59:59','2022-02-01 10:00:00','2022-02-01 00:00:00',5);
/*!40000 ALTER TABLE `programacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparto`
--

DROP TABLE IF EXISTS `reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparto` (
  `id_personaje` int NOT NULL,
  `id_pelicula` int NOT NULL,
  PRIMARY KEY (`id_personaje`,`id_pelicula`),
  KEY `fk_personaje_has_pelicula_pelicula` (`id_pelicula`),
  CONSTRAINT `fk_personaje_has_pelicula_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  CONSTRAINT `fk_personaje_has_pelicula_personaje` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparto`
--

LOCK TABLES `reparto` WRITE;
/*!40000 ALTER TABLE `reparto` DISABLE KEYS */;
INSERT INTO `reparto` VALUES (1,1),(2,2),(3,22),(4,23),(5,24),(6,25),(7,26),(8,27),(9,28),(10,29),(11,30),(12,31),(13,32),(14,33),(15,34),(16,35),(17,36),(18,37),(19,38);
/*!40000 ALTER TABLE `reparto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_personaje` int NOT NULL,
  PRIMARY KEY (`id_rol`),
  KEY `fk_rol_personaje` (`id_personaje`),
  CONSTRAINT `fk_rol_personaje` FOREIGN KEY (`id_personaje`) REFERENCES `personaje` (`id_personaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Protagonista',1),(2,'Protagonista',2),(3,'Protagonista',3),(4,'Protagonista',4),(5,'Protagonista',5),(6,'Protagonista',6),(7,'Protagonista',7),(8,'Secundario',8),(9,'Secundario',9),(10,'Secundario',10),(11,'Secundario',11),(12,'Secundario',12),(13,'Secundario',13),(14,'Secundario',14),(15,'Secundario',15),(16,'Secundario',16),(17,'Secundario',17),(18,'Secundario',18),(19,'Secundario',19),(20,'Secundario',20);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `id_sala` int NOT NULL,
  `capacidad` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `id_cine` int NOT NULL,
  PRIMARY KEY (`id_sala`),
  KEY `fk_sala_cine` (`id_cine`),
  CONSTRAINT `fk_sala_cine` FOREIGN KEY (`id_cine`) REFERENCES `cine` (`id_cine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,100,1,1),(2,80,2,1),(3,120,1,2),(4,90,2,2),(5,150,1,3),(6,70,2,3),(7,110,1,4),(8,85,2,4),(9,130,1,5),(10,95,2,5);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
  `id_sexo` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_actor` int NOT NULL,
  PRIMARY KEY (`id_sexo`),
  KEY `fk_sexo_actor` (`id_actor`),
  CONSTRAINT `fk_sexo_actor` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id_actor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'Masculino',1),(2,'Femenino',2),(3,'Masculino',3),(4,'Masculino',4),(5,'Femenino',5),(6,'Masculino',6),(7,'Masculino',7),(8,'Masculino',8),(9,'Femenino',9),(10,'Masculino',10),(11,'Femenino',11),(12,'Masculino',12),(13,'Masculino',13),(14,'Femenino',14),(15,'Femenino',15),(16,'Masculino',16),(17,'Masculino',17),(18,'Femenino',18),(19,'Masculino',19),(20,'Masculino',20),(21,'Femenino',21),(22,'Masculino',22),(23,'Masculino',23),(24,'Femenino',24),(25,'Masculino',25),(26,'Femenino',26),(27,'Masculino',27),(28,'Femenino',28),(29,'Masculino',29),(30,'Femenino',30),(31,'Masculino',31),(32,'Masculino',32),(33,'Femenino',33),(34,'Masculino',34),(35,'Femenino',35),(36,'Masculino',36),(37,'Masculino',37),(38,'Femenino',38),(39,'Femenino',39),(40,'Masculino',40),(41,'Femenino',41),(42,'Masculino',42),(43,'Masculino',43),(44,'Masculino',44),(45,'Femenino',45),(46,'Masculino',46),(47,'Femenino',47),(48,'Masculino',48),(49,'Femenino',49),(50,'Masculino',50),(51,'Masculino',51),(52,'Femenino',52),(53,'Masculino',53),(54,'Femenino',54),(55,'Masculino',55),(56,'Femenino',56),(57,'Masculino',57),(58,'Femenino',58),(59,'Masculino',59),(60,'Femenino',60),(61,'Masculino',61),(62,'Masculino',62),(63,'Femenino',63),(64,'Masculino',64),(65,'Femenino',65),(66,'Masculino',66),(67,'Masculino',67),(68,'Femenino',68),(69,'Masculino',69),(70,'Masculino',70),(71,'Femenino',71),(72,'Masculino',72),(73,'Femenino',73),(74,'Masculino',74),(75,'Masculino',75),(76,'Femenino',76),(77,'Masculino',77),(78,'Femenino',78),(79,'Masculino',79),(80,'Masculino',80),(81,'Femenino',81),(82,'Masculino',82),(83,'Femenino',83),(84,'Masculino',84),(85,'Femenino',85),(86,'Masculino',86),(87,'Femenino',87),(88,'Masculino',88),(89,'Masculino',89),(90,'Femenino',90),(91,'Masculino',91),(92,'Femenino',92),(93,'Masculino',93),(94,'Femenino',94),(95,'Masculino',95),(96,'Femenino',96),(97,'Masculino',97),(98,'Femenino',98),(99,'Masculino',99),(100,'Femenino',100);
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_disponibilidad_salas_x_cines`
--

DROP TABLE IF EXISTS `vista_disponibilidad_salas_x_cines`;
/*!50001 DROP VIEW IF EXISTS `vista_disponibilidad_salas_x_cines`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_disponibilidad_salas_x_cines` AS SELECT 
 1 AS `id_cine`,
 1 AS `direccion`,
 1 AS `fecha_inauguracion`,
 1 AS `nombre_cine`,
 1 AS `precio_entrada`,
 1 AS `id_sala`,
 1 AS `capacidad`,
 1 AS `numero_sala`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_pelicula_informacion`
--

DROP TABLE IF EXISTS `vista_pelicula_informacion`;
/*!50001 DROP VIEW IF EXISTS `vista_pelicula_informacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_pelicula_informacion` AS SELECT 
 1 AS `id_pelicula`,
 1 AS `anio_estreno`,
 1 AS `disponible`,
 1 AS `duracion`,
 1 AS `fecha_ingreso`,
 1 AS `nombre_pelicula`,
 1 AS `titulo_original`,
 1 AS `calificacion`,
 1 AS `pais_de_origen`,
 1 AS `genero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_pelicula_ingles`
--

DROP TABLE IF EXISTS `vista_pelicula_ingles`;
/*!50001 DROP VIEW IF EXISTS `vista_pelicula_ingles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_pelicula_ingles` AS SELECT 
 1 AS `id_pelicula`,
 1 AS `anio_estreno`,
 1 AS `disponible`,
 1 AS `duracion`,
 1 AS `fecha_ingreso`,
 1 AS `nombre_pelicula`,
 1 AS `titulo_original`,
 1 AS `id_calificacion`,
 1 AS `id_pais_de_origen`,
 1 AS `id_genero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_peliculas_x_funciones`
--

DROP TABLE IF EXISTS `vista_peliculas_x_funciones`;
/*!50001 DROP VIEW IF EXISTS `vista_peliculas_x_funciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_peliculas_x_funciones` AS SELECT 
 1 AS `numero`,
 1 AS `dia_semana`,
 1 AS `duracion_funcion`,
 1 AS `hora_inicio`,
 1 AS `id_programacion`,
 1 AS `id_pelicula`,
 1 AS `id_sala`,
 1 AS `anio_estreno`,
 1 AS `disponible`,
 1 AS `nombre_pelicula`,
 1 AS `titulo_original`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_programacion_cine`
--

DROP TABLE IF EXISTS `vista_programacion_cine`;
/*!50001 DROP VIEW IF EXISTS `vista_programacion_cine`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_programacion_cine` AS SELECT 
 1 AS `id_programacion`,
 1 AS `fecha_fin`,
 1 AS `fecha_hora_creada`,
 1 AS `fecha_inicio`,
 1 AS `id_cine`,
 1 AS `direccion`,
 1 AS `fecha_inauguracion`,
 1 AS `nombre_cine`,
 1 AS `precio_entrada`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'cine'
--

--
-- Dumping routines for database 'cine'
--
/*!50003 DROP FUNCTION IF EXISTS `buscar_nombrepelicula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `buscar_nombrepelicula`(idpelicula int) RETURNS char(100) CHARSET utf8mb3
    DETERMINISTIC
begin	
    declare nombre_pelicula varchar(100);
    select nombre into nombre_pelicula 
    from pelicula 
    where id_pelicula = idpelicula;
    return nombre_pelicula;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `cantidadpelicula_x_genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cantidadpelicula_x_genero`(genero char(20)) RETURNS int
    DETERMINISTIC
begin
declare cantidad_genero int; 
	SELECT count(*) into cantidad_genero 
    FROM  pelicula p 
    JOIN  genero g 
		ON p.id_genero = g.id_genero
	WHERE g.nombre = genero;
return cantidad_genero;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_estructura_auditoria_peliculas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_estructura_auditoria_peliculas`()
begin
    CREATE TABLE log_pelicula_audi (
		id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
        id_pelicula int NOT NULL,
        anio_estreno int DEFAULT NULL,
        disponible tinyint NOT NULL,
        duracion int NOT NULL,
        fecha_ingreso date DEFAULT NULL,
        nombre varchar(100) NOT NULL,
        titulo_original varchar(100) DEFAULT NULL,
        id_calificacion int NOT NULL,
        id_pais_de_origen int NOT NULL,
        id_genero int NOT NULL,
        mensaje_auditoria varchar(100) DEFAULT NULL
        );
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `poner_mayusculas_nombrepeliculas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `poner_mayusculas_nombrepeliculas`()
begin
    UPDATE pelicula
    SET nombre = UPPER(nombre)
    WHERE id_pelicula > 0;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_disponibilidad_salas_x_cines`
--

/*!50001 DROP VIEW IF EXISTS `vista_disponibilidad_salas_x_cines`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_disponibilidad_salas_x_cines` AS select `c`.`id_cine` AS `id_cine`,`c`.`direccion` AS `direccion`,`c`.`fecha_inauguracion` AS `fecha_inauguracion`,`c`.`nombre` AS `nombre_cine`,`c`.`precio_entrada` AS `precio_entrada`,`s`.`id_sala` AS `id_sala`,`s`.`capacidad` AS `capacidad`,`s`.`numero` AS `numero_sala` from (`cine` `c` join `sala` `s` on((`c`.`id_cine` = `s`.`id_cine`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_pelicula_informacion`
--

/*!50001 DROP VIEW IF EXISTS `vista_pelicula_informacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_pelicula_informacion` AS select `p`.`id_pelicula` AS `id_pelicula`,`p`.`anio_estreno` AS `anio_estreno`,`p`.`disponible` AS `disponible`,`p`.`duracion` AS `duracion`,`p`.`fecha_ingreso` AS `fecha_ingreso`,`p`.`nombre` AS `nombre_pelicula`,`p`.`titulo_original` AS `titulo_original`,`c`.`nombre` AS `calificacion`,`po`.`nombre` AS `pais_de_origen`,`g`.`nombre` AS `genero` from (((`pelicula` `p` join `calificacion` `c` on((`p`.`id_calificacion` = `c`.`id_calificacion`))) join `paisdeorigen` `po` on((`p`.`id_pais_de_origen` = `po`.`id_pais_de_origen`))) join `genero` `g` on((`p`.`id_genero` = `g`.`id_genero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_pelicula_ingles`
--

/*!50001 DROP VIEW IF EXISTS `vista_pelicula_ingles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_pelicula_ingles` AS select `p`.`id_pelicula` AS `id_pelicula`,`p`.`anio_estreno` AS `anio_estreno`,`p`.`disponible` AS `disponible`,`p`.`duracion` AS `duracion`,`p`.`fecha_ingreso` AS `fecha_ingreso`,`p`.`nombre` AS `nombre_pelicula`,`p`.`titulo_original` AS `titulo_original`,`p`.`id_calificacion` AS `id_calificacion`,`p`.`id_pais_de_origen` AS `id_pais_de_origen`,`p`.`id_genero` AS `id_genero` from (`pelicula` `p` join `paisdeorigen` `po` on((`p`.`id_pais_de_origen` = `po`.`id_pais_de_origen`))) where (`po`.`idioma` = 'inglés') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_peliculas_x_funciones`
--

/*!50001 DROP VIEW IF EXISTS `vista_peliculas_x_funciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_peliculas_x_funciones` AS select `f`.`numero` AS `numero`,`f`.`dia_semana` AS `dia_semana`,`f`.`duracion` AS `duracion_funcion`,`f`.`hora_inicio` AS `hora_inicio`,`f`.`id_programacion` AS `id_programacion`,`f`.`id_pelicula` AS `id_pelicula`,`f`.`id_sala` AS `id_sala`,`pel`.`anio_estreno` AS `anio_estreno`,`pel`.`disponible` AS `disponible`,`pel`.`nombre` AS `nombre_pelicula`,`pel`.`titulo_original` AS `titulo_original` from (`funcion` `f` join `pelicula` `pel` on((`f`.`id_pelicula` = `pel`.`id_pelicula`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_programacion_cine`
--

/*!50001 DROP VIEW IF EXISTS `vista_programacion_cine`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_programacion_cine` AS select `p`.`id_programacion` AS `id_programacion`,`p`.`fecha_fin` AS `fecha_fin`,`p`.`fecha_hora_creada` AS `fecha_hora_creada`,`p`.`fecha_inicio` AS `fecha_inicio`,`p`.`id_cine` AS `id_cine`,`c`.`direccion` AS `direccion`,`c`.`fecha_inauguracion` AS `fecha_inauguracion`,`c`.`nombre` AS `nombre_cine`,`c`.`precio_entrada` AS `precio_entrada` from (`programacion` `p` join `cine` `c` on((`p`.`id_cine` = `c`.`id_cine`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27 20:41:33
