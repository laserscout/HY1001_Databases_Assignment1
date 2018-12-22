DROP SCHEMA IF NOT EXISTS `EventDB`;
CREATE SCHEMA `EventDB` /*!40100 DEFAULT CHARACTER SET ucs2 */;
USE `EventDB`;
-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: 127.0.0.1    Database: EventDB
-- ------------------------------------------------------
-- Server version	5.5.61-MariaDB-1ubuntu0.14.04.1

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
-- Table structure for table `Agora`
--

DROP TABLE IF EXISTS `Agora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Agora` (
  `kodikos_ekdilosis` int(11) NOT NULL,
  `kodikos_xristi` int(11) NOT NULL,
  `tupos_eisitiriou` varchar(10) NOT NULL,
  PRIMARY KEY (`kodikos_ekdilosis`,`kodikos_xristi`),
  KEY `fk_Agora_xristis_idx` (`kodikos_xristi`),
  KEY `fk_Agora_eisitirio_idx` (`kodikos_ekdilosis`,`tupos_eisitiriou`),
  CONSTRAINT `fk_Agora_eisitirio` FOREIGN KEY (`kodikos_ekdilosis`, `tupos_eisitiriou`) REFERENCES `Eisitirio` (`kodikos_ekdilosis`, `typos_eisitiriou`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Agora_xristis` FOREIGN KEY (`kodikos_xristi`) REFERENCES `Xristis` (`kodikos_xristi`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Agora`
--

LOCK TABLES `Agora` WRITE;
/*!40000 ALTER TABLE `Agora` DISABLE KEYS */;
INSERT INTO `Agora` VALUES (666,6689,'Υπερήλικων'),(4444,8055,'Ενηλίκων'),(6969,6689,'Ενηλίκων'),(8055,8055,'Φοιτητικό');
/*!40000 ALTER TABLE `Agora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Athlitiki_ekdilosi`
--

DROP TABLE IF EXISTS `Athlitiki_ekdilosi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Athlitiki_ekdilosi` (
  `kodikos_ekdilosis` int(11) NOT NULL COMMENT '	',
  `uparksi_theseon_VIP` enum('Nai','Oxi') NOT NULL,
  `athlima` varchar(140) NOT NULL,
  PRIMARY KEY (`kodikos_ekdilosis`),
  CONSTRAINT `fk_Athlitiki_ekdilosi_ekdilosi` FOREIGN KEY (`kodikos_ekdilosis`) REFERENCES `Ekdilosi` (`kodikos_ekdilosis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Athlitiki_ekdilosi`
--

LOCK TABLES `Athlitiki_ekdilosi` WRITE;
/*!40000 ALTER TABLE `Athlitiki_ekdilosi` DISABLE KEYS */;
INSERT INTO `Athlitiki_ekdilosi` VALUES (1235,'Nai','Τένις'),(4444,'Nai','Μπάσκετ'),(6969,'Oxi','Beerpong');
/*!40000 ALTER TABLE `Athlitiki_ekdilosi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Diorg`
--

DROP TABLE IF EXISTS `Diorg`;
/*!50001 DROP VIEW IF EXISTS `Diorg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Diorg` AS SELECT 
 1 AS `kodikos_diorganoti`,
 1 AS `onoma_etairias`,
 1 AS `email`,
 1 AS `tilefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Diorganotis`
--

DROP TABLE IF EXISTS `Diorganotis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Diorganotis` (
  `kodikos_diorganoti` int(11) NOT NULL,
  `onoma_etairias` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tilefono` varchar(14) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`kodikos_diorganoti`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diorganotis`
--

LOCK TABLES `Diorganotis` WRITE;
/*!40000 ALTER TABLE `Diorganotis` DISABLE KEYS */;
INSERT INTO `Diorganotis` VALUES (11888,'Culture AE','og34582@mhrit.net','6979695949','2p3oroh2c3ri23i'),(72150,'Party Animal Events','manoszisis@yahoo.gr','6981811474','3ebb9abf12d5b17');
/*!40000 ALTER TABLE `Diorganotis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Eisitirio`
--

DROP TABLE IF EXISTS `Eisitirio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Eisitirio` (
  `kodikos_ekdilosis` int(11) NOT NULL,
  `timi` decimal(4,2) unsigned NOT NULL,
  `typos_eisitiriou` varchar(10) NOT NULL,
  PRIMARY KEY (`kodikos_ekdilosis`,`typos_eisitiriou`),
  CONSTRAINT `fk_Eisitirio_ekdilosi` FOREIGN KEY (`kodikos_ekdilosis`) REFERENCES `Ekdilosi` (`kodikos_ekdilosis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eisitirio`
--

LOCK TABLES `Eisitirio` WRITE;
/*!40000 ALTER TABLE `Eisitirio` DISABLE KEYS */;
INSERT INTO `Eisitirio` VALUES (666,30.00,'Ενηλίκων'),(666,20.00,'Υπερήλικων'),(1235,4.00,'Ενηλίκων'),(4444,10.00,'Ενηλίκων'),(6969,5.00,'Ενηλίκων'),(7777,28.00,'Ενηλίκων'),(7777,14.00,'Φοιτητικό'),(8053,12.00,'Ενηλίκων'),(8055,18.00,'Ενηλίκων'),(8055,14.00,'Φοιτητικό');
/*!40000 ALTER TABLE `Eisitirio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ekdilosi`
--

DROP TABLE IF EXISTS `Ekdilosi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ekdilosi` (
  `kodikos_ekdilosis` int(11) NOT NULL,
  `onoma_ekdilosis` varchar(40) NOT NULL,
  `urparksi_eisitiriou` enum('Nai','Oxi') NOT NULL,
  `koino_pou_apeuthunetai` varchar(40) NOT NULL,
  `perigrafi` varchar(140) NOT NULL,
  `imerominia` date NOT NULL,
  `ora_enarksis` time(4) NOT NULL,
  `kodikos_topothesias` int(11) DEFAULT NULL,
  `kodikos_ermineuti` int(11) DEFAULT NULL,
  `kodikos_diorganoti` int(11) NOT NULL,
  PRIMARY KEY (`kodikos_ekdilosis`),
  KEY `fk_Ekdilosi_1_idx` (`kodikos_topothesias`),
  KEY `fk_Ekdilosi_2_idx` (`kodikos_ermineuti`),
  KEY `fk_Ekdilosi_3_idx` (`kodikos_diorganoti`),
  CONSTRAINT `fk_Ekdilosi_topothesia` FOREIGN KEY (`kodikos_topothesias`) REFERENCES `Topothesia` (`kodikos_topothesias`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_Ekdilosi_k-o` FOREIGN KEY (`kodikos_ermineuti`) REFERENCES `Kallitechnis-omada` (`kodikos_ermineuti`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_Ekdilosi_diorganotis` FOREIGN KEY (`kodikos_diorganoti`) REFERENCES `Diorganotis` (`kodikos_diorganoti`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ekdilosi`
--

LOCK TABLES `Ekdilosi` WRITE;
/*!40000 ALTER TABLE `Ekdilosi` DISABLE KEYS */;
INSERT INTO `Ekdilosi` VALUES (666,'Stand up Comedy by George Carlin','Nai','Μη παρεξηγησιάρηδες','One Last HBO Special','2019-03-25','00:00:00.0000',532413,382957,72150),(1235,'Προβολή Live Τελικού Roldand Garros','Nai','Φίλοι Αντισφαίρισης','Μπύρες στη μισή τιμή','2019-05-29','16:30:00.0000',132435,NULL,72150),(4444,'Τελικός Πρωταθλήματος ΠΑΟΚ - Παναθηναϊκό','Nai','Άρρωστα παόκια κυρίως','Μην τα σπάσετε όλα όλα','2019-03-10','19:30:00.0000',532413,444444,11888),(6969,'Manos\' Beerpong Challenge X Erasmus','Nai','Θαρραλέοι Φοιτητές','Try to not get shitfaced','2018-12-23','21:00:00.0000',132435,NULL,72150),(7777,'Οι Βάκχες του Ευρυπίδη','Nai','Ψαγμένα τυπάκια','Λε κουλτουρ Υψηλό','2018-12-19','20:30:00.0000',532413,192837,11888),(8053,'Ημισκούμπρια - 23rd Anniversary Live','Nai','Χιουμορίστες και Χιπχοπάδες','Πάμε όλοι μαζί σε μια παραλία','2019-03-20','21:00:00.0000',532413,122333,11888),(8055,'Συναυλία Θάνου Μικρούτσικου','Nai','Ελεύθεροι και χωρισμένοι','Συναυλία','2019-06-18','20:30:00.0000',532413,555551,11888);
/*!40000 ALTER TABLE `Ekdilosi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Ekdilosi-Athlitiki`
--

DROP TABLE IF EXISTS `Ekdilosi-Athlitiki`;
/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Athlitiki`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Ekdilosi-Athlitiki` AS SELECT 
 1 AS `kodikos_ekdilosis`,
 1 AS `onoma_ekdilosis`,
 1 AS `urparksi_eisitiriou`,
 1 AS `koino_pou_apeuthunetai`,
 1 AS `perigrafi`,
 1 AS `imerominia`,
 1 AS `ora_enarksis`,
 1 AS `uparksi_theseon_VIP`,
 1 AS `athlima`,
 1 AS `kodikos_topothesias`,
 1 AS `kodikos_ermineuti`,
 1 AS `kodikos_diorganoti`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Ekdilosi-Mousiki`
--

DROP TABLE IF EXISTS `Ekdilosi-Mousiki`;
/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Mousiki`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Ekdilosi-Mousiki` AS SELECT 
 1 AS `kodikos_ekdilosis`,
 1 AS `onoma_ekdilosis`,
 1 AS `urparksi_eisitiriou`,
 1 AS `koino_pou_apeuthunetai`,
 1 AS `perigrafi`,
 1 AS `imerominia`,
 1 AS `ora_enarksis`,
 1 AS `uparksi_theseon_kathimenon`,
 1 AS `eidos`,
 1 AS `opening_act`,
 1 AS `kodikos_topothesias`,
 1 AS `kodikos_ermineuti`,
 1 AS `kodikos_diorganoti`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Ekdilosi-Plain`
--

DROP TABLE IF EXISTS `Ekdilosi-Plain`;
/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Plain`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Ekdilosi-Plain` AS SELECT 
 1 AS `kodikos_ekdilosis`,
 1 AS `onoma_ekdilosis`,
 1 AS `urparksi_eisitiriou`,
 1 AS `koino_pou_apeuthunetai`,
 1 AS `perigrafi`,
 1 AS `imerominia`,
 1 AS `ora_enarksis`,
 1 AS `kodikos_topothesias`,
 1 AS `kodikos_ermineuti`,
 1 AS `kodikos_diorganoti`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Ekdilosi-Quick`
--

DROP TABLE IF EXISTS `Ekdilosi-Quick`;
/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Quick`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Ekdilosi-Quick` AS SELECT 
 1 AS `kodikos_ekdilosis`,
 1 AS `onoma_ekdilosis`,
 1 AS `imerominia`,
 1 AS `onoma_topothesias`,
 1 AS `onoma`,
 1 AS `onoma_etairias`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Ekdilosi-Theatro`
--

DROP TABLE IF EXISTS `Ekdilosi-Theatro`;
/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Theatro`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Ekdilosi-Theatro` AS SELECT 
 1 AS `kodikos_ekdilosis`,
 1 AS `onoma_ekdilosis`,
 1 AS `urparksi_eisitiriou`,
 1 AS `koino_pou_apeuthunetai`,
 1 AS `perigrafi`,
 1 AS `imerominia`,
 1 AS `ora_enarksis`,
 1 AS `uparksi_theseon_VIP`,
 1 AS `diarkeia`,
 1 AS `kodikos_topothesias`,
 1 AS `kodikos_ermineuti`,
 1 AS `kodikos_diorganoti`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Endiaferon`
--

DROP TABLE IF EXISTS `Endiaferon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Endiaferon` (
  `kodikos_ekdilosis` int(11) NOT NULL,
  `kodikos_xristi` int(11) NOT NULL,
  PRIMARY KEY (`kodikos_ekdilosis`,`kodikos_xristi`),
  KEY `fk_Endiaferon_xristis_idx` (`kodikos_xristi`),
  CONSTRAINT `fk_Endiaferon_ekdilosi` FOREIGN KEY (`kodikos_ekdilosis`) REFERENCES `Ekdilosi` (`kodikos_ekdilosis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Endiaferon_xristis` FOREIGN KEY (`kodikos_xristi`) REFERENCES `Xristis` (`kodikos_xristi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Endiaferon`
--

LOCK TABLES `Endiaferon` WRITE;
/*!40000 ALTER TABLE `Endiaferon` DISABLE KEYS */;
INSERT INTO `Endiaferon` VALUES (666,6689),(1235,6689),(4444,8055),(6969,6689),(8055,8055);
/*!40000 ALTER TABLE `Endiaferon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fusiko_simeio_propolisis`
--

DROP TABLE IF EXISTS `Fusiko_simeio_propolisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fusiko_simeio_propolisis` (
  `kodikos_simeiou` int(11) NOT NULL,
  `onoma_simeiou` varchar(40) NOT NULL,
  `tilefono` varchar(14) DEFAULT NULL,
  `dieuthunsi` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`kodikos_simeiou`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fusiko_simeio_propolisis`
--

LOCK TABLES `Fusiko_simeio_propolisis` WRITE;
/*!40000 ALTER TABLE `Fusiko_simeio_propolisis` DISABLE KEYS */;
INSERT INTO `Fusiko_simeio_propolisis` VALUES (12345,'Καταστήματα Public Τσιμισκή','2310227288','Τσιμισκή 24'),(14310,'Γραμματεία Τμήματος ΗΜΜΥ - Σούλα Γκλάμου','2310666666','Θεσσαλονίκη 54124');
/*!40000 ALTER TABLE `Fusiko_simeio_propolisis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kallitechnis`
--

DROP TABLE IF EXISTS `Kallitechnis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kallitechnis` (
  `kodikos_ermineuti` int(11) NOT NULL,
  `eidos` varchar(40) NOT NULL,
  `imerominia_gennisis` date DEFAULT NULL,
  PRIMARY KEY (`kodikos_ermineuti`),
  CONSTRAINT `fk_kallitechnis` FOREIGN KEY (`kodikos_ermineuti`) REFERENCES `Kallitechnis-omada` (`kodikos_ermineuti`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kallitechnis`
--

LOCK TABLES `Kallitechnis` WRITE;
/*!40000 ALTER TABLE `Kallitechnis` DISABLE KEYS */;
INSERT INTO `Kallitechnis` VALUES (122333,'Ελληνικό Hip Hop','0000-00-00'),(555551,'Έντεχνο','0000-00-00');
/*!40000 ALTER TABLE `Kallitechnis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kallitechnis-omada`
--

DROP TABLE IF EXISTS `Kallitechnis-omada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kallitechnis-omada` (
  `kodikos_ermineuti` int(11) NOT NULL,
  `onoma` varchar(40) NOT NULL,
  `katagogi` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kodikos_ermineuti`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kallitechnis-omada`
--

LOCK TABLES `Kallitechnis-omada` WRITE;
/*!40000 ALTER TABLE `Kallitechnis-omada` DISABLE KEYS */;
INSERT INTO `Kallitechnis-omada` VALUES (122333,'Μετζέλος, Μιρθιδάτης, Dj Πρύτανης','Αθήνα - Ελλάδα'),(192837,'Ανώτερη Δραματική Σχολή Θεσσαλονίκης','Ελλάδα'),(382957,'George Carlin\'s Ghost','USA cemetery'),(444444,'Ομάδα Μπάσκετ Ενηλίκων ΠΑΟΚ','Ελλάδα'),(555551,'Θάνος Μικρούτσικος','Ελλάδα');
/*!40000 ALTER TABLE `Kallitechnis-omada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Karta`
--

DROP TABLE IF EXISTS `Karta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Karta` (
  `arithmos_kartas` decimal(16,0) unsigned NOT NULL,
  `arithmos_asfaleias` decimal(3,0) unsigned NOT NULL,
  `dieuthunsi` varchar(35) NOT NULL,
  `kodikos_xristi` int(11) NOT NULL,
  PRIMARY KEY (`arithmos_kartas`),
  KEY `fk_Karta_xristis_idx` (`kodikos_xristi`),
  CONSTRAINT `fk_Karta_xristis` FOREIGN KEY (`kodikos_xristi`) REFERENCES `Xristis` (`kodikos_xristi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Karta`
--

LOCK TABLES `Karta` WRITE;
/*!40000 ALTER TABLE `Karta` DISABLE KEYS */;
INSERT INTO `Karta` VALUES (123456789999,489,'Προβληματικού 6',6689),(999987654321,987,'κωμωδίας 21',8055);
/*!40000 ALTER TABLE `Karta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mousiki_ekdilosi`
--

DROP TABLE IF EXISTS `Mousiki_ekdilosi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mousiki_ekdilosi` (
  `kodikos_ekdilosis` int(11) NOT NULL,
  `onoma` varchar(40) NOT NULL,
  `uparksi_theseon_kathimenon` enum('Nai','Oxi') NOT NULL,
  `eidos` varchar(140) DEFAULT NULL,
  `opening_act` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kodikos_ekdilosis`),
  CONSTRAINT `fk_Mousiki_ekdilosi_ekdilosi` FOREIGN KEY (`kodikos_ekdilosis`) REFERENCES `Ekdilosi` (`kodikos_ekdilosis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mousiki_ekdilosi`
--

LOCK TABLES `Mousiki_ekdilosi` WRITE;
/*!40000 ALTER TABLE `Mousiki_ekdilosi` DISABLE KEYS */;
INSERT INTO `Mousiki_ekdilosi` VALUES (8053,'Ημισκούμπρια - 23rd Anniversary Live','Oxi','Hip hop Live','DJ Πρύτανης warm up set'),(8055,'Συναυλία Θάνου Μικρούτσικου','Oxi','Έντεχνο τραγούδι - Συναυλία','Μίλτος Πασχαλίδης');
/*!40000 ALTER TABLE `Mousiki_ekdilosi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Omada`
--

DROP TABLE IF EXISTS `Omada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Omada` (
  `kodikos_ermineuti` int(11) NOT NULL,
  `onoma_upeuthunou` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kodikos_ermineuti`),
  CONSTRAINT `fk_Omada` FOREIGN KEY (`kodikos_ermineuti`) REFERENCES `Kallitechnis-omada` (`kodikos_ermineuti`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Omada`
--

LOCK TABLES `Omada` WRITE;
/*!40000 ALTER TABLE `Omada` DISABLE KEYS */;
INSERT INTO `Omada` VALUES (192837,'Ανδρέας Βουτσινάς'),(382957,'Ηλίας Ψινάκης'),(444444,'Ιβάν Σαββίδης');
/*!40000 ALTER TABLE `Omada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Propolisi`
--

DROP TABLE IF EXISTS `Propolisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Propolisi` (
  `kodikos_simeiou` int(11) NOT NULL,
  `kodikos_ekdilosis` int(11) NOT NULL,
  PRIMARY KEY (`kodikos_simeiou`,`kodikos_ekdilosis`),
  KEY `fk_Proposisi_ekdilosi_idx` (`kodikos_ekdilosis`),
  CONSTRAINT `fk_Proposisi_simeio` FOREIGN KEY (`kodikos_simeiou`) REFERENCES `Fusiko_simeio_propolisis` (`kodikos_simeiou`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Proposisi_ekdilosi` FOREIGN KEY (`kodikos_ekdilosis`) REFERENCES `Ekdilosi` (`kodikos_ekdilosis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Propolisi`
--

LOCK TABLES `Propolisi` WRITE;
/*!40000 ALTER TABLE `Propolisi` DISABLE KEYS */;
INSERT INTO `Propolisi` VALUES (12345,666),(12345,7777),(12345,8053),(12345,8055),(14310,1235),(14310,4444),(14310,6969);
/*!40000 ALTER TABLE `Propolisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Theatro`
--

DROP TABLE IF EXISTS `Theatro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Theatro` (
  `kodikos_ekdilosis` int(11) NOT NULL COMMENT '	',
  `uparksi_theseon_VIP` enum('Nai','Oxi') NOT NULL,
  `diarkeia` varchar(45) NOT NULL,
  PRIMARY KEY (`kodikos_ekdilosis`),
  CONSTRAINT `fk_Theatro_ekdilosi` FOREIGN KEY (`kodikos_ekdilosis`) REFERENCES `Ekdilosi` (`kodikos_ekdilosis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Theatro`
--

LOCK TABLES `Theatro` WRITE;
/*!40000 ALTER TABLE `Theatro` DISABLE KEYS */;
INSERT INTO `Theatro` VALUES (666,'Nai','74'),(7777,'Oxi','114');
/*!40000 ALTER TABLE `Theatro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Topothesia`
--

DROP TABLE IF EXISTS `Topothesia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Topothesia` (
  `kodikos_topothesias` int(11) NOT NULL COMMENT '			',
  `onoma_topothesias` varchar(40) NOT NULL,
  `esoterikos_xoros` enum('N','O') NOT NULL,
  `tilefono` varchar(14) DEFAULT NULL,
  `dieuthunsi` varchar(35) DEFAULT NULL,
  `uparksi_upodomon_AMEA` enum('N','O') NOT NULL,
  `timi_mpuras` decimal(4,2) unsigned DEFAULT NULL,
  `timi_krasiou` decimal(4,2) unsigned DEFAULT NULL,
  `timi_potou` decimal(4,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`kodikos_topothesias`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Topothesia`
--

LOCK TABLES `Topothesia` WRITE;
/*!40000 ALTER TABLE `Topothesia` DISABLE KEYS */;
INSERT INTO `Topothesia` VALUES (132435,'WE - Sports & culture facility','N','2310284700','3ης Σεπτεμβρίου 3','O',4.00,6.00,7.00),(532413,'Paok Sports Arena','N','2310192600','Πυλαία-Χορτιάτης 555 35','N',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Topothesia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Xristis`
--

DROP TABLE IF EXISTS `Xristis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Xristis` (
  `kodikos_xristi` int(11) NOT NULL,
  `onomateponumo` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`kodikos_xristi`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Xristis`
--

LOCK TABLES `Xristis` WRITE;
/*!40000 ALTER TABLE `Xristis` DISABLE KEYS */;
INSERT INTO `Xristis` VALUES (6689,'Φρανγκίσκος Μπλανίνγκιος','pinkypromises@gmail.com','82a545b150da45c'),(8055,'Χρυσηίδα Τοντόροβιτς','cultureoverload@gmail.com','2cur239vj293d');
/*!40000 ALTER TABLE `Xristis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Diorg`
--

/*!50001 DROP VIEW IF EXISTS `Diorg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Diorg` AS select `Diorganotis`.`kodikos_diorganoti` AS `kodikos_diorganoti`,`Diorganotis`.`onoma_etairias` AS `onoma_etairias`,`Diorganotis`.`email` AS `email`,`Diorganotis`.`tilefono` AS `tilefono` from `Diorganotis` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Ekdilosi-Athlitiki`
--

/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Athlitiki`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Ekdilosi-Athlitiki` AS select `Ekdilosi`.`kodikos_ekdilosis` AS `kodikos_ekdilosis`,`Ekdilosi`.`onoma_ekdilosis` AS `onoma_ekdilosis`,`Ekdilosi`.`urparksi_eisitiriou` AS `urparksi_eisitiriou`,`Ekdilosi`.`koino_pou_apeuthunetai` AS `koino_pou_apeuthunetai`,`Ekdilosi`.`perigrafi` AS `perigrafi`,`Ekdilosi`.`imerominia` AS `imerominia`,`Ekdilosi`.`ora_enarksis` AS `ora_enarksis`,`Athlitiki_ekdilosi`.`uparksi_theseon_VIP` AS `uparksi_theseon_VIP`,`Athlitiki_ekdilosi`.`athlima` AS `athlima`,`Ekdilosi`.`kodikos_topothesias` AS `kodikos_topothesias`,`Ekdilosi`.`kodikos_ermineuti` AS `kodikos_ermineuti`,`Ekdilosi`.`kodikos_diorganoti` AS `kodikos_diorganoti` from (`Ekdilosi` join `Athlitiki_ekdilosi` on((`Ekdilosi`.`kodikos_ekdilosis` = `Athlitiki_ekdilosi`.`kodikos_ekdilosis`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Ekdilosi-Mousiki`
--

/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Mousiki`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Ekdilosi-Mousiki` AS select `Ekdilosi`.`kodikos_ekdilosis` AS `kodikos_ekdilosis`,`Ekdilosi`.`onoma_ekdilosis` AS `onoma_ekdilosis`,`Ekdilosi`.`urparksi_eisitiriou` AS `urparksi_eisitiriou`,`Ekdilosi`.`koino_pou_apeuthunetai` AS `koino_pou_apeuthunetai`,`Ekdilosi`.`perigrafi` AS `perigrafi`,`Ekdilosi`.`imerominia` AS `imerominia`,`Ekdilosi`.`ora_enarksis` AS `ora_enarksis`,`Mousiki_ekdilosi`.`uparksi_theseon_kathimenon` AS `uparksi_theseon_kathimenon`,`Mousiki_ekdilosi`.`eidos` AS `eidos`,`Mousiki_ekdilosi`.`opening_act` AS `opening_act`,`Ekdilosi`.`kodikos_topothesias` AS `kodikos_topothesias`,`Ekdilosi`.`kodikos_ermineuti` AS `kodikos_ermineuti`,`Ekdilosi`.`kodikos_diorganoti` AS `kodikos_diorganoti` from (`Ekdilosi` join `Mousiki_ekdilosi` on((`Ekdilosi`.`kodikos_ekdilosis` = `Mousiki_ekdilosi`.`kodikos_ekdilosis`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Ekdilosi-Plain`
--

/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Plain`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Ekdilosi-Plain` AS select `Ekdilosi`.`kodikos_ekdilosis` AS `kodikos_ekdilosis`,`Ekdilosi`.`onoma_ekdilosis` AS `onoma_ekdilosis`,`Ekdilosi`.`urparksi_eisitiriou` AS `urparksi_eisitiriou`,`Ekdilosi`.`koino_pou_apeuthunetai` AS `koino_pou_apeuthunetai`,`Ekdilosi`.`perigrafi` AS `perigrafi`,`Ekdilosi`.`imerominia` AS `imerominia`,`Ekdilosi`.`ora_enarksis` AS `ora_enarksis`,`Ekdilosi`.`kodikos_topothesias` AS `kodikos_topothesias`,`Ekdilosi`.`kodikos_ermineuti` AS `kodikos_ermineuti`,`Ekdilosi`.`kodikos_diorganoti` AS `kodikos_diorganoti` from `Ekdilosi` where ((not(`Ekdilosi`.`kodikos_ekdilosis` in (select `Theatro`.`kodikos_ekdilosis` from `Theatro`))) and (not(`Ekdilosi`.`kodikos_ekdilosis` in (select `Athlitiki_ekdilosi`.`kodikos_ekdilosis` from `Athlitiki_ekdilosi`))) and (not(`Ekdilosi`.`kodikos_ekdilosis` in (select `Mousiki_ekdilosi`.`kodikos_ekdilosis` from `Mousiki_ekdilosi`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Ekdilosi-Quick`
--

/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Quick`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Ekdilosi-Quick` AS select `Ekdilosi`.`kodikos_ekdilosis` AS `kodikos_ekdilosis`,`Ekdilosi`.`onoma_ekdilosis` AS `onoma_ekdilosis`,`Ekdilosi`.`imerominia` AS `imerominia`,`Topothesia`.`onoma_topothesias` AS `onoma_topothesias`,`Kallitechnis-omada`.`onoma` AS `onoma`,`Diorg`.`onoma_etairias` AS `onoma_etairias` from (((`Ekdilosi` join `Diorg` on((`Ekdilosi`.`kodikos_diorganoti` = `Diorg`.`kodikos_diorganoti`))) left join `Topothesia` on((`Ekdilosi`.`kodikos_topothesias` = `Topothesia`.`kodikos_topothesias`))) left join `Kallitechnis-omada` on((`Ekdilosi`.`kodikos_ermineuti` = `Kallitechnis-omada`.`kodikos_ermineuti`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Ekdilosi-Theatro`
--

/*!50001 DROP VIEW IF EXISTS `Ekdilosi-Theatro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Ekdilosi-Theatro` AS select `Ekdilosi`.`kodikos_ekdilosis` AS `kodikos_ekdilosis`,`Ekdilosi`.`onoma_ekdilosis` AS `onoma_ekdilosis`,`Ekdilosi`.`urparksi_eisitiriou` AS `urparksi_eisitiriou`,`Ekdilosi`.`koino_pou_apeuthunetai` AS `koino_pou_apeuthunetai`,`Ekdilosi`.`perigrafi` AS `perigrafi`,`Ekdilosi`.`imerominia` AS `imerominia`,`Ekdilosi`.`ora_enarksis` AS `ora_enarksis`,`Theatro`.`uparksi_theseon_VIP` AS `uparksi_theseon_VIP`,`Theatro`.`diarkeia` AS `diarkeia`,`Ekdilosi`.`kodikos_topothesias` AS `kodikos_topothesias`,`Ekdilosi`.`kodikos_ermineuti` AS `kodikos_ermineuti`,`Ekdilosi`.`kodikos_diorganoti` AS `kodikos_diorganoti` from (`Ekdilosi` join `Theatro` on((`Ekdilosi`.`kodikos_ekdilosis` = `Theatro`.`kodikos_ekdilosis`))) */;
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

-- Dump completed on 2018-12-22 18:08:38
