CREATE DATABASE  IF NOT EXISTS `saep_gabriel_julia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `saep_gabriel_julia`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: saep_gabriel_julia
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `automoveis_alocacao`
--

DROP TABLE IF EXISTS `automoveis_alocacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automoveis_alocacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(256) NOT NULL,
  `preco` varchar(256) NOT NULL,
  `quantidade` int NOT NULL,
  `id_automovel` int NOT NULL,
  `id_concessionaria` int NOT NULL,
  `area` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_concessionaria` (`id_concessionaria`),
  CONSTRAINT `automoveis_alocacao_ibfk_1` FOREIGN KEY (`id_concessionaria`) REFERENCES `concessionarias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automoveis_alocacao`
--

LOCK TABLES `automoveis_alocacao` WRITE;
/*!40000 ALTER TABLE `automoveis_alocacao` DISABLE KEYS */;
INSERT INTO `automoveis_alocacao` VALUES (1,'	Fiat Strada	','	 R$ 43.115,00 	 ',8,1,1,1),(2,'	Fiat Argo	','	 R$ 47.660,00 	 ',1,2,2,2),(3,'	Fiat Mobi	','	 R$ 32.102,00 	 ',4,3,3,4),(4,'	Jeep Compass	','	 R$ 34.950,00 	 ',5,4,4,7),(5,'	Hyundai HB20	','	 R$ 49.302,00 	 ',4,5,5,8),(6,'	Jeep Renegade	','	 R$ 36.661,00 	 ',4,6,1,9),(7,'	Volkswagen T-Cross	','	 R$ 38.182,00 	 ',1,7,2,10),(8,'	Fiat Toro	','	 R$ 57.733,00 	 ',7,8,2,1),(9,'	Hyundai Creta	','	 R$ 55.998,00 	 ',2,9,3,2),(10,'	Chevrolet S10	','	 R$ 51.035,00 	 ',6,10,4,4),(11,'	Toyota Corolla Cross	','	 R$ 34.544,00 	 ',3,11,5,7),(12,'	Toyota Hilux	','	 R$ 53.937,00 	 ',9,12,1,8),(13,'	Toyota Corolla	','	 R$ 55.022,00 	 ',8,13,2,9),(14,'	Volkswagen Gol	','	 R$ 48.253,00 	 ',6,14,3,10),(15,'	Honda HR-V	','	 R$ 53.438,00 	 ',3,15,3,1),(16,'	Renault Kwid	','	 R$ 31.810,00 	 ',1,16,4,2),(17,'	Volkswagen Nivus	','	 R$ 35.104,00 	 ',7,17,5,4),(18,'	Hyundai HB20S	','	 R$ 31.855,00 	 ',3,18,1,7),(19,'	Ford Ranger	','	 R$ 48.927,00 	 ',9,19,2,8),(20,'	Fiat Uno	','	 R$ 38.111,00 	 ',9,20,3,9),(21,'	Fiat Cronos	','	 R$ 36.515,00 	 ',6,21,4,10),(22,'	Citroën C4 Cactus	','	 R$ 53.654,00 	 ',1,22,4,1),(23,'	Toyota Yaris Hatchback	','	 R$ 55.869,00 	 ',5,23,5,2),(24,'	Volkswagen Voyage	','	 R$ 30.954,00 	 ',1,24,1,4),(25,'	Honda Civic	','	 R$ 30.871,00 	 ',2,25,2,7),(26,'	Volkswagen Saveiro	','	 R$ 32.306,00 	 ',3,26,3,8),(27,'	Caoa Chery Tiggo 5x	','	 R$ 30.069,00 	 ',8,27,4,9),(28,'	Volkswagen Virtus	','	 R$ 40.689,00 	 ',1,28,5,10),(29,'	Fiat Grand Siena	','	 R$ 33.469,00 	 ',2,29,1,1),(30,'	Caoa Chery Tiggo 8	','	 R$ 48.481,00 	 ',3,30,2,2),(31,'	Chevrolet Tracker	','	 R$ 30.648,00 	 ',4,31,3,4),(32,'	Peugeot 208	','	 R$ 46.934,00 	 ',2,32,4,7),(33,'	Toyota SW4	','	 R$ 54.252,00 	 ',1,33,5,8),(34,'	Nissan Frontier	','	 R$ 32.596,00 	 ',4,34,1,9),(35,'	Honda WR-V	','	 R$ 35.139,00 	 ',3,35,2,10),(36,'	Volkswagen Taos	','	 R$ 47.546,00 	 ',2,36,3,1),(37,'	Mitsubishi L200	','	 R$ 57.049,00 	 ',3,37,4,2),(38,'	Renault Oroch	','	 R$ 48.756,00 	 ',3,38,5,4),(39,'	Toyota Yaris Sedan	','	 R$ 43.077,00 	 ',2,39,1,7),(40,'	Renault Duster	','	 R$ 52.641,00 	 ',1,40,2,8);
/*!40000 ALTER TABLE `automoveis_alocacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'    Adalberto Martins da Silva    '),(2,'    Adan Roger Guimarães Dias    '),(3,'    Adão Walter Gomes de Sousa    '),(4,'    Adelson Fernandes Sena    '),(5,'    Ademir Augusto Simões    '),(6,'    Ademir Borges dos Santos    '),(7,'    Adilio José da Silva Santos    '),(8,'    Adriana Ferreira de Lima Teodoro    '),(9,'    Adriano Bezerra Apolinario    '),(10,'    Adriano Heleno Basso    '),(11,'    Adriano Lourenço do Rego    '),(12,'    Adriano Matos Santos    '),(13,'    Adriano Pires Caetano    '),(14,'    Adriano Prada de Campos    '),(15,'    Adriel Alberto dos Santos    '),(16,'    Agner Vinicius Marques de Camargo    '),(17,'    Agrinaldo Ferreira Soares    '),(18,'    Alan Jhonnes Banlian da Silva e Sá    '),(19,'    Alberto Ramos Rodrigues    '),(20,'    Alcides José Ramos    '),(21,'    Aldemir SantAna dos Santos    '),(22,'    Aleksandro Marcelo da Silva    '),(23,'    Alessandro Martins Silva    '),(24,'    Alessandro Sanches    '),(25,'    Alex dos Reis de Jesus    '),(26,'    Alex Ferreira Soares    '),(27,'    Alex Sandro Oliveira    '),(28,'    Alex Souza Farias    '),(29,'    Alexandra de Lima Silva    '),(30,'    Alexandre Clemente da Costa    ');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concessionarias`
--

DROP TABLE IF EXISTS `concessionarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concessionarias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concessionarias`
--

LOCK TABLES `concessionarias` WRITE;
/*!40000 ALTER TABLE `concessionarias` DISABLE KEYS */;
INSERT INTO `concessionarias` VALUES (1,'	Atena concessionária	'),(2,'	Demétir concessionária	'),(3,'	Hera concessionária	'),(4,'	Estia concessionária	'),(5,'	Perséfone concessionária	');
/*!40000 ALTER TABLE `concessionarias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-24 12:23:37
