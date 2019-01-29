-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: leginondb
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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

CREATE database leginondb;
USE leginondb;

--
-- Table structure for table `AcquisitionFFTData`
--

DROP TABLE IF EXISTS `AcquisitionFFTData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcquisitionFFTData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|source` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|AcquisitionImageData|source` (`REF|AcquisitionImageData|source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquisitionFFTData`
--

LOCK TABLES `AcquisitionFFTData` WRITE;
/*!40000 ALTER TABLE `AcquisitionFFTData` DISABLE KEYS */;
/*!40000 ALTER TABLE `AcquisitionFFTData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcquisitionImageData`
--

DROP TABLE IF EXISTS `AcquisitionImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcquisitionImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `REF|EMTargetData|emtarget` int(20) DEFAULT NULL,
  `REF|GridData|grid` int(20) DEFAULT NULL,
  `REF|SpotWellMapData|spotmap` int(20) DEFAULT NULL,
  `REF|TiltSeriesData|tilt series` int(20) DEFAULT NULL,
  `version` int(20) DEFAULT NULL,
  `tiltnumber` int(20) DEFAULT NULL,
  `REF|MoverParamsData|mover` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  `REF|PhasePlateUsageData|phase plate` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`),
  KEY `REF|EMTargetData|emtarget` (`REF|EMTargetData|emtarget`),
  KEY `REF|GridData|grid` (`REF|GridData|grid`),
  KEY `REF|SpotWellMapData|spotmap` (`REF|SpotWellMapData|spotmap`),
  KEY `REF|TiltSeriesData|tilt series` (`REF|TiltSeriesData|tilt series`),
  KEY `REF|MoverParamsData|mover` (`REF|MoverParamsData|mover`),
  KEY `REF|PhasePlateUsageData|phase plate` (`REF|PhasePlateUsageData|phase plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquisitionImageData`
--

LOCK TABLES `AcquisitionImageData` WRITE;
/*!40000 ALTER TABLE `AcquisitionImageData` DISABLE KEYS */;
/*!40000 ALTER TABLE `AcquisitionImageData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcquisitionImageStatsData`
--

DROP TABLE IF EXISTS `AcquisitionImageStatsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcquisitionImageStatsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquisitionImageStatsData`
--

LOCK TABLES `AcquisitionImageStatsData` WRITE;
/*!40000 ALTER TABLE `AcquisitionImageStatsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `AcquisitionImageStatsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcquisitionImageTargetData`
--

DROP TABLE IF EXISTS `AcquisitionImageTargetData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcquisitionImageTargetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `delta row` double DEFAULT NULL,
  `delta column` double DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `type` text,
  `version` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `status` text,
  `REF|GridData|grid` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|list` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `pre_exposure` tinyint(1) DEFAULT '0',
  `REF|AcquisitionImageTargetData|fromtarget` int(20) DEFAULT NULL,
  `REF|SpotWellMapData|spotmap` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|last_focused` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|GridData|grid` (`REF|GridData|grid`),
  KEY `REF|ImageTargetListData|list` (`REF|ImageTargetListData|list`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `REF|AcquisitionImageTargetData|fromtarget` (`REF|AcquisitionImageTargetData|fromtarget`),
  KEY `REF|SpotWellMapData|spotmap` (`REF|SpotWellMapData|spotmap`),
  KEY `REF|ImageTargetListData|last_focused` (`REF|ImageTargetListData|last_focused`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquisitionImageTargetData`
--

LOCK TABLES `AcquisitionImageTargetData` WRITE;
/*!40000 ALTER TABLE `AcquisitionImageTargetData` DISABLE KEYS */;
/*!40000 ALTER TABLE `AcquisitionImageTargetData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcquisitionSettingsData`
--

DROP TABLE IF EXISTS `AcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `adjust for drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` int(20) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquisitionSettingsData`
--

LOCK TABLES `AcquisitionSettingsData` WRITE;
/*!40000 ALTER TABLE `AcquisitionSettingsData` DISABLE KEYS */;
INSERT INTO `AcquisitionSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'[u\'gr\']',0,'stage position',1,1.5,1,NULL,0,NULL,1,'Grid',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(2,'2019-01-26 04:40:38',1,'[u\'sq\']',0,'stage position',1,1.5,1,NULL,1,NULL,1,'Square',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(3,'2019-01-26 04:40:38',1,'[u\'rsq\']',0,'stage position',1,1.5,1,NULL,1,NULL,1,'RCT Square',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(4,'2019-01-26 04:40:38',1,'[u\'hl\']',1,'stage position',1,1.5,1,NULL,1,NULL,1,'Hole',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(5,'2019-01-26 04:40:38',1,'[u\'hl\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Preview',0,1,NULL,1,'presets manager',0.000001,'preview',0,0,0,0.001,0,NULL,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(6,'2019-01-26 04:40:38',1,'[u\'en\']',1,'image shift',1,2.5,1,NULL,0,NULL,1,'Exposure',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'one',0,0,1,0,0,'Continue',65536,50,0,0,0,0,0,0,0,0,NULL,NULL,NULL),(7,'2019-01-26 04:40:38',1,'[u\'sq\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Square Q',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(8,'2019-01-26 04:40:38',1,'[u\'hl\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Hole Q',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(9,'2019-01-26 04:40:38',1,'[u\'preview\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Tomography Preview',0,1,NULL,1,'presets manager',0,'preview',0,0,0,0.001,0,NULL,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(10,'2019-01-26 04:40:38',1,'[u\'hl\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Final Section',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',1,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(11,'2019-01-26 04:40:38',1,'[u\'hl\']',1,'stage position',1,2.5,1,NULL,1,NULL,1,'Subsquare',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(12,'2019-01-26 04:40:38',1,'[u\'sq\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Centered Square',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(13,'2019-01-26 04:40:38',1,'[u\'sq\']',0,'stage position',1,2.5,1,NULL,1,NULL,1,'Rough Tissue',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(14,'2019-01-26 04:40:38',1,'[u\'hl\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Final Raster',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'one',1,1,NULL,0,1,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(15,'2019-01-26 04:40:38',1,'[u\'gr\']',0,'stage position',1,2.5,1,NULL,1,NULL,1,'Grid Survey',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(16,'2019-01-26 04:40:38',1,'[u\'hl\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Mid Mag Survey',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(17,'2019-01-26 04:40:38',1,'[u\'sq\']',0,'stage position',1,2.5,1,NULL,1,NULL,1,'Reacquisition',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(18,'2019-01-26 04:40:38',1,'[u\'en\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'High Mag Acquisition',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'one',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL),(19,'2019-01-26 04:40:38',1,'[u\'en\']',1,'stage position',1,2.5,1,NULL,0,NULL,1,'Exposure MultiMove',0,1,NULL,1,'navigator',0.0000001,'acquisition',0,0,0,0.0000005,1,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,0,0,0,0,NULL,NULL,NULL),(20,'2019-01-26 04:40:38',1,'[u\'hl\']',0,'stage position',1,2.5,1,NULL,0,NULL,1,'Align Parent Image',0,1,NULL,1,'presets manager',0,'acquisition',0,0,0,0.001,0,NULL,'no',0,0,NULL,0,0,'Continue',65536,50,0,0,0,0,0,0,0,0,NULL,NULL,NULL);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `check preset` text,
  `threshold` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlignZLPSettingsData`
--

LOCK TABLES `AlignZLPSettingsData` WRITE;
/*!40000 ALTER TABLE `AlignZLPSettingsData` DISABLE KEYS */;
INSERT INTO `AlignZLPSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Align ZLP',1,1,'stage position',3,3600,'fa',0,30,'presets manager',0.0000005,0.000001);
/*!40000 ALTER TABLE `AlignZLPSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlignZeroLossPeakData`
--

DROP TABLE IF EXISTS `AlignZeroLossPeakData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlignZeroLossPeakData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlignZeroLossPeakData`
--

LOCK TABLES `AlignZeroLossPeakData` WRITE;
/*!40000 ALTER TABLE `AlignZeroLossPeakData` DISABLE KEYS */;
/*!40000 ALTER TABLE `AlignZeroLossPeakData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlignmentManagerSettingsData`
--

DROP TABLE IF EXISTS `AlignmentManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AlignmentManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `reset a` tinyint(1) DEFAULT NULL,
  `reset z` tinyint(1) DEFAULT NULL,
  `reset xy` tinyint(1) DEFAULT NULL,
  `repeat time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlignmentManagerSettingsData`
--

LOCK TABLES `AlignmentManagerSettingsData` WRITE;
/*!40000 ALTER TABLE `AlignmentManagerSettingsData` DISABLE KEYS */;
INSERT INTO `AlignmentManagerSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Align Manager',1,0,0,0,0,3600);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `version` int(20) DEFAULT NULL,
  `hide` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApplicationData`
--

LOCK TABLES `ApplicationData` WRITE;
/*!40000 ALTER TABLE `ApplicationData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AutoFillerSettingsData`
--

LOCK TABLES `AutoFillerSettingsData` WRITE;
/*!40000 ALTER TABLE `AutoFillerSettingsData` DISABLE KEYS */;
INSERT INTO `AutoFillerSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'N2 Filling',1,1,1200,'both cold',45,70,17,70);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
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
  `bypass` tinyint(1) DEFAULT '0',
  `return settle time` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamFixerSettingsData`
--

LOCK TABLES `BeamFixerSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamFixerSettingsData` DISABLE KEYS */;
INSERT INTO `BeamFixerSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Fix Beam',1,'stage position',3,3600,0,3,'None','None',0,0,0,'[u\'fc\', u\'fa\', u\'en\', u\'ef\']',25,0,NULL);
/*!40000 ALTER TABLE `BeamFixerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamSizeCalibrationData`
--

DROP TABLE IF EXISTS `BeamSizeCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamSizeCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `probe mode` text,
  `spot size` int(20) DEFAULT NULL,
  `c2 size` int(20) DEFAULT NULL,
  `focused beam` double DEFAULT NULL,
  `scale` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamSizeCalibrationData`
--

LOCK TABLES `BeamSizeCalibrationData` WRITE;
/*!40000 ALTER TABLE `BeamSizeCalibrationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BeamSizeCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamSizeCalibratorSettingsData`
--

DROP TABLE IF EXISTS `BeamSizeCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamSizeCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  `beam diameter` double DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamSizeCalibratorSettingsData`
--

LOCK TABLES `BeamSizeCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamSizeCalibratorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BeamSizeCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BeamTiltCalibratorSettingsData`
--

DROP TABLE IF EXISTS `BeamTiltCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeamTiltCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `defocus beam tilt` double DEFAULT NULL,
  `first defocus` double DEFAULT NULL,
  `second defocus` double DEFAULT NULL,
  `stig beam tilt` double DEFAULT NULL,
  `stig delta` double DEFAULT NULL,
  `measure beam tilt` double DEFAULT NULL,
  `correct tilt` tinyint(1) DEFAULT NULL,
  `settling time` double DEFAULT NULL,
  `comafree beam tilt` double DEFAULT NULL,
  `comafree misalign` double DEFAULT NULL,
  `imageshift coma tilt` double DEFAULT NULL,
  `imageshift coma step` double DEFAULT NULL,
  `imageshift coma number` int(20) DEFAULT NULL,
  `imageshift coma repeat` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamTiltCalibratorSettingsData`
--

LOCK TABLES `BeamTiltCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamTiltCalibratorSettingsData` DISABLE KEYS */;
INSERT INTO `BeamTiltCalibratorSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Beam Tilt',1,0,1,'phase',0.01,-0.000002,-0.000004,0.01,0.2,0.01,1,0.5,0.005,0.002,0.01,0.000005,2,1,'None','None',1);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `SEQ|preset order` text,
  `process target type` text,
  `park after list` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `correct image` tinyint(1) DEFAULT NULL,
  `display image` tinyint(1) DEFAULT NULL,
  `save image` tinyint(1) DEFAULT NULL,
  `wait for process` tinyint(1) DEFAULT NULL,
  `wait for rejects` tinyint(1) DEFAULT NULL,
  `wait for reference` tinyint(1) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `drift between` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT NULL,
  `save integer` tinyint(1) DEFAULT NULL,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `beam tilt` double DEFAULT NULL,
  `min threshold` double DEFAULT NULL,
  `max threshold` double DEFAULT NULL,
  `correct` tinyint(1) DEFAULT NULL,
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamTiltFixerSettingsData`
--

LOCK TABLES `BeamTiltFixerSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamTiltFixerSettingsData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `adjust for drift` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `process target type` text,
  `save integer` int(20) DEFAULT NULL,
  `drift between` int(20) DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `wait for reference` int(20) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  `beam tilt` double DEFAULT NULL,
  `beam tilt count` int(20) DEFAULT NULL,
  `sites` int(20) DEFAULT NULL,
  `startangle` double DEFAULT NULL,
  `tableau type` text,
  `tableau binning` int(20) DEFAULT NULL,
  `tableau split` int(20) DEFAULT NULL,
  `correlation type` text,
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeamTiltImagerSettingsData`
--

LOCK TABLES `BeamTiltImagerSettingsData` WRITE;
/*!40000 ALTER TABLE `BeamTiltImagerSettingsData` DISABLE KEYS */;
INSERT INTO `BeamTiltImagerSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'[u\'fc\']',0,'image shift',1,2.5,1,NULL,0,NULL,1,'Beam Tilt Image',0,1,NULL,1,'presets manager',0,'acquisition',0,0,NULL,0.001,0,NULL,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0.005,1,4,0,'beam tilt series-power',2,8,'phase',0,NULL,0,NULL,NULL);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event class string` text,
  `from node alias` text,
  `to node alias` text,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BindingSpecData`
--

LOCK TABLES `BindingSpecData` WRITE;
/*!40000 ALTER TABLE `BindingSpecData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `isdefault` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlobFinderSettingsData`
--

LOCK TABLES `BlobFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `BlobFinderSettingsData` DISABLE KEYS */;
INSERT INTO `BlobFinderSettingsData` VALUES (1,'2019-01-26 04:40:38',NULL,100,10,10000,1000,10,0,20000,500,1,NULL,0);
/*!40000 ALTER TABLE `BlobFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrightImageData`
--

DROP TABLE IF EXISTS `BrightImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrightImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrightImageData`
--

LOCK TABLES `BrightImageData` WRITE;
/*!40000 ALTER TABLE `BrightImageData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrightImageData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BufferCyclerSettingsData`
--

DROP TABLE IF EXISTS `BufferCyclerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BufferCyclerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `repeat time` double DEFAULT NULL,
  `trip level` double DEFAULT NULL,
  `trip value` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BufferCyclerSettingsData`
--

LOCK TABLES `BufferCyclerSettingsData` WRITE;
/*!40000 ALTER TABLE `BufferCyclerSettingsData` DISABLE KEYS */;
INSERT INTO `BufferCyclerSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Buffer Cycling',1,1,1200,NULL,80);
/*!40000 ALTER TABLE `BufferCyclerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BufferFramePathData`
--

DROP TABLE IF EXISTS `BufferFramePathData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BufferFramePathData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|BufferHostData|host` int(20) DEFAULT NULL,
  `buffer frame path` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|BufferHostData|host` (`REF|BufferHostData|host`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BufferFramePathData`
--

LOCK TABLES `BufferFramePathData` WRITE;
/*!40000 ALTER TABLE `BufferFramePathData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BufferFramePathData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BufferHostData`
--

DROP TABLE IF EXISTS `BufferHostData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BufferHostData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `buffer hostname` text,
  `buffer base path` text,
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BufferHostData`
--

LOCK TABLES `BufferHostData` WRITE;
/*!40000 ALTER TABLE `BufferHostData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BufferHostData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `C2ApertureSizeData`
--

DROP TABLE IF EXISTS `C2ApertureSizeData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `C2ApertureSizeData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `C2ApertureSizeData`
--

LOCK TABLES `C2ApertureSizeData` WRITE;
/*!40000 ALTER TABLE `C2ApertureSizeData` DISABLE KEYS */;
/*!40000 ALTER TABLE `C2ApertureSizeData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CameraDarkCurrentUpdatedData`
--

DROP TABLE IF EXISTS `CameraDarkCurrentUpdatedData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CameraDarkCurrentUpdatedData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hostname` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CameraDarkCurrentUpdatedData`
--

LOCK TABLES `CameraDarkCurrentUpdatedData` WRITE;
/*!40000 ALTER TABLE `CameraDarkCurrentUpdatedData` DISABLE KEYS */;
/*!40000 ALTER TABLE `CameraDarkCurrentUpdatedData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CameraEMData`
--

DROP TABLE IF EXISTS `CameraEMData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CameraEMData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `system time` double DEFAULT NULL,
  `SUBD|dimension|x` int(20) DEFAULT NULL,
  `SUBD|dimension|y` int(20) DEFAULT NULL,
  `SUBD|binning|x` int(20) DEFAULT NULL,
  `SUBD|binning|y` int(20) DEFAULT NULL,
  `binned multiplier` double DEFAULT NULL,
  `SUBD|offset|x` int(20) DEFAULT NULL,
  `SUBD|offset|y` int(20) DEFAULT NULL,
  `exposure time` double DEFAULT NULL,
  `exposure type` text,
  `exposure timestamp` double DEFAULT NULL,
  `inserted` tinyint(1) DEFAULT '0',
  `dump` tinyint(1) DEFAULT '0',
  `SUBD|pixel size|x` double DEFAULT NULL,
  `SUBD|pixel size|y` double DEFAULT NULL,
  `energy filtered` tinyint(1) DEFAULT '0',
  `energy filter` tinyint(1) DEFAULT '0',
  `energy filter width` double DEFAULT NULL,
  `nframes` int(20) DEFAULT NULL,
  `save frames` tinyint(1) DEFAULT '0',
  `align frames` tinyint(1) DEFAULT '0',
  `align filter` text,
  `frames name` text,
  `frame time` double DEFAULT NULL,
  `frame flip` tinyint(1) DEFAULT '0',
  `frame rotate` int(20) DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `temperature status` text,
  `readout delay` int(20) DEFAULT NULL,
  `gain index` int(20) DEFAULT NULL,
  `system corrected` tinyint(1) DEFAULT '0',
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CameraEMData`
--

LOCK TABLES `CameraEMData` WRITE;
/*!40000 ALTER TABLE `CameraEMData` DISABLE KEYS */;
/*!40000 ALTER TABLE `CameraEMData` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CameraSensitivityCalibrationData`
--

LOCK TABLES `CameraSensitivityCalibrationData` WRITE;
/*!40000 ALTER TABLE `CameraSensitivityCalibrationData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CameraSettingsData`
--

LOCK TABLES `CameraSettingsData` WRITE;
/*!40000 ALTER TABLE `CameraSettingsData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `limit` int(20) DEFAULT NULL,
  `target type` text,
  `user check` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CenterTargetFilterSettingsData`
--

LOCK TABLES `CenterTargetFilterSettingsData` WRITE;
/*!40000 ALTER TABLE `CenterTargetFilterSettingsData` DISABLE KEYS */;
INSERT INTO `CenterTargetFilterSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Square Target Filtering',1,0,1,'acquisition',1);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wait for done` tinyint(1) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `ignore images` tinyint(1) DEFAULT NULL,
  `no resubmit` tinyint(1) DEFAULT NULL,
  `name` text,
  `queue` tinyint(1) DEFAULT NULL,
  `user check` tinyint(1) DEFAULT NULL,
  `isdefault` tinyint(1) DEFAULT NULL,
  `queue drift` tinyint(1) DEFAULT NULL,
  `sort target` int(20) DEFAULT NULL,
  `allow append` int(20) DEFAULT NULL,
  `skip` int(20) DEFAULT NULL,
  `multifocus` tinyint(1) DEFAULT '0',
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClickTargetFinderSettingsData`
--

LOCK TABLES `ClickTargetFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `ClickTargetFinderSettingsData` DISABLE KEYS */;
INSERT INTO `ClickTargetFinderSettingsData` VALUES (1,'2019-01-26 04:40:38',1,1,0,0,'Hole Targeting',1,1,1,1,0,0,0,0,NULL,0),(2,'2019-01-26 04:40:38',1,1,0,0,'Tomography Targeting',1,1,1,1,0,0,0,0,NULL,0);
/*!40000 ALTER TABLE `ClickTargetFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientPortData`
--

DROP TABLE IF EXISTS `ClientPortData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientPortData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hostname` text,
  `primary port` int(20) DEFAULT NULL,
  `send port start` int(20) DEFAULT NULL,
  `send port end` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientPortData`
--

LOCK TABLES `ClientPortData` WRITE;
/*!40000 ALTER TABLE `ClientPortData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientPortData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConditioningDoneData`
--

DROP TABLE IF EXISTS `ConditioningDoneData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConditioningDoneData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ConditioningRequestData|request` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ConditioningRequestData|request` (`REF|ConditioningRequestData|request`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConditioningDoneData`
--

LOCK TABLES `ConditioningDoneData` WRITE;
/*!40000 ALTER TABLE `ConditioningDoneData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConditioningDoneData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConditioningRequestData`
--

DROP TABLE IF EXISTS `ConditioningRequestData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConditioningRequestData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `type` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConditioningRequestData`
--

LOCK TABLES `ConditioningRequestData` WRITE;
/*!40000 ALTER TABLE `ConditioningRequestData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConditioningRequestData` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConnectToClientsData`
--

LOCK TABLES `ConnectToClientsData` WRITE;
/*!40000 ALTER TABLE `ConnectToClientsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConnectToClientsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CorrectorPlanData`
--

DROP TABLE IF EXISTS `CorrectorPlanData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CorrectorPlanData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `SEQ|bad_rows` text,
  `SEQ|bad_cols` text,
  `SEQ|bad_pixels` text,
  `despike` tinyint(1) DEFAULT '0',
  `despike size` int(20) DEFAULT NULL,
  `despike threshold` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CorrectorPlanData`
--

LOCK TABLES `CorrectorPlanData` WRITE;
/*!40000 ALTER TABLE `CorrectorPlanData` DISABLE KEYS */;
/*!40000 ALTER TABLE `CorrectorPlanData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CorrectorSettingsData`
--

DROP TABLE IF EXISTS `CorrectorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CorrectorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CorrectorSettingsData`
--

LOCK TABLES `CorrectorSettingsData` WRITE;
/*!40000 ALTER TABLE `CorrectorSettingsData` DISABLE KEYS */;
INSERT INTO `CorrectorSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Correction',11,3.5,0,3,2,'None','None',1,'average',0,65536,NULL,0);
/*!40000 ALTER TABLE `CorrectorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDinfoKeyData`
--

DROP TABLE IF EXISTS `DDinfoKeyData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDinfoKeyData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDinfoKeyData`
--

LOCK TABLES `DDinfoKeyData` WRITE;
/*!40000 ALTER TABLE `DDinfoKeyData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDinfoKeyData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDinfoValueData`
--

DROP TABLE IF EXISTS `DDinfoValueData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDinfoValueData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|DDinfoKeyData|infokey` int(20) DEFAULT NULL,
  `infovalue` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|DDinfoKeyData|infokey` (`REF|DDinfoKeyData|infokey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDinfoValueData`
--

LOCK TABLES `DDinfoValueData` WRITE;
/*!40000 ALTER TABLE `DDinfoValueData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDinfoValueData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DTFinderSettingsData`
--

DROP TABLE IF EXISTS `DTFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DTFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `check method` text,
  `multifocus` tinyint(1) DEFAULT '0',
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DTFinderSettingsData`
--

LOCK TABLES `DTFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `DTFinderSettingsData` DISABLE KEYS */;
INSERT INTO `DTFinderSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Tissue Centering',1,1,0,1,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,100,1.3,'phase',5,0,6,NULL,0,0);
/*!40000 ALTER TABLE `DTFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DarkImageData`
--

DROP TABLE IF EXISTS `DarkImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DarkImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DarkImageData`
--

LOCK TABLES `DarkImageData` WRITE;
/*!40000 ALTER TABLE `DarkImageData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DarkImageData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DequeuedImageTargetListData`
--

DROP TABLE IF EXISTS `DequeuedImageTargetListData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DequeuedImageTargetListData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|list` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ImageTargetListData|list` (`REF|ImageTargetListData|list`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DequeuedImageTargetListData`
--

LOCK TABLES `DequeuedImageTargetListData` WRITE;
/*!40000 ALTER TABLE `DequeuedImageTargetListData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DequeuedImageTargetListData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoGFinderSettingsData`
--

DROP TABLE IF EXISTS `DoGFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoGFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `wait for done` tinyint(1) DEFAULT '0',
  `ignore images` tinyint(1) DEFAULT '0',
  `queue` tinyint(1) DEFAULT '0',
  `user check` tinyint(1) DEFAULT '0',
  `check method` text,
  `queue drift` tinyint(1) DEFAULT '0',
  `sort target` tinyint(1) DEFAULT '0',
  `allow append` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `skip` tinyint(1) DEFAULT '0',
  `allow no focus` tinyint(1) DEFAULT '0',
  `image filename` text,
  `REF|LowPassFilterSettingsData|edge lpf` int(20) DEFAULT NULL,
  `edge` tinyint(1) DEFAULT '0',
  `edge type` text,
  `edge log size` int(20) DEFAULT NULL,
  `edge log sigma` double DEFAULT NULL,
  `edge absolute` tinyint(1) DEFAULT '0',
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
  `target template` tinyint(1) DEFAULT '0',
  `SEQ|focus template` text,
  `SEQ|acquisition template` text,
  `focus template thickness` tinyint(1) DEFAULT '0',
  `focus stats radius` int(20) DEFAULT NULL,
  `focus min mean thickness` double DEFAULT NULL,
  `focus max mean thickness` double DEFAULT NULL,
  `focus max stdev thickness` double DEFAULT NULL,
  `focus interval` int(20) DEFAULT NULL,
  `focus offset row` int(20) DEFAULT NULL,
  `focus offset col` int(20) DEFAULT NULL,
  `dog diameter` int(20) DEFAULT NULL,
  `dog invert` tinyint(1) DEFAULT '0',
  `dog k-factor` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoGFinderSettingsData`
--

LOCK TABLES `DoGFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `DoGFinderSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DoGFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoseCalibratorSettingsData`
--

DROP TABLE IF EXISTS `DoseCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoseCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `beam diameter` double DEFAULT NULL,
  `scale factor` double DEFAULT NULL,
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoseCalibratorSettingsData`
--

LOCK TABLES `DoseCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `DoseCalibratorSettingsData` DISABLE KEYS */;
INSERT INTO `DoseCalibratorSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Dose',1,'None','None',0,1,'phase',0.16,0.88,1);
/*!40000 ALTER TABLE `DoseCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoseImageData`
--

DROP TABLE IF EXISTS `DoseImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoseImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoseImageData`
--

LOCK TABLES `DoseImageData` WRITE;
/*!40000 ALTER TABLE `DoseImageData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DoseImageData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoseMeasurementData`
--

DROP TABLE IF EXISTS `DoseMeasurementData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoseMeasurementData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `dose` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoseMeasurementData`
--

LOCK TABLES `DoseMeasurementData` WRITE;
/*!40000 ALTER TABLE `DoseMeasurementData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DoseMeasurementData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DriftData`
--

DROP TABLE IF EXISTS `DriftData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DriftData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `rows` double DEFAULT NULL,
  `cols` double DEFAULT NULL,
  `rowmeters` double DEFAULT NULL,
  `colmeters` double DEFAULT NULL,
  `interval` double DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DriftData`
--

LOCK TABLES `DriftData` WRITE;
/*!40000 ALTER TABLE `DriftData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DriftData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DriftManagerSettingsData`
--

DROP TABLE IF EXISTS `DriftManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DriftManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `threshold` double DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `timeout` int(20) DEFAULT NULL,
  `beam tilt` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DriftManagerSettingsData`
--

LOCK TABLES `DriftManagerSettingsData` WRITE;
/*!40000 ALTER TABLE `DriftManagerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DriftManagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DriftMonitorRequestData`
--

DROP TABLE IF EXISTS `DriftMonitorRequestData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DriftMonitorRequestData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|EMTargetData|emtarget` int(20) DEFAULT NULL,
  `presetname` text,
  `threshold` double DEFAULT NULL,
  `SUBD|beamtilt|x` double DEFAULT NULL,
  `SUBD|beamtilt|y` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|EMTargetData|emtarget` (`REF|EMTargetData|emtarget`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DriftMonitorRequestData`
--

LOCK TABLES `DriftMonitorRequestData` WRITE;
/*!40000 ALTER TABLE `DriftMonitorRequestData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DriftMonitorRequestData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DriftMonitorResultData`
--

DROP TABLE IF EXISTS `DriftMonitorResultData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DriftMonitorResultData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `status` text,
  `REF|DriftData|final` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|DriftData|final` (`REF|DriftData|final`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DriftMonitorResultData`
--

LOCK TABLES `DriftMonitorResultData` WRITE;
/*!40000 ALTER TABLE `DriftMonitorResultData` DISABLE KEYS */;
/*!40000 ALTER TABLE `DriftMonitorResultData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMGridData`
--

DROP TABLE IF EXISTS `EMGridData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMGridData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `project` int(20) DEFAULT NULL,
  `REF|WellMappingTypeData|mapping` int(20) DEFAULT NULL,
  `well group` int(20) DEFAULT NULL,
  `print trial` int(20) DEFAULT NULL,
  `REF|PrepPlateData|plate` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|WellMappingTypeData|mapping` (`REF|WellMappingTypeData|mapping`),
  KEY `REF|PrepPlateData|plate` (`REF|PrepPlateData|plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMGridData`
--

LOCK TABLES `EMGridData` WRITE;
/*!40000 ALTER TABLE `EMGridData` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMGridData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMTargetData`
--

DROP TABLE IF EXISTS `EMTargetData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMTargetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `movetype` text,
  `SUBD|image shift|x` double DEFAULT NULL,
  `SUBD|image shift|y` double DEFAULT NULL,
  `SUBD|beam shift|x` double DEFAULT NULL,
  `SUBD|beam shift|y` double DEFAULT NULL,
  `SUBD|stage position|a` double DEFAULT NULL,
  `SUBD|stage position|b` double DEFAULT NULL,
  `SUBD|stage position|x` double DEFAULT NULL,
  `SUBD|stage position|y` double DEFAULT NULL,
  `SUBD|stage position|z` double DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `delta z` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMTargetData`
--

LOCK TABLES `EMTargetData` WRITE;
/*!40000 ALTER TABLE `EMTargetData` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMTargetData` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EucentricFocusData`
--

LOCK TABLES `EucentricFocusData` WRITE;
/*!40000 ALTER TABLE `EucentricFocusData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEQ|correction presets` text,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExposureFixerSettingsData`
--

LOCK TABLES `ExposureFixerSettingsData` WRITE;
/*!40000 ALTER TABLE `ExposureFixerSettingsData` DISABLE KEYS */;
INSERT INTO `ExposureFixerSettingsData` VALUES (1,'2019-01-26 04:40:38','[u\'en\', u\'fa\']',1,'Fix Exposure Time',1,'stage position',3,3600,0,1,20,1000,0,0,0);
/*!40000 ALTER TABLE `ExposureFixerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FFTMakerSettingsData`
--

DROP TABLE IF EXISTS `FFTMakerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFTMakerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process` tinyint(1) DEFAULT '0',
  `mask radius` double DEFAULT NULL,
  `label` text,
  `save` tinyint(1) DEFAULT '0',
  `reduced` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FFTMakerSettingsData`
--

LOCK TABLES `FFTMakerSettingsData` WRITE;
/*!40000 ALTER TABLE `FFTMakerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `FFTMakerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FixBeamData`
--

DROP TABLE IF EXISTS `FixBeamData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FixBeamData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FixBeamData`
--

LOCK TABLES `FixBeamData` WRITE;
/*!40000 ALTER TABLE `FixBeamData` DISABLE KEYS */;
/*!40000 ALTER TABLE `FixBeamData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FocusSequenceData`
--

DROP TABLE IF EXISTS `FocusSequenceData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocusSequenceData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `node name` text,
  `SEQ|sequence` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FocusSequenceData`
--

LOCK TABLES `FocusSequenceData` WRITE;
/*!40000 ALTER TABLE `FocusSequenceData` DISABLE KEYS */;
INSERT INTO `FocusSequenceData` VALUES (1,'2019-01-26 04:40:38',1,'Focus','[\'Defocus1\', \'Defocus2\', \'Manual_after\']',1),(2,'2019-01-26 04:40:38',1,'Z Focus','[u\'Stage_Tilt_Rough\', u\'Stage_Tilt_Fine\', \'Manual_after\']',1),(3,'2019-01-26 04:40:38',1,'Tomo Focus','[u\'Stage_Tilt_Fine1\', \'Stage_Tilt_Fine2\', \'Beam_Tilt_Fine\', \'Manual_after\']',1),(4,'2019-01-26 04:40:38',1,'Tomo Z Focus','[u\'Stage_Tilt_Rough\', \'Stage_Tilt_Fine\', \'Beam_Tilt_Auto\', \'Manual_after\']',1),(5,'2019-01-26 04:40:38',1,'Cal Focus','[u\'Stage_Tilt_Rough\', \'Stage_Tilt_Fine\', \'Beam_Tilt_Auto\', \'Manual_after\']',1),(6,'2019-01-26 04:40:38',1,'RCT Focus','[u\'Z_to_Eucentric\', u\'Def_to_Eucentric\']',1),(7,'2019-01-26 04:40:38',1,'Section Z Focus','[u\'Stage_Tilt_Fine\', u\'Stage_Tilt_High\']',1),(8,'2019-01-26 04:40:38',1,'Grid Focus','[u\'Stage_Wobble_Rough\']',1),(9,'2019-01-26 04:40:38',1,'Section Focus','[u\'Stage_Wobble_Rough\', u\'Stage_Wobble_Fine\']',1),(10,'2019-01-26 04:40:38',1,'Screen Z Focus','[u\'Rough\', u\'Medium\', u\'Fine\']',1),(11,'2019-01-26 04:40:38',1,'Align Focus','[u\'Stage Tilt Fine\', u\'Beam Tilt 1\', u\'Beam Tilt 2\', u\'Manual after\']',1);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `isdefault` tinyint(1) DEFAULT NULL,
  `recheck drift` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FocusSettingData`
--

LOCK TABLES `FocusSettingData` WRITE;
/*!40000 ALTER TABLE `FocusSettingData` DISABLE KEYS */;
INSERT INTO `FocusSettingData` VALUES (1,'2019-01-26 04:40:38',1,'phase',1000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'fa','Z_to_Eucentric',0.000004,0.01,'Focus',0,0,0.00002,NULL,1,0),(2,'2019-01-26 04:40:38',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',1,'fa','Defocus1',0.000004,0.01,'Focus',1,0,0.00002,NULL,1,0),(3,'2019-01-26 04:40:38',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',0,'fa','Defocus2',0.000004,0.01,'Focus',0,0,0.00002,NULL,1,0),(4,'2019-01-26 04:40:38',1,'phase',5000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Focus',1,0,0.001,NULL,1,0),(5,'2019-01-26 04:40:38',1,'phase',5000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Stage_Tilt_Rough',0.000004,0.017453292519943295,'Z Focus',0,0,0.0002,NULL,1,0),(6,'2019-01-26 04:40:38',1,'phase',5000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine',0.000004,0.017453292519943295,'Z Focus',1,0,0.0002,NULL,1,0),(7,'2019-01-26 04:40:38',1,'phase',10000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Z Focus',0,0,0.001,NULL,1,0),(8,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine1',0.000004,0.0174532925199433,'Tomo Focus',1,0,0.0001,NULL,1,0),(9,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine2',0.000004,0.0174532925199433,'Tomo Focus',1,0,0.00005,NULL,1,0),(10,'2019-01-26 04:40:38',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',1,'fa','Beam_Tilt_Fine',0.000004,0.01,'Tomo Focus',0,0,0.00005,NULL,1,0),(11,'2019-01-26 04:40:38',1,'phase',1000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Tomo Focus',0,0,0.001,NULL,1,0),(12,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Stage_Tilt_Rough',0.000004,0.0174532925199433,'Tomo Z Focus',1,0,0.0002,NULL,1,0),(13,'2019-01-26 04:40:38',1,'phase',5000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine',0.000004,0.0174532925199433,'Tomo Z Focus',1,0,0.0001,NULL,1,0),(14,'2019-01-26 04:40:38',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Beam_Tilt_Auto',0.000004,0.01,'Tomo Z Focus',0,0,0.00005,NULL,1,0),(15,'2019-01-26 04:40:38',1,'phase',1000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Tomo Z Focus',0,0,0.001,NULL,1,0),(16,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Stage_Tilt_Rough',0.000004,0.0174532925199433,'Cal Focus',1,0,0.0002,NULL,1,0),(17,'2019-01-26 04:40:38',1,'phase',5000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine',0.000004,0.0174532925199433,'Cal Focus',1,0,0.0001,NULL,1,0),(18,'2019-01-26 04:40:38',1,'phase',5000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'fa','Beam_Tilt_Auto',0.000004,0.01,'Cal Focus',0,0,0.00005,NULL,1,0),(19,'2019-01-26 04:40:38',1,'phase',1000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual_after',0.000004,0.01,'Cal Focus',0,0,0.001,NULL,1,0),(20,'2019-01-26 04:40:38',1,'phase',2000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'fa','Z_to_Eucentric',0.000004,0.01,'RCT Focus',1,0,0.00002,NULL,1,0),(21,'2019-01-26 04:40:38',1,'phase',2000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',0,'fa','Def_to_Eucentric',0.000004,0.01,'RCT Focus',1,0,0.00002,NULL,1,0),(22,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_Fine',0.000004,0.0174532925199433,'Section Z Focus',1,0,0.001,NULL,1,0),(23,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Tilt_High',0.000004,0.0349065850398866,'Section Z Focus',0,0,0.001,NULL,1,0),(24,'2019-01-26 04:40:38',1,'phase',1000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',0,'gr','Stage_Wobble_Rough',0.000004,0.01,'Grid Focus',1,0,0.001,NULL,1,0),(25,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Stage_Wobble_Rough',0.000004,0.0174532925199433,'Section Focus',1,0,0.001,NULL,1,0),(26,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage_Wobble_Fine',0.000004,0.0174532925199433,'Section Focus',1,0,0.0001,NULL,1,0),(27,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'sq','Rough',0.000004,0.0174532925199433,'Screen Z Focus',1,0,0.0002,NULL,1,0),(28,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Medium',0.000004,0.0174532925199433,'Screen Z Focus',0,0,0.0001,NULL,1,0),(29,'2019-01-26 04:40:38',1,'phase',2000,'Beam Tilt',0.000002,0.0000000003,0,'Stage Z',0,'fa','Fine',0.000004,0.01,'Screen Z Focus',1,0,0.00002,NULL,1,0),(30,'2019-01-26 04:40:38',1,'phase',1000,'Stage Tilt',0.000002,0.0000000003,0,'Stage Z',0,'hl','Stage Tilt Fine',0.000004,0.0174532925199433,'Align Focus',1,0,0.0001,NULL,1,0),(31,'2019-01-26 04:40:38',1,'phase',1000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',1,'fa','Beam Tilt 1',0.000004,0.01,'Align Focus',1,0,0.00005,NULL,1,0),(32,'2019-01-26 04:40:38',1,'phase',1000,'Beam Tilt',0.000002,0.0000000003,0,'Defocus',0,'fa','Beam Tilt 2',0.000004,0.01,'Align Focus',1,0,0.00002,NULL,1,0),(33,'2019-01-26 04:40:38',1,'phase',1000,'Manual',0.000002,0.0000000003,0,'Defocus',0,'fc','Manual after',0.000004,0.01,'Align Focus',1,0,0.001,NULL,1,0);
/*!40000 ALTER TABLE `FocusSettingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FocuserResultData`
--

DROP TABLE IF EXISTS `FocuserResultData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocuserResultData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageTargetData|target` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `defocus` double DEFAULT NULL,
  `stigx` double DEFAULT NULL,
  `stigy` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `stig correction` int(20) DEFAULT NULL,
  `defocus correction` text,
  `method` text,
  `status` text,
  `REF|DriftData|drift` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageTargetData|target` (`REF|AcquisitionImageTargetData|target`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|DriftData|drift` (`REF|DriftData|drift`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FocuserResultData`
--

LOCK TABLES `FocuserResultData` WRITE;
/*!40000 ALTER TABLE `FocuserResultData` DISABLE KEYS */;
/*!40000 ALTER TABLE `FocuserResultData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FocuserSettingsData`
--

DROP TABLE IF EXISTS `FocuserSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FocuserSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `adjust for drift` tinyint(1) DEFAULT NULL,
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
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `beam tilt settle time` double DEFAULT NULL,
  `on phase plate` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FocuserSettingsData`
--

LOCK TABLES `FocuserSettingsData` WRITE;
/*!40000 ALTER TABLE `FocuserSettingsData` DISABLE KEYS */;
INSERT INTO `FocuserSettingsData` VALUES (1,'2019-01-26 04:40:38',1,1,'[u\'fc\']',1,1.5,NULL,0,'Focus',1,0,1,NULL,0,'image shift',NULL,0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,NULL,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(2,'2019-01-26 04:40:38',0,1,'[u\'hl\']',1,2.5,NULL,0,'Z Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','hl','fc',0,0,0,0.001,0,NULL,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(3,'2019-01-26 04:40:38',0,1,'[u\'fc\']',1,2.5,NULL,0,'Tomo Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,NULL,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(4,'2019-01-26 04:40:38',0,1,'[u\'hl\']',1,2.5,NULL,0,'Tomo Z Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0,0,NULL,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(5,'2019-01-26 04:40:38',0,1,'[u\'fc\']',1,2.5,NULL,0,'Cal Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,NULL,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(6,'2019-01-26 04:40:38',1,1,'[u\'fc\']',1,2.5,NULL,0,'RCT Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,NULL,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(7,'2019-01-26 04:40:38',0,1,'[u\'hl\']',1,2.5,NULL,0,'Section Z Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','hl','fc',0,0,0,0.001,0,NULL,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(8,'2019-01-26 04:40:38',0,1,'[u\'gr\']',1,2.5,NULL,0,'Grid Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','gr','gr',0,0,0,0.001,0,NULL,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(9,'2019-01-26 04:40:38',0,1,'[u\'hl\']',1,2.5,NULL,0,'Section Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','hl','fc',0,0,0,0.001,0,NULL,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(10,'2019-01-26 04:40:38',0,1,'[u\'fc\']',1,2.5,NULL,0,'Screen Z Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','fc','fc',0,0,0,0.001,0,NULL,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(11,'2019-01-26 04:40:38',0,1,'[u\'hl\']',1,2.5,NULL,0,'Z Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'focus','hl','fc',0,0,0,0.001,0,NULL,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,0),(12,'2019-01-26 04:40:38',0,1,'[u\'fc\']',1,2.5,NULL,0,'Align Focus',1,0,1,NULL,0,'stage position',NULL,0,1,1,'presets manager',0,'acquisition','fc','fc',0,0,0,0.001,0,NULL,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,0);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `measure axis` text,
  `measure points` int(20) DEFAULT NULL,
  `measure interval` double DEFAULT NULL,
  `measure tolerance` double DEFAULT NULL,
  `model axis` text,
  `model magnification` int(20) DEFAULT NULL,
  `model terms` int(20) DEFAULT NULL,
  `model mag only` tinyint(1) DEFAULT NULL,
  `model tolerance` double DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GonModelerSettingsData`
--

LOCK TABLES `GonModelerSettingsData` WRITE;
/*!40000 ALTER TABLE `GonModelerSettingsData` DISABLE KEYS */;
INSERT INTO `GonModelerSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'GonioModeling',1,0,1,'phase','x',5,0.000005,25,'x',NULL,0,0,25,NULL,NULL,1);
/*!40000 ALTER TABLE `GonModelerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridData`
--

DROP TABLE IF EXISTS `GridData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `grid ID` int(20) DEFAULT NULL,
  `insertion` int(20) DEFAULT NULL,
  `REF|EMGridData|emgrid` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|EMGridData|emgrid` (`REF|EMGridData|emgrid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridData`
--

LOCK TABLES `GridData` WRITE;
/*!40000 ALTER TABLE `GridData` DISABLE KEYS */;
/*!40000 ALTER TABLE `GridData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridEntrySettingsData`
--

DROP TABLE IF EXISTS `GridEntrySettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridEntrySettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `grid name` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridHolderData`
--

LOCK TABLES `GridHolderData` WRITE;
/*!40000 ALTER TABLE `GridHolderData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupData`
--

LOCK TABLES `GroupData` WRITE;
/*!40000 ALTER TABLE `GroupData` DISABLE KEYS */;
INSERT INTO `GroupData` VALUES (1,'2019-01-26 04:40:38','administrators','Administrator Group - Have all the power on project and user management.',1),(2,'2019-01-26 04:40:38','power users','Power User Group - view, edit, all the projects.',2),(3,'2019-01-26 04:40:38','users','Normal User Group - view, edit all owned and shared projects.',3),(4,'2019-01-26 04:40:38','guests','Guest Group - view own and share projects',4),(5,'2019-01-26 04:40:38','disabled','Disabled Group - locked users',5);
/*!40000 ALTER TABLE `GroupData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HoleFinderPrefsData`
--

DROP TABLE IF EXISTS `HoleFinderPrefsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HoleFinderPrefsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `user-check` tinyint(1) DEFAULT '0',
  `skip-auto` tinyint(1) DEFAULT '0',
  `queue` tinyint(1) DEFAULT '0',
  `edge-lpf-on` tinyint(1) DEFAULT '0',
  `edge-lpf-size` int(20) DEFAULT NULL,
  `edge-lpf-sigma` double DEFAULT NULL,
  `edge-filter-type` text,
  `edge-threshold` double DEFAULT NULL,
  `template-correlation-type` text,
  `template-lpf` double DEFAULT NULL,
  `threshold-value` double DEFAULT NULL,
  `threshold-method` text,
  `blob-border` int(20) DEFAULT NULL,
  `blob-max-number` int(20) DEFAULT NULL,
  `blob-max-size` int(20) DEFAULT NULL,
  `blob-min-size` int(20) DEFAULT NULL,
  `lattice-spacing` double DEFAULT NULL,
  `lattice-tolerance` double DEFAULT NULL,
  `stats-radius` double DEFAULT NULL,
  `ice-zero-thickness` double DEFAULT NULL,
  `ice-min-thickness` double DEFAULT NULL,
  `ice-max-thickness` double DEFAULT NULL,
  `ice-max-stdev` double DEFAULT NULL,
  `template-on` tinyint(1) DEFAULT '0',
  `SEQ|template-focus` text,
  `SEQ|template-acquisition` text,
  `template-diameter` int(20) DEFAULT NULL,
  `file-diameter` int(20) DEFAULT NULL,
  `template-filename` text,
  `dog-diameter` int(20) DEFAULT NULL,
  `dog-invert` tinyint(1) DEFAULT '0',
  `dog-k-factor` double DEFAULT NULL,
  `ice-min-stdev` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HoleFinderPrefsData`
--

LOCK TABLES `HoleFinderPrefsData` WRITE;
/*!40000 ALTER TABLE `HoleFinderPrefsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `HoleFinderPrefsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HoleFinderSettingsData`
--

DROP TABLE IF EXISTS `HoleFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HoleFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `multifocus` tinyint(1) DEFAULT '0',
  `focus interval` int(20) DEFAULT NULL,
  `focus offset row` int(20) DEFAULT NULL,
  `focus offset col` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HoleFinderSettingsData`
--

LOCK TABLES `HoleFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `HoleFinderSettingsData` DISABLE KEYS */;
INSERT INTO `HoleFinderSettingsData` VALUES (1,'2019-01-26 04:40:38',0.2,300,102,0,0,4000,240,1,'[(0, 0)]',1.4,0,0,4,0,0.28,9,1,'cross',15,10,'Good Hole','[(0, 0)]',1,'sobel',0.05,20,'[(35, 41)]',0.3,3,'Hole Targeting',0.5,NULL,0.2,52000,200,1,0.5,0,1,1,NULL,0,0,0,0,NULL,NULL,NULL),(2,'2019-01-26 04:40:38',0.1,1,150,1,0,6000,0.01,1,'[(220, 0), (150, 150), (0, 220), (-150, 150), (-220, 0), (-150, -150), (0, -220), (150, -150)]',1.4,1,0,NULL,0,0.01,9,1,'phase',15,100,'Off','[(0, 0)]',1,'sobel',0.05,20,'[(160, 170)]',0.2,NULL,'Exposure Targeting',0.5,NULL,0.2,26000,1000,1,0.5,0,1,1,NULL,0,0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `HoleFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HoleStatsData`
--

DROP TABLE IF EXISTS `HoleStatsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HoleStatsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|HoleFinderPrefsData|prefs` int(20) DEFAULT NULL,
  `row` int(20) DEFAULT NULL,
  `column` int(20) DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  `thickness-mean` double DEFAULT NULL,
  `thickness-stdev` double DEFAULT NULL,
  `good` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|HoleFinderPrefsData|prefs` (`REF|HoleFinderPrefsData|prefs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HoleStatsData`
--

LOCK TABLES `HoleStatsData` WRITE;
/*!40000 ALTER TABLE `HoleStatsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `HoleStatsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageAssessorSettingsData`
--

DROP TABLE IF EXISTS `ImageAssessorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageAssessorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `format` text,
  `type` text,
  `image directory` text,
  `outputfile` text,
  `run` text,
  `jump filename` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageAssessorSettingsData`
--

LOCK TABLES `ImageAssessorSettingsData` WRITE;
/*!40000 ALTER TABLE `ImageAssessorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageAssessorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageBeamCalibratorSettingsData`
--

DROP TABLE IF EXISTS `ImageBeamCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageBeamCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  `image shift delta` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageBeamCalibratorSettingsData`
--

LOCK TABLES `ImageBeamCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `ImageBeamCalibratorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageBeamCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageCommentData`
--

DROP TABLE IF EXISTS `ImageCommentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageCommentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageCommentData`
--

LOCK TABLES `ImageCommentData` WRITE;
/*!40000 ALTER TABLE `ImageCommentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageCommentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageListData`
--

DROP TABLE IF EXISTS `ImageListData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageListData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|targets` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageTargetListData|targets` (`REF|ImageTargetListData|targets`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageListData`
--

LOCK TABLES `ImageListData` WRITE;
/*!40000 ALTER TABLE `ImageListData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageListData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageRotationCalibrationData`
--

DROP TABLE IF EXISTS `ImageRotationCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageRotationCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `rotation` double DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageRotationCalibrationData`
--

LOCK TABLES `ImageRotationCalibrationData` WRITE;
/*!40000 ALTER TABLE `ImageRotationCalibrationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageRotationCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageRotationCalibratorSettingsData`
--

DROP TABLE IF EXISTS `ImageRotationCalibratorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageRotationCalibratorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageRotationCalibratorSettingsData`
--

LOCK TABLES `ImageRotationCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `ImageRotationCalibratorSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageRotationCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageScaleAdditionCalibrationData`
--

DROP TABLE IF EXISTS `ImageScaleAdditionCalibrationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageScaleAdditionCalibrationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `high tension` int(20) DEFAULT NULL,
  `probe` text,
  `scale addition` double DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageScaleAdditionCalibrationData`
--

LOCK TABLES `ImageScaleAdditionCalibrationData` WRITE;
/*!40000 ALTER TABLE `ImageScaleAdditionCalibrationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageScaleAdditionCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageTargetListData`
--

DROP TABLE IF EXISTS `ImageTargetListData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageTargetListData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `label` text,
  `mosaic` tinyint(1) DEFAULT '0',
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `sublist` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageTargetListData`
--

LOCK TABLES `ImageTargetListData` WRITE;
/*!40000 ALTER TABLE `ImageTargetListData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImageTargetListData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InstrumentData`
--

DROP TABLE IF EXISTS `InstrumentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InstrumentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `hostname` text,
  `type` text,
  `description` text,
  `scope` text,
  `camera` text,
  `camera size` int(11) DEFAULT NULL,
  `camera pixel size` double DEFAULT NULL,
  `cs` double DEFAULT NULL,
  `pixelmax` int(20) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InstrumentData`
--

LOCK TABLES `InstrumentData` WRITE;
/*!40000 ALTER TABLE `InstrumentData` DISABLE KEYS */;
INSERT INTO `InstrumentData` VALUES (1,'2019-01-26 04:40:38','AppionTEM','appion','TEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `InstrumentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InternalEnergyShiftData`
--

DROP TABLE IF EXISTS `InternalEnergyShiftData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InternalEnergyShiftData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `before` double DEFAULT NULL,
  `after` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InternalEnergyShiftData`
--

LOCK TABLES `InternalEnergyShiftData` WRITE;
/*!40000 ALTER TABLE `InternalEnergyShiftData` DISABLE KEYS */;
/*!40000 ALTER TABLE `InternalEnergyShiftData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JAHCFinderSettingsData`
--

DROP TABLE IF EXISTS `JAHCFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JAHCFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `focus interval` int(20) DEFAULT NULL,
  `template image min` double DEFAULT NULL,
  `template invert` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `focus offset row` int(20) DEFAULT NULL,
  `focus offset col` int(20) DEFAULT NULL,
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  `ice min std` double DEFAULT NULL,
  `template multiple` int(20) DEFAULT NULL,
  `multihole angle` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|LowPassFilterSettingsData|template lpf` (`REF|LowPassFilterSettingsData|template lpf`),
  KEY `REF|LowPassFilterSettingsData|edge lpf` (`REF|LowPassFilterSettingsData|edge lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JAHCFinderSettingsData`
--

LOCK TABLES `JAHCFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `JAHCFinderSettingsData` DISABLE KEYS */;
INSERT INTO `JAHCFinderSettingsData` VALUES (1,'2019-01-26 04:40:38',0.2,300,20,77,0,0,100,3,1,'[(0, 0)]',1.4,0,1,0,NULL,0,0.05,9,1,1,'cross',15,10,'Any Hole','[(0, 0)]',45,1,'sobel',0.05,168,0.16,5,'Hole Targeting',0.5,NULL,0.15,140,1000,0,NULL,1,0.5,'Threshold = mean + A * stdev',0,10,0,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL),(2,'2019-01-26 04:40:38',0.1,1,20,150,1,0,100,0.0009,1,'[(-12, -144), (-144, 12), (12, 144), (144, -12)]',1.4,1,1,0,6,0,0.05,9,1,1,'phase',35,50,'Off','[(0, 35), (0, -35)]',115,1,'sobel',0.05,168,5,6,'Exposure Targeting Q',4,NULL,0.5,115,10000,1,NULL,1,0.1,'Threshold = A',0,10,0,'off',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL),(3,'2019-01-26 04:40:38',0.1,1,20,150,1,0,100,0.0009,1,'[(-12, -144), (-144, 12), (12, 144), (144, -12)]',1.4,1,1,0,6,0,0.05,9,1,1,'phase',35,50,'Off','[(0, 35), (0, -35)]',115,1,'sobel',0.05,168,5,6,'Exposure Targeting',4,NULL,0.5,115,10000,0,NULL,1,0.1,'Threshold = A',0,10,0,'off',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL),(4,'2019-01-26 04:40:38',0.1,1,20,150,1,1,100,1.5,1,'[(22, 128), (128, -22), (-22, -128), (-128, 22)]',1.4,1,1,0,4,0,0.05,9,1,1,'cross',30,100,'Off','[(0, -35), (0, 35)]',140,1,'sobel',0.1,168,0.2,4,'RCT Targeting',0.3,NULL,0.2,110,1000,1,NULL,1,0.1,'Threshold = mean + A * stdev',0,10,0,'off',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL),(5,'2019-01-26 04:40:38',0.1,300,20,110,0,0,100,2,1,'[]',1.4,0,1,0,4,0,0.15,9,1,1,'cross',30,10,'Off','[]',90,1,'sobel',0.05,168,0.35,4,'Square Targeting',0.5,NULL,0.3,200,1000,0,NULL,1,0.5,'Threshold = mean + A * stdev',0,10,0,'off',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LaunchedApplicationData`
--

LOCK TABLES `LaunchedApplicationData` WRITE;
/*!40000 ALTER TABLE `LaunchedApplicationData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `on` tinyint(1) DEFAULT NULL,
  `sigma` double DEFAULT NULL,
  `size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LowPassFilterSettingsData`
--

LOCK TABLES `LowPassFilterSettingsData` WRITE;
/*!40000 ALTER TABLE `LowPassFilterSettingsData` DISABLE KEYS */;
INSERT INTO `LowPassFilterSettingsData` VALUES (1,'2019-01-26 04:40:38',0,1.4,5),(2,'2019-01-26 04:40:38',1,1.4,5),(3,'2019-01-26 04:40:38',NULL,1,NULL),(4,'2019-01-26 04:40:38',0,1,0),(5,'2019-01-26 04:40:38',1,1,5),(6,'2019-01-26 04:40:38',0,1,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MagnificationsData`
--

LOCK TABLES `MagnificationsData` WRITE;
/*!40000 ALTER TABLE `MagnificationsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `MagnificationsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ManualAcquisitionSettingsData`
--

DROP TABLE IF EXISTS `ManualAcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ManualAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `screen up` tinyint(1) DEFAULT '0',
  `screen down` tinyint(1) DEFAULT '0',
  `beam blank` tinyint(1) DEFAULT '0',
  `correct image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `loop pause time` double DEFAULT NULL,
  `image label` text,
  `low dose` tinyint(1) DEFAULT '0',
  `low dose pause time` double DEFAULT NULL,
  `defocus1switch` tinyint(1) DEFAULT '0',
  `defocus1` double DEFAULT NULL,
  `defocus2switch` tinyint(1) DEFAULT '0',
  `defocus2` double DEFAULT NULL,
  `dark` tinyint(1) DEFAULT '0',
  `force annotate` tinyint(1) DEFAULT '0',
  `reduced params` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ManualAcquisitionSettingsData`
--

LOCK TABLES `ManualAcquisitionSettingsData` WRITE;
/*!40000 ALTER TABLE `ManualAcquisitionSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ManualAcquisitionSettingsData` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MatrixCalibrationData`
--

LOCK TABLES `MatrixCalibrationData` WRITE;
/*!40000 ALTER TABLE `MatrixCalibrationData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `correlation type` text,
  `image shift tolerance` double DEFAULT NULL,
  `image shift shift fraction` double DEFAULT NULL,
  `image shift n average` int(20) DEFAULT NULL,
  `image shift interval` double DEFAULT NULL,
  `image shift current as base` tinyint(1) DEFAULT NULL,
  `SUBD|image shift base|x` double DEFAULT NULL,
  `SUBD|image shift base|y` double DEFAULT NULL,
  `beam shift tolerance` double DEFAULT NULL,
  `beam shift shift fraction` double DEFAULT NULL,
  `beam shift n average` int(20) DEFAULT NULL,
  `beam shift interval` double DEFAULT NULL,
  `beam shift current as base` tinyint(1) DEFAULT NULL,
  `SUBD|beam shift base|x` double DEFAULT NULL,
  `SUBD|beam shift base|y` double DEFAULT NULL,
  `stage position tolerance` double DEFAULT NULL,
  `stage position shift fraction` double DEFAULT NULL,
  `stage position n average` int(20) DEFAULT NULL,
  `stage position interval` double DEFAULT NULL,
  `stage position current as base` tinyint(1) DEFAULT NULL,
  `SUBD|stage position base|x` double DEFAULT NULL,
  `SUBD|stage position base|y` double DEFAULT NULL,
  `lpf sigma` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MatrixCalibratorSettingsData`
--

LOCK TABLES `MatrixCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `MatrixCalibratorSettingsData` DISABLE KEYS */;
INSERT INTO `MatrixCalibratorSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Matrix',1,'None','None',0,1,'phase',12,25,1,0.000002,1,0,0,12,25,1,0.000002,1,0,0,12,25,1,0.000002,1,0,0,1),(2,'2019-01-26 04:40:38',1,'Matrix Calibrator',1,'None','None',0,1,'phase',12,25,1,0.000002,1,0,0,12,25,1,0.000002,1,0,0,12,25,1,0.000002,1,0,0,1);
/*!40000 ALTER TABLE `MatrixCalibratorSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeasureDoseData`
--

DROP TABLE IF EXISTS `MeasureDoseData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeasureDoseData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeasureDoseData`
--

LOCK TABLES `MeasureDoseData` WRITE;
/*!40000 ALTER TABLE `MeasureDoseData` DISABLE KEYS */;
/*!40000 ALTER TABLE `MeasureDoseData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MosaicClickTargetFinderSettingsData`
--

DROP TABLE IF EXISTS `MosaicClickTargetFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MosaicClickTargetFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `multifocus` tinyint(1) DEFAULT '0',
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|BlobFinderSettingsData|blobs` (`REF|BlobFinderSettingsData|blobs`),
  KEY `REF|LowPassFilterSettingsData|lpf` (`REF|LowPassFilterSettingsData|lpf`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MosaicClickTargetFinderSettingsData`
--

LOCK TABLES `MosaicClickTargetFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `MosaicClickTargetFinderSettingsData` DISABLE KEYS */;
INSERT INTO `MosaicClickTargetFinderSettingsData` VALUES (1,'2019-01-26 04:40:38',1,NULL,1,0,'Square Targeting',1,0,'stage position',512,100,1,0,0,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'all',NULL,0,0,0,0,NULL,0),(2,'2019-01-26 04:40:38',1,NULL,NULL,0,'Raster Center Targeting',1,0,'stage position',512,100,NULL,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'all',NULL,0,0,0,0,NULL,0),(3,'2019-01-26 04:40:38',1,NULL,NULL,0,'Rough Tissue Targeting',1,0,'stage position',512,100,2,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'all',NULL,0,0,0,0,NULL,0),(4,'2019-01-26 04:40:38',1,NULL,1,0,'Atlas View',1,0,'stage position',512,100,1,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'all',NULL,0,0,0,0,NULL,0);
/*!40000 ALTER TABLE `MosaicClickTargetFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MosaicImageData`
--

DROP TABLE IF EXISTS `MosaicImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MosaicImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ImageListData|images` int(20) DEFAULT NULL,
  `scale` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ImageListData|images` (`REF|ImageListData|images`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MosaicImageData`
--

LOCK TABLES `MosaicImageData` WRITE;
/*!40000 ALTER TABLE `MosaicImageData` DISABLE KEYS */;
/*!40000 ALTER TABLE `MosaicImageData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MosaicTargetMakerSettingsData`
--

DROP TABLE IF EXISTS `MosaicTargetMakerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MosaicTargetMakerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `ignore request` tinyint(1) DEFAULT NULL,
  `alpha tilt` double DEFAULT NULL,
  `use spiral path` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MosaicTargetMakerSettingsData`
--

LOCK TABLES `MosaicTargetMakerSettingsData` WRITE;
/*!40000 ALTER TABLE `MosaicTargetMakerSettingsData` DISABLE KEYS */;
INSERT INTO `MosaicTargetMakerSettingsData` VALUES (1,'2019-01-26 04:40:38',128,'Grid Targeting',16384,1,NULL,1,0.0009,'gr','stage center',1,0,NULL,0),(2,'2019-01-26 04:40:38',128,'Grid Targeting Robot',16384,1,NULL,1,0.0005,'gr','stage center',1,0,NULL,0),(3,'2019-01-26 04:40:38',128,'Grid Survey Targeting',16384,1,NULL,1,0.0005,'gr','stage center',1,0,NULL,0);
/*!40000 ALTER TABLE `MosaicTargetMakerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MosaicTileData`
--

DROP TABLE IF EXISTS `MosaicTileData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MosaicTileData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `node alias` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MosaicTileData`
--

LOCK TABLES `MosaicTileData` WRITE;
/*!40000 ALTER TABLE `MosaicTileData` DISABLE KEYS */;
/*!40000 ALTER TABLE `MosaicTileData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MoverParamsData`
--

DROP TABLE IF EXISTS `MoverParamsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MoverParamsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MoverParamsData`
--

LOCK TABLES `MoverParamsData` WRITE;
/*!40000 ALTER TABLE `MoverParamsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `MoverParamsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NavigatorSettingsData`
--

DROP TABLE IF EXISTS `NavigatorSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NavigatorSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `move type` text,
  `check calibration` tinyint(1) DEFAULT NULL,
  `complete state` tinyint(1) DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `max error` double DEFAULT NULL,
  `cycle each` tinyint(1) DEFAULT NULL,
  `cycle after` tinyint(1) DEFAULT NULL,
  `final image shift` tinyint(1) DEFAULT NULL,
  `background readout` tinyint(1) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `preexpose` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class string` text,
  `alias` text,
  `launcher alias` text,
  `SEQ|dependencies` text,
  `REF|ApplicationData|application` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|ApplicationData|application` (`REF|ApplicationData|application`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NodeSpecData`
--

LOCK TABLES `NodeSpecData` WRITE;
/*!40000 ALTER TABLE `NodeSpecData` DISABLE KEYS */;
/*!40000 ALTER TABLE `NodeSpecData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NormImageData`
--

DROP TABLE IF EXISTS `NormImageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NormImageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `MRC|image` text,
  `pixeltype` text,
  `pixels` int(20) DEFAULT NULL,
  `label` text,
  `filename` text,
  `REF|ImageListData|list` int(20) DEFAULT NULL,
  `REF|QueueData|queue` int(20) DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|CorrectorPlanData|corrector plan` int(20) DEFAULT NULL,
  `correction channel` int(20) DEFAULT NULL,
  `channel` int(20) DEFAULT NULL,
  `REF|DarkImageData|dark` int(20) DEFAULT NULL,
  `REF|BrightImageData|bright` int(20) DEFAULT NULL,
  `REF|NormImageData|norm` int(20) DEFAULT NULL,
  `SEQ|use frames` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ImageListData|list` (`REF|ImageListData|list`),
  KEY `REF|QueueData|queue` (`REF|QueueData|queue`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|CorrectorPlanData|corrector plan` (`REF|CorrectorPlanData|corrector plan`),
  KEY `REF|DarkImageData|dark` (`REF|DarkImageData|dark`),
  KEY `REF|BrightImageData|bright` (`REF|BrightImageData|bright`),
  KEY `REF|NormImageData|norm` (`REF|NormImageData|norm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NormImageData`
--

LOCK TABLES `NormImageData` WRITE;
/*!40000 ALTER TABLE `NormImageData` DISABLE KEYS */;
/*!40000 ALTER TABLE `NormImageData` ENABLE KEYS */;
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
  `angle` double DEFAULT NULL,
  `probe` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PPBeamTiltRotationData`
--

LOCK TABLES `PPBeamTiltRotationData` WRITE;
/*!40000 ALTER TABLE `PPBeamTiltRotationData` DISABLE KEYS */;
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
  `SEQ|vectors` text,
  `probe` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PPBeamTiltVectorsData`
--

LOCK TABLES `PPBeamTiltVectorsData` WRITE;
/*!40000 ALTER TABLE `PPBeamTiltVectorsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `PPBeamTiltVectorsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlateAlignerSettingsData`
--

DROP TABLE IF EXISTS `PhasePlateAlignerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlateAlignerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `charge time` double DEFAULT NULL,
  `phase plate number` int(20) DEFAULT NULL,
  `total positions` int(20) DEFAULT NULL,
  `initial position` int(20) DEFAULT NULL,
  `settle time` double DEFAULT NULL,
  `interval count` int(20) DEFAULT NULL,
  `tilt charge time` double DEFAULT NULL,
  `tilt charge angle` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlateAlignerSettingsData`
--

LOCK TABLES `PhasePlateAlignerSettingsData` WRITE;
/*!40000 ALTER TABLE `PhasePlateAlignerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhasePlateAlignerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlateData`
--

DROP TABLE IF EXISTS `PhasePlateData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlateData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlateData`
--

LOCK TABLES `PhasePlateData` WRITE;
/*!40000 ALTER TABLE `PhasePlateData` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhasePlateData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlatePatchStateData`
--

DROP TABLE IF EXISTS `PhasePlatePatchStateData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlatePatchStateData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `phase plate number` int(20) DEFAULT NULL,
  `patch position` int(20) DEFAULT NULL,
  `bad` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlatePatchStateData`
--

LOCK TABLES `PhasePlatePatchStateData` WRITE;
/*!40000 ALTER TABLE `PhasePlatePatchStateData` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhasePlatePatchStateData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlateTestImagerSettingsData`
--

DROP TABLE IF EXISTS `PhasePlateTestImagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlateTestImagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT NULL,
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` int(20) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` int(20) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `save integer` int(20) DEFAULT NULL,
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT NULL,
  `phase plate number` int(20) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlateTestImagerSettingsData`
--

LOCK TABLES `PhasePlateTestImagerSettingsData` WRITE;
/*!40000 ALTER TABLE `PhasePlateTestImagerSettingsData` DISABLE KEYS */;
INSERT INTO `PhasePlateTestImagerSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Check PP Low Mag',1,'acquisition',0,0,2.5,NULL,0,'image shift','[u\'gr\']',1,1,1,0,1,0,0,0,1,'one',1,0,'presets manager',0,0.001,0,0,0,0,0,0,'Continue',NULL,NULL,65536,50,0,0,0,0,0,1,NULL,NULL);
/*!40000 ALTER TABLE `PhasePlateTestImagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlateTestLogData`
--

DROP TABLE IF EXISTS `PhasePlateTestLogData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlateTestLogData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `test type` text,
  `phase plate number` int(20) DEFAULT NULL,
  `patch position` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlateTestLogData`
--

LOCK TABLES `PhasePlateTestLogData` WRITE;
/*!40000 ALTER TABLE `PhasePlateTestLogData` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhasePlateTestLogData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlateTesterSettingsData`
--

DROP TABLE IF EXISTS `PhasePlateTesterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlateTesterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT NULL,
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` int(20) DEFAULT NULL,
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
  `drift between` int(20) DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `final image shift` int(20) DEFAULT NULL,
  `save integer` int(20) DEFAULT NULL,
  `background` tinyint(1) DEFAULT '0',
  `use parent tilt` tinyint(1) DEFAULT '0',
  `adjust time by tilt` tinyint(1) DEFAULT '0',
  `reset tilt` tinyint(1) DEFAULT '0',
  `bad stats response` text,
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT NULL,
  `phase plate number` int(20) DEFAULT NULL,
  `total positions` int(20) DEFAULT NULL,
  `start position` int(20) DEFAULT NULL,
  `current position` int(20) DEFAULT NULL,
  `total test positions` int(20) DEFAULT NULL,
  `duplicate targets` tinyint(1) DEFAULT NULL,
  `duplicate target type` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlateTesterSettingsData`
--

LOCK TABLES `PhasePlateTesterSettingsData` WRITE;
/*!40000 ALTER TABLE `PhasePlateTesterSettingsData` DISABLE KEYS */;
INSERT INTO `PhasePlateTesterSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Check PP Patches',1,'acquisition',0,0,10,NULL,0,'image shift','[u\'ep\']',1,1,1,0,1,0,0,0,1,'one',1,0,'presets manager',0,0.001,0,0,0,0,0,0,'Continue',NULL,NULL,65536,50,0,0,0,0,0,1,76,1,1,76,NULL,NULL);
/*!40000 ALTER TABLE `PhasePlateTesterSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhasePlateUsageData`
--

DROP TABLE IF EXISTS `PhasePlateUsageData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PhasePlateUsageData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `phase plate number` int(20) DEFAULT NULL,
  `patch position` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhasePlateUsageData`
--

LOCK TABLES `PhasePlateUsageData` WRITE;
/*!40000 ALTER TABLE `PhasePlateUsageData` DISABLE KEYS */;
/*!40000 ALTER TABLE `PhasePlateUsageData` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PixelSizeCalibrationData`
--

LOCK TABLES `PixelSizeCalibrationData` WRITE;
/*!40000 ALTER TABLE `PixelSizeCalibrationData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `override preset` tinyint(1) DEFAULT NULL,
  `REF|CameraSettingsData|camera settings` int(20) DEFAULT NULL,
  `SUBD|instruments|ccdcamera` text,
  `SUBD|instruments|tem` text,
  `correlation type` text,
  `lattice a` double DEFAULT NULL,
  `lattice b` double DEFAULT NULL,
  `lattice gamma` double DEFAULT NULL,
  `h1` int(20) DEFAULT NULL,
  `k1` int(20) DEFAULT NULL,
  `h2` int(20) DEFAULT NULL,
  `k2` int(20) DEFAULT NULL,
  `lpf sigma` double DEFAULT NULL,
  `distance` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|CameraSettingsData|camera settings` (`REF|CameraSettingsData|camera settings`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PixelSizeCalibratorSettingsData`
--

LOCK TABLES `PixelSizeCalibratorSettingsData` WRITE;
/*!40000 ALTER TABLE `PixelSizeCalibratorSettingsData` DISABLE KEYS */;
INSERT INTO `PixelSizeCalibratorSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Pixel Size',1,0,1,'None','None','phase',69,173.5,90,0,6,0,-6,1,NULL);
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
  `film` tinyint(1) DEFAULT '0',
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
  `SUBD|aperture size|condenser` double DEFAULT NULL,
  `SUBD|aperture size|high contrast` double DEFAULT NULL,
  `SUBD|aperture size|objective` double DEFAULT NULL,
  `SUBD|aperture size|selected area` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PresetData`
--

LOCK TABLES `PresetData` WRITE;
/*!40000 ALTER TABLE `PresetData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `xy only` tinyint(1) DEFAULT NULL,
  `stage always` tinyint(1) DEFAULT NULL,
  `cycle` tinyint(1) DEFAULT NULL,
  `optimize cycle` tinyint(1) DEFAULT NULL,
  `mag only` tinyint(1) DEFAULT NULL,
  `apply offset` tinyint(1) DEFAULT NULL,
  `blank` tinyint(1) DEFAULT NULL,
  `smallsize` int(20) DEFAULT NULL,
  `disable stage for image shift` tinyint(1) DEFAULT '0',
  `idle minute` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PresetsManagerSettingsData`
--

LOCK TABLES `PresetsManagerSettingsData` WRITE;
/*!40000 ALTER TABLE `PresetsManagerSettingsData` DISABLE KEYS */;
INSERT INTO `PresetsManagerSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Presets Manager',1,1,1,1,1,1,0,0,0,1024,0,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectionSubModeMappingData`
--

LOCK TABLES `ProjectionSubModeMappingData` WRITE;
/*!40000 ALTER TABLE `ProjectionSubModeMappingData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectionSubModeMappingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueueData`
--

DROP TABLE IF EXISTS `QueueData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `label` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueueData`
--

LOCK TABLES `QueueData` WRITE;
/*!40000 ALTER TABLE `QueueData` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueueData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RCTAcquisitionSettingsData`
--

DROP TABLE IF EXISTS `RCTAcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RCTAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wait time` double DEFAULT NULL,
  `SEQ|preset order` text,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `adjust for drift` tinyint(1) DEFAULT NULL,
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
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RCTAcquisitionSettingsData`
--

LOCK TABLES `RCTAcquisitionSettingsData` WRITE;
/*!40000 ALTER TABLE `RCTAcquisitionSettingsData` DISABLE KEYS */;
INSERT INTO `RCTAcquisitionSettingsData` VALUES (1,'2019-01-26 04:40:38',0,'[u\'en\']',1,2.5,NULL,1,NULL,1,1,'RCT',1,1,NULL,1,NULL,NULL,0,'stage position',50,NULL,0.8,NULL,NULL,15,'(-45, 0)','acquisition','navigator',0.00000006,NULL,NULL,0.0000000006,'fa',0,NULL,1,2,1,0,0,0.0000005,0,NULL,'no',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `RCTAcquisitionSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RasterFCFinderSettingsData`
--

DROP TABLE IF EXISTS `RasterFCFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RasterFCFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `wait for done` tinyint(1) DEFAULT '0',
  `ignore images` tinyint(1) DEFAULT '0',
  `queue` tinyint(1) DEFAULT '0',
  `user check` tinyint(1) DEFAULT '0',
  `check method` text,
  `queue drift` tinyint(1) DEFAULT '0',
  `sort target` tinyint(1) DEFAULT '0',
  `allow append` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `skip` tinyint(1) DEFAULT '0',
  `publish polygon` tinyint(1) DEFAULT '0',
  `image filename` text,
  `raster preset` text,
  `raster movetype` text,
  `raster overlap` double DEFAULT NULL,
  `raster spacing` int(20) DEFAULT NULL,
  `raster spacing asymm` int(20) DEFAULT NULL,
  `raster angle` double DEFAULT NULL,
  `raster center x` int(20) DEFAULT NULL,
  `raster center y` int(20) DEFAULT NULL,
  `raster center on image` tinyint(1) DEFAULT '0',
  `raster limit` int(20) DEFAULT NULL,
  `raster limit asymm` int(20) DEFAULT NULL,
  `raster symmetric` tinyint(1) DEFAULT '0',
  `select polygon` tinyint(1) DEFAULT '0',
  `ice box size` double DEFAULT NULL,
  `ice thickness` double DEFAULT NULL,
  `ice min mean` double DEFAULT NULL,
  `ice max mean` double DEFAULT NULL,
  `ice max std` double DEFAULT NULL,
  `ice min std` double DEFAULT NULL,
  `focus interval` int(20) DEFAULT NULL,
  `focus convolve` tinyint(1) DEFAULT '0',
  `SEQ|focus convolve template` text,
  `SEQ|focus constant template` text,
  `focus one` tinyint(1) DEFAULT '0',
  `acquisition convolve` tinyint(1) DEFAULT '0',
  `SEQ|acquisition convolve template` text,
  `SEQ|acquisition constant template` text,
  `focus center x` double DEFAULT NULL,
  `focus center y` double DEFAULT NULL,
  `focus radius` double DEFAULT NULL,
  `focus box size` double DEFAULT NULL,
  `focus min mean` double DEFAULT NULL,
  `focus max mean` double DEFAULT NULL,
  `focus min std` double DEFAULT NULL,
  `focus max std` double DEFAULT NULL,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RasterFCFinderSettingsData`
--

LOCK TABLES `RasterFCFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `RasterFCFinderSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `RasterFCFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RasterFinderSettingsData`
--

DROP TABLE IF EXISTS `RasterFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RasterFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `focus interval` int(20) DEFAULT NULL,
  `focus one` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RasterFinderSettingsData`
--

LOCK TABLES `RasterFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `RasterFinderSettingsData` DISABLE KEYS */;
INSERT INTO `RasterFinderSettingsData` VALUES (1,'2019-01-26 04:40:38',9,'[]','[(550, 512)]',15,1,0,0.3,'Subsquare Targeting',1,0,1,NULL,140,0.2,'[]',0.05,NULL,1,50,'[(0, 0)]',0,1,1,1,-103.37793736856,0,0,0,0,50,0,1,0,'hl','stage position',0,0,0,NULL,0,0,NULL,0),(2,'2019-01-26 04:40:38',5,'[]','[(256, 200)]',15,1,0,0.2,'Exposure Targeting',1,0,1,NULL,110,0.2,'[]',0.05,0,1,100,'[(0, 0)]',0,1,1,1,0,0,0,0,0,0,0,1,0,'gr','stage position',0,0,0,NULL,0,0,NULL,0),(3,'2019-01-26 04:40:38',1,'[]','[]',15,1,1,0.2,'Square Centering',1,0,1,NULL,1000,0.2,'[(0, 0)]',0.05,NULL,1,100,'[(0, 0)]',0,1,1,1,0,0,0,0,0,0,0,1,0,'en','stage position',0,1,0,NULL,0,0,NULL,0),(4,'2019-01-26 04:40:38',5,'[]','[(256, 240)]',15,1,0,0.2,'RCT Targeting',1,0,1,NULL,110,0.2,'[]',0.05,0,1,100,'[(0, 0)]',1,1,1,1,0,0,0,0,0,0,0,1,0,'en','stage position',0,0,0,NULL,0,0,NULL,0),(5,'2019-01-26 04:40:38',2,'[]','[]',15,1,0,0.5,'Mid Mag Survey Targeting',1,0,0,NULL,100,0.2,'[]',0.05,0,1,100,'[]',0,1,1,1,0,0,0,0,0,0,0,1,0,'hl','stage position',0,0,0,NULL,0,0,NULL,0),(6,'2019-01-26 04:40:38',3,'[]','[(256, 256)]',15,1,0,0.2,'High Mag Raster Targeting',1,0,0,NULL,1000,0.2,'[]',0.05,0,1,100,'[]',0,1,1,1,0,0,0,0,0,0,0,1,0,'gr','stage position',0,0,0,NULL,0,0,NULL,0);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RasterTargetFilterSettingsData`
--

LOCK TABLES `RasterTargetFilterSettingsData` WRITE;
/*!40000 ALTER TABLE `RasterTargetFilterSettingsData` DISABLE KEYS */;
INSERT INTO `RasterTargetFilterSettingsData` VALUES (1,'2019-01-26 04:40:38',1,'Raster Generation',1,0,20,0,'hl','stage position',0,NULL,'acquisition',0,2,2,1,0),(2,'2019-01-26 04:40:38',1,'Final Raster Targeting',1,0,50,0,'hl','stage position',0,NULL,'acquisition',0,2,2,1,0);
/*!40000 ALTER TABLE `RasterTargetFilterSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceSessionData`
--

DROP TABLE IF EXISTS `ReferenceSessionData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceSessionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReferenceSessionData`
--

LOCK TABLES `ReferenceSessionData` WRITE;
/*!40000 ALTER TABLE `ReferenceSessionData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceSessionData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceTargetData`
--

DROP TABLE IF EXISTS `ReferenceTargetData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceTargetData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `delta row` double DEFAULT NULL,
  `delta column` double DEFAULT NULL,
  `REF|ScopeEMData|scope` int(20) DEFAULT NULL,
  `REF|CameraEMData|camera` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `type` text,
  `version` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `status` text,
  `REF|GridData|grid` int(20) DEFAULT NULL,
  `REF|ImageTargetListData|list` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ScopeEMData|scope` (`REF|ScopeEMData|scope`),
  KEY `REF|CameraEMData|camera` (`REF|CameraEMData|camera`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`),
  KEY `REF|GridData|grid` (`REF|GridData|grid`),
  KEY `REF|ImageTargetListData|list` (`REF|ImageTargetListData|list`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReferenceTargetData`
--

LOCK TABLES `ReferenceTargetData` WRITE;
/*!40000 ALTER TABLE `ReferenceTargetData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceTargetData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReferenceTimerSettingsData`
--

DROP TABLE IF EXISTS `ReferenceTimerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReferenceTimerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReferenceTimerSettingsData`
--

LOCK TABLES `ReferenceTimerSettingsData` WRITE;
/*!40000 ALTER TABLE `ReferenceTimerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReferenceTimerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RobotSettingsData`
--

DROP TABLE IF EXISTS `RobotSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RobotSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `column pressure threshold` double DEFAULT NULL,
  `default Z position` double DEFAULT NULL,
  `simulate` tinyint(1) DEFAULT NULL,
  `turbo on` tinyint(1) DEFAULT NULL,
  `grid clear wait` tinyint(1) DEFAULT NULL,
  `pause` tinyint(1) DEFAULT NULL,
  `grid tray` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RotationCenterData`
--

LOCK TABLES `RotationCenterData` WRITE;
/*!40000 ALTER TABLE `RotationCenterData` DISABLE KEYS */;
/*!40000 ALTER TABLE `RotationCenterData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ScopeEMData`
--

DROP TABLE IF EXISTS `ScopeEMData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScopeEMData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `system time` double DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `spot size` int(20) DEFAULT NULL,
  `intensity` double DEFAULT NULL,
  `SUBD|image shift|x` double DEFAULT NULL,
  `SUBD|image shift|y` double DEFAULT NULL,
  `SUBD|beam shift|x` double DEFAULT NULL,
  `SUBD|beam shift|y` double DEFAULT NULL,
  `defocus` double DEFAULT NULL,
  `focus` double DEFAULT NULL,
  `reset defocus` int(20) DEFAULT NULL,
  `screen current` double DEFAULT NULL,
  `beam blank` text,
  `SUBD|stigmator|SUBD|condenser|x` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|condenser|y` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|diffraction|x` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|diffraction|y` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|objective|x` double DEFAULT NULL,
  `SUBD|stigmator|SUBD|objective|y` double DEFAULT NULL,
  `SUBD|beam tilt|x` double DEFAULT NULL,
  `SUBD|beam tilt|y` double DEFAULT NULL,
  `corrected stage position` int(20) DEFAULT NULL,
  `SUBD|stage position|a` double DEFAULT NULL,
  `SUBD|stage position|b` double DEFAULT NULL,
  `SUBD|stage position|x` double DEFAULT NULL,
  `SUBD|stage position|y` double DEFAULT NULL,
  `SUBD|stage position|z` double DEFAULT NULL,
  `holder type` text,
  `holder status` text,
  `stage status` text,
  `vacuum status` text,
  `column valves` text,
  `column pressure` double DEFAULT NULL,
  `turbo pump` text,
  `high tension` int(20) DEFAULT NULL,
  `main screen position` text,
  `main screen magnification` int(20) DEFAULT NULL,
  `small screen position` text,
  `low dose` text,
  `low dose mode` text,
  `film stock` int(20) DEFAULT NULL,
  `film exposure number` int(20) DEFAULT NULL,
  `pre film exposure` tinyint(1) DEFAULT '0',
  `post film exposure` tinyint(1) DEFAULT '0',
  `film exposure` tinyint(1) DEFAULT '0',
  `film exposure type` text,
  `film exposure time` double DEFAULT NULL,
  `film manual exposure time` double DEFAULT NULL,
  `film automatic exposure time` double DEFAULT NULL,
  `film text` text,
  `film user code` text,
  `film date type` text,
  `objective current` double DEFAULT NULL,
  `exp wait time` double DEFAULT NULL,
  `tem energy filtered` tinyint(1) DEFAULT '0',
  `tem energy filter` tinyint(1) DEFAULT '0',
  `tem energy filter width` double DEFAULT NULL,
  `probe mode` text,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `SUBD|aperture size|condenser` double DEFAULT NULL,
  `SUBD|aperture size|high contrast` double DEFAULT NULL,
  `SUBD|aperture size|objective` double DEFAULT NULL,
  `SUBD|aperture size|selected area` double DEFAULT NULL,
  `SUBD|stage position|phi` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScopeEMData`
--

LOCK TABLES `ScopeEMData` WRITE;
/*!40000 ALTER TABLE `ScopeEMData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ScopeEMData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ScreenCurrentData`
--

DROP TABLE IF EXISTS `ScreenCurrentData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScreenCurrentData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ReferenceTargetData|reference` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `current` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ReferenceTargetData|reference` (`REF|ReferenceTargetData|reference`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScreenCurrentData`
--

LOCK TABLES `ScreenCurrentData` WRITE;
/*!40000 ALTER TABLE `ScreenCurrentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ScreenCurrentData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ScreenCurrentLoggerData`
--

DROP TABLE IF EXISTS `ScreenCurrentLoggerData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScreenCurrentLoggerData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `preset` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScreenCurrentLoggerData`
--

LOCK TABLES `ScreenCurrentLoggerData` WRITE;
/*!40000 ALTER TABLE `ScreenCurrentLoggerData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ScreenCurrentLoggerData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ScreenCurrentLoggerSettingsData`
--

DROP TABLE IF EXISTS `ScreenCurrentLoggerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScreenCurrentLoggerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `bypass` tinyint(1) DEFAULT '0',
  `move type` text,
  `pause time` double DEFAULT NULL,
  `interval time` double DEFAULT NULL,
  `return settle time` double DEFAULT NULL,
  `mover` text,
  `move precision` double DEFAULT NULL,
  `accept precision` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScreenCurrentLoggerSettingsData`
--

LOCK TABLES `ScreenCurrentLoggerSettingsData` WRITE;
/*!40000 ALTER TABLE `ScreenCurrentLoggerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ScreenCurrentLoggerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SessionData`
--

DROP TABLE IF EXISTS `SessionData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SessionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` text,
  `REF|UserData|user` int(20) DEFAULT NULL,
  `image path` text,
  `comment` text,
  `hidden` tinyint(4) DEFAULT NULL,
  `REF|InstrumentData|instrument` int(20) DEFAULT NULL,
  `REF|GridHolderData|holder` int(20) DEFAULT NULL,
  `frame path` text,
  `remote passcode` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|UserData|user` (`REF|UserData|user`),
  KEY `REF|GridHolderData|holder` (`REF|GridHolderData|holder`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/* SessionData still use MyISAM ENGINE so that fulltext key is allowed. */;
/* Need MySQL 5.6.4 for InnoDB to have this capacity. */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SessionData`
--

LOCK TABLES `SessionData` WRITE;
/*!40000 ALTER TABLE `SessionData` DISABLE KEYS */;
INSERT INTO `SessionData` VALUES (1,'2019-01-26 04:40:38','importsettings20190126044038',1,NULL,'import default',1,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SessionReservationData`
--

LOCK TABLES `SessionReservationData` WRITE;
/*!40000 ALTER TABLE `SessionReservationData` DISABLE KEYS */;
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `session type` text,
  `selected session` text,
  `limit` tinyint(1) DEFAULT NULL,
  `n limit` int(20) DEFAULT NULL,
  `connect` tinyint(1) DEFAULT NULL,
  `c2 size` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SetupWizardSettingsData`
--

LOCK TABLES `SetupWizardSettingsData` WRITE;
/*!40000 ALTER TABLE `SetupWizardSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `SetupWizardSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SingleFocuserSettingsData`
--

DROP TABLE IF EXISTS `SingleFocuserSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SingleFocuserSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
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
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `melt preset` text,
  `melt time` double DEFAULT NULL,
  `acquire final` tinyint(1) DEFAULT '0',
  `manual focus preset` text,
  `beam tilt settle time` double DEFAULT NULL,
  `on phase plate` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SingleFocuserSettingsData`
--

LOCK TABLES `SingleFocuserSettingsData` WRITE;
/*!40000 ALTER TABLE `SingleFocuserSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `SingleFocuserSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SquareFinderPrefsData`
--

DROP TABLE IF EXISTS `SquareFinderPrefsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SquareFinderPrefsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|MosaicImageData|image` int(20) DEFAULT NULL,
  `lpf-size` double DEFAULT NULL,
  `lpf-sigma` double DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  `border` int(20) DEFAULT NULL,
  `maxblobs` int(20) DEFAULT NULL,
  `minblobsize` int(20) DEFAULT NULL,
  `maxblobsize` int(20) DEFAULT NULL,
  `mean-min` int(20) DEFAULT NULL,
  `mean-max` int(20) DEFAULT NULL,
  `std-min` int(20) DEFAULT NULL,
  `std-max` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|MosaicImageData|image` (`REF|MosaicImageData|image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SquareFinderPrefsData`
--

LOCK TABLES `SquareFinderPrefsData` WRITE;
/*!40000 ALTER TABLE `SquareFinderPrefsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `SquareFinderPrefsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SquareStatsData`
--

DROP TABLE IF EXISTS `SquareStatsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SquareStatsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|SquareFinderPrefsData|prefs` int(20) DEFAULT NULL,
  `row` int(20) DEFAULT NULL,
  `column` int(20) DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `stdev` double DEFAULT NULL,
  `good` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|SquareFinderPrefsData|prefs` (`REF|SquareFinderPrefsData|prefs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SquareStatsData`
--

LOCK TABLES `SquareStatsData` WRITE;
/*!40000 ALTER TABLE `SquareStatsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `SquareStatsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StageLocationData`
--

DROP TABLE IF EXISTS `StageLocationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StageLocationData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `removed` tinyint(1) DEFAULT '0',
  `name` text,
  `comment` text,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `a` double DEFAULT NULL,
  `xy only` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StageLocationData`
--

LOCK TABLES `StageLocationData` WRITE;
/*!40000 ALTER TABLE `StageLocationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `StageLocationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StageMeasurementData`
--

DROP TABLE IF EXISTS `StageMeasurementData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StageMeasurementData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|InstrumentData|tem` int(20) DEFAULT NULL,
  `REF|InstrumentData|ccdcamera` int(20) DEFAULT NULL,
  `label` text,
  `high tension` int(20) DEFAULT NULL,
  `magnification` int(20) DEFAULT NULL,
  `axis` text,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `delta` double DEFAULT NULL,
  `imagex` double DEFAULT NULL,
  `imagey` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StageMeasurementData`
--

LOCK TABLES `StageMeasurementData` WRITE;
/*!40000 ALTER TABLE `StageMeasurementData` DISABLE KEYS */;
/*!40000 ALTER TABLE `StageMeasurementData` ENABLE KEYS */;
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
  `ARRAY|a|1_2` double DEFAULT NULL,
  `ARRAY|a|1_3` double DEFAULT NULL,
  `ARRAY|a|1_4` double DEFAULT NULL,
  `ARRAY|a|1_5` double DEFAULT NULL,
  `ARRAY|b|1_1` double DEFAULT NULL,
  `ARRAY|b|1_2` double DEFAULT NULL,
  `ARRAY|b|1_3` double DEFAULT NULL,
  `ARRAY|b|1_4` double DEFAULT NULL,
  `ARRAY|b|1_5` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|InstrumentData|tem` (`REF|InstrumentData|tem`),
  KEY `REF|InstrumentData|ccdcamera` (`REF|InstrumentData|ccdcamera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StageModelCalibrationData`
--

LOCK TABLES `StageModelCalibrationData` WRITE;
/*!40000 ALTER TABLE `StageModelCalibrationData` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StageModelMagCalibrationData`
--

LOCK TABLES `StageModelMagCalibrationData` WRITE;
/*!40000 ALTER TABLE `StageModelMagCalibrationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `StageModelMagCalibrationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StageReproducibilityData`
--

DROP TABLE IF EXISTS `StageReproducibilityData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StageReproducibilityData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `label` text,
  `move x` double DEFAULT NULL,
  `move y` double DEFAULT NULL,
  `error pixels r` double DEFAULT NULL,
  `error pixels c` double DEFAULT NULL,
  `error meters` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StageReproducibilityData`
--

LOCK TABLES `StageReproducibilityData` WRITE;
/*!40000 ALTER TABLE `StageReproducibilityData` DISABLE KEYS */;
/*!40000 ALTER TABLE `StageReproducibilityData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StitchTargetFinderSettingsData`
--

DROP TABLE IF EXISTS `StitchTargetFinderSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StitchTargetFinderSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `wait for done` tinyint(1) DEFAULT '0',
  `ignore images` tinyint(1) DEFAULT '0',
  `queue` tinyint(1) DEFAULT '0',
  `user check` tinyint(1) DEFAULT '0',
  `queue drift` tinyint(1) DEFAULT '0',
  `sort target` tinyint(1) DEFAULT '0',
  `allow append` tinyint(1) DEFAULT '0',
  `multifocus` tinyint(1) DEFAULT '0',
  `skip` tinyint(1) DEFAULT '0',
  `test image` text,
  `overlap` double DEFAULT NULL,
  `coverage` double DEFAULT NULL,
  `check method` text,
  `allow no focus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StitchTargetFinderSettingsData`
--

LOCK TABLES `StitchTargetFinderSettingsData` WRITE;
/*!40000 ALTER TABLE `StitchTargetFinderSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `StitchTargetFinderSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestAcquisitionSettingsData`
--

DROP TABLE IF EXISTS `TestAcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TestAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
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
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `beam tilt` double DEFAULT NULL,
  `add beam tilt` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TestAcquisitionSettingsData`
--

LOCK TABLES `TestAcquisitionSettingsData` WRITE;
/*!40000 ALTER TABLE `TestAcquisitionSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TestAcquisitionSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiltAcquisitionSettingsData`
--

DROP TABLE IF EXISTS `TiltAcquisitionSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TiltAcquisitionSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
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
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `tilts` text,
  `use tilts` tinyint(1) DEFAULT '0',
  `reset per targetlist` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiltAcquisitionSettingsData`
--

LOCK TABLES `TiltAcquisitionSettingsData` WRITE;
/*!40000 ALTER TABLE `TiltAcquisitionSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TiltAcquisitionSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiltAlternaterSettingsData`
--

DROP TABLE IF EXISTS `TiltAlternaterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TiltAlternaterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
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
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `tilts` text,
  `use tilts` tinyint(1) DEFAULT '0',
  `reset per targetlist` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiltAlternaterSettingsData`
--

LOCK TABLES `TiltAlternaterSettingsData` WRITE;
/*!40000 ALTER TABLE `TiltAlternaterSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TiltAlternaterSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiltListAlternaterSettingsData`
--

DROP TABLE IF EXISTS `TiltListAlternaterSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TiltListAlternaterSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process target type` text,
  `park after list` tinyint(1) DEFAULT '0',
  `clear beam path` tinyint(1) DEFAULT '0',
  `pause time` double DEFAULT NULL,
  `first pause time` double DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `move type` text,
  `SEQ|preset order` text,
  `correct image` tinyint(1) DEFAULT '0',
  `display image` tinyint(1) DEFAULT '0',
  `save image` tinyint(1) DEFAULT '0',
  `wait for process` tinyint(1) DEFAULT '0',
  `wait for rejects` tinyint(1) DEFAULT '0',
  `wait for reference` tinyint(1) DEFAULT '0',
  `wait for transform` tinyint(1) DEFAULT '0',
  `wait time` double DEFAULT NULL,
  `iterations` int(20) DEFAULT NULL,
  `adjust for transform` text,
  `use parent mover` tinyint(1) DEFAULT '0',
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
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT '0',
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT '0',
  `park after target` tinyint(1) DEFAULT '0',
  `tilts` text,
  `use tilts` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiltListAlternaterSettingsData`
--

LOCK TABLES `TiltListAlternaterSettingsData` WRITE;
/*!40000 ALTER TABLE `TiltListAlternaterSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TiltListAlternaterSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiltRotateSettingsData`
--

DROP TABLE IF EXISTS `TiltRotateSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TiltRotateSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `tilts` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiltRotateSettingsData`
--

LOCK TABLES `TiltRotateSettingsData` WRITE;
/*!40000 ALTER TABLE `TiltRotateSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TiltRotateSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiltSeriesData`
--

DROP TABLE IF EXISTS `TiltSeriesData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TiltSeriesData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `tilt min` double DEFAULT NULL,
  `tilt max` double DEFAULT NULL,
  `tilt start` double DEFAULT NULL,
  `tilt step` double DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `tilt order` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiltSeriesData`
--

LOCK TABLES `TiltSeriesData` WRITE;
/*!40000 ALTER TABLE `TiltSeriesData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TiltSeriesData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TomographyPredictionData`
--

DROP TABLE IF EXISTS `TomographyPredictionData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TomographyPredictionData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `SUBD|predicted position|optical axis` double DEFAULT NULL,
  `SUBD|predicted position|phi` double DEFAULT NULL,
  `SUBD|predicted position|x` double DEFAULT NULL,
  `SUBD|predicted position|y` double DEFAULT NULL,
  `SUBD|predicted position|z` double DEFAULT NULL,
  `SUBD|predicted position|z0` double DEFAULT NULL,
  `SUBD|predicted shift|x` double DEFAULT NULL,
  `SUBD|predicted shift|y` double DEFAULT NULL,
  `SUBD|predicted shift|z` double DEFAULT NULL,
  `SUBD|position|x` double DEFAULT NULL,
  `SUBD|position|y` double DEFAULT NULL,
  `SUBD|correlation|x` double DEFAULT NULL,
  `SUBD|correlation|y` double DEFAULT NULL,
  `SUBD|raw correlation|x` double DEFAULT NULL,
  `SUBD|raw correlation|y` double DEFAULT NULL,
  `pixel size` double DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `measured defocus` double DEFAULT NULL,
  `measured fit` double DEFAULT NULL,
  `tilt group` int(20) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TomographyPredictionData`
--

LOCK TABLES `TomographyPredictionData` WRITE;
/*!40000 ALTER TABLE `TomographyPredictionData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TomographyPredictionData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TomographySettingsData`
--

DROP TABLE IF EXISTS `TomographySettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TomographySettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `display image` tinyint(1) DEFAULT NULL,
  `SEQ|registration preset order` text,
  `wait time` double DEFAULT NULL,
  `SEQ|preset order` text,
  `tilt max` double DEFAULT NULL,
  `save image` tinyint(1) DEFAULT NULL,
  `pause time` double DEFAULT NULL,
  `adjust for drift` tinyint(1) DEFAULT NULL,
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
  `dose` double DEFAULT NULL,
  `min exposure` double DEFAULT NULL,
  `max exposure` double DEFAULT NULL,
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
  `wait for transform` tinyint(1) DEFAULT NULL,
  `adjust for transform` text,
  `background` tinyint(1) DEFAULT NULL,
  `use parent tilt` tinyint(1) DEFAULT NULL,
  `adjust time by tilt` tinyint(1) DEFAULT NULL,
  `reset tilt` tinyint(1) DEFAULT NULL,
  `bad stats response` text,
  `high mean` double DEFAULT NULL,
  `low mean` double DEFAULT NULL,
  `emission off` tinyint(1) DEFAULT NULL,
  `target offset row` int(20) DEFAULT NULL,
  `target offset col` int(20) DEFAULT NULL,
  `correct image shift coma` tinyint(1) DEFAULT NULL,
  `pause between time` double DEFAULT NULL,
  `park after target` tinyint(1) DEFAULT NULL,
  `park after list` tinyint(1) DEFAULT NULL,
  `z0` double DEFAULT NULL,
  `use z0` tinyint(1) DEFAULT NULL,
  `clear beam path` tinyint(1) DEFAULT '0',
  `first pause time` double DEFAULT NULL,
  `use parent mover` tinyint(1) DEFAULT '0',
  `bad stats type` text,
  `recheck pause time` int(20) DEFAULT NULL,
  `z02` double DEFAULT NULL,
  `addon tilts` text,
  `tilt order` text,
  `use preset exposure` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TomographySettingsData`
--

LOCK TABLES `TomographySettingsData` WRITE;
/*!40000 ALTER TABLE `TomographySettingsData` DISABLE KEYS */;
INSERT INTO `TomographySettingsData` VALUES (1,'2019-01-26 04:40:38',1,NULL,0,'[u\'tomo\']',60,1,2.5,NULL,1,NULL,1,NULL,1,-60,NULL,0,1,'stage position',1,'Tomography',0,1,NULL,0,0,1,200,0.025,2,'acquisition','navigator',0.00000006,0,8,1,100,90,1,0,1,1,NULL,0,'custom values',0.000002,0,0,1,0,0,0,1,1,NULL,0.0000002,NULL,1,4,10,0,NULL,'one',0,0,0,0,'Continue',65536,50,0,0,0,0,NULL,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,'sequential',0);
/*!40000 ALTER TABLE `TomographySettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransformDeclaredData`
--

DROP TABLE IF EXISTS `TransformDeclaredData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransformDeclaredData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `type` text,
  `node` text,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransformDeclaredData`
--

LOCK TABLES `TransformDeclaredData` WRITE;
/*!40000 ALTER TABLE `TransformDeclaredData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransformDeclaredData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransformManagerSettingsData`
--

DROP TABLE IF EXISTS `TransformManagerSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransformManagerSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransformManagerSettingsData`
--

LOCK TABLES `TransformManagerSettingsData` WRITE;
/*!40000 ALTER TABLE `TransformManagerSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransformManagerSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransformMatrixData`
--

DROP TABLE IF EXISTS `TransformMatrixData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransformMatrixData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image1` int(20) DEFAULT NULL,
  `REF|AcquisitionImageData|image2` int(20) DEFAULT NULL,
  `ARRAY|matrix|1_1` double DEFAULT NULL,
  `ARRAY|matrix|1_2` double DEFAULT NULL,
  `ARRAY|matrix|1_3` double DEFAULT NULL,
  `ARRAY|matrix|2_1` double DEFAULT NULL,
  `ARRAY|matrix|2_2` double DEFAULT NULL,
  `ARRAY|matrix|2_3` double DEFAULT NULL,
  `ARRAY|matrix|3_1` double DEFAULT NULL,
  `ARRAY|matrix|3_2` double DEFAULT NULL,
  `ARRAY|matrix|3_3` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image1` (`REF|AcquisitionImageData|image1`),
  KEY `REF|AcquisitionImageData|image2` (`REF|AcquisitionImageData|image2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransformMatrixData`
--

LOCK TABLES `TransformMatrixData` WRITE;
/*!40000 ALTER TABLE `TransformMatrixData` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransformMatrixData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserData`
--

DROP TABLE IF EXISTS `UserData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(24) DEFAULT NULL,
  `firstname` varchar(24) DEFAULT NULL,
  `lastname` varchar(24) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `REF|GroupData|group` int(20) DEFAULT NULL,
  `noleginon` tinyint(1) DEFAULT NULL,
  `advanced` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  UNIQUE KEY `username` (`username`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|GroupData|group` (`REF|GroupData|group`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserData`
--

LOCK TABLES `UserData` WRITE;
/*!40000 ALTER TABLE `UserData` DISABLE KEYS */;
INSERT INTO `UserData` VALUES (1,'2019-01-26 04:40:38','administrator','Appion-Leginon','Administrator','ece4005f17bbe739570639d3f2a61fb2','anchi2c@gmail.com',1,0,1),(2,'2019-01-26 04:40:38','anonymous','Public','User','294de3557d9d00b3d2d8a1e6aab028cf','anchi2c@gmail.com',4,1,0);
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
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(11) DEFAULT NULL,
  `REF|AcquisitionImageData|image` int(11) DEFAULT NULL,
  `status` enum('hidden','visible','exemplar','trash') DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ViewerImageStatus`
--

LOCK TABLES `ViewerImageStatus` WRITE;
/*!40000 ALTER TABLE `ViewerImageStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ViewerImageStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ZeroLossCheckData`
--

DROP TABLE IF EXISTS `ZeroLossCheckData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZeroLossCheckData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `REF|ReferenceTargetData|reference` int(20) DEFAULT NULL,
  `REF|PresetData|preset` int(20) DEFAULT NULL,
  `mean` double DEFAULT NULL,
  `std` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`),
  KEY `REF|ReferenceTargetData|reference` (`REF|ReferenceTargetData|reference`),
  KEY `REF|PresetData|preset` (`REF|PresetData|preset`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ZeroLossCheckData`
--

LOCK TABLES `ZeroLossCheckData` WRITE;
/*!40000 ALTER TABLE `ZeroLossCheckData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ZeroLossCheckData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ZeroLossIceThicknessData`
--

DROP TABLE IF EXISTS `ZeroLossIceThicknessData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZeroLossIceThicknessData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|AcquisitionImageData|image` int(20) DEFAULT NULL,
  `slit mean` double DEFAULT NULL,
  `slit sd` double DEFAULT NULL,
  `no slit mean` double DEFAULT NULL,
  `no slit sd` double DEFAULT NULL,
  `thickness` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|AcquisitionImageData|image` (`REF|AcquisitionImageData|image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ZeroLossIceThicknessData`
--

LOCK TABLES `ZeroLossIceThicknessData` WRITE;
/*!40000 ALTER TABLE `ZeroLossIceThicknessData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ZeroLossIceThicknessData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ZeroLossIceThicknessSettingsData`
--

DROP TABLE IF EXISTS `ZeroLossIceThicknessSettingsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZeroLossIceThicknessSettingsData` (
  `DEF_id` int(16) NOT NULL AUTO_INCREMENT,
  `DEF_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REF|SessionData|session` int(20) DEFAULT NULL,
  `name` text,
  `isdefault` tinyint(1) DEFAULT '0',
  `process` tinyint(1) DEFAULT '0',
  `presetname` text,
  `mean free path` double DEFAULT NULL,
  `exposure time` double DEFAULT NULL,
  `slit width` double DEFAULT NULL,
  PRIMARY KEY (`DEF_id`),
  KEY `DEF_timestamp` (`DEF_timestamp`),
  KEY `REF|SessionData|session` (`REF|SessionData|session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ZeroLossIceThicknessSettingsData`
--

LOCK TABLES `ZeroLossIceThicknessSettingsData` WRITE;
/*!40000 ALTER TABLE `ZeroLossIceThicknessSettingsData` DISABLE KEYS */;
/*!40000 ALTER TABLE `ZeroLossIceThicknessSettingsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_cache`
--

DROP TABLE IF EXISTS `viewer_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_cache` (
  `session` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`session`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_cache`
--

LOCK TABLES `viewer_cache` WRITE;
/*!40000 ALTER TABLE `viewer_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_comment`
--

DROP TABLE IF EXISTS `viewer_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_del_image`
--

LOCK TABLES `viewer_del_image` WRITE;
/*!40000 ALTER TABLE `viewer_del_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_del_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_login`
--

DROP TABLE IF EXISTS `viewer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `privilege` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_login`
--

LOCK TABLES `viewer_login` WRITE;
/*!40000 ALTER TABLE `viewer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_pref_image`
--

DROP TABLE IF EXISTS `viewer_pref_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_pref_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `status` enum('hidden','visible','exemplar') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `username` (`username`),
  KEY `sessionId` (`sessionId`),
  KEY `imageId` (`imageId`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_pref_image`
--

LOCK TABLES `viewer_pref_image` WRITE;
/*!40000 ALTER TABLE `viewer_pref_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_pref_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_update`
--

DROP TABLE IF EXISTS `viewer_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('N','Y') DEFAULT NULL,
  `name` text,
  `update` text,
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_update`
--

LOCK TABLES `viewer_update` WRITE;
/*!40000 ALTER TABLE `viewer_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_users`
--

DROP TABLE IF EXISTS `viewer_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viewer_users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `firstname` text,
  `lastname` text,
  `title` text,
  `institution` text,
  `dept` text,
  `address` text,
  `city` text,
  `statecountry` text,
  `zip` text,
  `phone` text,
  `fax` text,
  `email` text,
  `url` text,
  PRIMARY KEY (`userId`),
  KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_users`
--

LOCK TABLES `viewer_users` WRITE;
/*!40000 ALTER TABLE `viewer_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewer_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-28 21:04:03

CREATE USER usr_object@'%' IDENTIFIED BY 'leginon-tutorial';
GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON *.* to usr_object@'localhost' IDENTIFIED BY 'leginon-tutorial';
GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON *.* to usr_object@'%' IDENTIFIED BY 'leginon-tutorial';

flush privileges;
