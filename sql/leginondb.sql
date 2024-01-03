-- MySQL dump 10.13  Distrib 5.6.15, for osx10.7 (x86_64)
--
-- Host: localhost    Database: leginondb
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
-- Table structure for table `AcquisitionSettingsData`
--

DROP TABLE IF EXISTS `AcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `correct image` tinyint(1) DEFAULT NULL,
  `SEQ|preset order` text,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `move type` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `wait for process` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT '0',
  `park after list` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquisitionSettingsData`
--

LOCK TABLES `AcquisitionSettingsData` WRITE;
/*!40000 ALTER TABLE `AcquisitionSettingsData` DISABLE KEYS */;
INSERT INTO `AcquisitionSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'[u\'gr\']',0,'stage position',1,1.5,1,NULL,0,NULL,1,'Grid',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(2,'2019-01-31 02:15:02',1,'[u\'sq\']',0,'stage position',1,1.5,1,NULL,1,NULL,1,'Square',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(3,'2019-01-31 02:15:02',1,'[u\'rsq\']',0,'stage position',1,1.5,1,NULL,1,NULL,1,'RCT Square',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(4,'2019-01-31 02:15:02',1,'[u\'hl\']',1,'stage position',1,1.5,1,NULL,1,NULL,1,'Hole',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(5,'2019-01-31 02:15:02',1,'[u\'hl\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Preview',0,1,1,'presets manager',0.000001,'preview',0,0,0,0.001,0,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(6,'2019-01-31 02:15:02',1,'[u\'en\']',1,'image shift',1,2.5,1,NULL,0,NULL,1,'Exposure',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',0,0,1,0,0,'Continue',65536,50,0,0,0,0,0,0,0),(7,'2019-01-31 02:15:02',1,'[u\'sq\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Square Q',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(8,'2019-01-31 02:15:02',1,'[u\'hl\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Hole Q',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(9,'2019-01-31 02:15:02',1,'[u\'preview\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Tomography Preview',0,1,1,'presets manager',0,'preview',0,0,0,0.001,0,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(10,'2019-01-31 02:15:02',1,'[u\'hl\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Final Section',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',1,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(11,'2019-01-31 02:15:02',1,'[u\'hl\']',1,'stage position',1,2.5,1,NULL,1,NULL,1,'Subsquare',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(12,'2019-01-31 02:15:02',1,'[u\'sq\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Centered Square',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(13,'2019-01-31 02:15:02',1,'[u\'sq\']',0,'stage position',1,2.5,1,NULL,1,NULL,1,'Rough Tissue',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(14,'2019-01-31 02:15:02',1,'[u\'hl\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Final Raster',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',1,1,NULL,0,1,'Continue',65536,50,0,0,0,0,NULL,0,0),(15,'2019-01-31 02:15:02',1,'[u\'gr\']',0,'stage position',1,2.5,1,NULL,1,NULL,1,'Grid Survey',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(16,'2019-01-31 02:15:02',1,'[u\'hl\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Mid Mag Survey',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(17,'2019-01-31 02:15:02',1,'[u\'sq\']',0,'stage position',1,2.5,1,NULL,1,NULL,1,'Reacquisition',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(18,'2019-01-31 02:15:02',1,'[u\'en\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'High Mag Acquisition',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(19,'2019-01-31 02:15:02',1,'[u\'en\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Exposure MultiMove',0,1,1,'navigator',0.0000001,'acquisition',0,0,0,0.0000005,1,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,0,0,0),(20,'2019-01-31 02:15:02',1,'[u\'hl\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Align Parent Image',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `AcquisitionSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlignZLPSettingsData`
--

DROP TABLE IF EXISTS `AlignZLPSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlignZLPSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `check preset` text,
  `threshold` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlignZLPSettingsData`
--

LOCK TABLES `AlignZLPSettingsData` WRITE;
/*!40000 ALTER TABLE `AlignZLPSettingsData` DISABLE KEYS */;
INSERT INTO `AlignZLPSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Align ZLP',1,1,'stage position','presets manager',0.0000005,0.000001,3,3600,30,'fa',0);
/*!40000 ALTER TABLE `AlignZLPSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlignmentManagerSettingsData`
--

DROP TABLE IF EXISTS `AlignmentManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlignmentManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `reset a` tinyint(1) DEFAULT '0',
  `reset z` tinyint(1) DEFAULT '0',
  `reset xy` tinyint(1) DEFAULT '0',
  `repeat time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlignmentManagerSettingsData`
--

LOCK TABLES `AlignmentManagerSettingsData` WRITE;
/*!40000 ALTER TABLE `AlignmentManagerSettingsData` DISABLE KEYS */;
INSERT INTO `AlignmentManagerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Align Manager',1,0,0,0,0,3600);
/*!40000 ALTER TABLE `AlignmentManagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ApplicationData`
--

DROP TABLE IF EXISTS `ApplicationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApplicationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  `version` int(20) DEFAULT NULL,
  `hide` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApplicationData`
--

LOCK TABLES `ApplicationData` WRITE;
/*!40000 ALTER TABLE `ApplicationData` DISABLE KEYS */;
INSERT INTO `ApplicationData` VALUES (1,'2019-03-21 05:02:09','MSI-T',0,0);
/*!40000 ALTER TABLE `ApplicationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AutoFillerSettingsData`
--

DROP TABLE IF EXISTS `AutoFillerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AutoFillerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `repeat time` double DEFAULT NULL,
  `autofiller mode` text,
  `column fill start` double DEFAULT NULL,
  `column fill end` double DEFAULT NULL,
  `loader fill start` double DEFAULT NULL,
  `loader fill end` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AutoFillerSettingsData`
--

LOCK TABLES `AutoFillerSettingsData` WRITE;
/*!40000 ALTER TABLE `AutoFillerSettingsData` DISABLE KEYS */;
INSERT INTO `AutoFillerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'N2 Filling',1,1,1200,'both cold',45,70,17,70);
/*!40000 ALTER TABLE `AutoFillerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamFixerSettingsData`
--

DROP TABLE IF EXISTS `BeamFixerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamFixerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `override preset` int(20) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `SUBD|stage position|x` double DEFAULT NULL,
  `SUBD|stage position|y` double DEFAULT NULL,
  `SUBD|stage position|z` double DEFAULT NULL,
  `SEQ|correction presets` text,
  `shift step` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamFixerSettingsData`
--

LOCK TABLES `BeamFixerSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamFixerSettingsData` DISABLE KEYS */;
INSERT INTO `BeamFixerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Fix Beam',1,'stage position',3,3600,0,3,'None','None',0,0,0,'[u\'fc\', u\'fa\', u\'en\', u\'ef\']',25);
/*!40000 ALTER TABLE `BeamFixerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamTiltCalibratorSettingsData`
--

DROP TABLE IF EXISTS `BeamTiltCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamTiltCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  `defocus beam tilt` double DEFAULT NULL,
  `first defocus` double DEFAULT NULL,
  `second defocus` double DEFAULT NULL,
  `stig beam tilt` double DEFAULT NULL,
  `stig delta` double DEFAULT NULL,
  `measure beam tilt` double DEFAULT NULL,
  `correct tilt` tinyint(1) DEFAULT '0',
  `settling time` double DEFAULT NULL,
  `comafree beam tilt` double DEFAULT NULL,
  `comafree misalign` double DEFAULT NULL,
  `imageshift coma tilt` double DEFAULT NULL,
  `imageshift coma step` double DEFAULT NULL,
  `imageshift coma number` int(20) DEFAULT NULL,
  `imageshift coma repeat` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamTiltCalibratorSettingsData`
--

LOCK TABLES `BeamTiltCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamTiltCalibratorSettingsData` DISABLE KEYS */;
INSERT INTO `BeamTiltCalibratorSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(2,'2019-02-01 01:27:51',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(3,'2019-02-01 01:32:20',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(4,'2019-02-01 01:58:49',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(5,'2019-02-01 02:01:17',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(6,'2019-02-01 02:03:56',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(7,'2019-02-01 02:06:36',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(8,'2019-02-01 02:09:16',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(9,'2019-02-01 02:12:06',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(10,'2019-02-01 02:23:03',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None'),(11,'2019-02-01 02:27:55',2,'Beam Tilt',1,0,1,'phase',1,0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None');
/*!40000 ALTER TABLE `BeamTiltCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamTiltFixerSettingsData`
--

DROP TABLE IF EXISTS `BeamTiltFixerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamTiltFixerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `SEQ|preset order` text,
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `drift between` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT '0',
  `save integer` tinyint(1) DEFAULT '0',
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `beam tilt` double DEFAULT NULL,
  `min threshold` double DEFAULT NULL,
  `max threshold` double DEFAULT NULL,
  `correct` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamTiltFixerSettingsData`
--

LOCK TABLES `BeamTiltFixerSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamTiltFixerSettingsData` DISABLE KEYS */;
INSERT INTO `BeamTiltFixerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Align Beam Tilt',1,'[u\'fc\']','acquisition',0,2.5,0,'stage position',1,1,1,0,1,0,0,1,'one',0,'navigator',0.0000002,0.0000005,0,0,0,0,0,0,'Continue',65536,50,0,0,0,0,0,0.005,0.0002,0.0015,0);
/*!40000 ALTER TABLE `BeamTiltFixerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamTiltImagerSettingsData`
--

DROP TABLE IF EXISTS `BeamTiltImagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamTiltImagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `correct image` tinyint(1) DEFAULT NULL,
  `SEQ|preset order` text,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `move type` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `wait for process` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT '0',
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT '0',
  `park after list` tinyint(1) DEFAULT '0',
  `beam tilt` double DEFAULT NULL,
  `beam tilt count` int(20) DEFAULT NULL,
  `sites` int(20) DEFAULT NULL,
  `startangle` double DEFAULT NULL,
  `tableau type` text,
  `tableau binning` int(20) DEFAULT NULL,
  `tableau split` int(20) DEFAULT NULL,
  `correlation type` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamTiltImagerSettingsData`
--

LOCK TABLES `BeamTiltImagerSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamTiltImagerSettingsData` DISABLE KEYS */;
INSERT INTO `BeamTiltImagerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'[u\'fc\']',0,'image shift',1,2.5,1,NULL,0,NULL,1,'Beam Tilt Image',0,1,1,'presets manager',0,'acquisition',0,0,NULL,0.001,0,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0.005,1,4,0,'beam tilt series-power',2,8,'phase');
/*!40000 ALTER TABLE `BeamTiltImagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BindingSpecData`
--

DROP TABLE IF EXISTS `BindingSpecData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BindingSpecData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event class string` text,
  `from node alias` text,
  `to node alias` text,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BindingSpecData`
--

LOCK TABLES `BindingSpecData` WRITE;
/*!40000 ALTER TABLE `BindingSpecData` DISABLE KEYS */;
INSERT INTO `BindingSpecData` VALUES (1,'2019-03-21 05:02:09','MoveToTargetEvent','Align ZLP','Navigation',1),(2,'2019-03-21 05:02:09','ChangePresetEvent','Align ZLP','Presets Manager',1),(3,'2019-03-21 05:02:09','TransformTargetDoneEvent','Target Adjustment','Hole',1),(4,'2019-03-21 05:02:09','TransformTargetDoneEvent','Target Adjustment','Exposure',1),(5,'2019-03-21 05:02:09','TransformTargetDoneEvent','Target Adjustment','Focus',1),(6,'2019-03-21 05:02:09','TransformTargetDoneEvent','Target Adjustment','Z Focus',1),(7,'2019-03-21 05:02:09','TransformTargetDoneEvent','Target Adjustment','Preview',1),(8,'2019-03-21 05:02:09','ChangePresetEvent','Target Adjustment','Presets Manager',1),(9,'2019-03-21 05:02:09','MoveToTargetEvent','Target Adjustment','Navigation',1),(10,'2019-03-21 05:02:09','TransformTargetDoneEvent','Target Adjustment','Square',1),(11,'2019-03-21 05:02:09','TransformTargetEvent','Preview','Target Adjustment',1),(12,'2019-03-21 05:02:09','ChangePresetEvent','Preview','Presets Manager',1),(13,'2019-03-21 05:02:09','MoveToTargetEvent','Preview','Navigation',1),(14,'2019-03-21 05:02:09','ImageTargetListPublishEvent','Square Targeting','Square',1),(15,'2019-03-21 05:02:09','AcquisitionImagePublishEvent','Grid','Square Targeting',1),(16,'2019-03-21 05:02:09','ChangePresetEvent','Grid','Presets Manager',1),(17,'2019-03-21 05:02:09','MoveToTargetEvent','Grid','Navigation',1),(18,'2019-03-21 05:02:09','TargetListDoneEvent','Grid','Square Targeting',1),(19,'2019-03-21 05:02:09','ChangePresetEvent','Square','Presets Manager',1),(20,'2019-03-21 05:02:09','AcquisitionImagePublishEvent','Square','Hole Targeting',1),(21,'2019-03-21 05:02:09','MoveToTargetEvent','Square','Navigation',1),(22,'2019-03-21 05:02:09','TransformTargetEvent','Square','Target Adjustment',1),(23,'2019-03-21 05:02:09','QueuePublishEvent','Exposure Targeting','Exposure',1),(24,'2019-03-21 05:02:09','ImageTargetListPublishEvent','Exposure Targeting','Exposure',1),(25,'2019-03-21 05:02:09','ImageProcessDoneEvent','Exposure Targeting','Hole',1),(26,'2019-03-21 05:02:09','ImageTargetListPublishEvent','Hole Targeting','Hole',1),(27,'2019-03-21 05:02:09','ImageProcessDoneEvent','Hole Targeting','Square',1),(28,'2019-03-21 05:02:09','QueuePublishEvent','Hole Targeting','Hole',1),(29,'2019-03-21 05:02:09','TransformTargetEvent','Focus','Target Adjustment',1),(30,'2019-03-21 05:02:09','DriftMonitorRequestEvent','Focus','Drift Monitor',1),(31,'2019-03-21 05:02:09','ChangePresetEvent','Focus','Presets Manager',1),(32,'2019-03-21 05:02:09','TargetListDoneEvent','Focus','Exposure',1),(33,'2019-03-21 05:02:09','MoveToTargetEvent','Focus','Navigation',1),(34,'2019-03-21 05:02:09','AlignZeroLossPeakPublishEvent','Exposure','Align ZLP',1),(35,'2019-03-21 05:02:09','TransformTargetEvent','Exposure','Target Adjustment',1),(36,'2019-03-21 05:02:09','ImageTargetListPublishEvent','Exposure','Preview',1),(37,'2019-03-21 05:02:09','ImageTargetListPublishEvent','Exposure','Focus',1),(38,'2019-03-21 05:02:09','ChangePresetEvent','Exposure','Presets Manager',1),(39,'2019-03-21 05:02:09','TargetListDoneEvent','Exposure','Exposure Targeting',1),(40,'2019-03-21 05:02:09','AcquisitionImagePublishEvent','Exposure','Exposure FFT',1),(41,'2019-03-21 05:02:09','MoveToTargetEvent','Exposure','Navigation',1),(42,'2019-03-21 05:02:09','FixConditionEvent','Exposure','N2 Filling',1),(43,'2019-03-21 05:02:09','AcquisitionImagePublishEvent','Drift Monitor','Focus',1),(44,'2019-03-21 05:02:09','ChangePresetEvent','Drift Monitor','Presets Manager',1),(45,'2019-03-21 05:02:09','DriftMonitorResultEvent','Drift Monitor','Focus',1),(46,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Align ZLP',1),(47,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Preview',1),(48,'2019-03-21 05:02:09','ChangePresetEvent','Navigation','Presets Manager',1),(49,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Presets Manager',1),(50,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Grid',1),(51,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Square',1),(52,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Z Focus',1),(53,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Hole',1),(54,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Focus',1),(55,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Exposure',1),(56,'2019-03-21 05:02:09','MoveToTargetDoneEvent','Navigation','Target Adjustment',1),(57,'2019-03-21 05:02:09','TransformTargetEvent','Hole','Target Adjustment',1),(58,'2019-03-21 05:02:09','ImageTargetListPublishEvent','Hole','Preview',1),(59,'2019-03-21 05:02:09','ChangePresetEvent','Hole','Presets Manager',1),(60,'2019-03-21 05:02:09','AcquisitionImagePublishEvent','Hole','Exposure Targeting',1),(61,'2019-03-21 05:02:09','TargetListDoneEvent','Hole','Hole Targeting',1),(62,'2019-03-21 05:02:09','ImageTargetListPublishEvent','Hole','Z Focus',1),(63,'2019-03-21 05:02:09','MoveToTargetEvent','Hole','Navigation',1),(64,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Align ZLP',1),(65,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Target Adjustment',1),(66,'2019-03-21 05:02:09','MoveToTargetEvent','Presets Manager','Navigation',1),(67,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Drift Monitor',1),(68,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Focus',1),(69,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Exposure',1),(70,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Hole',1),(71,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Square',1),(72,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Grid',1),(73,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Z Focus',1),(74,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Navigation',1),(75,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Beam Tilt',1),(76,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Preview',1),(77,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Beam Tilt Image',1),(78,'2019-03-21 05:02:09','TransformTargetEvent','Z Focus','Target Adjustment',1),(79,'2019-03-21 05:02:09','TargetListDoneEvent','Z Focus','Hole',1),(80,'2019-03-21 05:02:09','ChangePresetEvent','Z Focus','Presets Manager',1),(81,'2019-03-21 05:02:09','MoveToTargetEvent','Z Focus','Navigation',1),(82,'2019-03-21 05:02:09','ImageTargetListPublishEvent','Grid Targeting','Grid',1),(83,'2019-03-21 05:02:09','ChangePresetEvent','Beam Tilt Image','Presets Manager',1),(84,'2019-03-21 05:02:09','ChangePresetEvent','Scope Control','Presets Manager',1),(85,'2019-03-21 05:02:09','PresetChangedEvent','Presets Manager','Scope Control',1);
/*!40000 ALTER TABLE `BindingSpecData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlobFinderSettingsData`
--

DROP TABLE IF EXISTS `BlobFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlobFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `on` tinyint(1) DEFAULT NULL,
  `max` int(20) DEFAULT NULL,
  `min size` int(20) DEFAULT NULL,
  `max size` int(20) DEFAULT NULL,
  `min mean` double DEFAULT NULL,
  `min stdev` double DEFAULT NULL,
  `border` int(20) DEFAULT NULL,
  `max mean` double DEFAULT NULL,
  `max stdev` double DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlobFinderSettingsData`
--

LOCK TABLES `BlobFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `BlobFinderSettingsData` DISABLE KEYS */;
INSERT INTO `BlobFinderSettingsData` VALUES (1,'2019-01-31 02:15:02',NULL,100,10,10000,1000,10,0,20000,500,1,NULL,0);
/*!40000 ALTER TABLE `BlobFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BufferCyclerSettingsData`
--

DROP TABLE IF EXISTS `BufferCyclerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BufferCyclerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `repeat time` double DEFAULT NULL,
  `trip value` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BufferCyclerSettingsData`
--

LOCK TABLES `BufferCyclerSettingsData` WRITE;
/*!40000 ALTER TABLE `BufferCyclerSettingsData` DISABLE KEYS */;
INSERT INTO `BufferCyclerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Buffer Cycling',1,1,1200,80);
/*!40000 ALTER TABLE `BufferCyclerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CameraSensitivityCalibrationData`
--

DROP TABLE IF EXISTS `CameraSensitivityCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CameraSensitivityCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `sensitivity` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CameraSensitivityCalibrationData`
--

LOCK TABLES `CameraSensitivityCalibrationData` WRITE;
/*!40000 ALTER TABLE `CameraSensitivityCalibrationData` DISABLE KEYS */;
INSERT INTO `CameraSensitivityCalibrationData` VALUES (1,'2019-02-11 22:37:16',2,2,3,300000,5.86),(2,'2019-02-11 22:37:23',2,2,4,300000,0.807);
/*!40000 ALTER TABLE `CameraSensitivityCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CameraSettingsData`
--

DROP TABLE IF EXISTS `CameraSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CameraSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `exposure time` double DEFAULT NULL,
  `SUBD|dimension|x` int(20) DEFAULT NULL,
  `SUBD|dimension|y` int(20) DEFAULT NULL,
  `SUBD|offset|x` int(20) DEFAULT NULL,
  `SUBD|offset|y` int(20) DEFAULT NULL,
  `SUBD|binning|x` int(20) DEFAULT NULL,
  `SUBD|binning|y` int(20) DEFAULT NULL,
  `save frames` tinyint(1) DEFAULT '0',
  `frame time` double DEFAULT NULL,
  `align frames` tinyint(1) DEFAULT '0',
  `align filter` text,
  `SEQ|use frames` text,
  `readout delay` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CameraSettingsData`
--

LOCK TABLES `CameraSettingsData` WRITE;
/*!40000 ALTER TABLE `CameraSettingsData` DISABLE KEYS */;
INSERT INTO `CameraSettingsData` VALUES (1,'2019-02-01 01:27:51',200,1024,1024,0,0,1,1,0,200,0,'None','()',0);
/*!40000 ALTER TABLE `CameraSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CenterTargetFilterSettingsData`
--

DROP TABLE IF EXISTS `CenterTargetFilterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CenterTargetFilterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT NULL,
  `limit` int(20) DEFAULT NULL,
  `target type` text,
  `user check` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CenterTargetFilterSettingsData`
--

LOCK TABLES `CenterTargetFilterSettingsData` WRITE;
/*!40000 ALTER TABLE `CenterTargetFilterSettingsData` DISABLE KEYS */;
INSERT INTO `CenterTargetFilterSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Square Target Filtering',1,0,1,'acquisition',1);
/*!40000 ALTER TABLE `CenterTargetFilterSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClickTargetFinderSettingsData`
--

DROP TABLE IF EXISTS `ClickTargetFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClickTargetFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `wait for done` tinyint(1) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `no resubmit` tinyint(1) DEFAULT NULL,
  `name` text,
  `queue` tinyint(1) DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT '0',
  `queue drift` tinyint(1) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClickTargetFinderSettingsData`
--

LOCK TABLES `ClickTargetFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `ClickTargetFinderSettingsData` DISABLE KEYS */;
INSERT INTO `ClickTargetFinderSettingsData` VALUES (1,'2019-01-31 02:15:02',1,1,0,0,'Hole Targeting',1,1,1,1,0,0,0),(2,'2019-01-31 02:15:02',1,1,0,0,'Tomography Targeting',1,1,1,1,0,0,0);
/*!40000 ALTER TABLE `ClickTargetFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConnectToClientsData`
--

DROP TABLE IF EXISTS `ConnectToClientsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConnectToClientsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SEQ|clients` text,
  `localhost` text,
  `installation` text,
  `version` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConnectToClientsData`
--

LOCK TABLES `ConnectToClientsData` WRITE;
/*!40000 ALTER TABLE `ConnectToClientsData` DISABLE KEYS */;
INSERT INTO `ConnectToClientsData` VALUES (1,'2019-02-01 01:03:50',2,'[]','leginon-docker','/Users/acheng/myami/leginon','0'),(2,'2019-02-01 01:27:38',2,'[]','leginon-docker','/Users/acheng/myami/leginon','0'),(3,'2019-02-01 01:32:12',2,'[]','leginon-docker','/Users/acheng/myami/leginon','0'),(4,'2019-02-01 01:58:42',2,'[]','leginon-docker','/Users/acheng/myami/leginon','21416'),(5,'2019-02-01 02:01:12',2,'[]','leginon-docker','/Users/acheng/myami/leginon','21416'),(6,'2019-02-01 02:03:50',2,'[]','leginon-docker','/Users/acheng/myami/leginon','21416'),(7,'2019-02-01 02:06:29',2,'[]','leginon-docker','/Users/acheng/myami/leginon','21416'),(8,'2019-02-01 02:09:09',2,'[]','leginon-docker','/Users/acheng/myami/leginon','21416'),(9,'2019-02-01 02:12:01',2,'[]','leginon-docker','/Users/acheng/myami/leginon','21416'),(10,'2019-02-01 02:22:58',2,'[]','leginon-docker','/Users/acheng/myami/leginon','21416'),(11,'2019-02-01 02:27:48',2,'[]','leginon-docker','/Users/acheng/myami/leginon','21416');
/*!40000 ALTER TABLE `ConnectToClientsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CorrectorSettingsData`
--

DROP TABLE IF EXISTS `CorrectorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CorrectorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `despike size` int(20) DEFAULT NULL,
  `despike threshold` double DEFAULT NULL,
  `despike` tinyint(1) DEFAULT NULL,
  `n average` int(20) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `combine` text,
  `clip min` double DEFAULT NULL,
  `clip max` double DEFAULT NULL,
  `channels` int(20) DEFAULT NULL,
  `store series` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CorrectorSettingsData`
--

LOCK TABLES `CorrectorSettingsData` WRITE;
/*!40000 ALTER TABLE `CorrectorSettingsData` DISABLE KEYS */;
INSERT INTO `CorrectorSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Correction',11,3.5,0,3,2,'None','None',1,'average',0,65536,NULL,0),(2,'2019-02-01 01:27:51',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(3,'2019-02-01 01:32:21',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(4,'2019-02-01 01:58:50',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(5,'2019-02-01 02:01:17',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(6,'2019-02-01 02:03:57',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(7,'2019-02-01 02:06:36',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(8,'2019-02-01 02:09:16',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(9,'2019-02-01 02:12:07',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(10,'2019-02-01 02:23:04',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0),(11,'2019-02-01 02:27:55',2,'Correction',NULL,NULL,NULL,3,1,'None','None',1,'average',0,65536,NULL,0);
/*!40000 ALTER TABLE `CorrectorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DTFinderSettingsData`
--

DROP TABLE IF EXISTS `DTFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DTFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `wait for done` int(20) DEFAULT NULL,
  `ignore images` int(20) DEFAULT NULL,
  `queue` int(20) DEFAULT NULL,
  `user check` int(20) DEFAULT NULL,
  `queue drift` int(20) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  `image filename` text,
  `REF|LowPassFilterSettingsData|edge lpf` int(20) DEFAULT NULL,
  `edge` int(20) DEFAULT NULL,
  `edge type` text,
  `edge log size` int(20) DEFAULT NULL,
  `edge log sigma` double DEFAULT NULL,
  `edge absolute` int(20) DEFAULT NULL,
  `edge threshold` double DEFAULT NULL,
  `template type` text,
  `REF|LowPassFilterSettingsData|template lpf` int(20) DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `threshold method` text,
  `blobs border` int(20) DEFAULT NULL,
  `blobs max` int(20) DEFAULT NULL,
  `blobs max size` int(20) DEFAULT NULL,
  `blobs min size` int(20) DEFAULT NULL,
  `lattice spacing` double DEFAULT NULL,
  `lattice tolerance` double DEFAULT NULL,
  `lattice hole radius` double DEFAULT NULL,
  `lattice zero thickness` double DEFAULT NULL,
  `ice min mean` double DEFAULT NULL,
  `ice max mean` double DEFAULT NULL,
  `ice max std` double DEFAULT NULL,
  `focus hole` text,
  `target template` int(20) DEFAULT NULL,
  `focus template thickness` int(20) DEFAULT NULL,
  `focus stats radius` int(20) DEFAULT NULL,
  `focus min mean thickness` double DEFAULT NULL,
  `focus max mean thickness` double DEFAULT NULL,
  `focus max stdev thickness` double DEFAULT NULL,
  `template diameter` int(20) DEFAULT NULL,
  `file diameter` int(20) DEFAULT NULL,
  `template filename` text,
  `template size` int(20) DEFAULT NULL,
  `correlation lpf` double DEFAULT NULL,
  `correlation type` text,
  `angle increment` double DEFAULT NULL,
  `rotate` int(20) DEFAULT NULL,
  `snr threshold` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DTFinderSettingsData`
--

LOCK TABLES `DTFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `DTFinderSettingsData` DISABLE KEYS */;
INSERT INTO `DTFinderSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Tissue Centering',1,1,0,1,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,1.3,'phase',5,0,6);
/*!40000 ALTER TABLE `DTFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DequeuedImageTargetListData`
--

DROP TABLE IF EXISTS `DequeuedImageTargetListData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DequeuedImageTargetListData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|list` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ImageTargetListData|list` (`REF|ImageTargetListData|list`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DequeuedImageTargetListData`
--

LOCK TABLES `DequeuedImageTargetListData` WRITE;
/*!40000 ALTER TABLE `DequeuedImageTargetListData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DequeuedImageTargetListData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoseCalibratorSettingsData`
--

DROP TABLE IF EXISTS `DoseCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoseCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  `beam diameter` double DEFAULT NULL,
  `scale factor` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoseCalibratorSettingsData`
--

LOCK TABLES `DoseCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `DoseCalibratorSettingsData` DISABLE KEYS */;
INSERT INTO `DoseCalibratorSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Dose',1,'None','None',0,1,'phase',1,0.16,0.88);
/*!40000 ALTER TABLE `DoseCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EucentricFocusData`
--

DROP TABLE IF EXISTS `EucentricFocusData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EucentricFocusData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `focus` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EucentricFocusData`
--

LOCK TABLES `EucentricFocusData` WRITE;
/*!40000 ALTER TABLE `EucentricFocusData` DISABLE KEYS */;
INSERT INTO `EucentricFocusData` VALUES (1,'2019-02-11 22:37:16',2,2,3,130000,300000,'nano',0.000257567105888143),(2,'2019-02-11 22:37:16',2,2,3,130000,300000,'nano',0.000257567105888143),(3,'2019-02-11 22:37:23',2,2,4,130000,300000,'nano',0),(4,'2019-02-11 22:37:23',2,2,4,130000,300000,'nano',0.000136413521575179);
/*!40000 ALTER TABLE `EucentricFocusData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExposureFixerSettingsData`
--

DROP TABLE IF EXISTS `ExposureFixerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExposureFixerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SEQ|correction presets` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `required dose` double DEFAULT NULL,
  `max exposure time` int(20) DEFAULT NULL,
  `SUBD|stage position|x` double DEFAULT NULL,
  `SUBD|stage position|y` double DEFAULT NULL,
  `SUBD|stage position|z` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `isdefault` (`isdefault`),
  KEY `override preset` (`override preset`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExposureFixerSettingsData`
--

LOCK TABLES `ExposureFixerSettingsData` WRITE;
/*!40000 ALTER TABLE `ExposureFixerSettingsData` DISABLE KEYS */;
INSERT INTO `ExposureFixerSettingsData` VALUES (1,'2019-01-31 02:15:02','[u\'en\', u\'fa\']',1,'Fix Exposure Time',1,'stage position',3,3600,0,1,20,1000,0,0,0);
/*!40000 ALTER TABLE `ExposureFixerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FocusSequenceData`
--

DROP TABLE IF EXISTS `FocusSequenceData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocusSequenceData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `node name` text,
  `SEQ|sequence` text,
  `isdefault` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FocusSequenceData`
--

LOCK TABLES `FocusSequenceData` WRITE;
/*!40000 ALTER TABLE `FocusSequenceData` DISABLE KEYS */;
INSERT INTO `FocusSequenceData` VALUES (1,'2019-01-31 02:15:02',1,'Focus','[\'Defocus1\', \'Defocus2\', \'Manual_after\']',1),(2,'2019-01-31 02:15:02',1,'Z Focus','[u\'Stage_Tilt_Rough\', u\'Stage_Tilt_Fine\', \'Manual_after\']',1),(3,'2019-01-31 02:15:02',1,'Tomo Focus','[u\'Stage_Tilt_Fine1\', \'Stage_Tilt_Fine2\', \'Beam_Tilt_Fine\', \'Manual_after\']',1),(4,'2019-01-31 02:15:02',1,'Tomo Z Focus','[u\'Stage_Tilt_Rough\', \'Stage_Tilt_Fine\', \'Beam_Tilt_Auto\', \'Manual_after\']',1),(5,'2019-01-31 02:15:02',1,'Cal Focus','[u\'Stage_Tilt_Rough\', \'Stage_Tilt_Fine\', \'Beam_Tilt_Auto\', \'Manual_after\']',1),(6,'2019-01-31 02:15:02',1,'RCT Focus','[u\'Z_to_Eucentric\', u\'Def_to_Eucentric\']',1),(7,'2019-01-31 02:15:02',1,'Section Z Focus','[u\'Stage_Tilt_Fine\', u\'Stage_Tilt_High\']',1),(8,'2019-01-31 02:15:02',1,'Grid Focus','[u\'Stage_Wobble_Rough\']',1),(9,'2019-01-31 02:15:02',1,'Section Focus','[u\'Stage_Wobble_Rough\', u\'Stage_Wobble_Fine\']',1),(10,'2019-01-31 02:15:02',1,'Screen Z Focus','[u\'Rough\', u\'Medium\', u\'Fine\']',1),(11,'2019-01-31 02:15:02',1,'Align Focus','[u\'Stage Tilt Fine\', u\'Beam Tilt 1\', u\'Beam Tilt 2\', u\'Manual after\']',1);
/*!40000 ALTER TABLE `FocusSequenceData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FocusSettingData`
--

DROP TABLE IF EXISTS `FocusSettingData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocusSettingData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `correlation type` text,
  `fit limit` double DEFAULT NULL,
  `focus method` text,
  `stig defocus min` double DEFAULT NULL,
  `drift threshold` double DEFAULT NULL,
  `stig correction` tinyint(1) DEFAULT NULL,
  `correction type` text,
  `check drift` tinyint(1) DEFAULT NULL,
  `preset name` text,
  `name` text,
  `stig defocus max` double DEFAULT NULL,
  `tilt` double DEFAULT NULL,
  `node name` text,
  `switch` tinyint(1) DEFAULT NULL,
  `delta min` double DEFAULT NULL,
  `delta max` double DEFAULT NULL,
  `reset defocus` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FocusSettingData`
--

LOCK TABLES `FocusSettingData` WRITE;
/*!40000 ALTER TABLE `FocusSettingData` DISABLE KEYS */;
INSERT INTO `FocusSettingData` VALUES (1,'2019-01-31 02:15:02',1,'phase',1000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'fa','Z_to_Eucentric',0.000004,0.01,'Focus',0,0,0.00002,NULL,1),(2,'2019-01-31 02:15:02',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',1,'fa','Defocus1',0.000004,0.01,'Focus',1,0,0.00002,NULL,1),(3,'2019-01-31 02:15:02',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',0,'fa','Defocus2',0.000004,0.01,'Focus',0,0,0.00002,NULL,1),(4,'2019-01-31 02:15:02',1,'phase',5000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Focus',1,0,0.001,NULL,1),(5,'2019-01-31 02:15:02',1,'phase',5000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Stage_Tilt_Rough',0.000004,0.017453292519943295,'Z Focus',0,0,0.0002,NULL,1),(6,'2019-01-31 02:15:02',1,'phase',5000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine',0.000004,0.017453292519943295,'Z Focus',1,0,0.0002,NULL,1),(7,'2019-01-31 02:15:02',1,'phase',10000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Z Focus',0,0,0.001,NULL,1),(8,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine1',0.000004,0.0174532925199433,'Tomo Focus',1,0,0.0001,NULL,1),(9,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine2',0.000004,0.0174532925199433,'Tomo Focus',1,0,0.00005,NULL,1),(10,'2019-01-31 02:15:02',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',1,'fa','Beam_Tilt_Fine',0.000004,0.01,'Tomo Focus',0,0,0.00005,NULL,1),(11,'2019-01-31 02:15:02',1,'phase',1000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Tomo Focus',0,0,0.001,NULL,1),(12,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Stage_Tilt_Rough',0.000004,0.0174532925199433,'Tomo Z Focus',1,0,0.0002,NULL,1),(13,'2019-01-31 02:15:02',1,'phase',5000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine',0.000004,0.0174532925199433,'Tomo Z Focus',1,0,0.0001,NULL,1),(14,'2019-01-31 02:15:02',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Beam_Tilt_Auto',0.000004,0.01,'Tomo Z Focus',0,0,0.00005,NULL,1),(15,'2019-01-31 02:15:02',1,'phase',1000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Tomo Z Focus',0,0,0.001,NULL,1),(16,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Stage_Tilt_Rough',0.000004,0.0174532925199433,'Cal Focus',1,0,0.0002,NULL,1),(17,'2019-01-31 02:15:02',1,'phase',5000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine',0.000004,0.0174532925199433,'Cal Focus',1,0,0.0001,NULL,1),(18,'2019-01-31 02:15:02',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'fa','Beam_Tilt_Auto',0.000004,0.01,'Cal Focus',0,0,0.00005,NULL,1),(19,'2019-01-31 02:15:02',1,'phase',1000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Cal Focus',0,0,0.001,NULL,1),(20,'2019-01-31 02:15:02',1,'phase',2000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'fa','Z_to_Eucentric',0.000004,0.01,'RCT Focus',1,0,0.00002,NULL,1),(21,'2019-01-31 02:15:02',1,'phase',2000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',0,'fa','Def_to_Eucentric',0.000004,0.01,'RCT Focus',1,0,0.00002,NULL,1),(22,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine',0.000004,0.0174532925199433,'Section Z Focus',1,0,0.001,NULL,1),(23,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_High',0.000004,0.0349065850398866,'Section Z Focus',0,0,0.001,NULL,1),(24,'2019-01-31 02:15:02',1,'phase',1000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',0,'gr','Stage_Wobble_Rough',0.000004,0.01,'Grid Focus',1,0,0.001,NULL,1),(25,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Stage_Wobble_Rough',0.000004,0.0174532925199433,'Section Focus',1,0,0.001,NULL,1),(26,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Wobble_Fine',0.000004,0.0174532925199433,'Section Focus',1,0,0.0001,NULL,1),(27,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Rough',0.000004,0.0174532925199433,'Screen Z Focus',1,0,0.0002,NULL,1),(28,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Medium',0.000004,0.0174532925199433,'Screen Z Focus',0,0,0.0001,NULL,1),(29,'2019-01-31 02:15:02',1,'phase',2000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'fa','Fine',0.000004,0.01,'Screen Z Focus',1,0,0.00002,NULL,1),(30,'2019-01-31 02:15:02',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage Tilt Fine',0.000004,0.0174532925199433,'Align Focus',1,0,0.0001,NULL,1),(31,'2019-01-31 02:15:02',1,'phase',1000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',1,'fa','Beam Tilt 1',0.000004,0.01,'Align Focus',1,0,0.00005,NULL,1),(32,'2019-01-31 02:15:02',1,'phase',1000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',0,'fa','Beam Tilt 2',0.000004,0.01,'Align Focus',1,0,0.00002,NULL,1),(33,'2019-01-31 02:15:02',1,'phase',1000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual after',0.000004,0.01,'Align Focus',1,0,0.001,NULL,1);
/*!40000 ALTER TABLE `FocusSettingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FocuserSettingsData`
--

DROP TABLE IF EXISTS `FocuserSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocuserSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `acquire final` tinyint(1) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SEQ|preset order` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `melt time` double DEFAULT NULL,
  `name` text,
  `correct image` tinyint(1) DEFAULT NULL,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  `wait for process` tinyint(1) DEFAULT NULL,
  `move type` text,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `melt preset` text,
  `manual focus preset` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT '0',
  `park after list` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FocuserSettingsData`
--

LOCK TABLES `FocuserSettingsData` WRITE;
/*!40000 ALTER TABLE `FocuserSettingsData` DISABLE KEYS */;
INSERT INTO `FocuserSettingsData` VALUES (1,'2019-01-31 02:15:02',0,1,'[u\'fc\']',1,1.5,NULL,0,'Focus',1,0,1,NULL,0,'image shift',0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(2,'2019-01-31 02:15:02',0,1,'[u\'hl\']',1,2.5,NULL,0,'Z Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','hl','fc',0,0,0,0.001,0,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(3,'2019-01-31 02:15:02',0,1,'[u\'fc\']',1,2.5,NULL,0,'Tomo Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(4,'2019-01-31 02:15:02',0,1,'[u\'hl\']',1,2.5,NULL,0,'Tomo Z Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0,0,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(5,'2019-01-31 02:15:02',0,1,'[u\'fc\']',1,2.5,NULL,0,'Cal Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(6,'2019-01-31 02:15:02',0,1,'[u\'fc\']',1,2.5,NULL,0,'RCT Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(7,'2019-01-31 02:15:02',0,1,'[u\'hl\']',1,2.5,NULL,0,'Section Z Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','hl','fc',0,0,0,0.001,0,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(8,'2019-01-31 02:15:02',0,1,'[u\'gr\']',1,2.5,NULL,0,'Grid Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','gr','gr',0,0,0,0.001,0,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(9,'2019-01-31 02:15:02',0,1,'[u\'hl\']',1,2.5,NULL,0,'Section Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','hl','fc',0,0,0,0.001,0,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(10,'2019-01-31 02:15:02',0,1,'[u\'fc\']',1,2.5,NULL,0,'Screen Z Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(11,'2019-01-31 02:15:02',0,1,'[u\'hl\']',1,2.5,NULL,0,'Z Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'focus','hl','fc',0,0,0,0.001,0,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0),(12,'2019-01-31 02:15:02',0,1,'[u\'fc\']',1,2.5,NULL,0,'Align Focus',1,0,1,NULL,0,'stage position',0,1,1,'presets manager',0,'acquisition','fc','fc',0,0,0,0.001,0,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `FocuserSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GonModelerSettingsData`
--

DROP TABLE IF EXISTS `GonModelerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GonModelerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `measure axis` text,
  `measure points` int(20) DEFAULT NULL,
  `measure interval` double DEFAULT NULL,
  `measure tolerance` double DEFAULT NULL,
  `model axis` text,
  `model magnification` int(20) DEFAULT NULL,
  `model terms` int(20) DEFAULT NULL,
  `model mag only` tinyint(1) DEFAULT '0',
  `model tolerance` double DEFAULT NULL,
  `lpf sigma` double DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GonModelerSettingsData`
--

LOCK TABLES `GonModelerSettingsData` WRITE;
/*!40000 ALTER TABLE `GonModelerSettingsData` DISABLE KEYS */;
INSERT INTO `GonModelerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'GonioModeling',1,0,1,'phase','x',5,0.000005,25,'x',NULL,0,0,25,1,NULL,NULL);
/*!40000 ALTER TABLE `GonModelerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridEntrySettingsData`
--

DROP TABLE IF EXISTS `GridEntrySettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridEntrySettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `grid name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridEntrySettingsData`
--

LOCK TABLES `GridEntrySettingsData` WRITE;
/*!40000 ALTER TABLE `GridEntrySettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `GridEntrySettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridHolderData`
--

DROP TABLE IF EXISTS `GridHolderData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridHolderData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridHolderData`
--

LOCK TABLES `GridHolderData` WRITE;
/*!40000 ALTER TABLE `GridHolderData` DISABLE KEYS */;
INSERT INTO `GridHolderData` VALUES (1,'2019-02-01 01:03:09','fake',1),(2,'2019-02-01 01:03:50','Unknown Holder',0);
/*!40000 ALTER TABLE `GridHolderData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupData`
--

DROP TABLE IF EXISTS `GroupData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  `description` text,
  `REF|projectdata|privileges|privilege` int(11) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|projectdata|privileges|privilege` (`REF|projectdata|privileges|privilege`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupData`
--

LOCK TABLES `GroupData` WRITE;
/*!40000 ALTER TABLE `GroupData` DISABLE KEYS */;
INSERT INTO `GroupData` VALUES (1,'2019-01-31 02:15:02','administrators','Administrator Group - Have all the power on project and user management.',1),(2,'2019-01-31 02:15:02','power users','Power User Group - view, edit, all the projects.',2),(3,'2019-01-31 02:15:02','users','Normal User Group - view, edit all owned and shared projects.',3),(4,'2019-01-31 02:15:02','guests','Guest Group - view own and share projects',4),(5,'2019-01-31 02:15:02','disabled','Disabled Group - locked users',5);
/*!40000 ALTER TABLE `GroupData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HoleFinderSettingsData`
--

DROP TABLE IF EXISTS `HoleFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HoleFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lattice tolerance` double DEFAULT NULL,
  `blobs max` int(20) DEFAULT NULL,
  `lattice spacing` double DEFAULT NULL,
  `focus template thickness` tinyint(1) DEFAULT NULL,
  `skip` tinyint(1) DEFAULT NULL,
  `edge threshold` double DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SEQ|focus template` text,
  `edge log sigma` double DEFAULT NULL,
  `target template` tinyint(1) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `REF|LowPassFilterSettingsData|template lpf` int(20) DEFAULT NULL,
  `edge absolute` tinyint(1) DEFAULT NULL,
  `ice min mean` double DEFAULT NULL,
  `edge log size` int(20) DEFAULT NULL,
  `wait for done` tinyint(1) DEFAULT NULL,
  `template type` text,
  `lattice hole radius` double DEFAULT NULL,
  `focus stats radius` int(20) DEFAULT NULL,
  `focus hole` text,
  `SEQ|acquisition template` text,
  `user check` tinyint(1) DEFAULT NULL,
  `edge type` text,
  `focus min mean thickness` double DEFAULT NULL,
  `blobs border` int(20) DEFAULT NULL,
  `SEQ|template rings` text,
  `ice max mean` double DEFAULT NULL,
  `REF|LowPassFilterSettingsData|edge lpf` int(20) DEFAULT NULL,
  `name` text,
  `focus max mean thickness` double DEFAULT NULL,
  `image filename` text,
  `ice max std` double DEFAULT NULL,
  `lattice zero thickness` double DEFAULT NULL,
  `blobs max size` int(20) DEFAULT NULL,
  `edge` tinyint(1) DEFAULT NULL,
  `focus max stdev thickness` double DEFAULT NULL,
  `queue` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `threshold method` text,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `blobs min size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HoleFinderSettingsData`
--

LOCK TABLES `HoleFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `HoleFinderSettingsData` DISABLE KEYS */;
INSERT INTO `HoleFinderSettingsData` VALUES (1,'2019-01-31 02:15:02',0.2,300,102,0,0,4000,240,1,'[(0, 0)]',1.4,0,0,4,0,0.28,9,1,'cross',15,10,'Good Hole','[(0, 0)]',1,'sobel',0.05,20,'[(35, 41)]',0.3,3,'Hole Targeting',0.5,NULL,0.2,52000,200,1,0.5,0,1,1,NULL,0,0,0),(2,'2019-01-31 02:15:02',0.1,1,150,1,0,6000,0.01,1,'[(220, 0), (150, 150), (0, 220), (-150, 150), (-220, 0), (-150, -150), (0, -220), (150, -150)]',1.4,1,0,NULL,0,0.01,9,1,'phase',15,100,'Off','[(0, 0)]',1,'sobel',0.05,20,'[(160, 170)]',0.2,NULL,'Exposure Targeting',0.5,NULL,0.2,26000,1000,1,0.5,0,1,1,NULL,0,0,0);
/*!40000 ALTER TABLE `HoleFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageCommentData`
--

DROP TABLE IF EXISTS `ImageCommentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageCommentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageCommentData`
--

LOCK TABLES `ImageCommentData` WRITE;
/*!40000 ALTER TABLE `ImageCommentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageCommentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InstrumentData`
--

DROP TABLE IF EXISTS `InstrumentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InstrumentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  `hostname` text,
  `description` text,
  `cs` double DEFAULT NULL,
  `pixelmax` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InstrumentData`
--

LOCK TABLES `InstrumentData` WRITE;
/*!40000 ALTER TABLE `InstrumentData` DISABLE KEYS */;
INSERT INTO `InstrumentData` VALUES (1,'2019-02-01 01:03:09','fake','fake',NULL,NULL,NULL,1),(2,'2019-02-01 01:28:17','SimTEM300','leginon-docker',NULL,0.0027,NULL,0),(3,'2019-02-01 01:32:33','SimCCDCamera','leginon-docker',NULL,NULL,NULL,0),(4,'2019-02-01 01:32:48','SimK2CountingCamera','leginon-docker',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `InstrumentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JAHCFinderSettingsData`
--

DROP TABLE IF EXISTS `JAHCFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JAHCFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lattice tolerance` double DEFAULT NULL,
  `blobs max` int(20) DEFAULT NULL,
  `blobs border` int(20) DEFAULT NULL,
  `lattice spacing` double DEFAULT NULL,
  `focus template thickness` tinyint(1) DEFAULT NULL,
  `skip` tinyint(1) DEFAULT NULL,
  `edge threshold` double DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SEQ|focus template` text,
  `edge log sigma` double DEFAULT NULL,
  `target template` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `REF|LowPassFilterSettingsData|template lpf` int(20) DEFAULT NULL,
  `edge absolute` tinyint(1) DEFAULT NULL,
  `ice min mean` double DEFAULT NULL,
  `edge log size` int(20) DEFAULT NULL,
  `wait for done` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `template type` text,
  `lattice hole radius` double DEFAULT NULL,
  `focus stats radius` int(20) DEFAULT NULL,
  `focus hole` text,
  `SEQ|acquisition template` text,
  `template diameter` int(20) DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `edge type` text,
  `focus min mean thickness` double DEFAULT NULL,
  `file diameter` int(20) DEFAULT NULL,
  `ice max mean` double DEFAULT NULL,
  `REF|LowPassFilterSettingsData|edge lpf` int(20) DEFAULT NULL,
  `name` text,
  `focus max mean thickness` double DEFAULT NULL,
  `image filename` text,
  `ice max std` double DEFAULT NULL,
  `lattice zero thickness` double DEFAULT NULL,
  `blobs max size` int(20) DEFAULT NULL,
  `queue` tinyint(1) DEFAULT NULL,
  `template filename` text,
  `edge` tinyint(1) DEFAULT NULL,
  `focus max stdev thickness` double DEFAULT NULL,
  `threshold method` text,
  `sort target` int(20) DEFAULT NULL,
  `blobs min size` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `lattice extend` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JAHCFinderSettingsData`
--

LOCK TABLES `JAHCFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `JAHCFinderSettingsData` DISABLE KEYS */;
INSERT INTO `JAHCFinderSettingsData` VALUES (1,'2019-01-31 02:15:02',0.2,300,20,77,0,0,100,3,1,'[(0, 0)]',1.4,0,1,0,NULL,0,0.05,9,1,1,'cross',15,10,'Any Hole','[(0, 0)]',45,1,'sobel',0.05,168,0.16,5,'Hole Targeting',0.5,NULL,0.15,140,1000,0,NULL,1,0.5,'Threshold = mean + A * stdev',0,10,0,NULL),(2,'2019-01-31 02:15:02',0.1,1,20,150,1,0,100,0.0009,1,'[(-12, -144), (-144, 12), (12, 144), (144, -12)]',1.4,1,1,0,6,0,0.05,9,1,1,'phase',35,50,'Off','[(0, 35), (0, -35)]',115,1,'sobel',0.05,168,5,6,'Exposure Targeting Q',4,NULL,0.5,115,10000,1,NULL,1,0.1,'Threshold = A',0,10,0,'off'),(3,'2019-01-31 02:15:02',0.1,1,20,150,1,0,100,0.0009,1,'[(-12, -144), (-144, 12), (12, 144), (144, -12)]',1.4,1,1,0,6,0,0.05,9,1,1,'phase',35,50,'Off','[(0, 35), (0, -35)]',115,1,'sobel',0.05,168,5,6,'Exposure Targeting',4,NULL,0.5,115,10000,0,NULL,1,0.1,'Threshold = A',0,10,0,'off'),(4,'2019-01-31 02:15:02',0.1,1,20,150,1,1,100,1.5,1,'[(22, 128), (128, -22), (-22, -128), (-128, 22)]',1.4,1,1,0,4,0,0.05,9,1,1,'cross',30,100,'Off','[(0, -35), (0, 35)]',140,1,'sobel',0.1,168,0.2,4,'RCT Targeting',0.3,NULL,0.2,110,1000,1,NULL,1,0.1,'Threshold = mean + A * stdev',0,10,0,'off'),(5,'2019-01-31 02:15:02',0.1,300,20,110,0,0,100,2,1,'[]',1.4,0,1,0,4,0,0.15,9,1,1,'cross',30,10,'Off','[]',90,1,'sobel',0.05,168,0.35,4,'Square Targeting',0.5,NULL,0.3,200,1000,0,NULL,1,0.5,'Threshold = mean + A * stdev',0,10,0,'off');
/*!40000 ALTER TABLE `JAHCFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LaunchedApplicationData`
--

DROP TABLE IF EXISTS `LaunchedApplicationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LaunchedApplicationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  `SEQ|launchers` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LaunchedApplicationData`
--

LOCK TABLES `LaunchedApplicationData` WRITE;
/*!40000 ALTER TABLE `LaunchedApplicationData` DISABLE KEYS */;
INSERT INTO `LaunchedApplicationData` VALUES (1,'2019-02-01 01:27:51',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(2,'2019-02-01 01:32:20',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(3,'2019-02-01 01:58:49',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(4,'2019-02-01 02:01:17',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(5,'2019-02-01 02:03:56',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(6,'2019-02-01 02:06:36',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(7,'2019-02-01 02:09:16',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(8,'2019-02-01 02:12:06',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(9,'2019-02-01 02:23:03',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2),(10,'2019-02-01 02:27:54',1,'[(\'scope\', u\'leginon-docker\'), (\'main\', u\'leginon-docker\')]',2);
/*!40000 ALTER TABLE `LaunchedApplicationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LowPassFilterSettingsData`
--

DROP TABLE IF EXISTS `LowPassFilterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LowPassFilterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `on` tinyint(1) DEFAULT NULL,
  `sigma` double DEFAULT NULL,
  `size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LowPassFilterSettingsData`
--

LOCK TABLES `LowPassFilterSettingsData` WRITE;
/*!40000 ALTER TABLE `LowPassFilterSettingsData` DISABLE KEYS */;
INSERT INTO `LowPassFilterSettingsData` VALUES (1,'2019-01-31 02:15:02',0,1.4,5),(2,'2019-01-31 02:15:02',1,1.4,5),(3,'2019-01-31 02:15:02',NULL,1,NULL),(4,'2019-01-31 02:15:02',0,1,0),(5,'2019-01-31 02:15:02',1,1,5),(6,'2019-01-31 02:15:02',0,1,0);
/*!40000 ALTER TABLE `LowPassFilterSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MagnificationsData`
--

DROP TABLE IF EXISTS `MagnificationsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MagnificationsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|InstrumentData|instrument` int(20) DEFAULT NULL,
  `SEQ|magnifications` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|InstrumentData|instrument` (`REF|InstrumentData|instrument`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MagnificationsData`
--

LOCK TABLES `MagnificationsData` WRITE;
/*!40000 ALTER TABLE `MagnificationsData` DISABLE KEYS */;
INSERT INTO `MagnificationsData` VALUES (1,'2019-02-01 01:28:17',2,'[1550.0, 2250.0, 3600.0, 130000.0]');
/*!40000 ALTER TABLE `MagnificationsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MatrixCalibrationData`
--

DROP TABLE IF EXISTS `MatrixCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MatrixCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `type` text,
  `ARRAY|matrix|1_1` double DEFAULT NULL,
  `ARRAY|matrix|1_2` double DEFAULT NULL,
  `ARRAY|matrix|2_1` double DEFAULT NULL,
  `ARRAY|matrix|2_2` double DEFAULT NULL,
  `REF|MatrixCalibrationData|previous` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`),
  KEY `REF|MatrixCalibrationData|previous` (`REF|MatrixCalibrationData|previous`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MatrixCalibrationData`
--

LOCK TABLES `MatrixCalibrationData` WRITE;
/*!40000 ALTER TABLE `MatrixCalibrationData` DISABLE KEYS */;
INSERT INTO `MatrixCalibrationData` VALUES (1,'2019-02-11 22:37:16',2,2,3,1550,300000,NULL,'stage position',-0.0000000987789751576714,-0.00000000567865919105988,0.00000000683750430250777,-0.00000010223147490382,NULL),(2,'2019-02-11 22:37:16',2,2,3,1550,300000,NULL,'image shift',0.0000000816167584305834,0.0000000640331775151164,-0.0000000648337363364016,0.0000000820111154907986,NULL),(3,'2019-02-11 22:37:23',2,2,4,2250,300000,NULL,'stage position',-0.00000000046938080141769,-0.00000000654352569779965,0.00000000646723511479086,-0.000000000631573396613731,NULL),(4,'2019-02-11 22:37:23',2,2,4,2250,300000,NULL,'image shift',-0.00000000595454634958237,-0.00000000242735033864833,0.00000000234279611710779,-0.00000000590273739027417,NULL),(5,'2019-02-11 22:37:23',2,2,4,3600,300000,NULL,'stage position',-0.000000000179388615988866,-0.00000000391998389448238,0.00000000382578418581237,-0.000000000153750769462578,NULL),(6,'2019-02-11 22:37:23',2,2,4,3600,300000,NULL,'image shift',-0.0000000035513794079988,-0.00000000161432474151724,0.0000000016449991656779,-0.0000000035080689735319,NULL),(7,'2019-02-11 22:37:23',2,2,4,130000,300000,NULL,'stage position',-0.0000000000085044046443112,-0.00000000010530114351522,0.000000000104238672871471,-0.00000000000718640887321886,NULL),(8,'2019-02-11 22:37:23',2,2,4,130000,300000,NULL,'image shift',-0.000000000099352657702144,-0.0000000000411621675235433,0.0000000000407410117683866,-0.0000000000973948186706735,NULL),(9,'2019-02-11 22:37:23',2,2,4,2250,300000,'micro','defocus',-151394059.555644,-2694517.30795489,49901160.2848481,-127311070.287999,NULL),(10,'2019-02-11 22:37:23',2,2,4,130000,300000,'nano','defocus',9052046997.44161,4409931787.88683,-5564225348.23822,8206448256.05436,NULL);
/*!40000 ALTER TABLE `MatrixCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MatrixCalibratorSettingsData`
--

DROP TABLE IF EXISTS `MatrixCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MatrixCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  `image shift tolerance` double DEFAULT NULL,
  `image shift shift fraction` double DEFAULT NULL,
  `image shift n average` int(20) DEFAULT NULL,
  `image shift interval` double DEFAULT NULL,
  `image shift current as base` tinyint(1) DEFAULT '0',
  `SUBD|image shift base|x` double DEFAULT NULL,
  `SUBD|image shift base|y` double DEFAULT NULL,
  `beam shift tolerance` double DEFAULT NULL,
  `beam shift shift fraction` double DEFAULT NULL,
  `beam shift n average` int(20) DEFAULT NULL,
  `beam shift interval` double DEFAULT NULL,
  `beam shift current as base` tinyint(1) DEFAULT '0',
  `SUBD|beam shift base|x` double DEFAULT NULL,
  `SUBD|beam shift base|y` double DEFAULT NULL,
  `stage position tolerance` double DEFAULT NULL,
  `stage position shift fraction` double DEFAULT NULL,
  `stage position n average` int(20) DEFAULT NULL,
  `stage position interval` double DEFAULT NULL,
  `stage position current as base` tinyint(1) DEFAULT '0',
  `SUBD|stage position base|x` double DEFAULT NULL,
  `SUBD|stage position base|y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MatrixCalibratorSettingsData`
--

LOCK TABLES `MatrixCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `MatrixCalibratorSettingsData` DISABLE KEYS */;
INSERT INTO `MatrixCalibratorSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Matrix',1,'None','None',0,1,'phase',1,12,25,1,0.000002,1,0,0,12,25,1,0.000002,1,0,0,12,25,1,0.000002,1,0,0),(2,'2019-01-31 02:15:02',1,'Matrix Calibrator',1,'None','None',0,1,'phase',1,12,25,1,0.000002,1,0,0,12,25,1,0.000002,1,0,0,12,25,1,0.000002,1,0,0);
/*!40000 ALTER TABLE `MatrixCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MosaicClickTargetFinderSettingsData`
--

DROP TABLE IF EXISTS `MosaicClickTargetFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MosaicClickTargetFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `mosaic image on tile change` tinyint(1) DEFAULT NULL,
  `REF|BlobFinderSettingsData|blobs` int(20) DEFAULT NULL,
  `no resubmit` tinyint(1) DEFAULT NULL,
  `name` text,
  `scale image` tinyint(1) DEFAULT NULL,
  `wait for done` tinyint(1) DEFAULT NULL,
  `calibration parameter` text,
  `scale size` int(20) DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `REF|LowPassFilterSettingsData|lpf` int(20) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `queue` tinyint(1) DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `min region area` double DEFAULT NULL,
  `max region area` double DEFAULT NULL,
  `ve limit` double DEFAULT NULL,
  `raster spacing` double DEFAULT NULL,
  `raster angle` double DEFAULT NULL,
  `watchdone` tinyint(1) DEFAULT NULL,
  `targetpreset` text,
  `raster overlap` double DEFAULT NULL,
  `min threshold` double DEFAULT NULL,
  `max threshold` double DEFAULT NULL,
  `raster calibration` text,
  `black on white` tinyint(1) DEFAULT NULL,
  `axis ratio` double DEFAULT NULL,
  `limit region in sections` tinyint(1) DEFAULT NULL,
  `section area` double DEFAULT NULL,
  ` max sections` int(20) DEFAULT NULL,
  `section display` tinyint(1) DEFAULT NULL,
  `max sections` int(20) DEFAULT NULL,
  `section axis ratio` double DEFAULT NULL,
  `find section options` text,
  `adjust section area` double DEFAULT NULL,
  `region from centers` tinyint(1) DEFAULT NULL,
  `create when done` tinyint(1) DEFAULT NULL,
  `create on tile change` text,
  `autofinder` tinyint(1) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|BlobFinderSettingsData|blobs` (`REF|BlobFinderSettingsData|blobs`),
  KEY `REF|LowPassFilterSettingsData|lpf` (`REF|LowPassFilterSettingsData|lpf`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MosaicClickTargetFinderSettingsData`
--

LOCK TABLES `MosaicClickTargetFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `MosaicClickTargetFinderSettingsData` DISABLE KEYS */;
INSERT INTO `MosaicClickTargetFinderSettingsData` VALUES (1,'2019-01-31 02:15:02',1,NULL,1,0,'Square Targeting',1,0,'stage position',512,100,1,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'all',NULL,0,0,0),(2,'2019-01-31 02:15:02',1,NULL,NULL,0,'Raster Center Targeting',1,0,'stage position',512,100,NULL,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'all',NULL,0,0,0),(3,'2019-01-31 02:15:02',1,NULL,NULL,0,'Rough Tissue Targeting',1,0,'stage position',512,100,2,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'all',NULL,0,0,0),(4,'2019-01-31 02:15:02',1,NULL,1,0,'Atlas View',1,0,'stage position',512,100,1,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'all',NULL,0,0,0);
/*!40000 ALTER TABLE `MosaicClickTargetFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MosaicTargetMakerSettingsData`
--

DROP TABLE IF EXISTS `MosaicTargetMakerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MosaicTargetMakerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `max targets` int(20) DEFAULT NULL,
  `name` text,
  `max size` int(20) DEFAULT NULL,
  `overlap` double DEFAULT NULL,
  `label` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `preset` text,
  `mosaic center` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `ignore request` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MosaicTargetMakerSettingsData`
--

LOCK TABLES `MosaicTargetMakerSettingsData` WRITE;
/*!40000 ALTER TABLE `MosaicTargetMakerSettingsData` DISABLE KEYS */;
INSERT INTO `MosaicTargetMakerSettingsData` VALUES (1,'2019-01-31 02:15:02',128,'Grid Targeting',16384,1,NULL,1,0.0009,'gr','stage center',1,0),(2,'2019-01-31 02:15:02',128,'Grid Targeting Robot',16384,1,NULL,1,0.0005,'gr','stage center',1,0),(3,'2019-01-31 02:15:02',128,'Grid Survey Targeting',16384,1,NULL,1,0.0005,'gr','stage center',1,0);
/*!40000 ALTER TABLE `MosaicTargetMakerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NavigatorSettingsData`
--

DROP TABLE IF EXISTS `NavigatorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NavigatorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `move type` text,
  `check calibration` tinyint(1) DEFAULT '0',
  `complete state` tinyint(1) DEFAULT '0',
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `max error` double DEFAULT NULL,
  `cycle each` tinyint(1) DEFAULT '0',
  `cycle after` tinyint(1) DEFAULT '0',
  `final image shift` tinyint(1) DEFAULT '0',
  `background readout` tinyint(1) DEFAULT '0',
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NavigatorSettingsData`
--

LOCK TABLES `NavigatorSettingsData` WRITE;
/*!40000 ALTER TABLE `NavigatorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `NavigatorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NodeSpecData`
--

DROP TABLE IF EXISTS `NodeSpecData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NodeSpecData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `class string` text,
  `alias` text,
  `launcher alias` text,
  `SEQ|dependencies` text,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NodeSpecData`
--

LOCK TABLES `NodeSpecData` WRITE;
/*!40000 ALTER TABLE `NodeSpecData` DISABLE KEYS */;
INSERT INTO `NodeSpecData` VALUES (1,'2019-03-21 05:02:09','EM','Instrument','scope','[]',1),(2,'2019-03-21 05:02:09','AlignZeroLossPeak','Align ZLP','main','[]',1),(3,'2019-03-21 05:02:09','BufferCycler','Buffer Cycling','main','[]',1),(4,'2019-03-21 05:02:09','TransformManager','Target Adjustment','main','[]',1),(5,'2019-03-21 05:02:09','Acquisition','Preview','main','[]',1),(6,'2019-03-21 05:02:09','MosaicClickTargetFinder','Square Targeting','main','[]',1),(7,'2019-03-21 05:02:09','Acquisition','Grid','main','[]',1),(8,'2019-03-21 05:02:09','Corrector','Correction','main','[]',1),(9,'2019-03-21 05:02:09','Acquisition','Square','main','[]',1),(10,'2019-03-21 05:02:09','JAHCFinder','Exposure Targeting','main','[]',1),(11,'2019-03-21 05:02:09','JAHCFinder','Hole Targeting','main','[]',1),(12,'2019-03-21 05:02:09','Focuser','Focus','main','[]',1),(13,'2019-03-21 05:02:09','FFTMaker','Exposure FFT','main','[]',1),(14,'2019-03-21 05:02:09','Acquisition','Exposure','main','[]',1),(15,'2019-03-21 05:02:09','DriftManager','Drift Monitor','main','[]',1),(16,'2019-03-21 05:02:09','Navigator','Navigation','main','[]',1),(17,'2019-03-21 05:02:09','Acquisition','Hole','main','[]',1),(18,'2019-03-21 05:02:09','PresetsManager','Presets Manager','main','[]',1),(19,'2019-03-21 05:02:09','Focuser','Z Focus','main','[]',1),(20,'2019-03-21 05:02:09','MosaicTargetMaker','Grid Targeting','main','[]',1),(21,'2019-03-21 05:02:09','BeamTiltCalibrator','Beam Tilt','main','[]',1),(22,'2019-03-21 05:02:09','AutoNitrogenFiller','N2 Filling','main','[]',1),(23,'2019-03-21 05:02:09','BeamTiltImager','Beam Tilt Image','main','[]',1),(24,'2019-03-21 05:02:09','TEMController','Scope Control','main','[]',1);
/*!40000 ALTER TABLE `NodeSpecData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PPBeamTiltRotationData`
--

DROP TABLE IF EXISTS `PPBeamTiltRotationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PPBeamTiltRotationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `probe` text,
  `angle` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PPBeamTiltRotationData`
--

LOCK TABLES `PPBeamTiltRotationData` WRITE;
/*!40000 ALTER TABLE `PPBeamTiltRotationData` DISABLE KEYS */;
INSERT INTO `PPBeamTiltRotationData` VALUES (1,'2019-02-11 22:37:16',2,2,3,'nano',5.23598775598299),(2,'2019-02-11 22:37:16',2,2,3,'nano',5.23598775598299),(3,'2019-02-11 22:37:23',2,2,4,'nano',5.23598775598299),(4,'2019-02-11 22:37:23',2,2,4,'nano',5.23598775598299);
/*!40000 ALTER TABLE `PPBeamTiltRotationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PPBeamTiltVectorsData`
--

DROP TABLE IF EXISTS `PPBeamTiltVectorsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PPBeamTiltVectorsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `probe` text,
  `SEQ|vectors` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PPBeamTiltVectorsData`
--

LOCK TABLES `PPBeamTiltVectorsData` WRITE;
/*!40000 ALTER TABLE `PPBeamTiltVectorsData` DISABLE KEYS */;
INSERT INTO `PPBeamTiltVectorsData` VALUES (1,'2019-02-11 22:37:16',2,2,3,'nano','([1, 0], [0, 1])'),(2,'2019-02-11 22:37:16',2,2,3,'nano','([1, 0], [0, 1])'),(3,'2019-02-11 22:37:23',2,2,4,'nano','([1, 0], [0, 1])'),(4,'2019-02-11 22:37:23',2,2,4,'nano','([1, 0], [0, 1])');
/*!40000 ALTER TABLE `PPBeamTiltVectorsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlateTestImagerSettingsData`
--

DROP TABLE IF EXISTS `PhasePlateTestImagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlateTestImagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `correct image` tinyint(1) DEFAULT NULL,
  `SEQ|preset order` text,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `move type` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `wait for process` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `phase plate number` int(20) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT '0',
  `park after list` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlateTestImagerSettingsData`
--

LOCK TABLES `PhasePlateTestImagerSettingsData` WRITE;
/*!40000 ALTER TABLE `PhasePlateTestImagerSettingsData` DISABLE KEYS */;
INSERT INTO `PhasePlateTestImagerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'[u\'gr\']',1,'image shift',1,2.5,1,NULL,0,NULL,1,'Check PP Low Mag',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',0,0,1,0,0,'Continue',65536,50,0,0,0,0,1,0,0,0);
/*!40000 ALTER TABLE `PhasePlateTestImagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlateTesterSettingsData`
--

DROP TABLE IF EXISTS `PhasePlateTesterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlateTesterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `correct image` tinyint(1) DEFAULT NULL,
  `SEQ|preset order` text,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `move type` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `wait for process` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `phase plate number` int(20) DEFAULT NULL,
  `total positions` int(20) DEFAULT NULL,
  `total test positions` int(20) DEFAULT NULL,
  `current position` int(20) DEFAULT NULL,
  `start position` int(20) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT '0',
  `park after list` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlateTesterSettingsData`
--

LOCK TABLES `PhasePlateTesterSettingsData` WRITE;
/*!40000 ALTER TABLE `PhasePlateTesterSettingsData` DISABLE KEYS */;
INSERT INTO `PhasePlateTesterSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'[u\'ep\']',1,'image shift',1,10,1,NULL,0,NULL,1,'Check PP Patches',0,1,1,'presets manager',0,'acquisition',0,0,0,0.001,0,'one',0,0,1,0,0,'Continue',65536,50,0,0,0,0,1,76,76,1,1,0,0,0);
/*!40000 ALTER TABLE `PhasePlateTesterSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PixelSizeCalibrationData`
--

DROP TABLE IF EXISTS `PixelSizeCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PixelSizeCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `pixelsize` double DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PixelSizeCalibrationData`
--

LOCK TABLES `PixelSizeCalibrationData` WRITE;
/*!40000 ALTER TABLE `PixelSizeCalibrationData` DISABLE KEYS */;
INSERT INTO `PixelSizeCalibrationData` VALUES (1,'2019-02-11 22:37:16',2,2,3,1550,NULL,0.000000104,'TIA'),(2,'2019-02-11 22:37:23',2,2,4,1550,NULL,0.00000000893617,'(Extrapolated)'),(3,'2019-02-11 22:37:23',2,2,4,2250,NULL,0.00000000615603,'(Extrapolated)'),(4,'2019-02-11 22:37:23',2,2,4,3600,NULL,0.00000000384752,'(Extrapolated)'),(5,'2019-02-11 22:37:23',2,2,4,130000,NULL,0.00000000010605,'averaged from 3 values');
/*!40000 ALTER TABLE `PixelSizeCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PixelSizeCalibratorSettingsData`
--

DROP TABLE IF EXISTS `PixelSizeCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PixelSizeCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  `lattice a` double DEFAULT NULL,
  `lattice b` double DEFAULT NULL,
  `lattice gamma` double DEFAULT NULL,
  `h1` int(20) DEFAULT NULL,
  `k1` int(20) DEFAULT NULL,
  `h2` int(20) DEFAULT NULL,
  `k2` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PixelSizeCalibratorSettingsData`
--

LOCK TABLES `PixelSizeCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `PixelSizeCalibratorSettingsData` DISABLE KEYS */;
INSERT INTO `PixelSizeCalibratorSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Pixel Size',1,0,1,'None','None','phase',1,69,173.5,90,0,6,0,-6);
/*!40000 ALTER TABLE `PixelSizeCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PresetData`
--

DROP TABLE IF EXISTS `PresetData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PresetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `name` text,
  `magnification` int(20) DEFAULT NULL,
  `spot size` int(20) DEFAULT NULL,
  `intensity` double DEFAULT NULL,
  `SUBD|image shift|x` double DEFAULT NULL,
  `SUBD|image shift|y` double DEFAULT NULL,
  `SUBD|beam shift|x` double DEFAULT NULL,
  `SUBD|beam shift|y` double DEFAULT NULL,
  `defocus` double DEFAULT NULL,
  `defocus range min` double DEFAULT NULL,
  `defocus range max` double DEFAULT NULL,
  `SUBD|dimension|x` int(20) DEFAULT NULL,
  `SUBD|dimension|y` int(20) DEFAULT NULL,
  `SUBD|binning|x` int(20) DEFAULT NULL,
  `SUBD|binning|y` int(20) DEFAULT NULL,
  `SUBD|offset|x` int(20) DEFAULT NULL,
  `SUBD|offset|y` int(20) DEFAULT NULL,
  `exposure time` double DEFAULT NULL,
  `removed` tinyint(1) DEFAULT '0',
  `hasref` tinyint(1) DEFAULT '0',
  `dose` double DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `tem energy filter` tinyint(1) DEFAULT '0',
  `tem energy filter width` double DEFAULT NULL,
  `energy filter` tinyint(1) DEFAULT '0',
  `energy filter width` double DEFAULT NULL,
  `pre exposure` double DEFAULT NULL,
  `skip` tinyint(1) DEFAULT '0',
  `alt channel` tinyint(1) DEFAULT '0',
  `save frames` tinyint(1) DEFAULT '0',
  `frame time` double DEFAULT NULL,
  `align frames` tinyint(1) DEFAULT '0',
  `align filter` text,
  `readout delay` int(20) DEFAULT NULL,
  `probe mode` text,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PresetData`
--

LOCK TABLES `PresetData` WRITE;
/*!40000 ALTER TABLE `PresetData` DISABLE KEYS */;
INSERT INTO `PresetData` VALUES (1,NOW(),2,0,'gr',1550,1,0,0,0,0,0,0,NULL,NULL,4096,4096,1,1,0,0,200,0,0,NULL,2,3,0,0,1,20,0,0,0,0,NULL,0,'None',NULL,'micro',NULL),(2,'2019-02-01 01:32:48',2,1,'sq',1550,1,0,0,0,0,0,0,NULL,NULL,3710,3838,1,1,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200000,0,'None',NULL,'micro','()'),(3,'2019-02-01 01:33:22',2,1,'sq',2250,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,0,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(4,'2019-02-01 01:33:50',2,2,'hl',2250,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,0,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(5,'2019-02-01 01:33:56',2,3,'fc',2250,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,0,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(6,'2019-02-01 01:34:01',2,4,'fa',2250,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,0,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(7,'2019-02-01 01:34:11',2,3,'fc',130000,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,0,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(8,'2019-02-01 01:34:39',2,4,'fa',130000,1,0,0,0,0,0,-0.000002,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,0,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(9,'2019-02-01 01:34:59',2,3,'fc',130000,1,0,0,0,0,0,-0.0000007,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(10,'2019-02-01 01:35:06',2,4,'fa',130000,1,0,0,0,0,0,-0.000002,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(11,'2019-02-01 01:35:48',2,4,'fa',130000,1,0,0,0,0,0,-0.000002,-0.000001,-0.000002,3710,3838,1,1,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(12,'2019-02-01 01:36:04',2,3,'fc',130000,1,0,0,0,0,0,-0.0000007,NULL,NULL,924,924,2,2,465,497,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(13,'2019-02-01 01:36:16',2,2,'hl',2250,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(14,'2019-02-01 01:36:30',2,4,'fa',130000,1,0,0,0,0,0,-0.000002,-0.000001,-0.000002,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(15,'2019-02-01 01:36:42',2,5,'en',130000,1,0,0,0,0,0,-0.000001080097546479613,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(16,'2019-02-01 01:37:08',2,5,'en',130000,1,0,0,0,0,0,-0.000001080097546479613,-0.000001,-0.000002,3710,3838,1,1,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(17,'2019-02-01 01:37:23',2,4,'fa',130000,1,0,0,0,0,0,-0.000002,-0.000001,-0.000002,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(18,'2019-02-01 01:37:31',2,3,'fc',130000,1,0,0,0,0,0,-0.0000007,NULL,NULL,924,924,2,2,465,497,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(19,'2019-02-01 01:37:40',2,2,'hl',2250,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(20,'2019-02-01 01:37:47',2,2,'hl',3600,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(21,'2019-02-01 01:47:11',2,2,'hl',3600,9,0,0,0,0,0,-0.00005,NULL,NULL,927,959,4,4,0,0,800,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(22,'2019-02-01 01:47:17',2,2,'hl',3600,9,0,0,0,0,0,-0.00005,NULL,NULL,927,959,4,4,0,0,800,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'micro','()'),(23,'2019-02-01 01:48:23',2,5,'en',130000,6,0,0,0,0,0,-0.000002,-0.000001,-0.000002,3710,3838,1,1,0,0,1000,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(24,'2019-02-01 01:48:45',2,4,'fa',130000,6,0,0,0,0,0,-0.000002,-0.000001,-0.000002,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(25,'2019-02-01 01:49:05',2,3,'fc',130000,6,0,0,0,0,0,-0.0000007,NULL,NULL,924,924,2,2,465,497,400,0,0,NULL,2,4,0,0,1,20,0,0,0,0,200,0,'None',NULL,'nano','()'),(26,'2019-02-01 01:49:31',2,0,'gr',1550,1,0,0,0,0,0,0,NULL,NULL,1024,1024,4,4,0,0,200,0,0,NULL,2,3,0,0,0,20,0,0,0,0,NULL,0,'None',NULL,'micro','()'),(27,'2019-02-01 02:07:29',2,1,'sq',2250,1,0,0,0,0,0,0,NULL,NULL,927,959,4,4,0,0,200,0,0,NULL,2,4,0,0,0,20,0,0,0,0,200,0,'None',NULL,'micro','()');
/*!40000 ALTER TABLE `PresetData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PresetsManagerSettingsData`
--

DROP TABLE IF EXISTS `PresetsManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PresetsManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `xy only` tinyint(1) DEFAULT '0',
  `stage always` tinyint(1) DEFAULT '0',
  `cycle` tinyint(1) DEFAULT '0',
  `optimize cycle` tinyint(1) DEFAULT '0',
  `mag only` tinyint(1) DEFAULT '0',
  `apply offset` tinyint(1) DEFAULT '0',
  `blank` tinyint(1) DEFAULT '0',
  `smallsize` int(20) DEFAULT NULL,
  `import random` tinyint(1) DEFAULT '0',
  `disable stage for image shift` tinyint(1) DEFAULT '0',
  `idle minute` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PresetsManagerSettingsData`
--

LOCK TABLES `PresetsManagerSettingsData` WRITE;
/*!40000 ALTER TABLE `PresetsManagerSettingsData` DISABLE KEYS */;
INSERT INTO `PresetsManagerSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Presets Manager',1,1,1,1,1,1,0,0,0,1024,0,0,NULL),(2,'2019-02-01 01:38:37',2,'Presets Manager',1,1,1,1,1,1,0,0,0,1024,0,0,30),(3,'2019-02-01 01:38:37',2,'Presets Manager',1,1,1,1,1,1,0,0,0,1024,0,0,30),(4,'2019-02-01 01:38:52',2,'Presets Manager',1,1,1,1,0,1,0,0,0,1024,1,0,30);
/*!40000 ALTER TABLE `PresetsManagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectionSubModeMappingData`
--

DROP TABLE IF EXISTS `ProjectionSubModeMappingData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectionSubModeMappingData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|MagnificationsData|magnification list` int(20) DEFAULT NULL,
  `name` text,
  `submode index` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|MagnificationsData|magnification list` (`REF|MagnificationsData|magnification list`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectionSubModeMappingData`
--

LOCK TABLES `ProjectionSubModeMappingData` WRITE;
/*!40000 ALTER TABLE `ProjectionSubModeMappingData` DISABLE KEYS */;
INSERT INTO `ProjectionSubModeMappingData` VALUES (1,'2019-02-01 01:28:17',1,'LM',0,1550),(2,'2019-02-01 01:28:17',1,'SA',1,2250),(3,'2019-02-01 01:28:17',1,'SA',1,3600),(4,'2019-02-01 01:28:17',1,'SA',1,130000),(5,'2019-02-11 22:37:16',1,'SA',3,130000),(6,'2019-02-11 22:37:16',1,'SA',3,3600),(7,'2019-02-11 22:37:16',1,'SA',3,2250),(8,'2019-02-11 22:37:16',1,'LM',1,1550),(9,'2019-02-11 22:37:23',1,'SA',1,130000),(10,'2019-02-11 22:37:23',1,'SA',1,3600),(11,'2019-02-11 22:37:23',1,'SA',1,2250),(12,'2019-02-11 22:37:23',1,'LM',1,1550);
/*!40000 ALTER TABLE `ProjectionSubModeMappingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RCTAcquisitionSettingsData`
--

DROP TABLE IF EXISTS `RCTAcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RCTAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `wait time` double DEFAULT NULL,
  `SEQ|preset order` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `name` text,
  `correct image` tinyint(1) DEFAULT NULL,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `tilt2` double DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `tilt1` double DEFAULT NULL,
  `duplicate target type` text,
  `wait for process` tinyint(1) DEFAULT NULL,
  `move type` text,
  `minsize` double DEFAULT NULL,
  `sigma` double DEFAULT NULL,
  `maxsize` double DEFAULT NULL,
  `minstable` double DEFAULT NULL,
  `minperiod` double DEFAULT NULL,
  `stepsize` double DEFAULT NULL,
  `tilts` text,
  `process target type` text,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `blur` double DEFAULT NULL,
  `sharpen` double DEFAULT NULL,
  `drift threshold` double DEFAULT NULL,
  `drift preset` text,
  `save integer` int(20) DEFAULT NULL,
  `nsteps` int(20) DEFAULT NULL,
  `pause` double DEFAULT NULL,
  `medfilt` double DEFAULT NULL,
  `lowfilt` double DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT '0',
  `park after list` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RCTAcquisitionSettingsData`
--

LOCK TABLES `RCTAcquisitionSettingsData` WRITE;
/*!40000 ALTER TABLE `RCTAcquisitionSettingsData` DISABLE KEYS */;
INSERT INTO `RCTAcquisitionSettingsData` VALUES (1,'2019-01-31 02:15:02',0,'[u\'en\']',1,2.5,1,NULL,1,1,'RCT',1,1,NULL,1,NULL,NULL,0,'stage position',50,NULL,0.8,NULL,NULL,15,'(-45, 0)','acquisition','navigator',0.00000006,NULL,NULL,0.0000000006,'fa',0,NULL,1,2,1,0,0,0.0000005,0,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0);
/*!40000 ALTER TABLE `RCTAcquisitionSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RasterFinderSettingsData`
--

DROP TABLE IF EXISTS `RasterFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RasterFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `raster limit` int(20) DEFAULT NULL,
  `SEQ|acquisition constant template` text,
  `SEQ|focus constant template` text,
  `ice box size` double DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `focus convolve` tinyint(1) DEFAULT NULL,
  `ice max mean` double DEFAULT NULL,
  `name` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `acquisition convolve` tinyint(1) DEFAULT NULL,
  `image filename` text,
  `ice thickness` double DEFAULT NULL,
  `ice max std` double DEFAULT NULL,
  `SEQ|focus convolve template` text,
  `ice min mean` double DEFAULT NULL,
  `ice min std` double DEFAULT NULL,
  `wait for done` tinyint(1) DEFAULT NULL,
  `raster spacing` int(20) DEFAULT NULL,
  `SEQ|acquisition convolve template` text,
  `queue` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `raster center on image` tinyint(1) DEFAULT NULL,
  `raster angle` double DEFAULT NULL,
  `raster center x` int(20) DEFAULT NULL,
  `raster center y` int(20) DEFAULT NULL,
  `select polygon` tinyint(1) DEFAULT NULL,
  `publish polygon` tinyint(1) DEFAULT NULL,
  `raster spacing asymm` int(20) DEFAULT NULL,
  `raster limit asymm` int(20) DEFAULT NULL,
  `raster symmetric` int(20) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `raster preset` text,
  `raster movetype` text,
  `raster overlap` double DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RasterFinderSettingsData`
--

LOCK TABLES `RasterFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `RasterFinderSettingsData` DISABLE KEYS */;
INSERT INTO `RasterFinderSettingsData` VALUES (1,'2019-01-31 02:15:02',9,'[]','[(550, 512)]',15,1,0,0.3,'Subsquare Targeting',1,0,1,NULL,140,0.2,'[]',0.05,NULL,1,50,'[(0, 0)]',0,1,1,1,-103.37793736856,0,0,0,0,50,0,1,0,'hl','stage position',0,0,0),(2,'2019-01-31 02:15:02',5,'[]','[(256, 200)]',15,1,0,0.2,'Exposure Targeting',1,0,1,NULL,110,0.2,'[]',0.05,0,1,100,'[(0, 0)]',0,1,1,1,0,0,0,0,0,0,0,1,0,'gr','stage position',0,0,0),(3,'2019-01-31 02:15:02',1,'[]','[]',15,1,1,0.2,'Square Centering',1,0,1,NULL,1000,0.2,'[(0, 0)]',0.05,NULL,1,100,'[(0, 0)]',0,1,1,1,0,0,0,0,0,0,0,1,0,'en','stage position',0,1,0),(4,'2019-01-31 02:15:02',5,'[]','[(256, 240)]',15,1,0,0.2,'RCT Targeting',1,0,1,NULL,110,0.2,'[]',0.05,0,1,100,'[(0, 0)]',1,1,1,1,0,0,0,0,0,0,0,1,0,'en','stage position',0,0,0),(5,'2019-01-31 02:15:02',2,'[]','[]',15,1,0,0.5,'Mid Mag Survey Targeting',1,0,0,NULL,100,0.2,'[]',0.05,0,1,100,'[]',0,1,1,1,0,0,0,0,0,0,0,1,0,'hl','stage position',0,0,0),(6,'2019-01-31 02:15:02',3,'[]','[(256, 256)]',15,1,0,0.2,'High Mag Raster Targeting',1,0,0,NULL,1000,0.2,'[]',0.05,0,1,100,'[]',0,1,1,1,0,0,0,0,0,0,0,1,0,'gr','stage position',0,0,0);
/*!40000 ALTER TABLE `RasterFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RasterTargetFilterSettingsData`
--

DROP TABLE IF EXISTS `RasterTargetFilterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RasterTargetFilterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `raster spacing` double DEFAULT NULL,
  `raster angle` double DEFAULT NULL,
  `raster preset` text,
  `raster movetype` text,
  `raster overlap` double DEFAULT NULL,
  `raster width` double DEFAULT NULL,
  `target type` text,
  `ellipse angle` double DEFAULT NULL,
  `ellipse a` double DEFAULT NULL,
  `ellipse b` double DEFAULT NULL,
  `user check` int(20) DEFAULT NULL,
  `raster offset` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RasterTargetFilterSettingsData`
--

LOCK TABLES `RasterTargetFilterSettingsData` WRITE;
/*!40000 ALTER TABLE `RasterTargetFilterSettingsData` DISABLE KEYS */;
INSERT INTO `RasterTargetFilterSettingsData` VALUES (1,'2019-01-31 02:15:02',1,'Raster Generation',1,0,20,0,'hl','stage position',0,NULL,'acquisition',0,2,2,1,0),(2,'2019-01-31 02:15:02',1,'Final Raster Targeting',1,0,50,0,'hl','stage position',0,NULL,'acquisition',0,2,2,1,0);
/*!40000 ALTER TABLE `RasterTargetFilterSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RobotSettingsData`
--

DROP TABLE IF EXISTS `RobotSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RobotSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `column pressure threshold` double DEFAULT NULL,
  `default Z position` double DEFAULT NULL,
  `simulate` tinyint(1) DEFAULT '0',
  `turbo on` tinyint(1) DEFAULT '0',
  `grid clear wait` tinyint(1) DEFAULT '0',
  `pause` tinyint(1) DEFAULT '0',
  `grid tray` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RobotSettingsData`
--

LOCK TABLES `RobotSettingsData` WRITE;
/*!40000 ALTER TABLE `RobotSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `RobotSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RotationCenterData`
--

DROP TABLE IF EXISTS `RotationCenterData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RotationCenterData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `SUBD|beam tilt|x` double DEFAULT NULL,
  `SUBD|beam tilt|y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RotationCenterData`
--

LOCK TABLES `RotationCenterData` WRITE;
/*!40000 ALTER TABLE `RotationCenterData` DISABLE KEYS */;
INSERT INTO `RotationCenterData` VALUES (1,'2019-02-11 22:37:16',2,2,3,3600,300000,'micro',-0.0104445686554127,0.00848699583985805),(2,'2019-02-11 22:37:16',2,2,3,130000,300000,'nano',-0.00411839260035528,-0.00482338004909035),(3,'2019-02-11 22:37:16',2,2,3,3600,300000,'micro',-0.0104445686554127,0.00848699583985805),(4,'2019-02-11 22:37:16',2,2,3,130000,300000,'nano',-0.00411839260035528,-0.00482338004909035),(5,'2019-02-11 22:37:23',2,2,4,130000,300000,'nano',-0.00411839260035528,-0.00482338004909035),(6,'2019-02-11 22:37:23',2,2,4,3600,300000,'micro',-0.0104445686554127,0.00848699583985805),(7,'2019-02-11 22:37:23',2,2,4,130000,300000,'nano',-0.00411839260035528,-0.00482338004909035);
/*!40000 ALTER TABLE `RotationCenterData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SessionData`
--

DROP TABLE IF EXISTS `SessionData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SessionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` text,
  `REF|UserData|user` int(20) DEFAULT NULL,
  `image path` text,
  `comment` text,
  `hidden` tinyint(4) DEFAULT '0',
  `REF|InstrumentData|instrument` int(20) DEFAULT NULL,
  `REF|GridHolderData|holder` int(20) DEFAULT NULL,
  `frame path` text,
  `remote passcode` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|UserData|user` (`REF|UserData|user`),
  KEY `REF|GridHolderData|holder` (`REF|GridHolderData|holder`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SessionData`
--

LOCK TABLES `SessionData` WRITE;
/*!40000 ALTER TABLE `SessionData` DISABLE KEYS */;
INSERT INTO `SessionData` VALUES (1,'2019-01-31 02:15:02','importsettings20190130181502',1,NULL,'import default',1,NULL,NULL,NULL,NULL),(2,'2019-02-01 01:03:50','19jan31a',1,'/emg/data/leginon/19jan31a/rawdata','initializing session',0,NULL,2,'/emg/data/frames/19jan31a/rawdata',NULL);
/*!40000 ALTER TABLE `SessionData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SessionReservationData`
--

DROP TABLE IF EXISTS `SessionReservationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SessionReservationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `reserved` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SessionReservationData`
--

LOCK TABLES `SessionReservationData` WRITE;
/*!40000 ALTER TABLE `SessionReservationData` DISABLE KEYS */;
INSERT INTO `SessionReservationData` VALUES (1,'2019-02-01 01:03:09','19jan31a',1),(2,'2019-02-01 01:13:39','19jan31b',1),(3,'2019-02-01 01:13:45','19jan31b',0),(4,'2019-02-01 01:27:18','19jan31b',1),(5,'2019-02-01 01:27:36','19jan31b',0);
/*!40000 ALTER TABLE `SessionReservationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SetupWizardSettingsData`
--

DROP TABLE IF EXISTS `SetupWizardSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SetupWizardSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `session type` text,
  `selected session` text,
  `limit` tinyint(1) DEFAULT '0',
  `n limit` int(20) DEFAULT NULL,
  `connect` tinyint(1) DEFAULT '0',
  `c2 size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SetupWizardSettingsData`
--

LOCK TABLES `SetupWizardSettingsData` WRITE;
/*!40000 ALTER TABLE `SetupWizardSettingsData` DISABLE KEYS */;
INSERT INTO `SetupWizardSettingsData` VALUES (1,'2019-02-01 01:03:55',2,NULL,NULL,'Create a new session','19jan31a',1,10,NULL,100),(2,'2019-02-01 01:27:38',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(3,'2019-02-01 01:32:12',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(4,'2019-02-01 01:58:42',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(5,'2019-02-01 02:01:12',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(6,'2019-02-01 02:03:50',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(7,'2019-02-01 02:06:29',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(8,'2019-02-01 02:09:09',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(9,'2019-02-01 02:12:01',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(10,'2019-02-01 02:22:58',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100),(11,'2019-02-01 02:27:48',2,NULL,NULL,'Return to an existing session','19jan31a',1,10,NULL,100);
/*!40000 ALTER TABLE `SetupWizardSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StageModelCalibrationData`
--

DROP TABLE IF EXISTS `StageModelCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StageModelCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `label` text,
  `axis` text,
  `period` double DEFAULT NULL,
  `ARRAY|a|1_1` double DEFAULT NULL,
  `ARRAY|b|1_1` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StageModelCalibrationData`
--

LOCK TABLES `StageModelCalibrationData` WRITE;
/*!40000 ALTER TABLE `StageModelCalibrationData` DISABLE KEYS */;
INSERT INTO `StageModelCalibrationData` VALUES (1,'2019-02-11 22:37:16',2,2,3,'17mar20b','x',0.000039,0,0),(2,'2019-02-11 22:37:16',2,2,3,'17mar20b','y',0.000039,0,0),(3,'2019-02-11 22:37:23',2,2,4,'17apr28b','x',0.000039,0,0),(4,'2019-02-11 22:37:23',2,2,4,'17apr28b','y',0.000039,0,0);
/*!40000 ALTER TABLE `StageModelCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StageModelMagCalibrationData`
--

DROP TABLE IF EXISTS `StageModelMagCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StageModelMagCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `label` text,
  `axis` text,
  `angle` double DEFAULT NULL,
  `mean` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StageModelMagCalibrationData`
--

LOCK TABLES `StageModelMagCalibrationData` WRITE;
/*!40000 ALTER TABLE `StageModelMagCalibrationData` DISABLE KEYS */;
INSERT INTO `StageModelMagCalibrationData` VALUES (1,'2019-02-11 22:37:16',2,2,3,1550,300000,'17nov08h','x',-1.63990632797504,0.0000000990153392070475),(2,'2019-02-11 22:37:16',2,2,3,1550,300000,'17nov08h','y',3.08610260488457,0.000000102389069881597),(3,'2019-02-11 22:37:23',2,2,4,2250,300000,'17nov09i','x',-3.06914141020241,0.00000000648424616796151),(4,'2019-02-11 22:37:23',2,2,4,3600,300000,'17apr28b','x',-3.09473760068663,0.00000000382998758639743),(5,'2019-02-11 22:37:23',2,2,4,2250,300000,'17nov09i','y',1.66701709435327,0.00000000657393440133643),(6,'2019-02-11 22:37:23',2,2,4,3600,300000,'17apr28b','y',1.60999852850988,0.00000000392299796483653);
/*!40000 ALTER TABLE `StageModelMagCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiltRotateSettingsData`
--

DROP TABLE IF EXISTS `TiltRotateSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TiltRotateSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `tilts` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiltRotateSettingsData`
--

LOCK TABLES `TiltRotateSettingsData` WRITE;
/*!40000 ALTER TABLE `TiltRotateSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TiltRotateSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TomographySettingsData`
--

DROP TABLE IF EXISTS `TomographySettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TomographySettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `display image` tinyint(1) DEFAULT NULL,
  `SEQ|registration preset order` text,
  `wait time` double DEFAULT NULL,
  `SEQ|preset order` text,
  `tilt max` double DEFAULT NULL,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `cosine exposure` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `tilt min` double DEFAULT NULL,
  `thickness value` double DEFAULT NULL,
  `run buffer cycle` tinyint(1) DEFAULT NULL,
  `correct image` tinyint(1) DEFAULT NULL,
  `move type` text,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `name` text,
  `align zero loss peak` tinyint(1) DEFAULT NULL,
  `xcf bin` int(20) DEFAULT NULL,
  `duplicate target type` text,
  `wait for process` tinyint(1) DEFAULT NULL,
  `tilt start` double DEFAULT NULL,
  `tilt step` double DEFAULT NULL,
  `tilt order` text,
  `dose` double DEFAULT NULL,
  `min exposure` double DEFAULT NULL,
  `max exposure` double DEFAULT NULL,
  `use preset exposure` tinyint(1) DEFAULT NULL,
  `process target type` text,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `equally sloped` tinyint(1) DEFAULT NULL,
  `equally sloped n` int(20) DEFAULT NULL,
  `measure dose` tinyint(1) DEFAULT NULL,
  `mean threshold` double DEFAULT NULL,
  `collection threshold` double DEFAULT NULL,
  `tilt pause time` double DEFAULT NULL,
  `measure defocus` tinyint(1) DEFAULT NULL,
  `integer` tinyint(1) DEFAULT NULL,
  `intscale` double DEFAULT NULL,
  `pausegroup` tinyint(1) DEFAULT NULL,
  `save integer` int(20) DEFAULT NULL,
  `model mag` text,
  `z0 error` double DEFAULT NULL,
  `phi` double DEFAULT NULL,
  `offset` double DEFAULT NULL,
  `fixed model` int(20) DEFAULT NULL,
  `offset2` double DEFAULT NULL,
  `phi2` double DEFAULT NULL,
  `use lpf` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `use wiener` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wiener max tilt` double DEFAULT NULL,
  `use tilt` int(20) DEFAULT NULL,
  `fit data points` int(20) DEFAULT NULL,
  `taper size` int(20) DEFAULT NULL,
  `wait for reference` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT '0',
  `park after list` tinyint(1) DEFAULT '0',
  `z0` double DEFAULT NULL,
  `use z0` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TomographySettingsData`
--

LOCK TABLES `TomographySettingsData` WRITE;
/*!40000 ALTER TABLE `TomographySettingsData` DISABLE KEYS */;
INSERT INTO `TomographySettingsData` VALUES (1,'2019-01-31 02:15:02',1,NULL,0,'[u\'tomo\']',60,1,2.5,1,NULL,1,NULL,1,-60,NULL,0,1,'stage position',1,'Tomography',0,1,NULL,0,0,1,'sequential',200,0.025,2,0,'acquisition','navigator',0.00000006,0,8,1,100,90,1,0,1,1,NULL,0,'custom values',0.000002,0,0,1,0,0,0,1,1,NULL,0.0000002,NULL,1,4,10,0,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,0);
/*!40000 ALTER TABLE `TomographySettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransformManagerSettingsData`
--

DROP TABLE IF EXISTS `TransformManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransformManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `registration` text,
  `threshold` double DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `timeout` int(20) DEFAULT NULL,
  `min mag` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransformManagerSettingsData`
--

LOCK TABLES `TransformManagerSettingsData` WRITE;
/*!40000 ALTER TABLE `TransformManagerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransformManagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserData`
--

DROP TABLE IF EXISTS `UserData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(24) DEFAULT NULL,
  `firstname` varchar(24) DEFAULT NULL,
  `lastname` varchar(24) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `REF|GroupData|group` int(20) DEFAULT NULL,
  `noleginon` tinyint(1) DEFAULT '0',
  `advanced` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  UNIQUE KEY `username` (`username`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|GroupData|group` (`REF|GroupData|group`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserData`
--

LOCK TABLES `UserData` WRITE;
/*!40000 ALTER TABLE `UserData` DISABLE KEYS */;
INSERT INTO `UserData` VALUES (1,'2019-01-31 02:15:02','administrator','Appion-Leginon','Administrator','10a97bd6798984c67d096f7a8d7d158d','you@nowhere.org',1,0,1),(2,'2019-01-31 02:15:02','anonymous','Public','User','294de3557d9d00b3d2d8a1e6aab028cf','you@nowhere.org',4,1,0);
/*!40000 ALTER TABLE `UserData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ViewerImageStatus`
--

DROP TABLE IF EXISTS `ViewerImageStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ViewerImageStatus` (
  `DEF_id` int(11) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(11) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(11) DEFAULT NULL,
  `status` enum('hidden','visible','exemplar','trash') DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ViewerImageStatus`
--

LOCK TABLES `ViewerImageStatus` WRITE;
/*!40000 ALTER TABLE `ViewerImageStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ViewerImageStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_comment`
--

DROP TABLE IF EXISTS `viewer_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sessionId` int(11) DEFAULT NULL,
  `type` enum('rt','post') DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `name` text,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `sessionId` (`sessionId`),
  KEY `imageId` (`imageId`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_comment`
--

LOCK TABLES `viewer_comment` WRITE;
/*!40000 ALTER TABLE `viewer_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_del_image`
--

DROP TABLE IF EXISTS `viewer_del_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_del_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(50) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `status` enum('deleted','marked') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `username` (`username`),
  KEY `sessionId` (`sessionId`),
  KEY `imageId` (`imageId`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_del_image`
--

LOCK TABLES `viewer_del_image` WRITE;
/*!40000 ALTER TABLE `viewer_del_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_del_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-20 22:04:05
