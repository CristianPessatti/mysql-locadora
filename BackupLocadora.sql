-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Locadora
-- ------------------------------------------------------
-- Server version	8.0.23

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

USE locadora;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cli_codigo` int NOT NULL,
  `cli_nome` varchar(30) DEFAULT NULL,
  `cli_cpf` char(12) DEFAULT NULL,
  `cli_data_nasc` date DEFAULT NULL,
  `cli_sexo` char(1) DEFAULT NULL,
  `cli_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cli_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Rati Beninca','060340203011','2010-11-28','M','rati.beninca@ifsc.edu.br'),(2,'ALBA DE OLIVEIRA','10564718670','2001-04-03','M','romulo.beninca@ifsc.edu.br'),(3,'Luis Inacio','11758883707','2005-12-15','M','romulo.beninca@ifsc.edu.br'),(4,'CARLA DE FREITAS CALDAS','15379237304','1986-04-20','F','romulo.beninca@ifsc.edu.br'),(5,'Zebedeu','24975104822','2001-06-24','M','romulo.beninca@ifsc.edu.br'),(6,'Maria TERESINHA FERRAZ','26372452804','1994-06-06','F','romulo.beninca@ifsc.edu.br'),(7,'Jao  da SILVA','30314957561','1990-03-29','M','romulo.beninca@ifsc.edu.br'),(8,'Pedro IVO FERNANDES','58650430724','1990-04-15','M','romulo.beninca@ifsc.edu.br'),(9,'Tiago BELELEU','88184662408','2008-07-10','M','romulo.beninca@ifsc.edu.br'),(10,'Samuel','20331872099','2000-11-16','M','romulo.beninca@ifsc.edu.br'),(11,'Tito  FRANCESLI NEGRI REIS','88846475178','1986-12-21','M','romulo.beninca@ifsc.edu.br'),(12,'Gabriel simoes','25852622354','1993-03-10','M','romulo.beninca@ifsc.edu.br'),(13,'Pedro Ivo','12064604820','1988-08-25','M','romulo.beninca@ifsc.edu.br'),(14,'Roberto das dores','57382461602','2001-11-24','M','romulo.beninca@ifsc.edu.br'),(15,'Albertinho','2210163927','1999-08-07','M','romulo.beninca@ifsc.edu.br'),(16,'FABCIO PAGANI POSSAMAI','90887980520','1998-08-01','M','romulo.beninca@ifsc.edu.br'),(17,'MARIA VENDRAMINI KAULING','90887980520','1989-03-14','F','romulo.beninca@ifsc.edu.br'),(100,'Leonidas','0000000000','1999-02-01','M','romulo.beninca@ifsc.edu.br'),(10001,'Bernardo',NULL,NULL,NULL,'romulo.beninca@ifsc.edu.br'),(10002,'Bernardo',NULL,NULL,NULL,'romulo.beninca@ifsc.edu.br'),(10003,'Bernardo',NULL,NULL,NULL,'romulo.beninca@ifsc.edu.br'),(10004,'Maria Clara',NULL,NULL,NULL,'romulo.beninca@ifsc.edu.br');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregados`
--

DROP TABLE IF EXISTS `empregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregados` (
  `emp_codigo` int NOT NULL,
  `emp_nome` varchar(255) NOT NULL,
  `emp_salario` decimal(7,2) NOT NULL,
  `emp_admissao` date NOT NULL,
  `emp_cargo` varchar(100) NOT NULL,
  `cod_dep` int NOT NULL,
  PRIMARY KEY (`emp_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregados`
--

LOCK TABLES `empregados` WRITE;
/*!40000 ALTER TABLE `empregados` DISABLE KEYS */;
INSERT INTO `empregados` VALUES (1,'Romulo Beninca',1200.00,'2014-05-22','Vendedor',2),(2,'Fernando Roberto',1800.00,'2010-11-01','gerente',1),(3,'Tamer',1350.00,'2014-06-30','financeiro',3),(4,'Mateus',1498.50,'2012-05-20','Vendedor',2),(5,'Jefferson Trem ',2850.00,'2013-06-18','publicitario',4),(6,'Bruno ',1425.00,'2013-03-19','vendedor',2),(7,'Andreu ',1395.00,'2015-10-01','vendedor',2);
/*!40000 ALTER TABLE `empregados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `fil_codigo` int NOT NULL,
  `fil_titulo` varchar(40) DEFAULT NULL,
  `fil_genero` varchar(15) DEFAULT NULL,
  `fil_duracao` time DEFAULT NULL,
  `fil_situacao` varchar(12) DEFAULT NULL,
  `fil_preco` decimal(3,2) DEFAULT NULL,
  `fil_valor_compra` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`fil_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'O vento levou -Filme','romance','06:00:00','DISPONIVEL',7.85,NULL),(2,'Homem de Ferro 2 -Filme','avnetura','02:00:00','DISPONIVEL',1.22,NULL),(3,'Depois da Quela viajem  -Filme','drama','01:20:00','DISPONIVEL',5.17,NULL),(4,'Se Beber não case -Filme','comédia','01:40:00','DISPONIVEL',3.88,NULL),(5,'Transendence  -Filme','ficção','01:55:00','DISPONIVEL',4.87,NULL);
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacao` (
  `loc_codigo` int DEFAULT NULL,
  `loc_datalocacao` datetime DEFAULT NULL,
  `loc_devolucao` datetime DEFAULT NULL,
  `cli_codigo` int DEFAULT NULL,
  `cli_filme` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 15:18:51
