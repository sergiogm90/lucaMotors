CREATE DATABASE  IF NOT EXISTS `proyecto1bbdd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `proyecto1bbdd`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto1bbdd
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Usuario_idUsuarios` int(11) NOT NULL,
  PRIMARY KEY (`idAdministrador`,`Usuario_idUsuarios`),
  KEY `fk_Administrador_Usuario1_idx` (`Usuario_idUsuarios`),
  CONSTRAINT `fk_Administrador_Usuario1` FOREIGN KEY (`Usuario_idUsuarios`) REFERENCES `usuario` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'admin','admin','1234',1);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linea`
--

DROP TABLE IF EXISTS `linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linea` (
  `Moto_idMoto` int(11) NOT NULL,
  `Pedido_idPedido` int(11) NOT NULL,
  `idLinea` int(11) NOT NULL,
  PRIMARY KEY (`Moto_idMoto`,`Pedido_idPedido`,`idLinea`),
  KEY `fk_Moto_has_Pedido_Pedido1_idx` (`Pedido_idPedido`,`idLinea`),
  KEY `fk_Moto_has_Pedido_Moto_idx` (`Moto_idMoto`),
  CONSTRAINT `fk_Moto_has_Pedido_Moto` FOREIGN KEY (`Moto_idMoto`) REFERENCES `moto` (`idMoto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Moto_has_Pedido_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea`
--

LOCK TABLES `linea` WRITE;
/*!40000 ALTER TABLE `linea` DISABLE KEYS */;
/*!40000 ALTER TABLE `linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moto`
--

DROP TABLE IF EXISTS `moto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moto` (
  `idMoto` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `largo` double NOT NULL,
  `ancho` double NOT NULL,
  `alto` double NOT NULL,
  `peso` double NOT NULL,
  `capDeposito` double NOT NULL,
  `modMotor` varchar(45) NOT NULL,
  `modChasis` varchar(45) NOT NULL,
  `modSuspension` varchar(45) NOT NULL,
  `modRuedas` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `fotoMoto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMoto`),
  UNIQUE KEY `modelo_UNIQUE` (`modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moto`
--

LOCK TABLES `moto` WRITE;
/*!40000 ALTER TABLE `moto` DISABLE KEYS */;
INSERT INTO `moto` VALUES (1,'Yamaha','MT-07','azul',2085,745,1090,182,14,'2 cilindros, 689 cc','Diamante','Horquilla convencional / Monoamortiguador','120/70 ZR17 /  180/55 ZR17',6799,'img/motos/yamahaMT07.jpg'),(2,'Yamaha','Super Ténéré','azul',2250,980,1410,257,23,'2 cilindros, 1.199 cc','Viga de tubo de acero','Horquilla invertida / Monoamortiguador','110/80 R19 / 150/70 R17',14699,'img/motos/yamahaSuperTenere.jpg'),(3,'Ducati','Hipermotard 939','blanco',2120,895,1155,204,16,'2 cilindros, 937 cc','Tubular','Horquilla invertida / Monoamortiguador','120/70 ZR17 / 180/55 ZR17',12040,'img/motos/ducatiHypermotard.jpg'),(4,'Suzuki','V-Storm 1000','rojo',2285,865,1410,228,20,'2 cilindros, 1.037 cc','Doble cuna','Horquilla invertida / Monoamortiguador','110/80 R19 / 150/70 R17',12699,'img/motos/suzukiVstorm.png'),(5,'BMW','F 800 GS','blanco',2300,945,1345,217,19,'2 cilindros, 798 cc','Tridimensional de tubo de acero','Horquilla invertida / Monoamortiguador','90/90 - 21 54V / 150/70 - 17 69V',11535,'img/motos/bmwF800.jpg'),(8,'KTM','690 Duke R','negro',2066,880,1057,147.5,14,'1 cilindro, 690cc','Tubular','Horquilla invertida / Monoamortiguador','120/70 ZR17 / 180/55 ZR17',9999,'img/motos/ktmDuke690.jpg'),(11,'Honda','CRF 450 R','rojo',2191,827,1271,111,6.4,'1 cilindro, 449cc','Doble cuna','Horquilla invertida / Monoamortiguador','80/100-21 / 120/80-19',7999,'img/motos/hondaCRF450.png'),(17,'Yamaha','XSR900','gris',2075,815,1135,195,14,'3 cilindros, 847cc','Diamante','Horquilla invertida / Monoamortiguador','120/70 ZR17 / 180/55 ZR17',13199,'img/motos/yamahaXSR900.jpg'),(18,'Yamaha','XV950 Racer','gris',2295,775,1160,251,12,'2 cilindros, 942cc','Doble cuna','Horquilla invertida / Monoamortiguador','100/90-19 / 150/80-16',9099,'img/motos/yamahaXV950.jpg'),(19,'KTM','1090 Adventure','blanco',2200,870,1560,202,23,'2 cilindros, 1050cc','Multitubular','Horquilla invertida / Monoamortiguador','110/80 R19 / 150/70 R17',12990,'img/motos/KTM1090adventure.jpg');
/*!40000 ALTER TABLE `moto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `costeTotal` double NOT NULL,
  `direccionEnvio` varchar(45) NOT NULL,
  `Usuario_idUsuarios` int(11) NOT NULL,
  PRIMARY KEY (`idPedido`,`Usuario_idUsuarios`),
  KEY `fk_Pedido_Usuario1_idx` (`Usuario_idUsuarios`),
  CONSTRAINT `fk_Pedido_Usuario1` FOREIGN KEY (`Usuario_idUsuarios`) REFERENCES `usuario` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  PRIMARY KEY (`idUsuarios`),
  UNIQUE KEY `dni_UNIQUE` (`dni`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'02345678A','Perico','Eldelos','Palotes','C/ Sin numero 4','655123789','a@gmail.com','pass1','1991-02-01'),(2,'01234567J','Juan','Perez','Gomez','calle centromar','665123456','b@gmail.com','pass1234','1990-08-02'),(4,'34567891J','Jose Javier','giron','fortes','C/ calle','654123789','jj@gmail.com','admin','1990-08-03'),(5,'04567893g','Juancar','garcia','perez','avenida 2','369258147','jc@gmail.com','eljefe','1990-07-02'),(7,'20145987A','khgvv nnn','kook','hgfrrrr','qwert','5478521','ajskldfja@alsjdf.aks','khg','1598-01-01'),(8,'45636925J','Paco','asfsgd','dfbhd','sddh','25601','paco@gmail.com','1234','1965-05-02'),(11,'03652147J','Jaime','uno','dos','ronda','123456798','c@gmail.com','A123456a','2017-06-23'),(12,'1354df','amigo','amigo','amigo','hola','321654','asoimb','a','2017-06-07'),(14,'zsdb','asdav','zdffbn','zdfn','zdn','235','sg','zdh','2017-06-14');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-03 14:53:55
