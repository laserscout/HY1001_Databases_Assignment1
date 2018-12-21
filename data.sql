-- MySQL dump 10.14  Distrib 5.5.57-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: EventDB
-- ------------------------------------------------------
-- Server version	5.5.57-MariaDB

DROP SCHEMA IF EXISTS `EventDB`;
CREATE SCHEMA `EventDB`;
USE `EventDB`;

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
-- Table structure for table `albums`
--

--
-- Dumping data for table `albums`
--

LOCK TABLES `Mousiki_ekdilosi` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `Ekdilosi` VALUES (8053,'Imiz-23rd Anniversary Live','Oxi','Hip hop Live','DJ Dean warm up set'),(8055,'Sunaulia Thanou Mikroutsikou','Oxi','Entexno tragoudi-Sunaulia','Miltos Pasxalidis')
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary table structure for view `all_performers_tracks`
--

LOCK TABLES `Athlitiki_ekdilosi` WRITE;
INSERT INTO `Athlitiki_ekdilosi` VALUES (4444,'Telikos Prwtathlimatos PAOK-Panathinaikos ','Nai','Basket'),(1235,'Provoli Live Telikou Roland Garros','Nai','Tennis'),(6969,'Manos’ Beerpong Challenge X
Erasmus','Oxi','Beerpong')
UNLOCK TABLES;


LOCK TABLES `Theatro` WRITE;
INSERT INTO `Theatro` VALUES (7777,'Oi Vakxes tou Euripidi ','Oxi','114'),(0666,'Stand up Comedy by George Carlin','Nai','74')
UNLOCK TABLES;

LOCK TABLES `Eisitirio` WRITE;
INSERT INTO `Eisitirio` VALUES (7777,'Foititiko','14'),(7777,'Enhlikwn','28'),(8053,'Enhlikwn','12'),(8055,'Foititiko','14'),
(8055,'Enhlikwn','18'),(4444,'Enhlikwn','10'), (1235,'Enhlikwn','4'), (0666,'Enhlikwn','30'), (0666,'Yperhlikwn','20'), (6969,'Enhlikwn','5')
UNLOCK TABLES;

LOCK TABLES `Fusiko_simeio_propolisis` WRITE;
INSERT INTO `Fusiko_simeio_propolisis` VALUES (12345,'Katasthma Public Tsimiski','2310227288','Tsimiski 24'),(14310,'Grammateia tmhmatos HMMY - Soula Glamorous','2310666666','Thessaloniki 54124')
UNLOCK TABLES;

LOCK TABLES `Propwlhsh` WRITE;
INSERT INTO `Propwlhsh` VALUES (12345, 7777), (12345, 0666),(12345, 8053),(12345, 8055),(14310,4444),(14310,1235),(14310,6969)
UNLOCK TABLES;

LOCK TABLES `Topothesia` WRITE;
INSERT INTO `Topothesia` VALUES (132435,'WE - Sports & culture facility','Nai','2310284700','3hs Septemvriou 3', 'Oxi', 4, 6, 7),
(532413,'Paok Sports Arena','Nai','2310192600','Pulaia-Xortiatis 555 35', 'Nai', NULL, NULL, NULL)
UNLOCK TABLES;

LOCK TABLES `Ekdilosi` WRITE;
INSERT INTO `Ekdilosi` VALUES (6969,'Manos’ Beerpong Challenge X Erasmus', 'Nai', 'Tharraleoi Foithtes', 'Try not to get shitfaced', 23/12/2018, 21:00, 132435, NULL, 72150),
(8053,'Imiz-23rd Anniversary Live', 'Nai', 'Humoristes kai Hiphopades', 'Pame oloi mazi se mia paralia', 20/03/2019, 21:00, 532413, 122333, 11888),
(8055,'Sunaulia Thanou Mikroutsikou', 'Nai', 'Eleutheroi kai xwrismenoi', 'Sunaulia', 18/06/2019, 20:30, 532413, 555551, 11888),
(4444,'Telikos Prwtathlimatos PAOK-Panathinaikos', 'Nai', 'Arrwsta Paokia kuriws', 'Mhn ta spasete ola ola', 10/03/2019, 19:30, 532413, 444444, 11888),
(1235,'Provoli Live Telikou Roland Garros', 'Nai', 'Filoi antisfairishs', 'Mpures sti misi timi', 29/05/2019, 16:30, 132435, NULL, 72150),
(7777,'Oi Vakxes tou Euripidi', 'Nai', 'Psagmena tupakia', 'Le culture Upsilo', 19/12/2018, 20:30, 532413, 192837, 11888),
(0666,'Stand Up comedy by George Carlin', 'Nai', 'Mh pareksigisiarides', 'One Last HBO special', 25/03/2019, 00:00, 532413, 382957, 72510)
UNLOCK TABLES;

LOCK TABLES `Kallitechnis-omada` WRITE;
INSERT INTO `Kallitechnis-omada` VALUES (122333, 'Athina-Ellada', 'Metzelos,Mirthidatis,Dj Dean'),
(555551, 'Ellada', 'Thanos Mikroutsikos'),
(444444, 'Ellada', 'Omada basket enhlikwn PAOK'),
(382957, 'USA cemetery', 'George Carlin’s Ghost'),
(192837, 'Ellada', 'Anoterh dramatiki sxolh Thessalonikis'),
UNLOCK TABLES;


LOCK TABLES `kallitechnis` WRITE;
INSERT INTO `kallitechnis` VALUES (555551, 'Entexno', 1947),(122333, 'Ellhniko hiphop', 1975)
UNLOCK TABLES;

LOCK TABLES `Diorganotis` WRITE;
INSERT INTO `Diorganotis` VALUES (72150, 'Party Animal Events', '6981811474', 'manoszisis@yahoo.gr', '3ebb9abf12d5b17...'),
(11888, 'Culture AE', '6979695949', 'og34582@mhrit.net', '2p3oroh2c3ri23i...')
UNLOCK TABLES;

LOCK TABLES `Xristis` WRITE;
INSERT INTO `Xristis` VALUES (006689, 'Frangisios Blanningios', 'pinkypromises@gmail.com', '82a545b150da45c...'),
(008055, 'Chrysiida Todorovic', 'cultureoverload@gmail.com', '2cur239vj293d...')
UNLOCK TABLES;

LOCK TABLES `Karta` WRITE;
INSERT INTO `Karta` VALUES (123456789999, 489, 006689, 'Provlhmatikou 6'), (999987654321, 987, 008055, 'komodias 21')
UNLOCK TABLES;

LOCK TABLES `Agora` WRITE;
INSERT INTO `Agora` VALUES (0666,006689, 'Yperhlikwn'), (8055, 008055, 'Efhviko'), (6969, 006689, 'Enhlikwn'), (4444, 008055, 'Enhlikwn')
UNLOCK TABLES;

LOCK TABLES `Endiaferon` WRITE;
INSERT INTO `Endiaferon` VALUES (4444, 008055), (1235, 006689), (6969, 006689), (0666, 006689), (8055, 008055)
UNLOCK TABLES;










