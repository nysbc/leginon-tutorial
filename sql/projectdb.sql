-- MySQL dump 10.13  Distrib 5.6.15, for osx10.7 (x86_64)
--
-- Host: localhost    Database: projectdb
-- ------------------------------------------------------
-- Server version	5.6.15

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
-- Table structure for table `boxtypes`
--

DROP TABLE IF EXISTS `boxtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxtypes` (
  `boxtypeId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '0',
  `image_tiny` varchar(100) NOT NULL,
  PRIMARY KEY (`boxtypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxtypes`
--

LOCK TABLES `boxtypes` WRITE;
/*!40000 ALTER TABLE `boxtypes` DISABLE KEYS */;
INSERT INTO `boxtypes` VALUES (1,'2003-11-17 21:55:35','cryo grid box','grid_box_cryo.jpg','grid_box_cryo_tiny.jpg'),(2,'2003-11-17 21:55:47','grid box','grid_box.jpg','grid_box_tiny.jpg'),(3,'2003-11-17 21:55:56','tray','tray.png','tray_tiny.png');
/*!40000 ALTER TABLE `boxtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmauth`
--

DROP TABLE IF EXISTS `confirmauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmauth` (
  `mdhash` longtext NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmauth`
--

LOCK TABLES `confirmauth` WRITE;
/*!40000 ALTER TABLE `confirmauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `confirmauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataStatusReport`
--

DROP TABLE IF EXISTS `dataStatusReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataStatusReport` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `appion_project` int(11) NOT NULL DEFAULT '0',
  `processed_session` int(11) NOT NULL DEFAULT '0',
  `processed_run` int(11) NOT NULL DEFAULT '0',
  `last_exp_runtime` timestamp NOT NULL DEFAULT '2000-01-01 08:00:00',
  `ace_run` int(11) NOT NULL DEFAULT '0',
  `ace2_run` int(11) NOT NULL DEFAULT '0',
  `ctfind_run` int(11) NOT NULL DEFAULT '0',
  `ace_processed_image` int(11) NOT NULL DEFAULT '0',
  `particle_selection` int(11) NOT NULL DEFAULT '0',
  `dog_picker` int(11) NOT NULL DEFAULT '0',
  `manual_picker` int(11) NOT NULL DEFAULT '0',
  `tilt_picker` int(11) NOT NULL DEFAULT '0',
  `template_picker` int(11) NOT NULL DEFAULT '0',
  `selected_particle` bigint(20) NOT NULL DEFAULT '0',
  `classification` int(11) NOT NULL DEFAULT '0',
  `classes` int(11) NOT NULL DEFAULT '0',
  `classified_particles` bigint(20) NOT NULL DEFAULT '0',
  `RCT_Models` int(11) NOT NULL DEFAULT '0',
  `tomogram` int(11) NOT NULL DEFAULT '0',
  `stack` int(11) NOT NULL DEFAULT '0',
  `stack_particle` bigint(20) NOT NULL DEFAULT '0',
  `3D_recon` int(11) NOT NULL DEFAULT '0',
  `recon_iteration` int(11) NOT NULL DEFAULT '0',
  `classified_particle` bigint(20) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `initial_model` int(11) NOT NULL DEFAULT '0',
  `first_exp_runtime` timestamp NOT NULL DEFAULT '2000-01-01 08:00:00',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataStatusReport`
--

LOCK TABLES `dataStatusReport` WRITE;
/*!40000 ALTER TABLE `dataStatusReport` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataStatusReport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridboxes`
--

DROP TABLE IF EXISTS `gridboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gridboxes` (
  `gridboxId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` text,
  `boxtypeId` int(11) DEFAULT '0',
  `container` text,
  PRIMARY KEY (`gridboxId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridboxes`
--

LOCK TABLES `gridboxes` WRITE;
/*!40000 ALTER TABLE `gridboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gridlocations`
--

DROP TABLE IF EXISTS `gridlocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gridlocations` (
  `gridlocationId` int(11) NOT NULL AUTO_INCREMENT,
  `gridboxId` int(11) DEFAULT NULL,
  `gridId` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  PRIMARY KEY (`gridlocationId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gridlocations`
--

LOCK TABLES `gridlocations` WRITE;
/*!40000 ALTER TABLE `gridlocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gridlocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grids`
--

DROP TABLE IF EXISTS `grids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grids` (
  `gridId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `label` varchar(255) DEFAULT NULL,
  `prepdate` timestamp NULL DEFAULT NULL,
  `specimenId` int(11) DEFAULT '0',
  `substrate` varchar(100) DEFAULT NULL,
  `preparation` varchar(100) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `concentration` double DEFAULT NULL,
  `fraction` text,
  `note` text,
  `sort` text,
  `boxId` int(11) DEFAULT NULL,
  `projectId` int(20) DEFAULT NULL,
  `specimen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gridId`),
  KEY `label` (`label`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grids`
--

LOCK TABLES `grids` WRITE;
/*!40000 ALTER TABLE `grids` DISABLE KEYS */;
/*!40000 ALTER TABLE `grids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `install`
--

DROP TABLE IF EXISTS `install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `install` (
  `key` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `install`
--

LOCK TABLES `install` WRITE;
/*!40000 ALTER TABLE `install` DISABLE KEYS */;
INSERT INTO `install` VALUES ('settable','1'),('version','trunk'),('revision','20281');
/*!40000 ALTER TABLE `install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  `groups` tinyint(4) NOT NULL,
  `users` tinyint(4) NOT NULL,
  `projects` tinyint(4) NOT NULL,
  `projectowners` tinyint(4) NOT NULL,
  `shareexperiments` tinyint(4) NOT NULL,
  `data` tinyint(4) NOT NULL,
  `gridboxes` tinyint(4) NOT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'2019-01-31 02:15:02','All at administration level',4,4,4,4,4,4,4),(2,'2019-01-31 02:15:02','View all but administrate owned',3,3,3,3,3,3,4),(3,'2019-01-31 02:15:02','Administrate/view only  owned projects and view shared experiments',1,2,2,2,2,2,1),(4,'2019-01-31 02:15:02','View owned projects and shared experiments',1,1,1,1,1,1,1),(5,'2019-01-31 02:15:02','No privilege for anything',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processingdb`
--

DROP TABLE IF EXISTS `processingdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processingdb` (
  `DEF_id` int(20) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(20) DEFAULT NULL,
  `appiondb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projects|project` (`REF|projects|project`),
  KEY `appiondb` (`appiondb`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processingdb`
--

LOCK TABLES `processingdb` WRITE;
/*!40000 ALTER TABLE `processingdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `processingdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectexperiments`
--

DROP TABLE IF EXISTS `projectexperiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectexperiments` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(11) DEFAULT NULL,
  `REF|leginondata|SessionData|session` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `project` (`REF|projects|project`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `session` (`REF|leginondata|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectexperiments`
--

LOCK TABLES `projectexperiments` WRITE;
/*!40000 ALTER TABLE `projectexperiments` DISABLE KEYS */;
INSERT INTO `projectexperiments` VALUES (1,'2019-02-01 01:03:50',1,2);
/*!40000 ALTER TABLE `projectexperiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectowners`
--

DROP TABLE IF EXISTS `projectowners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectowners` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|projects|project` int(16) NOT NULL,
  `REF|leginondata|UserData|user` int(16) NOT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projects|project` (`REF|projects|project`),
  KEY `REF|leginondata|UserData|user` (`REF|leginondata|UserData|user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectowners`
--

LOCK TABLES `projectowners` WRITE;
/*!40000 ALTER TABLE `projectowners` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectowners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `category` text NOT NULL,
  `funding` text NOT NULL,
  `leginondb` varchar(50) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `hidden` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'2019-02-01 01:03:03','admin project','project to start uploading','','','',NULL,0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shareexperiments`
--

DROP TABLE IF EXISTS `shareexperiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shareexperiments` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|SessionData|experiment` int(11) NOT NULL DEFAULT '0',
  `REF|leginondata|UserData|user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|SessionData|experiment` (`REF|leginondata|SessionData|experiment`),
  KEY `REF|leginondata|UserData|user` (`REF|leginondata|UserData|user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shareexperiments`
--

LOCK TABLES `shareexperiments` WRITE;
/*!40000 ALTER TABLE `shareexperiments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shareexperiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetails` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|leginondata|UserData|user` int(20) DEFAULT NULL,
  `title` text NOT NULL,
  `institution` text NOT NULL,
  `dept` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `statecountry` text NOT NULL,
  `zip` text NOT NULL,
  `phone` text NOT NULL,
  `fax` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|leginondata|UserData|user` (`REF|leginondata|UserData|user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11 17:40:13
