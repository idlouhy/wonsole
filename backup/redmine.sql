-- MySQL dump 10.13  Distrib 5.1.61, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: redmine
-- ------------------------------------------------------
-- Server version	5.1.61

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(30) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(40) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,67,'Issue','12-09-13_weekly-status-report.pdf','120912152244_12-09-13_weekly-status-report.pdf',60907,'application/pdf','87fca2b66cef34e17f0375f1a6d1ce55',0,4,'2012-09-12 15:22:44',''),(2,67,'Issue','12-09-13_meeting-agenda.pdf','120912152245_12-09-13_meeting-agenda.pdf',47123,'application/pdf','a52f2d4cc4e4574dfdb8c53333f20cfe',0,4,'2012-09-12 15:22:45',''),(3,75,'Issue','Screen Shot 2012-09-11 at 13.13.29 PM (1).png','120913154508_4bd8e0a504ddfda9932bcd21efa35184.png',222654,'image/png','3dc6abfa67350c4f6274e073dff7afc3',0,4,'2012-09-13 15:45:08',''),(4,71,'Issue','12-09-13_meeting-notes.pdf','120913162429_12-09-13_meeting-notes.pdf',52864,'application/pdf','9dc03093564f5379c2579f8bbc739698',0,4,'2012-09-13 16:24:29',''),(5,67,'Issue','12-09-13_meeting-notes.pdf','120913162644_12-09-13_meeting-notes.pdf',52864,'application/pdf','9dc03093564f5379c2579f8bbc739698',0,8,'2012-09-13 16:26:44',''),(6,36,'Issue','12-09-07_report.pdf','120913164747_12-09-07_report.pdf',48380,'application/pdf','a66b8b3b7a04c344c2c8d7b8ebe21f6c',0,4,'2012-09-13 16:47:47',''),(7,36,'Issue','12-09-07_meeting-notes.pdf','120913164748_12-09-07_meeting-notes.pdf',67889,'application/pdf','8c06dd495a15d00219e5f69fa01ce425',0,4,'2012-09-13 16:47:48',''),(8,36,'Issue','12-09-07_meeting-agenda.pdf','120913164748_12-09-07_meeting-agenda.pdf',56907,'application/pdf','bae312c9683d35aecba7732942c4efca',0,4,'2012-09-13 16:47:48',''),(9,138,'Issue','2012-09-20_weekly-report.pdf','120920134549_2012-09-20_weekly-report.pdf',63189,'application/pdf','8bda52c9529d9f1579619f71a8e87906',0,4,'2012-09-20 13:45:49',''),(10,138,'Issue','2012-09-20_meeting-agenda.pdf','120920134549_2012-09-20_meeting-agenda.pdf',47105,'application/pdf','b9efebce87811e9ccca5ea2a3bea81b5',0,4,'2012-09-20 13:45:49',''),(11,138,'Issue','2012-09-20_meeting-notes.pdf','120920134549_2012-09-20_meeting-notes.pdf',52679,'application/pdf','390a113c6b369f7590c1fbd1bee6bc4f',0,4,'2012-09-20 13:45:49',''),(12,79,'Issue','2012-09-20_weekly-report-customer.pdf','120920134951_2012-09-20_weekly-report-customer.pdf',49517,'application/pdf','4bd699db72adc973f4f14d2689a6f895',0,4,'2012-09-20 13:49:51',''),(14,79,'Issue','2012-09-20_meeting-agenda-customer.pdf','120924174524_2012-09-20_meeting-agenda-customer.pdf',48769,'application/pdf','f3e55141c2af921d10af231c172ee470',0,5,'2012-09-24 17:45:24',''),(15,197,'Issue','2012-10-04_meeting-agenda-customer.pdf','121017134215_2012-10-04_meeting-agenda-customer.pdf',47363,'application/pdf','883f7ccd20cbc92f006e50264fe60aab',0,4,'2012-10-17 13:42:15',''),(16,197,'Issue','2012-10-04_weekly-report-customer.pdf','121017134215_2012-10-04_weekly-report-customer.pdf',49876,'application/pdf','c02bc7daeed8b659e8bddaff628beddd',0,4,'2012-10-17 13:42:15',''),(17,252,'Issue','2012-10-18_meeting-agenda-customer.pdf','121017192758_2012-10-18_meeting-agenda-customer.pdf',47479,'application/pdf','c51f98685e6bb664d375156c2319e8bc',0,4,'2012-10-17 19:27:58',''),(18,252,'Issue','2012-10-18_weekly-report-customer.pdf','121017192759_2012-10-18_weekly-report-customer.pdf',46147,'application/pdf','62b1c8945bd236ef67aebb9761e5905c',0,4,'2012-10-17 19:27:59',''),(19,89,'Issue','2012-10-18_meeting-agenda-advisor.pdf','121017192840_2012-10-18_meeting-agenda-advisor.pdf',47398,'application/pdf','570a11e0f2d35eecc76196d3090cf337',0,4,'2012-10-17 19:28:40',''),(20,89,'Issue','2012-10-18_weekly-report-advisor.pdf','121017192840_2012-10-18_weekly-report-advisor.pdf',60732,'application/pdf','63a8a0f2ba99f2feb271acdf80f811f4',0,4,'2012-10-17 19:28:40',''),(21,268,'Issue','preliminaryfeedbackgr7.docx','121025123013_preliminaryfeedbackgr7.docx',15084,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','5c330d2b1752d470ac14ae513d6109a8',0,4,'2012-10-25 12:30:13','Feedback from Meng, part 1 (custom notes added)'),(22,268,'Issue','report-reviewed.pdf','121025123220_report-reviewed.pdf',1510302,'application/pdf','6c42dd6e661cdea4fca980a5d6589f23',0,4,'2012-10-25 12:32:20','Report pre-delivery with comments from Meng');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sources`
--

LOCK TABLES `auth_sources` WRITE;
/*!40000 ALTER TABLE `auth_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `burndown_days`
--

DROP TABLE IF EXISTS `burndown_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `burndown_days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `points_committed` int(11) NOT NULL DEFAULT '0',
  `points_accepted` int(11) NOT NULL DEFAULT '0',
  `points_resolved` int(11) NOT NULL DEFAULT '0',
  `remaining_hours` float NOT NULL DEFAULT '0',
  `version_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_burndown_days_on_version_id` (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burndown_days`
--

LOCK TABLES `burndown_days` WRITE;
/*!40000 ALTER TABLE `burndown_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `burndown_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changes`
--

LOCK TABLES `changes` WRITE;
/*!40000 ALTER TABLE `changes` DISABLE KEYS */;
INSERT INTO `changes` VALUES (1,1,'A','README.md',NULL,NULL,NULL,NULL),(2,2,'A','backup/redmine.sql',NULL,NULL,NULL,NULL),(3,3,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(4,4,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(5,5,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(6,6,'A','report/src/report.pdf',NULL,NULL,NULL,NULL),(7,6,'A','report/src/report.tex',NULL,NULL,NULL,NULL),(8,7,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(9,8,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(10,9,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(11,10,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(12,11,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(13,12,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(14,13,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(15,14,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(16,15,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(17,16,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(18,17,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(19,18,'A','report/src/logo-ntnu.eps',NULL,NULL,NULL,NULL),(20,18,'M','report/src/report.pdf',NULL,NULL,NULL,NULL),(21,18,'M','report/src/report.tex',NULL,NULL,NULL,NULL),(22,19,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(23,21,'A','report/src/logo-ntnu.pdf',NULL,NULL,NULL,NULL),(24,21,'M','report/src/report.pdf',NULL,NULL,NULL,NULL),(25,21,'M','report/src/report.tex',NULL,NULL,NULL,NULL),(26,23,'D','report/src/logo-ntnu.eps',NULL,NULL,NULL,NULL),(27,24,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(28,25,'M','report/src/report.pdf',NULL,NULL,NULL,NULL),(29,25,'M','report/src/report.tex',NULL,NULL,NULL,NULL),(30,26,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(31,27,'M','backup/redmine.sql',NULL,NULL,NULL,NULL),(32,28,'A','report/src/chapter/introduction.tex',NULL,NULL,NULL,NULL),(33,28,'A','report/src/image/logo-ntnu.pdf',NULL,NULL,NULL,NULL),(34,28,'D','report/src/logo-ntnu.pdf',NULL,NULL,NULL,NULL),(35,28,'M','report/src/report.pdf',NULL,NULL,NULL,NULL),(36,28,'M','report/src/report.tex',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changeset_parents`
--

DROP TABLE IF EXISTS `changeset_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  KEY `changeset_parents_changeset_ids` (`changeset_id`),
  KEY `changeset_parents_parent_ids` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changeset_parents`
--

LOCK TABLES `changeset_parents` WRITE;
/*!40000 ALTER TABLE `changeset_parents` DISABLE KEYS */;
INSERT INTO `changeset_parents` VALUES (2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),(10,9),(11,10),(12,11),(13,12),(14,13),(15,14),(16,15),(17,16),(18,17),(19,17),(20,19),(20,18),(21,18),(22,20),(22,21),(23,22),(24,23),(25,24),(26,25),(27,26),(28,27);
/*!40000 ALTER TABLE `changeset_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets`
--

DROP TABLE IF EXISTS `changesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` text,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets`
--

LOCK TABLES `changesets` WRITE;
/*!40000 ALTER TABLE `changesets` DISABLE KEYS */;
INSERT INTO `changesets` VALUES (1,3,'8b1dcc55039a2742d1411f76dd7bdcf1d32af03b','idlouhy <idlouhy@gmail.com>','2012-09-04 01:35:03','Initial commit','2012-09-04','8b1dcc55039a2742d1411f76dd7bdcf1d32af03b',4),(2,3,'ac06e0bdf83876312b7e11b717d4e22b94b8ea6e','root <root@netlight.dlouho.net>','2012-09-04 15:45:34','database backup','2012-09-04','ac06e0bdf83876312b7e11b717d4e22b94b8ea6e',8),(3,3,'2cb9e62f1cf810f28c5ce04e9fce15f818ccf5f3','Database <idlouhy@gmail.com>','2012-09-04 16:24:55','Database backup.','2012-09-04','2cb9e62f1cf810f28c5ce04e9fce15f818ccf5f3',4),(4,3,'4fe8ccf807991f695d29c0a8e8a1f630151dfff0','Database <idlouhy@gmail.com>','2012-09-04 23:21:01','Database backup.','2012-09-04','4fe8ccf807991f695d29c0a8e8a1f630151dfff0',4),(5,3,'bde3ab07ac4479363840bcf9d567d530d5e96e14','Database <idlouhy@gmail.com>','2012-09-05 00:00:01','Database backup.','2012-09-05','bde3ab07ac4479363840bcf9d567d530d5e96e14',4),(6,3,'fa135421d6f2ae41b3975d4ad88ed127b42ed359','idlouhy <idlouhy@gmail.com>','2012-09-05 00:21:24','template file for the record in latex, pdf included','2012-09-05','fa135421d6f2ae41b3975d4ad88ed127b42ed359',4),(7,3,'dc547c368580b9856874d33640387ab320b3500d','Database <idlouhy@gmail.com>','2012-09-05 12:00:01','database backup','2012-09-05','dc547c368580b9856874d33640387ab320b3500d',4),(8,3,'391251b5e9409a6c88b83b24dd30154e9021d45c','Database <idlouhy@gmail.com>','2012-09-06 00:00:01','database backup','2012-09-06','391251b5e9409a6c88b83b24dd30154e9021d45c',4),(9,3,'eea5ba321cf3cc50623c6db7425ec2a63b65e5f3','Database <idlouhy@gmail.com>','2012-09-06 12:00:01','database backup','2012-09-06','eea5ba321cf3cc50623c6db7425ec2a63b65e5f3',4),(10,3,'93983d247b80e32b4bd4bc1515860f9529a4bf50','Database <idlouhy@gmail.com>','2012-09-07 00:00:01','database backup','2012-09-07','93983d247b80e32b4bd4bc1515860f9529a4bf50',4),(11,3,'fdd6faa6f54414ff39080f21f597d8e55e2c63fa','Database <idlouhy@gmail.com>','2012-09-07 12:00:01','database backup','2012-09-07','fdd6faa6f54414ff39080f21f597d8e55e2c63fa',4),(12,3,'8c9e65dddba7549776ef8496eac013514b533834','Database <idlouhy@gmail.com>','2012-09-08 00:00:01','database backup','2012-09-08','8c9e65dddba7549776ef8496eac013514b533834',4),(13,3,'04c191e2bf1a72eaa71b076953ed9d5e7d087a6d','Database <idlouhy@gmail.com>','2012-09-08 12:00:01','database backup','2012-09-08','04c191e2bf1a72eaa71b076953ed9d5e7d087a6d',4),(14,3,'fe563ccd9594de1ad65a75500d924047a12ee75b','Database <idlouhy@gmail.com>','2012-09-09 00:00:01','database backup','2012-09-09','fe563ccd9594de1ad65a75500d924047a12ee75b',4),(15,3,'a4aa063c0dc9e8f2201199fa05d188726d268187','Database <idlouhy@gmail.com>','2012-09-09 12:00:02','database backup','2012-09-09','a4aa063c0dc9e8f2201199fa05d188726d268187',4),(16,3,'eb6f2717524caca883d189532141f6180891f8ad','Database <idlouhy@gmail.com>','2012-09-10 00:00:01','database backup','2012-09-10','eb6f2717524caca883d189532141f6180891f8ad',4),(17,3,'084cdfde59db090968616cf0103ff0a870d9229b','Database <idlouhy@gmail.com>','2012-09-10 12:00:01','database backup','2012-09-10','084cdfde59db090968616cf0103ff0a870d9229b',4),(18,3,'bc956caaa9376f29c8d1f26ca4453482419978ab','idlouhy <idlouhy@gmail.com>','2012-09-10 18:20:58','imported table of contents, added NTNU logo','2012-09-10','bc956caaa9376f29c8d1f26ca4453482419978ab',4),(19,3,'526068b1eb033a6585bc2ed2210df43e5bfd8da2','Database <idlouhy@gmail.com>','2012-09-11 00:00:01','database backup','2012-09-11','526068b1eb033a6585bc2ed2210df43e5bfd8da2',4),(20,3,'b76965c275ed77d45cdcf47d199a2fe8011b2257','Database <idlouhy@gmail.com>','2012-09-11 10:39:50','Merge branch \'master\' of github.com:idlouhy/ntnu-netlight-project','2012-09-11','b76965c275ed77d45cdcf47d199a2fe8011b2257',4),(21,3,'37b902ef9be11eb9028d4c215151fff0ba719ab9','idlouhy <idlouhy@gmail.com>','2012-09-11 10:43:24','use ntnu logo in pdf','2012-09-11','37b902ef9be11eb9028d4c215151fff0ba719ab9',4),(22,3,'310d563522ca6c22fc6035b6e874b1c93b7d31b1','Database <idlouhy@gmail.com>','2012-09-11 10:44:17','Merge branch \'master\' of github.com:idlouhy/ntnu-netlight-project','2012-09-11','310d563522ca6c22fc6035b6e874b1c93b7d31b1',4),(23,3,'2a4a9a909b6e71c6fba7ab6131fe630d85a224cb','Database <idlouhy@gmail.com>','2012-09-11 10:45:54','deleted ntnu logo in eps','2012-09-11','2a4a9a909b6e71c6fba7ab6131fe630d85a224cb',4),(24,3,'fe6b03b9d5a724ffd581aca5c508bb85ad2c7d13','Database <idlouhy@gmail.com>','2012-09-11 12:00:01','database backup','2012-09-11','fe6b03b9d5a724ffd581aca5c508bb85ad2c7d13',4),(25,3,'c0702b4c7986fa14b1952ee67241ce14945206d4','idlouhy <idlouhy@gmail.com>','2012-09-11 14:13:44','table with team roles','2012-09-11','c0702b4c7986fa14b1952ee67241ce14945206d4',4),(26,3,'88a7c0cd0114fa0f3078ad07521de295400b5547','Database <idlouhy@gmail.com>','2012-09-12 00:00:01','database backup','2012-09-12','88a7c0cd0114fa0f3078ad07521de295400b5547',4),(27,3,'691cc63bba8007d96bcd8ec78680cb60b5e5983e','Database <idlouhy@gmail.com>','2012-09-12 12:00:01','database backup','2012-09-12','691cc63bba8007d96bcd8ec78680cb60b5e5983e',4),(28,3,'d2138233bf0d309b27260bc59f820c981c6ab997','idlouhy <idlouhy@gmail.com>','2012-09-12 13:28:40','created introduction chapter, created subfolders for images and chapters, copied introduction to latex','2012-09-12','d2138233bf0d309b27260bc59f820c981c6ab997',4);
/*!40000 ALTER TABLE `changesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets_issues`
--

LOCK TABLES `changesets_issues` WRITE;
/*!40000 ALTER TABLE `changesets_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_projects`
--

LOCK TABLES `custom_fields_projects` WRITE;
/*!40000 ALTER TABLE `custom_fields_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_trackers`
--

LOCK TABLES `custom_fields_trackers` WRITE;
/*!40000 ALTER TABLE `custom_fields_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_values`
--

LOCK TABLES `custom_values` WRITE;
/*!40000 ALTER TABLE `custom_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enabled_modules`
--

LOCK TABLES `enabled_modules` WRITE;
/*!40000 ALTER TABLE `enabled_modules` DISABLE KEYS */;
INSERT INTO `enabled_modules` VALUES (1,1,'issue_tracking'),(2,1,'time_tracking'),(3,1,'news'),(5,1,'files'),(7,1,'repository'),(9,1,'calendar'),(10,1,'gantt'),(12,1,'backlogs');
/*!40000 ALTER TABLE `enabled_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enumerations`
--

LOCK TABLES `enumerations` WRITE;
/*!40000 ALTER TABLE `enumerations` DISABLE KEYS */;
INSERT INTO `enumerations` VALUES (1,'User documentation',1,0,'DocumentCategory',1,NULL,NULL),(2,'Technical documentation',2,0,'DocumentCategory',1,NULL,NULL),(3,'Low',1,0,'IssuePriority',1,NULL,NULL),(4,'Normal',2,1,'IssuePriority',1,NULL,NULL),(5,'High',3,0,'IssuePriority',1,NULL,NULL),(6,'Urgent',4,0,'IssuePriority',1,NULL,NULL),(7,'Immediate',5,0,'IssuePriority',1,NULL,NULL),(8,'Design',1,0,'TimeEntryActivity',1,NULL,NULL),(9,'Development',2,0,'TimeEntryActivity',1,NULL,NULL),(10,'Report',3,1,'TimeEntryActivity',1,NULL,NULL),(11,'Management',4,0,'TimeEntryActivity',1,NULL,NULL),(12,'Meeting',5,0,'TimeEntryActivity',1,NULL,NULL),(13,'Lecture',6,0,'TimeEntryActivity',1,NULL,NULL),(14,'Support',7,0,'TimeEntryActivity',1,NULL,NULL);
/*!40000 ALTER TABLE `enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_users`
--

LOCK TABLES `groups_users` WRITE;
/*!40000 ALTER TABLE `groups_users` DISABLE KEYS */;
INSERT INTO `groups_users` VALUES (3,4),(3,5),(3,6),(3,7),(3,8);
/*!40000 ALTER TABLE `groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_categories`
--

LOCK TABLES `issue_categories` WRITE;
/*!40000 ALTER TABLE `issue_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_relations`
--

LOCK TABLES `issue_relations` WRITE;
/*!40000 ALTER TABLE `issue_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`),
  KEY `index_issue_statuses_on_is_default` (`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_statuses`
--

LOCK TABLES `issue_statuses` WRITE;
/*!40000 ALTER TABLE `issue_statuses` DISABLE KEYS */;
INSERT INTO `issue_statuses` VALUES (1,'New',0,1,1,NULL),(2,'In Progress',0,0,2,NULL),(3,'Resolved',0,0,3,NULL),(4,'Feedback',0,0,4,NULL),(5,'Closed',1,0,5,NULL),(6,'Rejected',1,0,6,NULL);
/*!40000 ALTER TABLE `issue_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '0',
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `remaining_hours` float DEFAULT NULL,
  `story_points` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`),
  KEY `index_issues_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,2,1,'Report','',NULL,NULL,1,NULL,4,NULL,4,130,'2012-09-04 13:26:08','2012-10-31 13:31:51',NULL,50,154.2,NULL,1,1,100,0,9600,0,NULL),(2,3,1,'Report pre-delivery','','2012-10-14',NULL,5,NULL,4,NULL,4,101,'2012-09-04 13:27:06','2012-10-17 13:35:17','2012-08-27',51,118.2,1,1,2,77,0,0,0,NULL),(3,3,1,'Report finish','','2012-11-21',NULL,1,NULL,4,NULL,4,8,'2012-09-04 13:28:15','2012-09-19 12:11:30','2012-09-13',58,8,1,1,78,89,0,50,0,NULL),(4,3,1,'Write abstract chapter','Finish the abstract chapter of the final report','2012-10-14',NULL,1,NULL,4,NULL,5,0,'2012-09-04 13:29:59','2012-09-04 13:29:59','2012-09-04',0,30,2,1,3,4,0,100,NULL,NULL),(5,3,1,'Write introduction chapter','Finish the intro chapter of the report','2012-08-29',NULL,1,NULL,4,NULL,5,15,'2012-09-04 13:31:53','2012-09-13 16:07:58','2012-08-27',100,1,2,1,5,10,0,150,0,NULL),(6,3,1,'Write pre-study chapter','Finish the pre-study chapter in the final report','2012-09-06',NULL,2,NULL,4,NULL,5,37,'2012-09-04 13:33:17','2012-09-13 16:06:54','2012-08-27',63,8.2,2,1,11,36,0,200,0,NULL),(7,3,1,'Write technology overview','','2012-09-06',NULL,5,NULL,4,NULL,4,33,'2012-09-04 13:35:42','2012-09-12 12:57:40','2012-08-27',100,5.2,6,1,12,33,0,250,0,NULL),(8,3,1,'Write Choice-of- Lifecycle-model chapter','Finish Choice-of- Lifecycle-model chapter for the final report','2012-09-16',NULL,1,NULL,4,NULL,5,11,'2012-09-04 13:36:08','2012-09-13 15:59:20','2012-08-27',83,23,2,1,37,54,0,300,0,NULL),(9,3,1,'Write description of JIRA','','2012-09-03',NULL,5,5,4,NULL,4,3,'2012-09-04 13:38:02','2012-09-12 12:57:28','2012-08-27',100,0.7,7,1,13,14,0,350,NULL,NULL),(10,3,1,'Find suitable development methodologies ','Find a list of available development methodologies and find the ones that seems to fit our project.','2012-09-03',NULL,5,NULL,4,NULL,5,2,'2012-09-04 13:40:29','2012-09-13 15:53:55','2012-08-27',100,5,8,1,38,39,0,400,NULL,NULL),(11,3,1,'Write description of Redmine','','2012-09-03',NULL,5,4,4,NULL,4,2,'2012-09-04 13:41:44','2012-09-12 12:57:12','2012-08-27',100,0.5,7,1,15,16,0,450,NULL,NULL),(12,3,1,'Write description of Google Code','','2012-09-03',NULL,6,4,4,NULL,4,3,'2012-09-04 13:43:14','2012-09-11 18:40:30','2012-08-27',100,0.5,7,1,19,20,0,500,NULL,NULL),(13,3,1,'Write description of Google Calendar','','2012-09-06',NULL,5,4,4,NULL,4,2,'2012-09-04 13:43:47','2012-09-12 12:53:57','2012-08-27',100,0.5,7,1,17,18,0,550,NULL,NULL),(14,3,1,'Write some about each development methodology','Write some about each development methodology, compare and evaluate them, and pick which one to use ','2012-09-06',NULL,5,NULL,4,NULL,5,9,'2012-09-04 13:44:14','2012-09-12 12:52:33','2012-08-31',100,14,8,1,40,51,0,600,0,NULL),(15,3,1,'Write description of Google Groups','','2012-09-06',NULL,5,4,4,NULL,4,3,'2012-09-04 13:45:06','2012-09-12 12:54:13','2012-08-27',100,0.5,7,1,21,22,0,650,NULL,NULL),(16,3,1,'Write description of Google Docs','','2012-09-06',NULL,5,7,4,NULL,4,2,'2012-09-04 13:46:12','2012-09-12 12:56:58','2012-08-27',100,0.5,7,1,23,24,0,700,NULL,NULL),(17,3,1,'Write description of Skype','','2012-09-06',NULL,5,7,4,NULL,4,2,'2012-09-04 13:46:41','2012-09-12 12:55:43','2012-08-27',100,0.5,7,1,25,26,0,750,NULL,NULL),(18,3,1,'Write description of Github','','2012-09-06',NULL,5,7,4,NULL,4,2,'2012-09-04 13:47:17','2012-09-12 12:55:56','2012-08-27',100,0.5,7,1,27,28,0,800,NULL,NULL),(19,3,1,'Create risk assessment','Create the risk assessment for the project, and suggest ways of avoiding them','2012-08-30',NULL,3,6,4,NULL,5,1,'2012-09-04 13:47:41','2012-09-13 16:07:42','2012-08-27',100,10,78,1,62,63,0,850,NULL,NULL),(20,3,1,'Write description of Bit Bucket','','2012-09-06',NULL,5,5,4,NULL,4,3,'2012-09-04 13:48:18','2012-09-12 12:56:22','2012-08-27',100,0.5,7,1,29,30,0,900,NULL,NULL),(21,3,1,'Write about Scrum','','2012-09-06',NULL,5,7,4,NULL,4,1,'2012-09-04 13:51:05','2012-09-13 15:57:46','2012-09-04',100,1,14,1,41,42,0,950,NULL,NULL),(22,3,1,'Write description of LaTex','','2012-08-29',NULL,5,5,4,NULL,5,1,'2012-09-04 13:51:17','2012-09-12 12:56:09','2012-08-27',100,0.5,7,1,31,32,0,1000,NULL,NULL),(23,3,1,'Write about DSDM Atern','','2012-09-06',NULL,5,7,4,NULL,4,1,'2012-09-04 13:51:42','2012-09-13 15:58:00','2012-09-04',100,1,14,1,43,44,0,1050,NULL,NULL),(24,3,1,'Write about XP','','2012-09-06',NULL,5,5,4,NULL,4,1,'2012-09-04 13:52:26','2012-09-13 15:58:15','2012-09-04',100,1,14,1,45,46,0,1100,NULL,NULL),(25,3,1,'Write about Waterfall','','2012-09-06',NULL,5,5,4,NULL,4,4,'2012-09-04 13:52:56','2012-09-13 15:58:29','2012-09-04',100,1,14,1,47,48,0,1150,NULL,NULL),(26,3,1,'Write something about the customer','','2012-08-29',NULL,3,7,4,NULL,5,1,'2012-09-04 13:54:27','2012-09-04 13:54:41','2012-08-27',100,0.5,5,1,6,7,0,1200,NULL,NULL),(27,3,1,'Create report template in LaTeX','','2012-09-06',NULL,3,4,4,NULL,4,2,'2012-09-04 13:55:30','2012-09-11 19:52:35','2012-09-04',100,10,1,1,90,91,0,1250,NULL,NULL),(28,3,1,'Write about the planned effort of the project','','2012-08-29',NULL,3,5,4,NULL,5,0,'2012-09-04 13:56:10','2012-09-04 13:56:10','2012-08-27',100,0.5,5,1,8,9,0,1300,NULL,NULL),(29,3,1,'Create a schedule of results','','2012-09-14',NULL,3,5,4,NULL,5,6,'2012-09-04 13:58:09','2012-09-19 12:11:04','2012-08-27',100,3,78,1,64,65,0,1350,NULL,NULL),(30,3,1,'Write report outline in LaTeX','','2012-09-06',NULL,5,4,4,NULL,4,3,'2012-09-04 13:58:15','2012-09-11 20:41:38','2012-09-04',100,4,1,1,92,93,0,1400,NULL,NULL),(31,3,1,'Administration of support tools','','2012-09-24',NULL,2,4,4,NULL,4,2,'2012-09-04 14:00:12','2012-09-26 10:20:52','2012-09-24',100,2,NULL,31,1,4,0,1450,NULL,NULL),(32,3,1,'Project management','','2012-09-26',NULL,2,4,5,NULL,4,4,'2012-09-04 14:04:03','2012-09-26 10:49:29','2012-09-13',61,5.5,NULL,32,1,8,0,1500,NULL,NULL),(33,3,1,'Compare and evaluate development methodologies','','2012-09-06',NULL,5,5,4,NULL,5,2,'2012-09-04 14:04:26','2012-09-13 15:58:51','2012-08-31',100,10,14,1,49,50,0,1550,NULL,NULL),(34,3,1,'Meetings','','2012-11-22',NULL,2,8,5,NULL,4,125,'2012-09-04 14:10:23','2012-11-01 10:19:22','2012-08-21',89,183.15,NULL,34,1,134,0,1600,167.15,NULL),(35,3,1,'Lectures','For all the lectures given in course of this project','2012-10-22',NULL,2,NULL,4,NULL,5,5,'2012-09-04 14:10:26','2012-10-22 17:51:56','2012-09-03',100,47,NULL,35,1,10,0,1650,NULL,NULL),(36,3,1,'Customer meeting 2012-09-07','Meeting with Peder Kongelf and Stig Lau from Netlight','2012-09-09',NULL,5,8,5,NULL,5,13,'2012-09-04 14:31:55','2012-09-13 16:47:48','2012-09-04',100,11,34,34,2,11,0,1700,NULL,NULL),(37,3,1,'Write weekly report and meeting agenda','','2012-09-06',NULL,5,5,5,NULL,5,5,'2012-09-04 14:32:41','2012-09-13 16:45:54','2012-09-04',100,2,36,34,3,4,0,1750,NULL,NULL),(38,3,1,'Find questions','','2012-09-06',NULL,5,4,4,NULL,5,3,'2012-09-04 14:34:07','2012-09-13 16:44:30','2012-09-04',100,1,36,34,5,6,0,1800,NULL,NULL),(40,3,1,'Create roles and assign them','Define the roles of this project and assign them to group members','2012-09-05',NULL,2,8,4,NULL,5,3,'2012-09-04 15:13:53','2012-09-13 16:14:10','2012-08-30',90,8,78,1,58,59,0,1850,NULL,NULL),(41,3,1,'Customer meeting 2012-08-21','https://docs.google.com/document/d/17Nw6HF2xNg_lwGuXXlrNqzhQG5_yEnbjpwdpK9eOWj4/edit\r\n\r\n    First meeting with customer(Peder Kongelf from Netlight)  : 13:15 - 15:00 \r\n\r\n           (Simon left at 14:15 to attend lecture)\r\n\r\n    Writing minutes, summing up first meeting : 15:00 - 16:30','2012-08-21',NULL,5,8,4,NULL,6,6,'2012-09-04 15:39:11','2012-09-13 16:47:04','2012-08-21',100,13,34,34,12,13,0,1900,NULL,NULL),(42,3,1,'Advisor meeting 2012-08-22','    Meeting with advisor at IDI, Meng Zhu : 11:15 - 12:00\r\n\r\n           (Simon missing, attending lecture)\r\n\r\n    Writing minutes, planning ahead, discussing some strategies :  12:00 - 13:00','2012-08-22',NULL,5,8,4,NULL,6,6,'2012-09-04 15:44:04','2012-09-13 16:47:16','2012-08-22',100,7,34,34,14,15,0,1950,NULL,NULL),(43,3,1,'Team meeting 2012-08-27','Meeting with the group at P15. 12:00 - 14:15','2012-08-27',NULL,5,8,4,NULL,6,3,'2012-09-04 15:49:55','2012-09-13 16:40:27','2012-08-27',100,9,34,34,16,17,0,2000,NULL,NULL),(44,3,1,'Advisor meeting 2012-08-30','Meeting with advisor, at ITV242. 09:15 - 09:30\r\nWriting Notes. 09:30 - 09:45','2012-08-30',NULL,5,8,4,NULL,6,4,'2012-09-04 15:53:03','2012-09-13 16:48:15','2012-08-30',100,2,34,34,18,19,0,2050,NULL,NULL),(45,3,1,'Customer meeting 2012-08-30','    Meeting with customer, Skype 19:15 - 20:15\r\n    Summarize, and write minutes 20:15 - 20:45','2012-08-30',NULL,5,8,4,NULL,6,3,'2012-09-04 15:54:30','2012-09-13 16:41:19','2012-08-30',100,6,34,34,20,21,0,2100,NULL,NULL),(46,3,1,'Team meeting 2012-09-04','Team meeting - 10:15 - 12:00\r\nFollowed by other tasks\r\nMartin not attending.','2012-09-04',NULL,5,8,4,NULL,6,4,'2012-09-04 15:57:20','2012-09-13 16:48:38','2012-09-04',100,5.25,34,34,22,23,0,2150,NULL,NULL),(47,3,1,'Lecture on agile development/scrum and testing 16:00 03/09-2012','Lecture on agile development/scrum and testing -  12:15 -  16:00','2012-09-03',NULL,3,NULL,4,NULL,8,1,'2012-09-04 16:23:23','2012-09-04 16:34:53','2012-09-03',100,15,35,35,2,3,0,2200,NULL,NULL),(48,3,1,'Timekeeping','Work on redmine',NULL,NULL,2,NULL,4,NULL,8,0,'2012-09-04 17:03:45','2012-09-04 17:03:45','2012-09-04',0,NULL,NULL,48,1,2,0,2250,NULL,NULL),(49,3,1,'Advisor Meeting 2012-09-06','Meeting with Meng Zhu at IDI 09:15','2012-09-06',NULL,5,8,5,NULL,5,7,'2012-09-05 12:17:06','2012-09-13 16:48:33','2012-09-05',100,5,34,34,24,29,0,2300,NULL,NULL),(50,3,1,'Write the weekly report and agenda for the meeting','','2012-09-05',NULL,5,5,5,NULL,5,4,'2012-09-05 12:24:01','2012-09-12 15:18:39','2012-09-05',100,1,49,34,25,26,0,2350,NULL,NULL),(51,3,1,'Update weekly report template','..to make it universal for customer and advisor too. Make it look nice too! ;)','2012-09-13',NULL,2,5,5,NULL,4,6,'2012-09-05 14:22:37','2012-09-26 10:22:21','2012-09-05',0,2,NULL,51,1,2,0,2400,NULL,NULL),(52,3,1,'Attend the meeting','','2012-09-06',NULL,5,8,4,NULL,8,3,'2012-09-06 17:37:41','2012-09-13 16:48:57','2012-09-06',100,4,49,34,27,28,0,2450,NULL,NULL),(53,3,1,'Attend the meeting','','2012-09-07',NULL,5,8,4,NULL,8,2,'2012-09-09 17:07:15','2012-09-13 16:42:29','2012-09-07',100,4,36,34,7,8,0,2500,NULL,NULL),(54,3,1,'Meeting notes compilation','','2012-09-09',NULL,5,8,4,NULL,8,1,'2012-09-09 17:11:51','2012-09-13 16:41:49','2012-09-07',100,4,36,34,9,10,0,2550,NULL,NULL),(60,3,1,'Internal domain brainstorming meeting','','2012-09-10',NULL,5,NULL,4,NULL,8,1,'2012-09-09 17:45:28','2012-09-11 20:16:32','2012-09-10',100,8,NULL,60,1,2,0,2600,NULL,NULL),(61,3,1,'Revise and export chapter to LaTex','','2012-09-16',NULL,2,4,4,NULL,5,1,'2012-09-10 13:52:42','2012-09-13 15:59:20','2012-09-10',0,4,8,1,52,53,0,2650,NULL,NULL),(62,3,1,'Create detailed plan for the project','Gantt chart, WBS','2012-09-11',NULL,1,NULL,4,NULL,5,2,'2012-09-11 16:06:04','2012-09-13 16:07:29','2012-09-03',80,5,78,1,60,61,0,2700,NULL,NULL),(63,3,1,'Latex: Make title page nicer','',NULL,NULL,2,4,3,NULL,4,0,'2012-09-11 19:53:25','2012-09-11 19:53:25','2012-09-11',0,4,1,1,94,95,0,2750,NULL,NULL),(64,2,1,'Create project name','',NULL,NULL,1,4,5,NULL,4,4,'2012-09-11 20:11:33','2012-10-23 13:18:02',NULL,0,2,NULL,64,1,2,0,10125,0,NULL),(65,3,1,'Latex settings changes','Just add the work done when logging work please!',NULL,NULL,1,4,4,NULL,4,1,'2012-09-11 20:42:32','2012-09-12 15:22:17','2012-09-11',0,10,1,1,96,97,0,2800,NULL,NULL),(66,2,1,'The intro chapter','',NULL,NULL,1,7,5,NULL,7,1,'2012-09-12 13:33:37','2012-09-12 21:52:49','2012-09-12',70,4,NULL,66,1,2,0,9700,NULL,NULL),(67,3,1,'Advisor Meeting 2012-09-13','','2012-09-13',NULL,5,8,4,NULL,5,13,'2012-09-12 13:58:56','2012-09-13 16:40:42','2012-09-12',100,7.5,34,34,30,39,0,2850,NULL,NULL),(68,3,1,'Attend meeting','',NULL,NULL,5,8,4,NULL,5,4,'2012-09-12 13:59:19','2012-10-17 13:43:46','2012-09-12',100,3,67,34,31,32,0,2900,NULL,NULL),(69,3,1,'Write weekly report and agenda','',NULL,NULL,5,5,4,NULL,5,2,'2012-09-12 14:00:30','2012-09-12 15:17:54','2012-09-12',100,2,67,34,33,34,0,2950,NULL,NULL),(70,3,1,'Send report and agenda to Meng Zhu','','2012-09-12',NULL,5,4,4,NULL,5,2,'2012-09-12 14:01:07','2012-09-12 15:17:36','2012-09-12',100,0.5,67,34,35,36,0,3000,NULL,NULL),(71,3,1,'Notes compilation','','2012-09-13',NULL,5,8,4,NULL,4,2,'2012-09-12 15:16:00','2012-09-13 16:24:29','2012-09-13',100,2,67,34,37,38,0,3050,NULL,NULL),(72,3,1,'Write Test- Plan chapter','','2012-09-22',NULL,2,5,4,NULL,5,10,'2012-09-13 15:32:51','2012-09-19 12:11:30','2012-09-13',88,8,3,1,79,86,0,3100,0,NULL),(73,3,1,'Type test pre-study','','2012-09-19',NULL,2,5,4,NULL,5,5,'2012-09-13 15:33:57','2012-09-19 12:11:27','2012-09-17',50,2,72,1,80,83,0,3150,0,NULL),(74,3,1,'Type test plan','','2012-09-22',NULL,2,5,4,NULL,5,3,'2012-09-13 15:34:56','2012-09-19 12:11:32','2012-09-13',100,6,72,1,84,85,0,3200,NULL,NULL),(75,3,1,'Copy test plan from screenshot to redmine','','2012-09-17',NULL,3,4,4,NULL,4,2,'2012-09-13 15:44:10','2012-09-17 18:11:17','2012-09-13',90,1.5,32,32,2,3,0,3250,NULL,NULL),(76,3,1,'Copy risk management into the report and write paragraph about it.','Text: introduction few sentences, and conclusion.','2012-09-28',NULL,1,NULL,4,NULL,4,4,'2012-09-13 15:57:22','2012-09-13 16:11:36','2012-09-13',0,2,78,1,56,57,0,3300,NULL,NULL),(77,3,1,'Revise and export chapter to LaTex','',NULL,NULL,1,4,4,NULL,4,0,'2012-09-13 16:04:48','2012-09-13 16:04:48','2012-09-13',0,3,6,1,34,35,0,3350,NULL,NULL),(78,3,1,'Write project management chapter','Write missing parts and compile done parts.','2012-10-14',NULL,1,4,4,NULL,4,11,'2012-09-13 16:05:59','2012-10-12 11:07:47','2012-08-27',63,56,2,1,55,76,0,3400,0,NULL),(79,3,1,'Customer meeting 2012-09-24','','2012-09-25',NULL,5,8,4,NULL,4,25,'2012-09-13 16:49:56','2012-10-17 13:40:02','2012-09-13',100,8.9,34,34,40,55,0,3450,NULL,NULL),(80,3,1,'Schedule date and time','','2012-09-15',NULL,5,4,4,NULL,4,2,'2012-09-13 16:50:49','2012-09-20 13:48:05','2012-09-13',100,1,79,34,41,42,0,3500,NULL,NULL),(81,3,1,'Write weekly report and meeting agenda','','2012-09-15',NULL,5,5,4,NULL,4,7,'2012-09-13 16:51:49','2012-09-26 10:11:11','2012-09-14',100,1.5,79,34,43,44,0,9750,NULL,NULL),(82,3,1,'Send report and agenda','','2012-09-15',NULL,5,4,4,NULL,4,4,'2012-09-13 16:53:02','2012-09-20 13:48:45','2012-09-15',100,0.4,79,34,45,46,0,3550,NULL,NULL),(83,3,1,'Attend the meeting','','2012-09-17',NULL,5,8,4,NULL,4,4,'2012-09-13 16:53:26','2012-09-26 10:13:31','2012-09-17',100,1.5,79,34,47,48,0,3600,NULL,NULL),(84,3,1,'Compile meeting notes','','2012-09-17',NULL,5,8,4,NULL,4,2,'2012-09-13 16:54:12','2012-09-26 10:13:46','2012-09-17',100,2,79,34,49,50,0,9800,NULL,NULL),(85,3,1,'Advisor meeting 2012-09-20','','2012-09-20',NULL,5,8,4,NULL,4,8,'2012-09-13 16:56:25','2012-09-20 13:54:21','2012-09-19',100,7,34,34,56,65,0,3650,NULL,NULL),(86,3,1,'Advisor meeting 2012-09-27','','2012-09-27',NULL,5,8,4,NULL,4,1,'2012-09-13 16:56:54','2012-10-03 11:38:20','2012-09-25',0,NULL,34,34,66,67,0,3700,NULL,NULL),(87,3,1,'Advisor meeting 2012-10-04','','2012-10-04',NULL,5,8,4,NULL,4,4,'2012-09-13 16:57:26','2012-10-17 13:40:20','2012-10-03',100,4.5,34,34,68,75,0,3750,NULL,NULL),(88,3,1,'Advisor meeting 2012-10-11','','2012-10-10',NULL,5,8,4,NULL,4,3,'2012-09-13 16:57:47','2012-10-17 13:43:22','2012-10-10',100,1,34,34,76,79,0,3800,NULL,NULL),(89,3,1,'Advisor meeting 2012-10-18','','2012-10-18',NULL,3,8,4,NULL,4,2,'2012-09-13 16:58:08','2012-10-18 10:12:51','2012-10-16',100,NULL,34,34,80,81,0,3850,NULL,NULL),(90,3,1,'Advisor meeting 2012-10-25','','2012-10-25',NULL,1,8,4,NULL,4,3,'2012-09-13 16:58:31','2012-10-31 16:02:36','2012-10-24',100,5,34,34,82,87,0,3900,1,NULL),(91,3,1,'Advisor meeting 2012-11-01','','2012-11-01',NULL,1,8,4,NULL,4,3,'2012-09-13 16:58:56','2012-11-01 10:19:21','2012-10-31',100,5,34,34,88,93,0,3950,1,NULL),(92,3,1,'Advisor meeting 2012-11-08','','2012-11-08',NULL,1,8,4,NULL,4,0,'2012-09-13 16:59:28','2012-09-13 16:59:28','2012-11-06',0,NULL,34,34,94,95,0,4000,NULL,NULL),(93,3,1,'Advisor meeting 2012-11-15','','2012-11-15',NULL,1,8,4,NULL,4,0,'2012-09-13 17:00:00','2012-09-13 17:00:00','2012-11-13',0,NULL,34,34,96,97,0,4050,NULL,NULL),(94,3,1,'Final presentation 2012-11-22','','2012-11-22',NULL,1,8,4,NULL,4,0,'2012-09-13 17:00:43','2012-09-13 17:00:43','2012-11-01',0,NULL,34,34,98,99,0,9850,NULL,NULL),(95,3,1,'Revise and close meeting issues and plan advisor meetings','','2012-09-13',NULL,5,4,5,NULL,4,1,'2012-09-13 17:04:03','2012-09-13 17:04:14','2012-09-13',0,2,32,32,4,5,0,4100,NULL,NULL),(96,2,1,'Project planning','',NULL,NULL,2,8,4,NULL,4,19,'2012-09-13 17:06:00','2012-10-23 01:30:18',NULL,41,16,NULL,96,1,32,0,9975,0,NULL),(97,2,1,'Sprint 1','','2012-10-07',NULL,1,8,4,1,4,10,'2012-09-13 17:09:14','2012-10-23 13:08:34','2012-09-24',35,24,NULL,97,1,16,0,-50,0,NULL),(98,2,1,'Sprint 2','','2012-10-23',NULL,1,8,4,2,4,6,'2012-09-13 17:09:42','2012-10-23 13:08:38','2012-10-08',0,20,NULL,98,1,12,0,-100,0,NULL),(99,2,1,'Sprint 3','','2012-11-02',NULL,1,8,4,NULL,4,4,'2012-09-13 17:10:28','2012-09-13 17:27:13','2012-10-22',0,NULL,NULL,99,1,10,0,10050,0,NULL),(100,2,1,'Sprint 4','','2012-11-16',NULL,1,8,4,NULL,4,4,'2012-09-13 17:11:17','2012-09-13 17:29:22','2012-11-05',0,NULL,NULL,100,1,10,0,10100,0,NULL),(101,3,1,'Planning','','2012-09-25',NULL,1,8,4,1,4,3,'2012-09-13 17:15:02','2012-10-23 13:08:34','2012-09-24',100,4,97,97,2,5,0,4150,0,NULL),(102,3,1,'Design','','2012-09-26',NULL,1,8,4,1,4,1,'2012-09-13 17:15:22','2012-10-23 13:08:34','2012-09-25',0,NULL,97,97,6,7,0,4200,NULL,NULL),(103,3,1,'Implementation','','2012-10-03',NULL,1,8,4,1,4,0,'2012-09-13 17:16:11','2012-10-23 13:08:34','2012-09-27',0,NULL,97,97,8,9,0,4250,NULL,NULL),(104,3,1,'Testing','','2012-10-07',NULL,1,8,4,1,4,2,'2012-09-13 17:16:43','2012-10-23 13:08:34','2012-10-01',100,10,97,97,10,13,0,4300,0,NULL),(105,3,1,'Planning','','2012-10-08',NULL,1,8,4,2,4,1,'2012-09-13 17:23:31','2012-10-23 13:08:38','2012-10-08',0,NULL,98,98,2,3,0,4350,NULL,NULL),(106,3,1,'Design','','2012-10-10',NULL,1,8,4,2,4,1,'2012-09-13 17:23:51','2012-10-23 13:08:38','2012-10-09',0,NULL,98,98,4,5,0,4400,NULL,NULL),(107,3,1,'Implementation','','2012-10-17',NULL,1,8,4,2,4,0,'2012-09-13 17:24:40','2012-10-23 13:08:38','2012-10-11',0,NULL,98,98,6,7,0,4450,NULL,NULL),(108,3,1,'Testing','','2012-10-19',NULL,1,8,4,2,4,0,'2012-09-13 17:25:09','2012-10-23 13:08:38','2012-10-15',0,NULL,98,98,8,9,0,4500,NULL,NULL),(109,3,1,'Planning','','2012-10-22',NULL,1,8,4,NULL,4,1,'2012-09-13 17:26:02','2012-09-13 17:31:16','2012-10-22',0,NULL,99,99,2,3,0,4550,NULL,NULL),(110,3,1,'Design','','2012-10-24',NULL,1,8,4,NULL,4,0,'2012-09-13 17:26:27','2012-09-13 17:26:27','2012-10-23',0,NULL,99,99,4,5,0,4600,NULL,NULL),(111,3,1,'Implementation','','2012-10-31',NULL,1,8,4,NULL,4,0,'2012-09-13 17:26:49','2012-09-13 17:26:49','2012-10-25',0,NULL,99,99,6,7,0,4650,NULL,NULL),(112,3,1,'Testing','','2012-11-02',NULL,1,8,4,NULL,4,0,'2012-09-13 17:27:12','2012-09-13 17:27:12','2012-10-29',0,NULL,99,99,8,9,0,4700,NULL,NULL),(113,3,1,'Planning','','2012-11-05',NULL,1,8,4,NULL,4,1,'2012-09-13 17:28:17','2012-09-13 17:31:22','2012-11-05',0,NULL,100,100,2,3,0,4750,NULL,NULL),(114,3,1,'Design','','2012-11-07',NULL,1,8,4,NULL,4,0,'2012-09-13 17:28:36','2012-09-13 17:28:36','2012-11-06',0,NULL,100,100,4,5,0,4800,NULL,NULL),(115,3,1,'Implementation','','2012-11-14',NULL,1,8,4,NULL,4,0,'2012-09-13 17:29:03','2012-09-13 17:29:03','2012-11-08',0,NULL,100,100,6,7,0,4850,NULL,NULL),(116,3,1,'Testing','','2012-11-16',NULL,1,8,4,NULL,4,0,'2012-09-13 17:29:22','2012-09-13 17:29:22','2012-11-12',0,NULL,100,100,8,9,0,4900,NULL,NULL),(117,3,1,'Report last check','','2012-11-21',NULL,1,4,4,NULL,4,0,'2012-09-13 17:33:59','2012-09-13 17:33:59','2012-11-20',0,NULL,3,1,87,88,0,4950,NULL,NULL),(118,3,1,'Team Structure','','2012-08-24',NULL,1,8,4,NULL,4,0,'2012-09-13 17:55:34','2012-09-13 17:55:34','2012-08-22',0,NULL,96,96,2,3,0,5000,NULL,NULL),(119,3,1,'Choice of Tools','','2012-08-31',NULL,1,8,4,NULL,4,0,'2012-09-13 17:56:24','2012-09-13 17:56:24','2012-08-27',0,NULL,96,96,4,5,0,5050,NULL,NULL),(120,3,1,'Choice of Lifecycle','','2012-08-31',NULL,1,8,4,NULL,4,0,'2012-09-13 17:56:53','2012-09-13 17:56:53','2012-08-27',0,NULL,96,96,6,7,0,5100,NULL,NULL),(122,3,1,'Choice of Domain','','2012-09-05',NULL,1,8,4,NULL,4,0,'2012-09-13 17:57:37','2012-09-13 17:57:37','2012-08-30',0,NULL,96,96,8,9,0,5150,NULL,NULL),(123,3,1,'Pre-Study','','2012-09-21',NULL,1,8,4,NULL,4,7,'2012-09-13 17:58:06','2012-09-21 16:45:27','2012-09-18',100,13,96,96,10,23,0,5200,0,NULL),(124,3,1,'Requirements','','2012-09-20',NULL,1,8,4,NULL,4,1,'2012-09-13 17:58:32','2012-09-20 13:44:03','2012-09-20',0,3,96,96,24,27,0,5250,0,NULL),(125,3,1,'Create Backlog','','2012-09-20',NULL,1,8,4,NULL,4,0,'2012-09-13 17:59:02','2012-09-13 17:59:02','2012-09-12',0,NULL,96,96,28,29,0,5300,NULL,NULL),(126,3,1,'Test Plan','','2012-09-21',NULL,1,8,4,NULL,4,0,'2012-09-13 17:59:27','2012-09-13 17:59:27','2012-09-17',0,NULL,96,96,30,31,0,5350,NULL,NULL),(127,3,1,'Guest Lecture: Project management and project work 2012-09-17','Lecture with Ola Haavik, Teamleader Business Strategy & Transformation with BearingPoint.\r\nTheme: Project management and project work (incl. relevant tips&tricks for both managers and project members).\r\nLocation: EL6 (starting 12:15)','2012-09-17',NULL,5,8,4,NULL,8,0,'2012-09-17 17:48:14','2012-09-17 17:48:14','2012-09-17',100,8,35,35,4,5,0,5400,NULL,NULL),(128,3,1,'Reserve a room','','2012-09-19',NULL,5,6,4,NULL,4,3,'2012-09-17 18:08:41','2012-09-26 10:15:09','2012-09-19',100,0.5,79,34,51,52,0,5450,NULL,NULL),(129,3,1,'Port it to the LaTex document','','2012-09-19',NULL,1,5,4,NULL,5,0,'2012-09-17 23:00:44','2012-09-17 23:00:44','2012-09-17',50,2,73,1,81,82,0,5500,NULL,NULL),(130,3,1,'Write about client side technologies','','2012-09-19',NULL,3,6,4,NULL,6,4,'2012-09-18 13:50:36','2012-09-21 16:44:20','2012-09-18',100,5,123,96,19,20,0,5550,NULL,NULL),(131,3,1,'Internal meeting 2012-09-18','','2012-09-18',NULL,5,8,4,NULL,4,0,'2012-09-18 20:17:39','2012-09-18 20:17:39','2012-09-18',0,4,34,34,100,101,0,5600,NULL,NULL),(132,3,1,'Write about synchronisation technologies','',NULL,NULL,1,5,4,NULL,5,2,'2012-09-18 23:49:35','2012-09-18 23:51:06','2012-09-18',100,3,123,96,11,16,0,5650,0,NULL),(133,3,1,'Research the technologies','',NULL,NULL,3,5,4,NULL,5,1,'2012-09-18 23:50:20','2012-09-19 12:12:13','2012-09-18',100,2,132,96,12,13,0,5700,NULL,NULL),(134,3,1,'Write section and port to LaTex','',NULL,NULL,3,5,4,NULL,5,1,'2012-09-18 23:51:06','2012-09-19 12:11:59','2012-09-18',100,1,132,96,14,15,0,5750,NULL,NULL),(135,3,1,'Write paragraph on markup languages','',NULL,NULL,3,5,4,NULL,5,1,'2012-09-19 12:12:54','2012-09-19 13:12:37','2012-09-19',100,1,123,96,17,18,0,5800,NULL,NULL),(136,3,1,'Write weekly report and agenda','','2012-09-19',NULL,5,5,4,NULL,5,2,'2012-09-19 13:25:17','2012-09-20 13:47:02','2012-09-19',100,2,85,34,57,58,0,5850,NULL,NULL),(137,3,1,'Send report and agenda to Meng Zhu','','2012-09-19',NULL,5,4,4,NULL,5,1,'2012-09-19 13:25:46','2012-09-20 13:41:53','2012-09-19',100,0.5,85,34,59,60,0,5900,NULL,NULL),(138,3,1,'Attend the meeting and compile meeting notes.','','2012-09-20',NULL,5,8,4,NULL,4,3,'2012-09-20 13:42:23','2012-09-20 13:45:49','2012-09-20',100,4,85,34,61,62,0,5950,NULL,NULL),(139,3,1,'Write user stories','','2012-09-20',NULL,1,8,4,NULL,4,0,'2012-09-20 13:44:02','2012-09-20 13:44:02','2012-09-20',0,3,124,96,25,26,0,6000,NULL,NULL),(140,3,1,'Send notes to Meng','','2012-09-20',NULL,5,4,4,NULL,4,1,'2012-09-20 13:46:34','2012-09-20 13:46:46','2012-09-20',100,0.5,85,34,63,64,0,6050,NULL,NULL),(141,3,1,'Customer Presentation itDAGENE 2012-09-21','','2012-09-21',NULL,5,8,4,NULL,4,7,'2012-09-20 13:51:03','2012-10-03 11:39:19','2012-09-20',100,9,34,34,102,109,0,6100,NULL,NULL),(142,3,1,'Create presentation','','2012-09-21',NULL,5,8,4,NULL,4,1,'2012-09-20 13:51:35','2012-10-03 11:39:06','2012-09-20',0,4,141,34,103,104,0,6150,NULL,NULL),(143,3,1,'Schedule date and time','','2012-09-21',NULL,5,7,4,NULL,4,1,'2012-09-20 13:53:27','2012-10-03 11:39:19','2012-09-20',20,1,141,34,105,106,0,10150,NULL,NULL),(144,2,1,'Write architecture chapter','',NULL,NULL,2,7,4,NULL,7,2,'2012-09-20 14:05:17','2012-10-10 11:38:36','2012-09-20',60,40,NULL,144,1,2,0,10200,NULL,NULL),(145,3,1,'Hold Presentation','','2012-09-21',NULL,5,NULL,4,NULL,8,1,'2012-09-21 15:41:04','2012-10-03 11:39:34','2012-09-21',100,4,141,34,107,108,0,6200,NULL,NULL),(146,3,1,'Write about similar solutions','','2012-09-21',NULL,3,NULL,4,NULL,6,0,'2012-09-21 16:45:27','2012-09-21 16:45:27','2012-09-20',100,4,123,96,21,22,0,6250,NULL,NULL),(147,3,1,'Team Dynamics Lecture 2012-09-24','','2012-09-24',NULL,5,8,4,NULL,6,1,'2012-09-24 17:44:23','2012-09-26 10:10:30','2012-09-24',100,12,35,35,6,7,0,6300,NULL,NULL),(148,3,1,'Setup new mail communication and forwarding','','2012-09-24',NULL,5,4,4,NULL,4,1,'2012-09-24 17:51:10','2012-09-26 10:20:52','2012-09-24',100,2,31,31,2,3,0,6350,NULL,NULL),(150,3,1,'Describe user story process and send it to customer for evaluation','','2012-09-25',NULL,5,4,4,NULL,4,0,'2012-09-26 10:16:35','2012-09-26 10:16:35','2012-09-25',100,2,79,34,53,54,0,10250,NULL,NULL),(152,3,1,'Intenal meeting 2012-09-24','Internal meeting before team building presentation and before customer meeting.','2012-09-24',NULL,5,8,4,NULL,4,0,'2012-09-26 10:23:21','2012-09-26 10:23:21','2012-09-24',100,8,34,34,110,111,0,10300,NULL,NULL),(153,3,1,'User story A1','As a developer, I want to be able to store objects in a persistent database, so that I can migrate data easily','2012-10-04',NULL,2,4,4,1,5,17,'2012-09-26 10:23:24','2012-10-23 08:44:39','2012-09-26',100,18.5,158,158,2,17,0,10350,2,NULL),(154,3,1,'User story A2','As a developer, I want to be able to send real- time messages from the server to all the clients, so that users always see the latest data','2012-10-02',NULL,5,5,4,1,5,8,'2012-09-26 10:26:03','2012-10-17 13:29:28','2012-09-26',100,3.5,158,158,18,25,0,10400,0,NULL),(155,3,1,'Write documents and copy them to Latex','','2012-09-26',NULL,2,4,4,NULL,4,0,'2012-09-26 10:26:15','2012-09-26 10:26:15','2012-09-26',40,16,78,1,66,67,0,6400,NULL,NULL),(156,3,1,'User story A3','As a developer, I want access to domain specific objects with a given structure and attributes, so that I don\'t have to work with any form of raw data','2012-10-03',NULL,2,7,4,1,5,2,'2012-09-26 10:28:26','2012-10-03 12:48:20','2012-09-24',0,25,158,158,26,27,0,10450,NULL,NULL),(157,3,1,'User story G3','As a user, I want to be able to see the console and graphical interface at the same time, so that I can use them both side by side simultaneously','2012-10-03',NULL,3,6,4,1,5,3,'2012-09-26 10:32:30','2012-10-03 23:44:13','2012-09-24',100,35,158,158,28,29,0,10500,NULL,NULL),(158,3,1,'User Stories','Collection of all the user stories','2012-10-19',NULL,1,8,4,NULL,5,92,'2012-09-26 10:36:24','2012-10-29 10:43:30','2012-09-24',31,455,NULL,158,1,144,0,6450,455,NULL),(159,3,1,'User story D1','As a user, I want to be able to add a new book to the system using both the console and graphical interface.',NULL,NULL,1,NULL,4,NULL,4,1,'2012-09-26 10:40:55','2012-09-26 10:45:58','2012-09-26',0,7,158,158,30,31,0,10550,NULL,NULL),(160,3,1,'User story D2','As a user, I want to be able to delete a book in the system using both the console and graphical interface.\r\n',NULL,NULL,3,NULL,4,NULL,4,1,'2012-09-26 10:41:31','2012-10-03 23:46:34','2012-09-26',100,3.5,158,158,32,33,0,10600,NULL,NULL),(161,3,1,'User story G1','As a user, I want my saved actions to be replicated on to the server within one second, so that my actions will not be lost and the client and server is consistent\r\n',NULL,NULL,1,NULL,4,NULL,5,1,'2012-09-26 10:41:43','2012-09-26 10:45:59','2012-09-26',0,25,158,158,34,35,0,10650,NULL,NULL),(162,3,1,'User story D3','As a user, I want to be able to edit information on a specific book and save these changes using both the console and graphical interface.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:41:48','2012-09-26 10:41:48','2012-09-26',0,14,158,158,36,37,0,10700,NULL,NULL),(163,3,1,'User story D4','As a user, I want to be able to search for a specific book in the system, so that I can watch the information on it using both the console and graphical interface.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:42:17','2012-09-26 10:42:17','2012-09-26',0,5.25,158,158,38,39,0,10750,NULL,NULL),(164,3,1,'User story G2','As a user, I want my changes to be propagated to other users of the system real- time',NULL,NULL,1,NULL,4,NULL,5,1,'2012-09-26 10:42:23','2012-09-26 10:46:18','2012-09-26',0,14,158,158,40,41,0,10800,NULL,NULL),(165,3,1,'User story G4b','As a user, I want the changes in console reflected in the graphical user interface and likewise, so that I can have overview of the changes I made and I can easily understand how the system works.','2012-10-19',NULL,1,5,4,2,5,12,'2012-09-26 10:42:57','2012-10-22 11:22:58','2012-10-08',82,11,158,158,42,49,0,10850,0,NULL),(166,3,1,'User story D5','As a user, I want to be able to list all the books currently in the system, so that I easily can get an overview of all the books currently in the library. This should be possible in both the console and the graphical interface.\r\n',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:43:00','2012-09-26 10:43:00','2012-09-26',0,10.5,158,158,50,51,0,10900,NULL,NULL),(167,3,1,'User story D6','As a user, I want to be able to registrate a new customer in the system, so that customers can be saved in the system. This should be possible in both the console and the graphical interface.\r\n',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:43:15','2012-09-26 10:43:15','2012-09-26',0,7,158,158,52,53,0,10950,NULL,NULL),(168,3,1,'User story G5','As a user, I want access to a tutorial, so that I can learn to work with the system easily.',NULL,NULL,1,NULL,4,NULL,5,1,'2012-09-26 10:43:25','2012-09-26 10:47:14','2012-09-26',0,21,158,158,54,55,0,11000,NULL,NULL),(169,3,1,'User story D7','As a user, I want to be able to registrate when a customer borrows a book, so that the information is stored in the system. This should be possible in both the console and the graphical interface.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:43:45','2012-09-26 10:43:45','2012-09-26',0,12.25,158,158,56,57,0,11050,NULL,NULL),(170,3,1,'User story G6','As a user, I want to be able to display the currently available commands in the console, so I can easily see what I can do with the objects at hand.',NULL,NULL,1,NULL,4,NULL,5,1,'2012-09-26 10:43:51','2012-09-26 10:47:35','2012-09-26',0,21,158,158,58,59,0,11100,NULL,NULL),(171,3,1,'User story D8','As a user, I want to be able to edit the information on a specific borrowing of a book, so that any changes can be recorded. This should be possible in both the console and the graphical interface.\r\n',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:44:09','2012-09-26 10:44:09','2012-09-26',0,17.5,158,158,60,61,0,11150,NULL,NULL),(172,3,1,'User story D9','As a user, I want to be able to list all the books currently borrowed, so that I can get information on each of them. This should be possible in both the console and the graphical interface.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:44:28','2012-09-26 10:44:28','2012-09-26',0,14,158,158,62,63,0,11200,NULL,NULL),(173,3,1,'User story D10','As a user, I want to be able to reserve a book for a customer, so that customers can request and reserve certain books. This should be possible in both the console and the graphical interface.\r\n',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:44:41','2012-09-26 10:44:41','2012-09-26',0,21,158,158,64,65,0,11250,NULL,NULL),(174,3,1,'User story G8','As a user, I want to be able to easily repeat and edit last command, so that I can use it on other objects',NULL,NULL,3,NULL,4,1,5,3,'2012-09-26 10:44:58','2012-10-10 10:50:08','2012-09-26',100,14,158,158,66,67,0,11300,NULL,NULL),(175,3,1,'User story D11','As a user, I want to be able to list all the reservations currently in the system. This should be possible in both the console and the graphical interface.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:45:02','2012-09-26 10:45:02','2012-09-26',0,14,158,158,68,69,0,11350,NULL,NULL),(176,3,1,'User story D12','As a user, I want to be able to view reservations on specific books, so that I can see if a specific book is available for borrowing at the moment. This should be possible in both the console and the graphical interface.\r\n',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:45:26','2012-09-26 10:45:26','2012-09-26',0,10.5,158,158,70,71,0,11400,NULL,NULL),(177,3,1,'User story G9','As a user, I want to be able to use batch commands, so that I can work with more than one object at the same time.',NULL,NULL,1,NULL,4,NULL,5,1,'2012-09-26 10:45:29','2012-10-10 10:49:17','2012-09-26',0,21,158,158,72,73,0,11450,NULL,NULL),(178,3,1,'User story D13','As a user, I want to be able to order new books for the library using both the console and the graphical interface.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-09-26 10:45:40','2012-09-26 10:45:40','2012-09-26',0,10.5,158,158,74,75,0,11500,NULL,NULL),(179,2,1,'Input user stories to Redmine','','2012-09-26',NULL,1,5,4,NULL,4,0,'2012-09-26 10:49:29','2012-09-26 10:49:29','2012-09-26',0,2,32,32,6,7,0,11550,NULL,NULL),(180,3,1,'Install and get node.js running on development server','','2012-09-26',NULL,5,4,4,1,4,5,'2012-09-26 10:52:43','2012-10-23 08:44:36','2012-09-26',100,2,153,158,3,4,0,6500,NULL,NULL),(181,3,1,'Install and get mongodb running on development server','','2012-09-26',NULL,5,4,4,1,4,4,'2012-09-26 10:53:15','2012-10-23 08:44:36','2012-09-26',100,2.5,153,158,5,6,0,6550,NULL,NULL),(182,3,1,'Install node.js plugins on the server','extra, mongodb, mongoose','2012-09-26',NULL,5,4,4,1,4,4,'2012-09-26 10:54:19','2012-10-23 08:44:36','2012-09-26',100,2,153,158,7,8,0,6600,NULL,NULL),(183,3,1,'Install pubnub plugin to node.js','','2012-09-26',NULL,5,4,4,NULL,4,3,'2012-09-26 10:55:08','2012-10-03 12:53:15','2012-09-26',100,1.5,154,158,19,20,0,6650,NULL,NULL),(184,3,1,'Create basic REST service','Allowing user to access list of books from database over JSON.','2012-09-26',NULL,5,4,4,1,4,4,'2012-09-26 11:00:44','2012-10-23 08:44:36','2012-09-26',100,6,153,158,9,10,0,6700,NULL,NULL),(185,3,1,'Created and added nunit tests','','2012-09-27',NULL,3,5,4,NULL,5,2,'2012-09-27 12:56:24','2012-10-03 12:53:26','2012-09-27',100,1,154,158,21,22,0,6750,NULL,NULL),(186,3,1,'Create test cases for the chosen user stories','','2012-09-25',NULL,2,5,4,1,5,3,'2012-09-28 10:55:42','2012-10-03 11:43:46','2012-09-24',100,4,101,97,3,4,0,6800,NULL,NULL),(187,3,1,'Create unit tests for the REST api and backend/database','','2012-10-03',NULL,1,4,4,1,5,6,'2012-09-28 10:57:11','2012-10-23 08:44:38','2012-09-28',100,2,153,158,11,12,0,6850,2,NULL),(188,3,1,'Create test cases for the user story','','2012-10-02',NULL,3,5,4,1,5,3,'2012-10-02 16:56:36','2012-10-23 08:44:36','2012-10-02',100,1,153,158,13,14,0,6900,NULL,NULL),(189,3,1,'Create test cases for the user story','','2012-10-02',NULL,3,5,4,NULL,5,1,'2012-10-02 16:59:37','2012-10-03 12:53:37','2012-10-02',100,1,154,158,23,24,0,6950,NULL,NULL),(190,3,1,'Create documentation on the sprint','','2012-10-07',NULL,1,NULL,4,1,5,0,'2012-10-02 18:32:30','2012-10-02 18:32:30','2012-09-24',0,10,97,97,14,15,0,7000,NULL,NULL),(191,3,1,'Internal skype meeting 2012-09-18','','2012-10-02',NULL,5,8,4,NULL,4,1,'2012-10-03 11:23:57','2012-10-03 12:47:52','2012-10-02',100,8,34,34,112,113,0,11600,NULL,NULL),(192,3,1,'Type weekly report and agenda','','2012-10-03',NULL,5,5,4,NULL,5,1,'2012-10-03 14:30:06','2012-10-17 13:40:49','2012-10-03',100,1.5,87,34,69,70,0,11650,NULL,NULL),(193,3,1,'Perform the tests and record the results','','2012-10-07',NULL,3,5,4,1,5,1,'2012-10-03 14:33:16','2012-10-08 12:52:19','2012-10-01',100,10,104,97,11,12,0,7050,NULL,NULL),(194,3,1,'Send report and agenda','','2012-10-03',NULL,5,4,4,NULL,4,1,'2012-10-03 14:45:53','2012-10-17 13:40:34','2012-10-03',100,1,87,34,71,72,0,7100,NULL,NULL),(195,3,1,'Document the REST API in the report','','2012-10-04',NULL,3,5,4,1,5,0,'2012-10-04 14:10:18','2012-10-04 14:10:18','2012-10-04',100,3,153,158,15,16,0,7150,NULL,NULL),(196,3,1,'Attend meeting','','2012-10-04',NULL,5,8,4,NULL,8,1,'2012-10-08 14:09:42','2012-10-17 13:39:36','2012-10-04',100,2,87,34,73,74,0,7200,NULL,NULL),(197,3,1,'Meeting with customer 2012-10-04','','2012-10-04',NULL,5,8,4,NULL,8,2,'2012-10-08 14:17:07','2012-10-17 13:42:16','2012-10-04',100,6,34,34,114,117,0,7250,NULL,NULL),(198,3,1,'Attend meeting','','2012-10-04',NULL,5,8,4,NULL,8,1,'2012-10-08 14:19:55','2012-10-17 13:44:11','2012-10-04',100,6,197,34,115,116,0,7300,NULL,NULL),(199,3,1,'Internal meeting planning Sprint2','','2012-10-08',NULL,5,8,4,NULL,8,1,'2012-10-08 15:23:18','2012-10-17 13:44:43','2012-10-08',100,12,34,34,118,119,0,7350,NULL,NULL),(200,3,1,'Create Gantt chart','','2012-10-09',NULL,3,5,4,NULL,5,0,'2012-10-09 21:01:19','2012-10-09 21:01:19','2012-10-09',100,1,78,1,68,69,0,7400,NULL,NULL),(201,3,1,'Create WBS','','2012-10-09',NULL,3,5,4,NULL,5,0,'2012-10-09 22:51:58','2012-10-09 22:51:58','2012-10-09',0,2,78,1,70,71,0,7450,NULL,NULL),(202,3,1,'User story A4','As a developer, I want to have a schemaless database, so I don’t have to change any code every time the objects change.','2012-10-19',NULL,1,4,4,2,5,9,'2012-10-10 10:44:15','2012-10-22 11:23:59','2012-10-08',70,10,158,158,76,85,0,11700,0,NULL),(204,3,1,'User story G7','As a user, I want the system to be able to autocomplete the commands, and display a list of the available commands on a given object that can be chosen.','2012-10-19',NULL,1,7,4,2,5,17,'2012-10-10 10:52:02','2012-10-22 11:24:58','2012-10-08',94,30,158,158,86,101,0,11750,0,NULL),(205,3,1,'User story G10','As a product owner i want the graphical user interface to indicate which object or group of objects I’m working on.','2012-10-19',NULL,3,6,4,2,5,12,'2012-10-10 10:53:18','2012-10-29 10:42:57','2012-10-08',15,26,158,158,102,117,0,11800,0,NULL),(206,3,1,'User story G11','As a product owner I want the console to be able to cycle through objects in an array one at the time, and for the currently selected object to be displayed on the GUI.','2012-10-19',NULL,1,6,4,2,5,11,'2012-10-10 10:54:37','2012-10-29 10:43:30','2012-10-08',38,25,158,158,118,131,0,11850,0,NULL),(207,3,1,'User story G12','As a user, I want the system to show me details of a record, after I click on a record.','2012-10-19',NULL,1,6,4,2,5,10,'2012-10-10 10:55:52','2012-10-22 11:27:50','2012-10-08',88,8,158,158,132,143,0,11900,0,NULL),(208,3,1,'Change the server implementation to a schemaless one','','2012-10-19',NULL,3,4,4,2,5,2,'2012-10-10 10:57:20','2012-10-17 13:25:21','2012-10-08',90,4,202,158,77,78,0,7500,NULL,NULL),(209,3,1,'Update the REST api calls to handle complete objects and not specific fields of them','','2012-10-19',NULL,3,4,4,2,5,2,'2012-10-10 10:57:58','2012-10-17 13:26:52','2012-10-08',70,2,202,158,79,80,0,7550,NULL,NULL),(210,3,1,'Testing','','2012-10-19',NULL,3,NULL,4,2,5,2,'2012-10-10 10:58:33','2012-10-22 11:23:59','2012-10-08',100,2,202,158,81,82,0,7600,NULL,NULL),(211,3,1,'Documentation','','2012-10-19',NULL,2,NULL,4,2,5,1,'2012-10-10 10:58:54','2012-10-17 13:28:08','2012-10-08',0,2,202,158,83,84,0,7650,NULL,NULL),(212,3,1,'For each method called from the GUI, print the corresponding commands in the console.','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:00:14','2012-10-16 12:36:07','2012-10-08',100,6,165,158,43,44,0,7700,NULL,NULL),(214,3,1,'Testing','','2012-10-19',NULL,3,NULL,4,2,5,2,'2012-10-10 11:00:58','2012-10-22 11:22:58','2012-10-08',100,3,165,158,45,46,0,7750,NULL,NULL),(215,3,1,'Documentation','','2012-10-19',NULL,2,NULL,4,2,5,2,'2012-10-10 11:01:21','2012-10-16 12:49:31','2012-10-08',0,2,165,158,47,48,0,7800,NULL,NULL),(216,3,1,'Add a method to the each object type which lists all the methods and attributes of that given object','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:02:14','2012-10-16 12:47:37','2012-10-08',100,4,204,158,87,88,0,7850,NULL,NULL),(217,3,1,'Create a popup menu which is available through a hotkey. The elements in this menu should be the methods and attributes available to the currently selected object.','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:02:48','2012-10-16 12:46:43','2012-10-08',100,10,204,158,89,90,0,7900,NULL,NULL),(218,3,1,'Update the elements of the list whenever the current selection changes ','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:03:15','2012-10-16 12:44:50','2012-10-08',100,4,204,158,91,92,0,7950,NULL,NULL),(219,3,1,'Make the user able to select the available methods and attributes from the popup menu','','2012-10-19',NULL,2,NULL,4,2,5,3,'2012-10-10 11:03:40','2012-10-16 12:47:03','2012-10-08',90,3,204,158,93,94,0,8000,NULL,NULL),(220,3,1,'Autocomplete upon selection of an element in the popup menu','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:04:01','2012-10-16 12:39:28','2012-10-08',100,1,204,158,95,96,0,8050,NULL,NULL),(221,3,1,'Testing','','2012-10-19',NULL,3,NULL,4,2,5,2,'2012-10-10 11:04:21','2012-10-22 11:24:58','2012-10-08',100,4,204,158,97,98,0,8100,NULL,NULL),(223,3,1,'Documentation','','2012-10-19',NULL,2,NULL,4,2,5,1,'2012-10-10 11:05:02','2012-10-16 12:50:49','2012-10-08',60,4,204,158,99,100,0,8150,NULL,NULL),(224,3,1,'Design a way to highlight elements in the GUI','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:05:51','2012-10-10 11:05:51','2012-10-08',0,2,205,158,103,104,0,8200,NULL,NULL),(225,3,1,'Create a method for highlighting a single row in the GUI','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:06:25','2012-10-10 11:06:25','2012-10-08',0,2,205,158,105,106,0,8250,NULL,NULL),(226,3,1,'Create a record in the LIB object which contains the currently selected object(s).','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:07:31','2012-10-10 11:07:31','2012-10-08',0,4,205,158,107,108,0,8300,NULL,NULL),(227,3,1,'Respond to changes in the selection list, and change the highlight in the GUI accordingly when new objects are selected/deselected.','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:08:07','2012-10-10 11:08:07','2012-10-08',0,8,205,158,109,110,0,8350,NULL,NULL),(228,3,1,'When creating a new object, indicate this object in the GUI','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:08:48','2012-10-10 11:08:48','2012-10-08',0,2,205,158,111,112,0,8400,NULL,NULL),(229,3,1,'Testing','','2012-10-19',NULL,3,NULL,4,2,5,3,'2012-10-10 11:09:09','2012-10-29 10:35:59','2012-10-08',100,4,205,158,113,114,0,8450,4,NULL),(230,3,1,'Documentation','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:09:35','2012-10-10 11:09:35','2012-10-08',0,4,205,158,115,116,0,8500,NULL,NULL),(231,3,1,'Implement logic to keep track of the currently selected objects in a list.','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:10:42','2012-10-10 11:10:42','2012-10-08',0,5,206,158,119,120,0,8550,NULL,NULL),(232,3,1,'Update this list whenever the selection changes.','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:11:01','2012-10-10 11:11:01','2012-10-08',0,4,206,158,121,122,0,8600,NULL,NULL),(233,3,1,'As the user cycles through the list, extract the correct object and make it available to the user','','2012-10-19',NULL,2,NULL,4,2,5,1,'2012-10-10 11:11:23','2012-10-17 14:06:13','2012-10-08',50,7,206,158,123,124,0,8650,NULL,NULL),(234,3,1,'Update the GUI whenever a new object is selected.','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:11:51','2012-10-17 14:06:56','2012-10-08',100,2,206,158,125,126,0,8700,NULL,NULL),(235,3,1,'Testing','','2012-10-19',NULL,2,NULL,4,2,5,3,'2012-10-10 11:12:10','2012-10-29 10:43:31','2012-10-08',100,4,206,158,127,128,0,8750,4,NULL),(236,3,1,'Documentation','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:12:27','2012-10-10 11:12:27','2012-10-08',0,3,206,158,129,130,0,8800,NULL,NULL),(237,3,1,'Make the ID clickable','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:13:53','2012-10-16 15:26:00','2012-10-08',100,1,207,158,133,134,0,8850,NULL,NULL),(238,3,1,'Update the “Add a Book” section when the user clicks on an ID ','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:14:19','2012-10-16 16:41:55','2012-10-08',100,2,207,158,135,136,0,8900,NULL,NULL),(239,3,1,'Make the user able to change the details of a book through the “Add a Book” section','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:14:44','2012-10-16 16:43:11','2012-10-08',100,3,207,158,137,138,0,8950,NULL,NULL),(240,3,1,'Testing','','2012-10-19',NULL,3,NULL,4,2,5,1,'2012-10-10 11:15:01','2012-10-22 11:27:50','2012-10-08',100,1,207,158,139,140,0,9000,NULL,NULL),(241,3,1,'Documentation','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:15:21','2012-10-10 11:15:21','2012-10-08',0,1,207,158,141,142,0,9050,NULL,NULL),(242,3,1,'Documentation','','2012-10-19',NULL,1,NULL,4,2,5,0,'2012-10-10 11:24:55','2012-10-23 13:08:38','2012-10-08',0,20,98,98,10,11,0,9100,NULL,NULL),(243,3,1,'Write meeting-section','',NULL,NULL,1,NULL,4,NULL,7,1,'2012-10-10 11:37:43','2012-10-10 11:38:15','2012-10-10',20,4,78,1,72,73,0,9150,NULL,NULL),(244,3,1,'Write weekly report and agenda','','2012-10-10',NULL,5,5,4,NULL,5,1,'2012-10-10 16:41:18','2012-10-17 13:42:55','2012-10-10',100,1,88,34,77,78,0,11950,NULL,NULL),(245,3,1,'Type Quality Assurance section','','2012-10-14',NULL,2,5,4,NULL,5,1,'2012-10-12 11:07:46','2012-10-12 11:07:56','2012-10-12',60,5,78,1,74,75,0,9200,NULL,NULL),(246,2,1,'Write about server technologies','',NULL,NULL,1,NULL,4,NULL,7,0,'2012-10-13 22:57:48','2012-10-13 22:57:48','2012-10-13',70,5,NULL,246,1,2,0,12000,NULL,NULL),(247,2,1,'write about issues','',NULL,NULL,1,NULL,4,NULL,7,0,'2012-10-13 22:59:00','2012-10-13 22:59:00','2012-10-13',0,2,NULL,247,1,2,0,12050,NULL,NULL),(248,2,1,'write about lectures','',NULL,NULL,1,NULL,4,NULL,7,2,'2012-10-13 22:59:24','2012-10-14 18:44:29','2012-10-13',70,2,NULL,248,1,2,0,12100,NULL,NULL),(249,3,1,'Overall documentation of the sprint','','2012-10-19',NULL,1,NULL,4,2,5,1,'2012-10-16 15:23:17','2012-10-16 15:24:36','2012-10-08',20,15,NULL,249,1,2,0,9250,NULL,NULL),(250,1,1,'New instances are created on refresh. Old pointers no longer valid','','2012-10-17',NULL,3,5,4,2,5,1,'2012-10-17 11:58:06','2012-10-17 12:00:45','2012-10-16',100,4,NULL,250,1,2,0,9300,NULL,NULL),(251,3,1,'Internal meetings for Sprint2','Meetings each day because of Scrum methodology, problem solving and work division.','2012-10-16',NULL,5,8,4,2,4,0,'2012-10-17 13:38:38','2012-10-17 13:38:38','2012-10-11',100,12,34,34,120,121,0,9350,NULL,NULL),(252,3,1,'Customer meeting 2012-10-18','Sprint2 demo presentation','2012-10-18',NULL,2,8,4,2,4,4,'2012-10-17 13:45:41','2012-10-17 19:27:59','2012-10-17',0,11,34,34,122,129,0,9400,NULL,NULL),(253,3,1,'Write report and meeting agenda','','2012-10-17',NULL,2,5,4,2,4,0,'2012-10-17 13:46:08','2012-10-17 13:46:08','2012-10-17',0,3,252,34,123,124,0,9450,NULL,NULL),(254,3,1,'Attend the meeting','','2012-10-18',NULL,1,8,4,2,4,0,'2012-10-17 13:46:41','2012-10-17 13:46:41','2012-10-17',0,6,252,34,125,126,0,9500,NULL,NULL),(255,3,1,'Check report and agenda and send it','','2012-10-17',NULL,2,4,4,2,4,0,'2012-10-17 13:47:15','2012-10-17 13:47:15','2012-10-17',0,2,252,34,127,128,0,9550,NULL,NULL),(256,2,1,'Guest Session on Technical Writing 2012-10-22','Nancy Lea Eik-Nes (Assoc. Prof at Dep. of Language and Communication Studies)','2012-10-22',NULL,5,8,4,NULL,8,0,'2012-10-22 17:51:55','2012-10-22 17:51:55','2012-10-22',100,12,35,35,8,9,0,12150,NULL,NULL),(257,3,1,'user story 1',NULL,NULL,NULL,1,NULL,4,1,4,0,'2012-10-23 13:16:35','2012-10-23 13:16:35',NULL,0,NULL,NULL,257,1,2,0,-150,NULL,NULL),(261,2,1,'print object simple as json',NULL,'2012-11-04',NULL,5,NULL,4,3,4,2,'2012-10-23 13:21:05','2012-10-25 11:33:11','2012-10-22',0,NULL,NULL,261,1,2,0,-300,0,3),(263,2,1,'compiling 22/10 notes','',NULL,NULL,1,NULL,4,NULL,7,0,'2012-10-23 16:27:57','2012-10-23 16:27:57',NULL,50,NULL,NULL,263,1,2,0,-400,0,NULL),(264,3,1,'Internal Meeting 22/10','','2012-11-04',NULL,3,8,4,3,8,0,'2012-10-24 09:16:22','2012-10-24 09:16:22','2012-10-22',100,10,34,34,130,131,0,-450,0,NULL),(265,2,1,'Research on couchDB','','2012-11-04',NULL,1,8,4,3,5,3,'2012-10-24 10:56:27','2012-10-24 12:44:02','2012-10-22',0,15,NULL,265,1,2,0,-500,0,NULL),(266,3,1,'Write weekly report and agenda','','2012-10-24',NULL,3,5,4,3,5,0,'2012-10-24 12:50:21','2012-10-24 12:50:21','2012-10-24',100,1,90,34,83,84,0,-550,1,NULL),(267,3,1,'Attend meeting','','2012-10-25',NULL,3,8,4,3,5,2,'2012-10-24 12:51:05','2012-10-31 16:02:37','2012-10-25',100,4,90,34,85,86,0,-600,4,NULL),(268,2,1,'Report final ','',NULL,NULL,2,4,4,NULL,4,23,'2012-10-25 11:36:33','2012-10-31 20:51:34',NULL,41,44,NULL,268,1,36,0,-650,44,NULL),(269,3,1,'Report: Remove section headers and combine sections with others','Section 1.1, 1.2, 1.4 can be merged as \"Stakeholders\", where section 1.1 is actually removable',NULL,NULL,1,NULL,4,NULL,4,2,'2012-10-25 11:39:43','2012-10-31 20:28:21','2012-10-25',50,4,268,268,2,3,0,-700,4,NULL),(270,3,1,'Report: Add section of the outline of the report to chapter 1','',NULL,NULL,1,NULL,4,NULL,4,0,'2012-10-25 11:41:26','2012-10-25 11:41:26','2012-10-25',0,2,268,268,4,5,0,-750,2,NULL),(271,3,1,'Report: Move project plans and deliverables to chapter 2','Section 1.6, 1.7 should be part of chapter 2',NULL,NULL,3,NULL,4,NULL,4,2,'2012-10-25 12:16:54','2012-10-26 09:14:17','2012-10-25',100,2,268,268,6,7,0,-800,2,NULL),(272,3,1,'Report: Add a brief description of a chapter before the first chapter','Each chapter should have a brief description before the first section, as what you have done in chapter 1.',NULL,NULL,2,NULL,4,NULL,4,8,'2012-10-25 12:17:44','2012-10-30 10:24:38','2012-10-25',70,5,268,268,8,9,0,-850,5,NULL),(273,3,1,'Report: Reorganize sections in chapter 2','The first section of chapter 2 should either be “Project Schedule” or be “Team Structure”.',NULL,NULL,2,NULL,4,NULL,4,4,'2012-10-25 12:18:12','2012-10-26 09:13:34','2012-10-25',30,3,268,268,10,11,0,-900,3,NULL),(274,3,1,'Report: Move risk table to appendices','The complete risk table should be put in appendix, while the most important ones can be elaborated in chapter 2.',NULL,NULL,3,NULL,4,NULL,4,2,'2012-10-25 12:18:35','2012-10-26 10:04:45','2012-10-25',100,NULL,268,268,12,13,0,-950,NULL,NULL),(275,3,1,'Report: Create an individual chapter out of test plan','Test plan should be an individual chapter.',NULL,NULL,3,5,4,NULL,4,4,'2012-10-25 12:19:07','2012-10-26 09:57:23','2012-10-25',100,NULL,268,268,14,15,0,-1000,NULL,NULL),(276,3,1,'Report: Fix architectural drivers','Architectural drivers should cover functional and non-functional requirements, technical and business constraints. Some drivers are missing, e.g.\r\n	- The project must be finished on a fixed schedule (business constraint)\r\n',NULL,NULL,3,NULL,4,NULL,4,2,'2012-10-25 12:24:02','2012-10-31 19:38:34','2012-10-25',100,3,268,268,16,17,0,-1050,3,NULL),(277,3,1,'Report: Check if all the diagram figures follow UML notation','Figure 5.1 was not following UML class diagram notation. Important!',NULL,NULL,1,NULL,4,NULL,4,0,'2012-10-25 12:25:23','2012-10-25 12:25:23','2012-10-25',0,3,268,268,18,19,0,-1100,3,NULL),(278,3,1,'Report: Check if all the tables are close to the text','Layout is important, so that table is closer to text. Tables and figures are more important than text.\r\n\r\n- tables should be within 1 page from the text they are connected to.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-10-25 12:26:17','2012-10-25 12:26:17','2012-10-25',0,NULL,268,268,20,21,0,-1150,NULL,NULL),(279,3,1,'Report: Fix views modelling languages','Section 5.3, you should specify the modelling language used for each view.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-10-25 12:27:07','2012-10-25 12:27:07','2012-10-25',0,NULL,268,268,22,23,0,-1200,NULL,NULL),(280,3,1,'Report: Add all the sources to bibliography. ','Find the references in source codes, on skype. Add scientific articles and quality books.\r\n\r\nBibliography is too short, which shows insufficient prestudy.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-10-25 12:28:41','2012-10-25 12:28:41','2012-10-25',0,8,268,268,24,25,0,-1250,8,NULL),(281,3,1,'Report: Move list of user stories to appendices','Also check for other longer parts and think about moving them to appendices. Try to organize appendices chapter in a nice way.',NULL,NULL,1,NULL,4,NULL,4,4,'2012-10-25 13:05:01','2012-10-31 19:05:03','2012-10-25',50,4,268,268,26,27,0,-1300,4,NULL),(282,3,1,'Report: Review requirements','Make requirements chapter as initial requirements. Than make a list of requirements in each sprint - content of backlog.',NULL,NULL,1,NULL,4,NULL,4,0,'2012-10-25 13:06:24','2012-10-25 13:06:24','2012-10-25',0,NULL,268,268,28,29,0,-1350,NULL,NULL),(283,3,1,'Add specifics on implementation for Sprint 2','','2012-10-27',NULL,1,8,4,NULL,5,0,'2012-10-25 13:25:58','2012-10-25 13:25:58','2012-10-25',0,5,268,268,30,31,0,-1400,5,NULL),(284,3,1,'Write about SQL vs NoSQL','','2012-10-26',NULL,3,5,4,NULL,5,0,'2012-10-26 15:24:25','2012-10-26 15:24:25','2012-10-26',100,4,268,268,32,33,0,-1450,4,NULL),(285,2,1,'Create user stories and break them into sub- tasks',NULL,'2012-11-04',NULL,1,NULL,4,3,5,0,'2012-10-29 18:23:11','2012-10-29 18:23:11','2012-10-22',0,NULL,NULL,285,1,2,0,-1500,0,NULL),(286,2,1,'edit the old architecture','',NULL,NULL,1,NULL,4,NULL,7,1,'2012-10-29 20:35:47','2012-10-31 12:21:57',NULL,80,NULL,NULL,286,1,2,0,-1550,0,NULL),(287,3,1,'Customer meeting 10-29','','2012-10-29',NULL,3,NULL,4,NULL,8,0,'2012-10-29 20:36:13','2012-10-29 20:36:13','2012-10-29',100,6,34,34,132,133,0,-1600,6,NULL),(288,2,1,'Made new architecture','',NULL,NULL,1,NULL,4,NULL,7,1,'2012-10-29 20:36:25','2012-10-31 12:21:38',NULL,70,NULL,NULL,288,1,2,0,-1650,0,NULL),(289,3,1,'Write weekly report and agenda','','2012-10-31',NULL,3,5,4,NULL,5,2,'2012-10-31 11:51:02','2012-11-01 10:19:21','2012-10-31',100,1,91,34,89,90,0,-1700,1,NULL),(290,2,1,'SPGR assignment','',NULL,NULL,1,NULL,4,NULL,7,0,'2012-10-31 12:20:09','2012-10-31 12:20:09',NULL,20,NULL,NULL,290,1,2,0,-1750,0,NULL),(291,3,1,'remove latex warnings','',NULL,NULL,1,NULL,4,NULL,7,0,'2012-10-31 13:31:51','2012-10-31 13:31:51','2012-10-31',0,NULL,1,1,98,99,0,-1800,NULL,NULL),(292,3,1,'Report: Fix the Team Roles table','','2012-10-31',NULL,3,NULL,4,NULL,5,0,'2012-10-31 20:51:34','2012-10-31 20:51:34','2012-10-31',100,1,268,268,34,35,0,-1850,1,NULL),(293,3,1,'Attend meeting','','2012-11-01',NULL,3,NULL,4,NULL,8,0,'2012-11-01 10:17:25','2012-11-01 10:17:25','2012-11-01',100,4,91,34,91,92,0,-1900,4,NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(30) NOT NULL DEFAULT '',
  `old_value` text,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_details`
--

LOCK TABLES `journal_details` WRITE;
/*!40000 ALTER TABLE `journal_details` DISABLE KEYS */;
INSERT INTO `journal_details` VALUES (9,8,'attr','parent_id','6','5'),(10,9,'attr','due_date',NULL,'2012-09-06'),(11,9,'attr','estimated_hours',NULL,'4.00'),(12,10,'attr','status_id','2','1'),(13,11,'attr','status_id','2','1'),(14,12,'attr','parent_id',NULL,'1'),(15,13,'attr','subject','Report Pre-delivery','Report pre-delivery'),(16,14,'attr','subject','Report Finish','Report finish'),(17,15,'attr','tracker_id','1','2'),(18,16,'attr','priority_id','5','4'),(19,17,'attr','estimated_hours','0.50','0.70'),(20,18,'attr','parent_id',NULL,'7'),(21,19,'attr','status_id','1','2'),(22,20,'attr','status_id','1','3'),(23,21,'attr','assigned_to_id','7','5'),(24,21,'attr','done_ratio','0','100'),(25,22,'attr','tracker_id','1','2'),(26,23,'attr','tracker_id','1','2'),(27,24,'attr','status_id','1','3'),(28,24,'attr','done_ratio','0','100'),(29,25,'attr','status_id','1','3'),(30,25,'attr','done_ratio','0','100'),(31,26,'attr','status_id','1','3'),(32,26,'attr','done_ratio','0','100'),(33,27,'attr','parent_id',NULL,'14'),(34,28,'attr','tracker_id','1','2'),(35,29,'attr','status_id','1','3'),(36,30,'attr','subject','Meeting','Meetings'),(37,31,'attr','subject','Type the meeting agenda and a list of questions for Stig','Type the meeting agenda and send them to Peder and Stig'),(38,32,'attr','estimated_hours','5.00','8.00'),(39,33,'attr','estimated_hours','10.75','13.00'),(40,34,'attr','start_date','2012-09-04','2012-08-21'),(41,35,'attr','done_ratio','0','100'),(42,36,'attr','subject','    Meeting with customer','    Meeting with customer 08/30/2012'),(43,37,'attr','subject','Meeting with advisor, at ITV242. 09:15 - 09:30','Meeting with advisor 2012-08-30'),(44,38,'attr','subject','Team meeting','Team meeting 	09/04/2012'),(45,39,'attr','subject','Meeting with advisor at IDI, Meng Zhu','First meeting with advisor at IDI, Meng Zhu 2012-08-22'),(46,40,'attr','subject','Meeting with the group at P15. 12:00 - 14:15','Meeting with the group at P15 2012-08-27'),(47,41,'attr','subject','First meeting with customer(Peder Kongelf from Netlight)','First meeting with customer(Peder Kongelf from Netlight) 2012-08-21'),(48,42,'attr','estimated_hours','1.75','7.00'),(49,43,'attr','due_date',NULL,'2012-08-27'),(50,44,'attr','due_date',NULL,'2012-08-21'),(51,45,'attr','due_date',NULL,'2012-08-22'),(52,46,'attr','due_date',NULL,'2012-08-30'),(53,47,'attr','due_date',NULL,'2012-08-30'),(54,48,'attr','due_date',NULL,'2012-09-04'),(55,49,'attr','due_date',NULL,'2012-09-03'),(56,50,'attr','assigned_to_id',NULL,'4'),(57,51,'attr','assigned_to_id','4','5'),(58,52,'attr','subject','Write report outline','Write report outline in LaTeX'),(60,54,'attr','assigned_to_id',NULL,'5'),(61,55,'attr','tracker_id','1','3'),(62,56,'attr','subject','Write the weekly report for Meng Zhu','Write the weekly report and agenda for the meeting'),(63,57,'attr','status_id','1','3'),(64,58,'attr','status_id','1','3'),(65,59,'attr','done_ratio','0','100'),(66,60,'attr','status_id','1','3'),(67,60,'attr','done_ratio','0','100'),(68,61,'attr','status_id','2','3'),(69,61,'attr','done_ratio','50','100'),(70,62,'attr','due_date','2012-09-09','2012-09-07'),(71,62,'attr','start_date','2012-09-09','2012-09-07'),(74,64,'attr','status_id','1','3'),(75,64,'attr','done_ratio','0','100'),(76,65,'attr','status_id','1','3'),(77,65,'attr','done_ratio','0','100'),(78,66,'attr','status_id','1','3'),(80,68,'attr','done_ratio','60','80'),(81,69,'attr','done_ratio','30','100'),(82,70,'attr','done_ratio','0','100'),(83,71,'attr','status_id','1','3'),(84,71,'attr','done_ratio','0','100'),(85,72,'attr','status_id','1','3'),(86,72,'attr','done_ratio','0','100'),(87,73,'attr','status_id','1','6'),(88,74,'attr','done_ratio','0','100'),(89,75,'attr','status_id','1','3'),(90,76,'attr','done_ratio','0','100'),(91,77,'attr','status_id','1','3'),(92,77,'attr','done_ratio','0','100'),(93,79,'attr','status_id','1','5'),(94,79,'attr','done_ratio','0','100'),(95,80,'attr','status_id','1','5'),(96,81,'attr','status_id','2','5'),(97,82,'attr','status_id','3','5'),(98,83,'attr','status_id','3','5'),(99,84,'attr','status_id','3','5'),(100,85,'attr','status_id','3','5'),(101,86,'attr','status_id','3','5'),(102,87,'attr','status_id','3','5'),(103,88,'attr','status_id','3','5'),(104,89,'attr','status_id','3','5'),(105,90,'attr','status_id','3','5'),(106,91,'attr','status_id','2','5'),(107,92,'attr','subject','Create on project name','Create project name'),(108,93,'attr','tracker_id','1','3'),(109,94,'attr','tracker_id','1','3'),(110,95,'attr','status_id','1','3'),(111,95,'attr','done_ratio','0','100'),(112,96,'attr','tracker_id','1','3'),(113,97,'attr','due_date',NULL,'2012-09-12'),(114,97,'attr','status_id','1','5'),(115,97,'attr','done_ratio','0','100'),(116,98,'attr','status_id','3','5'),(117,99,'attr','status_id','3','5'),(118,100,'attr','status_id','3','5'),(119,101,'attr','status_id','3','5'),(120,102,'attr','tracker_id','1','3'),(121,103,'attachment','1',NULL,'12-09-13_weekly-status-report.pdf'),(122,103,'attachment','2',NULL,'12-09-13_meeting-agenda.pdf'),(123,104,'attr','done_ratio','50','70'),(124,105,'attr','tracker_id','3','2'),(125,106,'attachment','3',NULL,'Screen Shot 2012-09-11 at 13.13.29 PM (1).png'),(126,107,'attr','status_id','3','5'),(127,108,'attr','tracker_id','1','2'),(128,109,'attr','status_id','3','5'),(129,110,'attr','status_id','3','5'),(130,111,'attr','status_id','3','5'),(131,112,'attr','status_id','3','5'),(132,113,'attr','status_id','3','5'),(133,113,'attr','assigned_to_id',NULL,'5'),(134,114,'attr','tracker_id','3','2'),(135,114,'attr','subject','Export chapter to LaTex','Revise and export chapter to LaTex'),(136,114,'attr','status_id','1','2'),(137,114,'attr','assigned_to_id',NULL,'4'),(138,114,'attr','estimated_hours','1.00','4.00'),(139,115,'attr','parent_id','2','5'),(140,116,'attr','parent_id','1','3'),(141,117,'attr','parent_id','5','78'),(142,118,'attr','status_id','1','2'),(143,119,'attr','parent_id','5','78'),(144,120,'attr','parent_id','5','78'),(145,121,'attr','parent_id','5','78'),(146,122,'attr','parent_id','5','78'),(147,124,'attr','assigned_to_id',NULL,'8'),(148,125,'attr','assigned_to_id',NULL,'8'),(149,126,'attr','subject','Advisor Meeting 13/09','Advisor Meeting 2012-09-13'),(150,126,'attr','status_id','1','5'),(151,127,'attachment','4',NULL,'12-09-13_meeting-notes.pdf'),(152,127,'attr','due_date','2012-09-14','2012-09-13'),(153,127,'attr','status_id','1','5'),(154,127,'attr','assigned_to_id','6','8'),(155,127,'attr','start_date','2012-09-12','2012-09-13'),(156,127,'attr','done_ratio','0','100'),(157,128,'attachment','5',NULL,'12-09-13_meeting-notes.pdf'),(158,129,'attr','status_id','1','5'),(159,130,'attr','subject','Advisor Meeting 06/09','Advisor Meeting 2012-09-06'),(160,131,'attr','subject','Attend the actual advisor meeting 2012-09-06','Attend the meeting'),(161,132,'attr','subject','Meeting with advisor 2012-08-30','Advisor meeting 2012-08-30'),(162,132,'attr','status_id','3','5'),(163,133,'attr','subject','First meeting with advisor at IDI, Meng Zhu 2012-08-22','Advisor meeting 2012-08-22'),(164,133,'attr','status_id','3','5'),(165,134,'attr','subject','First meeting with customer(Peder Kongelf from Netlight) 2012-08-21','Customer meeting 2012-08-21'),(166,134,'attr','status_id','3','5'),(167,135,'attr','subject','Team meeting 	09/04/2012','Team meeting 2012-09-04'),(168,135,'attr','status_id','3','5'),(169,136,'attr','subject','Meeting with the group at P15 2012-08-27','Team meeting 2012-08-27'),(170,136,'attr','status_id','3','5'),(171,136,'attr','assigned_to_id',NULL,'8'),(172,137,'attr','assigned_to_id',NULL,'8'),(173,138,'attr','subject','    Meeting with customer 08/30/2012','Customer meeting 2012-08-30'),(174,138,'attr','status_id','3','5'),(175,138,'attr','assigned_to_id',NULL,'8'),(176,139,'attr','subject','Meeting notes compilation(customer meeting 2012-09-07)','Meeting notes compilation'),(177,139,'attr','status_id','3','5'),(178,139,'attr','assigned_to_id',NULL,'8'),(179,140,'attr','subject','Customer Meeting 07/09','Customer meeting 2012-09-07'),(180,140,'attr','status_id','3','5'),(181,140,'attr','assigned_to_id',NULL,'8'),(182,141,'attr','subject','Attend the actual customer meeting 2012-09-07','Attend the meeting'),(183,141,'attr','status_id','3','5'),(184,141,'attr','assigned_to_id',NULL,'8'),(187,143,'attr','subject','Find questions for Stig, and send them too him in advance of the meeting','Find questions'),(188,143,'attr','status_id','3','5'),(189,144,'attr','subject','Type the meeting agenda and send them to Peder and Stig','Write weekly report and meeting agenda'),(190,145,'attr','status_id','3','5'),(191,146,'attr','assigned_to_id',NULL,'8'),(192,147,'attr','assigned_to_id',NULL,'8'),(193,148,'attachment','6',NULL,'12-09-07_report.pdf'),(194,148,'attachment','7',NULL,'12-09-07_meeting-notes.pdf'),(195,148,'attachment','8',NULL,'12-09-07_meeting-agenda.pdf'),(196,149,'attr','assigned_to_id',NULL,'8'),(197,150,'attr','assigned_to_id',NULL,'8'),(198,151,'attr','assigned_to_id',NULL,'8'),(199,152,'attr','assigned_to_id',NULL,'8'),(200,153,'attr','assigned_to_id',NULL,'8'),(201,154,'attr','subject','Write weekly report (update advisor report) and meeting agenda','Write weekly report and meeting agenda'),(202,155,'attr','tracker_id','1','3'),(203,156,'attr','tracker_id','1','3'),(204,157,'attr','due_date','2012-11-22','2012-09-21'),(205,158,'attr','due_date','2012-09-25','2012-09-24'),(206,159,'attr','due_date','2012-09-27','2012-09-26'),(207,160,'attr','due_date','2012-10-11','2012-10-10'),(208,161,'attr','due_date','2012-10-09','2012-10-08'),(209,162,'attr','due_date','2012-10-23','2012-10-22'),(210,163,'attr','due_date','2012-11-06','2012-11-05'),(211,164,'attr','due_date','2012-09-21','2012-09-15'),(212,165,'attr','due_date','2012-09-21','2012-09-24'),(213,165,'attr','start_date','2012-09-13','2012-09-23'),(214,166,'attr','due_date',NULL,'2012-09-16'),(215,166,'attr','start_date','2012-09-13','2012-09-15'),(216,167,'attr','due_date','2012-09-24','2012-09-15'),(217,167,'attr','start_date','2012-09-23','2012-09-14'),(218,168,'attr','due_date','2012-09-16','2012-09-15'),(219,169,'attr','due_date','2012-09-21','2012-09-17'),(220,169,'attr','start_date','2012-09-13','2012-09-17'),(221,170,'attr','due_date','2012-09-21','2012-09-17'),(222,170,'attr','start_date','2012-09-13','2012-09-17'),(223,171,'attr','done_ratio','0','70'),(224,172,'attr','done_ratio','70','90'),(225,173,'attr','tracker_id','1','3'),(226,174,'attr','subject','Customer meeting 2012-09-XX','Customer meeting 2012-09-19'),(227,175,'attr','due_date',NULL,'2012-09-17'),(228,175,'attr','status_id','2','3'),(229,175,'attr','done_ratio','0','90'),(230,176,'attr','estimated_hours',NULL,'4.00'),(231,176,'attr','parent_id',NULL,'96'),(232,177,'attr','estimated_hours','4.00','5.00'),(233,178,'attr','status_id','2','3'),(234,179,'attr','status_id','1','2'),(235,180,'attr','status_id','1','2'),(236,181,'attr','status_id','1','2'),(237,182,'attr','done_ratio','0','100'),(238,183,'attr','status_id','1','2'),(239,184,'attr','status_id','1','2'),(240,185,'attr','tracker_id','1','3'),(241,185,'attr','status_id','1','3'),(242,186,'attr','status_id','1','3'),(243,187,'attr','status_id','1','3'),(244,187,'attr','done_ratio','0','100'),(245,188,'attr','status_id','1','3'),(246,188,'attr','done_ratio','0','100'),(247,189,'attr','status_id','1','5'),(248,189,'attr','done_ratio','0','100'),(249,190,'attr','tracker_id','1','3'),(250,191,'attr','subject','Attend the meeting','Attend the meeting and compile meeting notes.'),(251,192,'attachment','9',NULL,'2012-09-20_weekly-report.pdf'),(252,192,'attachment','10',NULL,'2012-09-20_meeting-agenda.pdf'),(253,192,'attachment','11',NULL,'2012-09-20_meeting-notes.pdf'),(254,192,'attr','status_id','1','5'),(255,192,'attr','done_ratio','0','100'),(256,193,'attr','tracker_id','1','3'),(257,194,'attr','status_id','3','5'),(258,195,'attr','subject','Customer meeting 2012-09-19','Customer meeting 2012-09-20'),(259,196,'attr','status_id','2','5'),(260,196,'attr','done_ratio','0','100'),(261,197,'attr','status_id','1','5'),(262,197,'attr','done_ratio','0','100'),(263,198,'attr','estimated_hours',NULL,'0.40'),(264,199,'attachment','12',NULL,'2012-09-20_weekly-report-customer.pdf'),(265,199,'attachment','13',NULL,'2012-09-20_meeting-agenda-customer.pdf'),(266,200,'attr','estimated_hours','4.00','1.50'),(267,201,'attr','subject','Custome Presentation itDAGENE','Customer Presentation itDAGENE 2012-09-21'),(268,202,'attr','status_id','1','5'),(269,203,'attr','status_id','1','5'),(270,204,'attr','status_id','1','3'),(271,204,'attr','done_ratio','0','100'),(272,205,'attr','parent_id','96','123'),(273,206,'attr','subject','Customer meeting 2012-09-20','Customer meeting 2012-09-24'),(274,207,'attachment','13','2012-09-20_meeting-agenda-customer.pdf',NULL),(275,208,'attachment','14',NULL,'2012-09-20_meeting-agenda-customer.pdf'),(276,209,'attr','status_id','2','3'),(277,209,'attr','done_ratio','0','100'),(278,210,'attr','subject','Team Dynamics Lecture','Team Dynamics Lecture 2012-09-24'),(279,210,'attr','status_id','3','5'),(280,211,'attr','status_id','3','5'),(281,212,'attr','status_id','1','5'),(282,212,'attr','done_ratio','0','100'),(283,213,'attr','status_id','1','5'),(284,213,'attr','done_ratio','0','100'),(285,214,'attr','done_ratio','0','100'),(293,217,'attr','status_id','1','5'),(294,217,'attr','done_ratio','0','100'),(295,218,'attr','parent_id',NULL,'158'),(296,219,'attr','parent_id',NULL,'158'),(297,220,'attr','parent_id',NULL,'158'),(298,221,'attr','parent_id',NULL,'158'),(299,222,'attr','assigned_to_id','8',NULL),(300,223,'attr','estimated_hours',NULL,'25.00'),(301,224,'attr','estimated_hours',NULL,'14.00'),(302,225,'attr','estimated_hours',NULL,'28.00'),(303,226,'attr','estimated_hours',NULL,'21.00'),(304,227,'attr','estimated_hours',NULL,'21.00'),(305,228,'attr','done_ratio','0','100'),(306,229,'attr','tracker_id','1','2'),(307,229,'attr','subject','Install PubNub plugin to Node.js','Install pubnub plugin to node.js'),(308,230,'attr','status_id','1','5'),(309,231,'attr','status_id','1','5'),(310,232,'attr','status_id','1','5'),(311,232,'attr','done_ratio','0','100'),(312,233,'attr','status_id','1','5'),(313,234,'attr','tracker_id','1','2'),(314,234,'attr','status_id','1','5'),(315,235,'attr','status_id','1','3'),(316,235,'attr','done_ratio','0','100'),(317,236,'attr','done_ratio','0','20'),(318,237,'attr','status_id','1','5'),(319,238,'attr','status_id','2','5'),(320,239,'attr','status_id','2','5'),(321,240,'attr','status_id','2','5'),(322,241,'attr','status_id','3','5'),(323,242,'attr','status_id','1','2'),(324,243,'attr','status_id','1','2'),(325,244,'attr','done_ratio','0','100'),(326,245,'attr','status_id','1','3'),(327,246,'attr','status_id','3','2'),(328,247,'attr','fixed_version_id','1',NULL),(329,248,'attr','status_id','1','2'),(330,249,'attr','status_id','1','2'),(331,250,'attr','fixed_version_id','1',NULL),(332,251,'attr','fixed_version_id','1',NULL),(333,252,'attr','fixed_version_id','1',NULL),(334,253,'attr','fixed_version_id','1',NULL),(335,254,'attr','fixed_version_id','1',NULL),(336,255,'attr','fixed_version_id','1',NULL),(337,256,'attr','fixed_version_id','1',NULL),(338,257,'attr','fixed_version_id','1',NULL),(339,258,'attr','fixed_version_id','1',NULL),(340,259,'attr','fixed_version_id',NULL,'1'),(341,260,'attr','fixed_version_id','1',NULL),(342,261,'attr','fixed_version_id',NULL,'1'),(343,262,'attr','fixed_version_id',NULL,'1'),(344,263,'attr','fixed_version_id',NULL,'1'),(345,264,'attr','fixed_version_id',NULL,'1'),(346,265,'attr','fixed_version_id',NULL,'1'),(347,266,'attr','fixed_version_id','1',NULL),(348,267,'attr','fixed_version_id','1',NULL),(349,268,'attr','fixed_version_id','1',NULL),(350,269,'attr','fixed_version_id','1',NULL),(351,270,'attr','fixed_version_id','1',NULL),(352,271,'attr','fixed_version_id','1',NULL),(353,272,'attr','fixed_version_id',NULL,'1'),(354,273,'attr','status_id','2','3'),(355,273,'attr','done_ratio','0','100'),(356,274,'attr','status_id','1','3'),(357,274,'attr','done_ratio','0','100'),(358,275,'attr','status_id','1','3'),(359,275,'attr','done_ratio','0','100'),(360,276,'attr','due_date',NULL,'2012-10-19'),(361,276,'attr','fixed_version_id',NULL,'2'),(362,276,'attr','start_date','2012-09-26','2012-10-08'),(363,276,'attr','estimated_hours','28.00','11.00'),(364,277,'attr','subject','User story G8','User story G9'),(365,278,'attr','subject','User story G7','User story G8'),(366,278,'attr','status_id','1','3'),(367,278,'attr','done_ratio','0','100'),(368,279,'attr','fixed_version_id',NULL,'1'),(369,280,'attr','done_ratio','0','60'),(370,281,'attr','estimated_hours',NULL,'4.00'),(371,282,'attr','estimated_hours','10.00','40.00'),(372,283,'attr','assigned_to_id',NULL,'4'),(373,284,'attr','assigned_to_id',NULL,'4'),(374,285,'attr','subject','User story G4','User story G4b'),(375,286,'attr','status_id','1','2'),(376,287,'attr','done_ratio','0','70'),(377,288,'attr','tracker_id','1','2'),(378,289,'attr','status_id','1','3'),(379,289,'attr','done_ratio','0','100'),(380,290,'attr','done_ratio','0','90'),(381,291,'attr','assigned_to_id',NULL,'7'),(382,292,'attr','assigned_to_id',NULL,'5'),(383,293,'attr','assigned_to_id',NULL,'4'),(384,294,'attr','status_id','1','3'),(385,294,'attr','done_ratio','0','100'),(386,295,'attr','status_id','1','3'),(387,295,'attr','done_ratio','0','100'),(388,296,'attr','status_id','1','3'),(389,296,'attr','done_ratio','0','100'),(390,297,'attr','done_ratio','100','90'),(391,298,'attr','status_id','1','3'),(392,298,'attr','done_ratio','0','100'),(393,299,'attr','status_id','3','2'),(394,300,'attr','status_id','1','3'),(395,300,'attr','done_ratio','0','100'),(396,301,'attr','status_id','1','2'),(397,301,'attr','done_ratio','0','70'),(398,302,'attr','done_ratio','70','0'),(399,303,'attr','status_id','1','2'),(400,303,'attr','done_ratio','0','60'),(401,304,'attr','status_id','1','2'),(402,304,'attr','done_ratio','0','70'),(403,305,'attr','tracker_id','1','3'),(404,305,'attr','subject','[Subject]','Overall documentation of the sprint'),(405,305,'attr','due_date',NULL,'2012-10-19'),(406,305,'attr','start_date',NULL,'2012-10-08'),(407,305,'attr','done_ratio','0','20'),(408,305,'attr','estimated_hours',NULL,'15.00'),(409,306,'attr','status_id','1','3'),(410,306,'attr','done_ratio','0','100'),(411,307,'attr','status_id','1','3'),(412,307,'attr','done_ratio','0','100'),(413,308,'attr','status_id','1','3'),(414,308,'attr','done_ratio','0','100'),(415,309,'attr','assigned_to_id',NULL,'6'),(416,310,'attr','assigned_to_id',NULL,'6'),(417,311,'attr','assigned_to_id',NULL,'6'),(418,312,'attr','subject','[Subject]','New instances are created on refresh. Old pointers no longer valid'),(419,312,'attr','due_date',NULL,'2012-10-17'),(420,312,'attr','status_id','1','3'),(421,312,'attr','assigned_to_id',NULL,'5'),(422,312,'attr','start_date',NULL,'2012-10-16'),(423,312,'attr','done_ratio','0','100'),(424,312,'attr','estimated_hours',NULL,'4.00'),(425,313,'attr','status_id','1','3'),(426,313,'attr','done_ratio','0','90'),(427,314,'attr','status_id','1','3'),(428,314,'attr','done_ratio','0','70'),(429,315,'attr','status_id','1','2'),(430,316,'attr','status_id','1','2'),(431,316,'attr','done_ratio','0','20'),(432,317,'attr','status_id','2','5'),(433,318,'attr','status_id','1','5'),(434,319,'attr','status_id','3','5'),(435,320,'attr','status_id','2','5'),(436,321,'attr','status_id','1','5'),(437,322,'attr','done_ratio','0','100'),(438,323,'attr','status_id','3','5'),(439,324,'attachment','15',NULL,'2012-10-04_meeting-agenda-customer.pdf'),(440,324,'attachment','16',NULL,'2012-10-04_weekly-report-customer.pdf'),(441,324,'attr','subject','Meeting with customer 10/04/2012','Meeting with customer 2012-10-04'),(442,324,'attr','status_id','3','5'),(443,325,'attr','status_id','3','5'),(444,327,'attr','status_id','1','5'),(445,328,'attr','done_ratio','0','90'),(446,329,'attr','done_ratio','90','100'),(447,330,'attr','status_id','3','5'),(448,331,'attr','subject','Internal meeting Sprint 2 Planning','Internal meeting planning Sprint2'),(449,331,'attr','status_id','3','5'),(450,332,'attr','status_id','1','2'),(451,332,'attr','done_ratio','0','50'),(452,333,'attr','status_id','1','3'),(453,333,'attr','done_ratio','0','100'),(454,334,'attachment','17',NULL,'2012-10-18_meeting-agenda-customer.pdf'),(455,334,'attachment','18',NULL,'2012-10-18_weekly-report-customer.pdf'),(456,335,'attachment','19',NULL,'2012-10-18_meeting-agenda-advisor.pdf'),(457,335,'attachment','20',NULL,'2012-10-18_weekly-report-advisor.pdf'),(458,336,'attr','status_id','1','3'),(459,336,'attr','done_ratio','0','100'),(460,337,'attr','status_id','1','3'),(461,337,'attr','done_ratio','90','100'),(462,338,'attr','status_id','2','3'),(463,338,'attr','done_ratio','20','100'),(464,339,'attr','status_id','2','3'),(465,339,'attr','done_ratio','70','100'),(466,340,'attr','status_id','1','2'),(467,340,'attr','done_ratio','0','30'),(468,341,'attr','status_id','1','2'),(469,341,'attr','done_ratio','0','40'),(470,342,'attr','status_id','1','3'),(471,342,'attr','done_ratio','0','100'),(472,343,'attr','estimated_hours','4.00','23.0'),(473,344,'attr','estimated_hours','0.70','0.699999988079071'),(474,345,'attr','estimated_hours','0.40','0.400000005960464'),(475,346,'attr','due_date','2012-09-21',NULL),(476,346,'attr','start_date','2012-08-22',NULL),(477,347,'attr','fixed_version_id',NULL,'1'),(478,348,'attr','fixed_version_id',NULL,'1'),(479,349,'attr','fixed_version_id',NULL,'1'),(480,350,'attr','fixed_version_id',NULL,'1'),(481,351,'attr','fixed_version_id',NULL,'1'),(482,352,'attr','fixed_version_id',NULL,'1'),(483,352,'attr','done_ratio','20','100'),(484,352,'attr','remaining_hours',NULL,'2.00'),(485,353,'attr','fixed_version_id',NULL,'1'),(486,354,'attr','fixed_version_id',NULL,'1'),(487,355,'attr','fixed_version_id',NULL,'1'),(488,356,'attr','fixed_version_id',NULL,'1'),(489,357,'attr','fixed_version_id',NULL,'1'),(490,358,'attr','due_date','2012-10-19','2012-10-23'),(491,358,'attr','fixed_version_id',NULL,'2'),(492,359,'attr','fixed_version_id',NULL,'2'),(493,360,'attr','fixed_version_id',NULL,'2'),(494,361,'attr','fixed_version_id',NULL,'2'),(495,362,'attr','fixed_version_id',NULL,'2'),(496,363,'attr','fixed_version_id',NULL,'2'),(497,364,'attr','due_date','2012-09-13','2012-10-07'),(498,364,'attr','fixed_version_id',NULL,'1'),(499,364,'attr','remaining_hours',NULL,'0.00'),(500,365,'attr','due_date','2012-10-07',NULL),(501,365,'attr','fixed_version_id','1',NULL),(502,365,'attr','start_date','2012-09-11',NULL),(503,366,'attr','status_id','1','5'),(504,366,'attr','story_points',NULL,'3.00'),(505,367,'attr','assigned_to_id',NULL,'8'),(506,367,'attr','estimated_hours',NULL,'15.00'),(507,368,'attr','subject','Report: add a brief description of a chapter before the first chapter','Report: Add a brief description of a chapter before the first chapter'),(508,369,'attachment','21',NULL,'preliminaryfeedbackgr7.docx'),(509,370,'attachment','22',NULL,'report-reviewed.pdf'),(510,371,'attr','subject','Report: reorganize sections in chapter 2','Report: Reorganize sections in chapter 2'),(511,371,'attr','estimated_hours',NULL,'3.00'),(512,371,'attr','remaining_hours',NULL,'3.00'),(513,372,'attr','status_id','1','2'),(514,372,'attr','done_ratio','0','30'),(515,373,'attr','status_id','1','3'),(516,373,'attr','done_ratio','0','100'),(517,374,'attr','status_id','1','2'),(518,374,'attr','done_ratio','0','10'),(519,375,'attr','status_id','1','2'),(520,375,'attr','assigned_to_id',NULL,'5'),(521,376,'attr','status_id','2','3'),(522,376,'attr','done_ratio','0','100'),(523,377,'attr','status_id','1','3'),(524,377,'attr','done_ratio','0','100'),(525,378,'attr','status_id','2','3'),(526,378,'attr','done_ratio','30','100'),(527,378,'attr','remaining_hours',NULL,'4.00'),(528,379,'attr','status_id','1','3'),(529,380,'attr','done_ratio','40','100'),(530,380,'attr','remaining_hours',NULL,'4.00'),(531,381,'attr','done_ratio','10','40'),(532,382,'attr','done_ratio','40','70'),(533,383,'attr','done_ratio','0','50'),(534,384,'attr','tracker_id','1','2'),(535,384,'attr','start_date','2012-10-29',NULL),(536,384,'attr','remaining_hours',NULL,'0.00'),(537,385,'attr','tracker_id','1','2'),(538,385,'attr','start_date','2012-10-29',NULL),(539,385,'attr','remaining_hours',NULL,'0.00'),(540,386,'attr','status_id','1','3'),(541,386,'attr','done_ratio','0','100'),(542,387,'attr','subject','Report: Mode list of user stories to appendices','Report: Move list of user stories to appendices'),(543,388,'attr','status_id','1','3'),(544,388,'attr','done_ratio','0','100'),(545,388,'attr','estimated_hours',NULL,'3.00'),(546,388,'attr','remaining_hours',NULL,'3.00'),(547,389,'attr','done_ratio','0','50'),(548,390,'attr','status_id','1','3'),(549,390,'attr','done_ratio','0','100');
/*!40000 ALTER TABLE `journal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (8,7,'Issue',5,'','2012-09-04 13:18:28'),(9,8,'Issue',4,'','2012-09-04 13:19:27'),(10,5,'Issue',4,'','2012-09-04 13:20:38'),(11,6,'Issue',4,'','2012-09-04 13:22:02'),(12,3,'Issue',4,'','2012-09-04 13:28:31'),(13,2,'Issue',4,'','2012-09-04 13:29:28'),(14,3,'Issue',4,'','2012-09-04 13:30:05'),(15,6,'Issue',5,'','2012-09-04 13:33:30'),(16,9,'Issue',4,'','2012-09-04 13:39:07'),(17,9,'Issue',4,'','2012-09-04 13:39:52'),(18,12,'Issue',4,'','2012-09-04 13:44:04'),(19,14,'Issue',5,'','2012-09-04 13:44:25'),(20,10,'Issue',5,'','2012-09-04 13:44:45'),(21,20,'Issue',5,'','2012-09-04 13:51:48'),(22,26,'Issue',5,'','2012-09-04 13:54:42'),(23,27,'Issue',4,'','2012-09-04 13:55:41'),(24,16,'Issue',5,'','2012-09-04 13:58:44'),(25,17,'Issue',5,'','2012-09-04 13:59:28'),(26,18,'Issue',5,'','2012-09-04 14:00:01'),(27,25,'Issue',4,'','2012-09-04 14:00:35'),(28,29,'Issue',4,'','2012-09-04 14:19:25'),(29,20,'Issue',5,'','2012-09-04 14:25:16'),(30,34,'Issue',5,'','2012-09-04 14:30:34'),(31,37,'Issue',5,'','2012-09-04 14:33:21'),(32,40,'Issue',5,'','2012-09-04 15:16:59'),(33,41,'Issue',6,'','2012-09-04 15:41:23'),(34,41,'Issue',6,'','2012-09-04 15:45:14'),(35,42,'Issue',6,'','2012-09-04 15:46:18'),(36,45,'Issue',6,'','2012-09-04 16:02:48'),(37,44,'Issue',6,'','2012-09-04 16:03:24'),(38,46,'Issue',6,'','2012-09-04 16:04:26'),(39,42,'Issue',6,'','2012-09-04 16:04:56'),(40,43,'Issue',6,'','2012-09-04 16:05:18'),(41,41,'Issue',6,'','2012-09-04 16:08:09'),(42,42,'Issue',6,'','2012-09-04 16:08:57'),(43,43,'Issue',8,'','2012-09-04 16:32:27'),(44,41,'Issue',8,'','2012-09-04 16:34:10'),(45,42,'Issue',8,'','2012-09-04 16:34:21'),(46,44,'Issue',8,'','2012-09-04 16:34:28'),(47,45,'Issue',8,'','2012-09-04 16:34:38'),(48,46,'Issue',8,'','2012-09-04 16:34:45'),(49,47,'Issue',8,'','2012-09-04 16:34:54'),(50,38,'Issue',5,'','2012-09-04 17:03:55'),(51,25,'Issue',5,'','2012-09-04 17:21:20'),(52,30,'Issue',4,'','2012-09-04 23:16:06'),(54,37,'Issue',5,'','2012-09-05 12:15:48'),(55,51,'Issue',4,'','2012-09-05 14:22:46'),(56,50,'Issue',5,'','2012-09-05 14:46:58'),(57,49,'Issue',8,'','2012-09-06 17:26:21'),(58,50,'Issue',8,'','2012-09-06 17:34:34'),(59,50,'Issue',8,'','2012-09-06 17:38:00'),(60,25,'Issue',5,'','2012-09-07 13:20:45'),(61,33,'Issue',5,'','2012-09-07 14:41:52'),(62,53,'Issue',8,'','2012-09-09 17:08:37'),(64,38,'Issue',5,'','2012-09-09 17:09:24'),(65,37,'Issue',8,'','2012-09-09 17:09:52'),(66,36,'Issue',8,'','2012-09-09 17:14:24'),(68,62,'Issue',5,'','2012-09-11 16:06:32'),(69,29,'Issue',5,'','2012-09-11 16:07:17'),(70,30,'Issue',4,'','2012-09-11 18:03:56'),(71,11,'Issue',4,'','2012-09-11 18:25:08'),(72,13,'Issue',4,'','2012-09-11 18:39:14'),(73,12,'Issue',4,'','2012-09-11 18:40:17'),(74,12,'Issue',4,'','2012-09-11 18:40:31'),(75,15,'Issue',4,'','2012-09-11 19:45:51'),(76,15,'Issue',4,'','2012-09-11 19:46:07'),(77,27,'Issue',4,'','2012-09-11 19:52:36'),(78,64,'Issue',4,'https://docs.google.com/document/d/19-0NDHCtV08wazC1_-6BhRUZOXcL4Sj1HxQahOvPLwY/edit','2012-09-11 20:12:30'),(79,60,'Issue',4,'','2012-09-11 20:16:32'),(80,30,'Issue',4,'','2012-09-11 20:41:38'),(81,14,'Issue',4,'','2012-09-12 12:52:34'),(82,13,'Issue',4,'','2012-09-12 12:53:57'),(83,15,'Issue',4,'','2012-09-12 12:54:14'),(84,17,'Issue',4,'','2012-09-12 12:55:44'),(85,18,'Issue',4,'','2012-09-12 12:55:56'),(86,22,'Issue',4,'','2012-09-12 12:56:09'),(87,20,'Issue',4,'','2012-09-12 12:56:22'),(88,16,'Issue',4,'','2012-09-12 12:56:59'),(89,11,'Issue',4,'','2012-09-12 12:57:12'),(90,9,'Issue',4,'','2012-09-12 12:57:29'),(91,7,'Issue',4,'','2012-09-12 12:57:40'),(92,64,'Issue',4,'','2012-09-12 12:58:54'),(93,67,'Issue',5,'','2012-09-12 13:59:39'),(94,70,'Issue',5,'','2012-09-12 14:01:17'),(95,69,'Issue',5,'','2012-09-12 14:02:32'),(96,71,'Issue',4,'','2012-09-12 15:16:18'),(97,70,'Issue',4,'','2012-09-12 15:17:36'),(98,69,'Issue',4,'','2012-09-12 15:17:54'),(99,49,'Issue',4,'','2012-09-12 15:18:20'),(100,50,'Issue',4,'','2012-09-12 15:18:39'),(101,52,'Issue',4,'','2012-09-12 15:18:54'),(102,65,'Issue',4,'','2012-09-12 15:22:17'),(103,67,'Issue',4,'','2012-09-12 15:22:45'),(104,66,'Issue',7,'','2012-09-12 21:52:49'),(105,72,'Issue',5,'','2012-09-13 15:33:06'),(106,75,'Issue',4,'','2012-09-13 15:45:08'),(107,10,'Issue',4,'','2012-09-13 15:53:56'),(108,76,'Issue',4,'','2012-09-13 15:57:31'),(109,21,'Issue',4,'','2012-09-13 15:57:46'),(110,23,'Issue',4,'','2012-09-13 15:58:01'),(111,24,'Issue',4,'','2012-09-13 15:58:16'),(112,25,'Issue',4,'','2012-09-13 15:58:30'),(113,33,'Issue',4,'','2012-09-13 15:58:52'),(114,61,'Issue',4,'','2012-09-13 15:59:21'),(115,76,'Issue',4,'','2012-09-13 16:01:19'),(116,72,'Issue',4,'','2012-09-13 16:03:06'),(117,76,'Issue',4,'','2012-09-13 16:06:24'),(118,6,'Issue',4,'','2012-09-13 16:06:54'),(119,40,'Issue',4,'','2012-09-13 16:07:17'),(120,62,'Issue',4,'','2012-09-13 16:07:30'),(121,19,'Issue',4,'','2012-09-13 16:07:44'),(122,29,'Issue',4,'','2012-09-13 16:07:59'),(123,76,'Issue',4,'https://docs.google.com/document/d/1kEp8qQPBqCrbRD1k26XHDi-15lur74Xpi59tZ-_0Yjo/edit','2012-09-13 16:11:36'),(124,40,'Issue',4,'','2012-09-13 16:14:11'),(125,34,'Issue',4,'Please use date format YYYY-MM-DD (like 2012-08-30). Thank you.','2012-09-13 16:17:02'),(126,67,'Issue',4,'','2012-09-13 16:22:58'),(127,71,'Issue',4,'','2012-09-13 16:24:29'),(128,67,'Issue',8,'','2012-09-13 16:26:44'),(129,68,'Issue',4,'','2012-09-13 16:27:20'),(130,49,'Issue',4,'','2012-09-13 16:37:03'),(131,52,'Issue',4,'','2012-09-13 16:37:19'),(132,44,'Issue',4,'','2012-09-13 16:37:51'),(133,42,'Issue',4,'','2012-09-13 16:38:34'),(134,41,'Issue',4,'','2012-09-13 16:39:25'),(135,46,'Issue',4,'','2012-09-13 16:39:53'),(136,43,'Issue',4,'P15','2012-09-13 16:40:27'),(137,67,'Issue',4,'','2012-09-13 16:40:42'),(138,45,'Issue',4,'','2012-09-13 16:41:19'),(139,54,'Issue',4,'','2012-09-13 16:41:50'),(140,36,'Issue',4,'','2012-09-13 16:42:09'),(141,53,'Issue',4,'','2012-09-13 16:42:29'),(143,38,'Issue',4,'','2012-09-13 16:44:31'),(144,37,'Issue',4,'','2012-09-13 16:45:40'),(145,37,'Issue',4,'','2012-09-13 16:45:54'),(146,41,'Issue',4,'','2012-09-13 16:47:04'),(147,42,'Issue',4,'','2012-09-13 16:47:17'),(148,36,'Issue',4,'','2012-09-13 16:47:48'),(149,44,'Issue',4,'','2012-09-13 16:48:15'),(150,49,'Issue',4,'','2012-09-13 16:48:33'),(151,46,'Issue',4,'','2012-09-13 16:48:38'),(152,52,'Issue',4,'','2012-09-13 16:48:57'),(153,68,'Issue',4,'','2012-09-13 16:49:10'),(154,81,'Issue',4,'Use advisor weekly report from 2012-09-13 and update it.','2012-09-13 16:52:34'),(155,83,'Issue',4,'','2012-09-13 16:53:33'),(156,95,'Issue',4,'','2012-09-13 17:04:14'),(157,96,'Issue',4,'','2012-09-13 17:07:50'),(158,101,'Issue',4,'','2012-09-13 17:30:04'),(159,102,'Issue',4,'','2012-09-13 17:30:43'),(160,106,'Issue',4,'','2012-09-13 17:30:51'),(161,105,'Issue',4,'','2012-09-13 17:31:08'),(162,109,'Issue',4,'','2012-09-13 17:31:16'),(163,113,'Issue',4,'','2012-09-13 17:31:22'),(164,80,'Issue',4,'','2012-09-13 17:49:16'),(165,81,'Issue',4,'','2012-09-13 17:49:34'),(166,82,'Issue',4,'','2012-09-13 17:50:00'),(167,81,'Issue',4,'','2012-09-13 17:50:25'),(168,82,'Issue',4,'','2012-09-13 17:50:39'),(169,83,'Issue',4,'','2012-09-13 17:50:54'),(170,84,'Issue',4,'','2012-09-13 17:53:01'),(171,73,'Issue',5,'','2012-09-13 18:28:13'),(172,73,'Issue',5,'','2012-09-14 13:49:56'),(173,128,'Issue',4,'','2012-09-17 18:08:51'),(174,79,'Issue',4,'','2012-09-17 18:09:16'),(175,75,'Issue',4,'just need to check, if it is ok','2012-09-17 18:11:17'),(176,130,'Issue',6,'','2012-09-18 13:53:12'),(177,130,'Issue',6,'','2012-09-18 13:53:22'),(178,29,'Issue',5,'','2012-09-19 12:11:05'),(179,51,'Issue',5,'','2012-09-19 12:11:23'),(180,72,'Issue',5,'','2012-09-19 12:11:25'),(181,73,'Issue',5,'','2012-09-19 12:11:28'),(182,74,'Issue',5,'','2012-09-19 12:11:30'),(183,74,'Issue',5,'','2012-09-19 12:11:32'),(184,81,'Issue',5,'','2012-09-19 12:11:38'),(185,134,'Issue',5,'','2012-09-19 12:11:59'),(186,133,'Issue',5,'','2012-09-19 12:12:13'),(187,135,'Issue',5,'','2012-09-19 13:12:38'),(188,136,'Issue',5,'','2012-09-19 14:32:25'),(189,137,'Issue',4,'','2012-09-20 13:41:54'),(190,138,'Issue',4,'','2012-09-20 13:42:32'),(191,138,'Issue',4,'','2012-09-20 13:42:47'),(192,138,'Issue',4,'','2012-09-20 13:45:49'),(193,140,'Issue',4,'','2012-09-20 13:46:46'),(194,136,'Issue',4,'','2012-09-20 13:47:02'),(195,79,'Issue',4,'','2012-09-20 13:47:17'),(196,80,'Issue',4,'20. 9., 19:15, Skype','2012-09-20 13:48:06'),(197,82,'Issue',4,'','2012-09-20 13:48:36'),(198,82,'Issue',4,'','2012-09-20 13:48:46'),(199,79,'Issue',4,'','2012-09-20 13:49:51'),(200,83,'Issue',4,'','2012-09-20 13:50:08'),(201,141,'Issue',4,'','2012-09-20 13:51:52'),(202,85,'Issue',4,'','2012-09-20 13:54:21'),(203,128,'Issue',8,'Meeting cancelled','2012-09-21 15:42:29'),(204,130,'Issue',6,'','2012-09-21 16:43:05'),(205,130,'Issue',6,'','2012-09-21 16:44:21'),(206,79,'Issue',5,'','2012-09-24 17:43:39'),(207,79,'Issue',5,'','2012-09-24 17:44:36'),(208,79,'Issue',5,'','2012-09-24 17:45:24'),(209,81,'Issue',5,'','2012-09-24 17:46:05'),(210,147,'Issue',4,'','2012-09-26 10:10:30'),(211,81,'Issue',4,'','2012-09-26 10:11:11'),(212,83,'Issue',4,'','2012-09-26 10:13:31'),(213,84,'Issue',4,'','2012-09-26 10:13:47'),(214,128,'Issue',4,'','2012-09-26 10:15:09'),(217,148,'Issue',4,'','2012-09-26 10:20:52'),(218,153,'Issue',5,'','2012-09-26 10:37:05'),(219,154,'Issue',5,'','2012-09-26 10:37:24'),(220,156,'Issue',5,'','2012-09-26 10:37:45'),(221,157,'Issue',5,'','2012-09-26 10:38:01'),(222,159,'Issue',4,'','2012-09-26 10:45:58'),(223,161,'Issue',5,'','2012-09-26 10:45:59'),(224,164,'Issue',5,'','2012-09-26 10:46:18'),(225,165,'Issue',5,'','2012-09-26 10:46:53'),(226,168,'Issue',5,'','2012-09-26 10:47:14'),(227,170,'Issue',5,'','2012-09-26 10:47:35'),(228,180,'Issue',4,'','2012-09-26 10:53:30'),(229,183,'Issue',4,'','2012-09-26 10:56:15'),(230,180,'Issue',4,'','2012-09-26 10:56:54'),(231,181,'Issue',4,'','2012-09-26 10:57:19'),(232,182,'Issue',4,'','2012-09-26 10:57:52'),(233,183,'Issue',4,'','2012-09-26 10:59:26'),(234,184,'Issue',4,'','2012-09-26 11:00:53'),(235,185,'Issue',5,'','2012-09-28 10:10:52'),(236,187,'Issue',5,'','2012-09-28 10:57:38'),(237,86,'Issue',4,'canceled','2012-10-03 11:38:20'),(238,141,'Issue',4,'','2012-10-03 11:38:56'),(239,142,'Issue',4,'','2012-10-03 11:39:07'),(240,143,'Issue',4,'','2012-10-03 11:39:19'),(241,145,'Issue',4,'','2012-10-03 11:39:35'),(242,154,'Issue',5,'','2012-10-03 11:43:41'),(243,186,'Issue',5,'','2012-10-03 11:43:45'),(244,186,'Issue',5,'','2012-10-03 11:43:46'),(245,153,'Issue',4,'','2012-10-03 12:08:17'),(246,153,'Issue',4,'','2012-10-03 12:09:13'),(247,191,'Issue',4,'','2012-10-03 12:47:52'),(248,156,'Issue',4,'','2012-10-03 12:48:20'),(249,157,'Issue',4,'','2012-10-03 12:48:27'),(250,180,'Issue',4,'','2012-10-03 12:51:23'),(251,181,'Issue',4,'','2012-10-03 12:51:37'),(252,182,'Issue',4,'','2012-10-03 12:52:00'),(253,187,'Issue',4,'','2012-10-03 12:52:10'),(254,188,'Issue',4,'','2012-10-03 12:52:20'),(255,184,'Issue',4,'','2012-10-03 12:52:55'),(256,183,'Issue',4,'','2012-10-03 12:53:16'),(257,185,'Issue',4,'','2012-10-03 12:53:27'),(258,189,'Issue',4,'','2012-10-03 12:53:37'),(259,180,'Issue',4,'','2012-10-03 12:55:29'),(260,153,'Issue',4,'','2012-10-03 12:55:46'),(261,181,'Issue',4,'','2012-10-03 12:56:38'),(262,182,'Issue',4,'','2012-10-03 12:56:45'),(263,184,'Issue',4,'','2012-10-03 12:56:52'),(264,187,'Issue',4,'','2012-10-03 12:57:01'),(265,188,'Issue',4,'','2012-10-03 12:57:20'),(266,180,'Issue',4,'','2012-10-03 12:57:58'),(267,181,'Issue',4,'','2012-10-03 12:58:05'),(268,182,'Issue',4,'','2012-10-03 12:58:12'),(269,184,'Issue',4,'','2012-10-03 12:58:19'),(270,187,'Issue',4,'','2012-10-03 12:58:25'),(271,188,'Issue',4,'','2012-10-03 12:58:34'),(272,153,'Issue',4,'','2012-10-03 12:58:45'),(273,157,'Issue',6,'','2012-10-03 23:44:13'),(274,160,'Issue',6,'','2012-10-03 23:46:34'),(275,193,'Issue',5,'','2012-10-08 12:52:20'),(276,165,'Issue',5,'','2012-10-10 10:47:33'),(277,177,'Issue',5,'','2012-10-10 10:49:18'),(278,174,'Issue',5,'','2012-10-10 10:49:56'),(279,174,'Issue',5,'','2012-10-10 10:50:08'),(280,144,'Issue',7,'','2012-10-10 11:36:53'),(281,243,'Issue',7,'','2012-10-10 11:38:16'),(282,144,'Issue',7,'','2012-10-10 11:38:36'),(283,208,'Issue',4,'','2012-10-10 13:20:58'),(284,209,'Issue',4,'','2012-10-10 13:21:10'),(285,165,'Issue',4,'As a user, I want the actions in graphical UI to print corresponding commands to console.\r\n','2012-10-11 16:54:32'),(286,245,'Issue',5,'','2012-10-12 11:07:56'),(287,248,'Issue',7,'','2012-10-13 22:59:48'),(288,248,'Issue',5,'','2012-10-14 18:44:29'),(289,212,'Issue',5,'','2012-10-16 12:36:08'),(290,214,'Issue',5,'','2012-10-16 12:36:21'),(291,204,'Issue',5,'','2012-10-16 12:38:25'),(292,165,'Issue',5,'','2012-10-16 12:38:44'),(293,202,'Issue',5,'','2012-10-16 12:39:00'),(294,220,'Issue',7,'','2012-10-16 12:39:28'),(295,219,'Issue',7,'','2012-10-16 12:40:17'),(296,218,'Issue',7,'','2012-10-16 12:44:51'),(297,219,'Issue',7,'there might be a glitch, but i havent managed to reproduce it','2012-10-16 12:45:41'),(298,217,'Issue',7,'','2012-10-16 12:46:44'),(299,219,'Issue',7,'','2012-10-16 12:47:03'),(300,216,'Issue',7,'','2012-10-16 12:47:37'),(301,215,'Issue',7,'','2012-10-16 12:48:01'),(302,215,'Issue',7,'','2012-10-16 12:49:31'),(303,223,'Issue',7,'','2012-10-16 12:50:49'),(304,221,'Issue',7,'','2012-10-16 12:51:46'),(305,249,'Issue',5,'','2012-10-16 15:24:36'),(306,237,'Issue',6,'','2012-10-16 15:26:00'),(307,238,'Issue',6,'','2012-10-16 16:41:56'),(308,239,'Issue',6,'','2012-10-16 16:43:11'),(309,205,'Issue',5,'','2012-10-17 11:52:00'),(310,206,'Issue',5,'','2012-10-17 11:52:28'),(311,207,'Issue',5,'','2012-10-17 11:52:45'),(312,250,'Issue',5,'','2012-10-17 12:00:45'),(313,208,'Issue',4,'','2012-10-17 13:25:22'),(314,209,'Issue',4,'','2012-10-17 13:26:53'),(315,211,'Issue',4,'','2012-10-17 13:28:09'),(316,210,'Issue',4,'','2012-10-17 13:28:22'),(317,154,'Issue',4,'','2012-10-17 13:29:28'),(318,2,'Issue',4,'','2012-10-17 13:35:17'),(319,196,'Issue',8,'','2012-10-17 13:39:36'),(320,79,'Issue',4,'','2012-10-17 13:40:02'),(321,87,'Issue',4,'','2012-10-17 13:40:20'),(322,194,'Issue',4,'','2012-10-17 13:40:34'),(323,192,'Issue',4,'','2012-10-17 13:40:50'),(324,197,'Issue',4,'','2012-10-17 13:42:16'),(325,244,'Issue',4,'','2012-10-17 13:42:55'),(326,88,'Issue',4,'meeting canceled','2012-10-17 13:43:17'),(327,88,'Issue',4,'','2012-10-17 13:43:23'),(328,68,'Issue',4,'','2012-10-17 13:43:41'),(329,68,'Issue',4,'','2012-10-17 13:43:46'),(330,198,'Issue',4,'','2012-10-17 13:44:11'),(331,199,'Issue',4,'','2012-10-17 13:44:43'),(332,233,'Issue',6,'','2012-10-17 14:06:13'),(333,234,'Issue',6,'','2012-10-17 14:06:56'),(334,252,'Issue',4,'','2012-10-17 19:27:59'),(335,89,'Issue',4,'','2012-10-17 19:28:40'),(336,89,'Issue',8,'','2012-10-18 10:12:51'),(337,214,'Issue',5,'','2012-10-22 11:22:58'),(338,210,'Issue',5,'','2012-10-22 11:23:59'),(339,221,'Issue',5,'','2012-10-22 11:24:59'),(340,229,'Issue',5,'','2012-10-22 11:25:58'),(341,235,'Issue',5,'','2012-10-22 11:26:55'),(342,240,'Issue',5,'','2012-10-22 11:27:50'),(343,8,'Issue',4,NULL,'2012-09-13 15:59:20'),(344,9,'Issue',4,NULL,'2012-09-12 12:57:28'),(345,82,'Issue',4,NULL,'2012-09-20 13:48:45'),(346,96,'Issue',4,'','2012-10-23 01:30:18'),(347,180,'Issue',4,NULL,'2012-10-23 08:44:36'),(348,181,'Issue',4,NULL,'2012-10-23 08:44:36'),(349,182,'Issue',4,NULL,'2012-10-23 08:44:36'),(350,184,'Issue',4,NULL,'2012-10-23 08:44:36'),(351,188,'Issue',4,NULL,'2012-10-23 08:44:36'),(352,187,'Issue',4,'','2012-10-23 08:44:38'),(353,97,'Issue',4,'','2012-10-23 13:08:34'),(354,101,'Issue',4,NULL,'2012-10-23 13:08:34'),(355,102,'Issue',4,NULL,'2012-10-23 13:08:34'),(356,103,'Issue',4,NULL,'2012-10-23 13:08:34'),(357,104,'Issue',4,NULL,'2012-10-23 13:08:34'),(358,98,'Issue',4,'','2012-10-23 13:08:38'),(359,105,'Issue',4,NULL,'2012-10-23 13:08:38'),(360,106,'Issue',4,NULL,'2012-10-23 13:08:38'),(361,107,'Issue',4,NULL,'2012-10-23 13:08:38'),(362,108,'Issue',4,NULL,'2012-10-23 13:08:38'),(363,242,'Issue',4,NULL,'2012-10-23 13:08:38'),(364,64,'Issue',4,'','2012-10-23 13:17:00'),(365,64,'Issue',4,'','2012-10-23 13:18:02'),(366,261,'Issue',4,'','2012-10-23 13:21:10'),(367,265,'Issue',5,'','2012-10-24 12:43:37'),(368,272,'Issue',4,'','2012-10-25 12:29:10'),(369,268,'Issue',4,'','2012-10-25 12:30:13'),(370,268,'Issue',4,'','2012-10-25 12:32:20'),(371,273,'Issue',4,'1. team structure\r\n2. project plan (not a part of tool selection)','2012-10-25 13:01:50'),(372,273,'Issue',6,'','2012-10-26 09:13:34'),(373,271,'Issue',6,'','2012-10-26 09:14:17'),(374,272,'Issue',6,'','2012-10-26 09:16:35'),(375,275,'Issue',5,'','2012-10-26 09:51:42'),(376,275,'Issue',5,'','2012-10-26 09:57:22'),(377,274,'Issue',6,'','2012-10-26 10:04:45'),(378,229,'Issue',5,'','2012-10-29 10:35:59'),(379,205,'Issue',5,'','2012-10-29 10:42:57'),(380,235,'Issue',5,'','2012-10-29 10:43:30'),(381,272,'Issue',5,'','2012-10-30 10:14:12'),(382,272,'Issue',5,'','2012-10-30 10:24:38'),(383,281,'Issue',5,'','2012-10-31 11:49:00'),(384,288,'Issue',7,'','2012-10-31 12:21:38'),(385,286,'Issue',7,'','2012-10-31 12:21:57'),(386,267,'Issue',6,'','2012-10-31 16:02:37'),(387,281,'Issue',5,'','2012-10-31 19:05:03'),(388,276,'Issue',6,'','2012-10-31 19:38:33'),(389,269,'Issue',6,'','2012-10-31 20:28:21'),(390,289,'Issue',8,'','2012-11-01 10:19:21');
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_roles`
--

LOCK TABLES `member_roles` WRITE;
/*!40000 ALTER TABLE `member_roles` DISABLE KEYS */;
INSERT INTO `member_roles` VALUES (1,1,3,NULL),(2,1,4,NULL),(3,1,5,NULL),(4,2,4,NULL),(5,2,5,NULL),(6,3,4,NULL),(7,3,5,NULL),(8,4,4,NULL),(9,4,5,NULL),(10,5,4,NULL),(11,5,5,NULL),(15,3,3,NULL),(16,5,3,NULL),(17,2,3,NULL),(18,4,3,NULL);
/*!40000 ALTER TABLE `member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,4,1,'2012-09-04 01:49:33',0),(2,7,1,'2012-09-04 13:02:57',0),(3,5,1,'2012-09-04 13:03:02',0),(4,6,1,'2012-09-04 13:03:08',0),(5,8,1,'2012-09-04 16:08:13',0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_associations`
--

LOCK TABLES `open_id_authentication_associations` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_nonces`
--

LOCK TABLES `open_id_authentication_nonces` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_nonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'NTNU Netlight Project','','',1,NULL,'2012-09-04 01:24:05','2012-09-04 01:24:05','ntnu-netlight-project',1,1,2);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_trackers`
--

LOCK TABLES `projects_trackers` WRITE;
/*!40000 ALTER TABLE `projects_trackers` DISABLE KEYS */;
INSERT INTO `projects_trackers` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `projects_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_journals`
--

DROP TABLE IF EXISTS `rb_journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rb_journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_id` int(11) NOT NULL,
  `property` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_rb_journals_on_issue_id` (`issue_id`),
  KEY `index_rb_journals_on_property` (`property`),
  KEY `index_rb_journals_on_timestamp` (`timestamp`),
  KEY `index_rb_journals_on_value` (`value`),
  KEY `index_rb_journals_on_issue_id_and_property_and_value` (`issue_id`,`property`,`value`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_journals`
--

LOCK TABLES `rb_journals` WRITE;
/*!40000 ALTER TABLE `rb_journals` DISABLE KEYS */;
INSERT INTO `rb_journals` VALUES (4,180,'fixed_version_id','2012-10-23 08:44:36','1'),(5,181,'fixed_version_id','2012-10-23 08:44:36','1'),(6,182,'fixed_version_id','2012-10-23 08:44:36','1'),(7,184,'fixed_version_id','2012-10-23 08:44:36','1'),(8,188,'fixed_version_id','2012-10-23 08:44:36','1'),(9,187,'fixed_version_id','2012-10-23 08:44:38','1'),(10,187,'remaining_hours','2012-10-23 08:44:38','2.0'),(11,97,'fixed_version_id','2012-10-23 13:08:34','1'),(12,101,'fixed_version_id','2012-10-23 13:08:34','1'),(13,102,'fixed_version_id','2012-10-23 13:08:34','1'),(14,103,'fixed_version_id','2012-10-23 13:08:34','1'),(15,104,'fixed_version_id','2012-10-23 13:08:34','1'),(16,98,'fixed_version_id','2012-10-23 13:08:38','2'),(17,105,'fixed_version_id','2012-10-23 13:08:38','2'),(18,106,'fixed_version_id','2012-10-23 13:08:38','2'),(19,107,'fixed_version_id','2012-10-23 13:08:38','2'),(20,108,'fixed_version_id','2012-10-23 13:08:38','2'),(21,242,'fixed_version_id','2012-10-23 13:08:38','2'),(22,257,'story_points','2012-10-23 13:16:35',NULL),(23,257,'fixed_version_id','2012-10-23 13:16:35','1'),(24,257,'status_open','2012-10-23 13:16:35','true'),(25,257,'status_success','2012-10-23 13:16:35',NULL),(26,257,'estimated_hours','2012-10-23 13:16:35',NULL),(27,257,'remaining_hours','2012-10-23 13:16:35',NULL),(28,64,'fixed_version_id','2012-10-23 13:17:00','1'),(29,64,'remaining_hours','2012-10-23 13:17:00','0.0'),(30,258,'story_points','2012-10-23 13:17:53',NULL),(31,258,'fixed_version_id','2012-10-23 13:17:53','2'),(32,258,'status_open','2012-10-23 13:17:53',NULL),(33,258,'status_success','2012-10-23 13:17:53','true'),(34,258,'estimated_hours','2012-10-23 13:17:53','5.0'),(35,258,'remaining_hours','2012-10-23 13:17:53','0.0'),(36,64,'fixed_version_id','2012-10-23 13:18:02',NULL),(37,259,'story_points','2012-10-23 13:20:37',NULL),(38,259,'fixed_version_id','2012-10-23 13:20:37','3'),(39,259,'status_open','2012-10-23 13:20:37','true'),(40,259,'status_success','2012-10-23 13:20:37',NULL),(41,259,'estimated_hours','2012-10-23 13:20:37',NULL),(42,259,'remaining_hours','2012-10-23 13:20:37','0.0'),(43,260,'story_points','2012-10-23 13:20:49',NULL),(44,260,'fixed_version_id','2012-10-23 13:20:49','3'),(45,260,'status_open','2012-10-23 13:20:49','true'),(46,260,'status_success','2012-10-23 13:20:49',NULL),(47,260,'estimated_hours','2012-10-23 13:20:49',NULL),(48,260,'remaining_hours','2012-10-23 13:20:49','0.0'),(49,261,'story_points','2012-10-23 13:21:05',NULL),(50,261,'fixed_version_id','2012-10-23 13:21:05','3'),(51,261,'status_open','2012-10-23 13:21:05','true'),(52,261,'status_success','2012-10-23 13:21:05',NULL),(53,261,'estimated_hours','2012-10-23 13:21:05',NULL),(54,261,'remaining_hours','2012-10-23 13:21:05','0.0'),(55,261,'status_open','2012-10-23 13:21:10',NULL),(56,261,'status_success','2012-10-23 13:21:10',NULL),(57,261,'story_points','2012-10-23 13:21:10','3.0'),(58,262,'story_points','2012-10-23 13:22:28',NULL),(59,262,'fixed_version_id','2012-10-23 13:22:28','3'),(60,262,'status_open','2012-10-23 13:22:28','true'),(61,262,'status_success','2012-10-23 13:22:28',NULL),(62,262,'estimated_hours','2012-10-23 13:22:28',NULL),(63,262,'remaining_hours','2012-10-23 13:22:28',NULL),(64,263,'story_points','2012-10-23 16:27:57',NULL),(65,263,'fixed_version_id','2012-10-23 16:27:57',NULL),(66,263,'status_open','2012-10-23 16:27:57','true'),(67,263,'status_success','2012-10-23 16:27:57',NULL),(68,263,'estimated_hours','2012-10-23 16:27:57',NULL),(69,263,'remaining_hours','2012-10-23 16:27:57','0.0'),(70,264,'story_points','2012-10-24 09:16:22',NULL),(71,264,'fixed_version_id','2012-10-24 09:16:22','3'),(72,264,'status_open','2012-10-24 09:16:22','true'),(73,264,'status_success','2012-10-24 09:16:22',NULL),(74,264,'estimated_hours','2012-10-24 09:16:22','10.0'),(75,264,'remaining_hours','2012-10-24 09:16:22','0.0'),(76,265,'story_points','2012-10-24 10:56:27',NULL),(77,265,'fixed_version_id','2012-10-24 10:56:27','3'),(78,265,'status_open','2012-10-24 10:56:27','true'),(79,265,'status_success','2012-10-24 10:56:27',NULL),(80,265,'estimated_hours','2012-10-24 10:56:27',NULL),(81,265,'remaining_hours','2012-10-24 10:56:27','0.0'),(82,265,'estimated_hours','2012-10-24 12:43:37','15.0'),(83,266,'story_points','2012-10-24 12:50:21',NULL),(84,266,'fixed_version_id','2012-10-24 12:50:21','3'),(85,266,'status_open','2012-10-24 12:50:21','true'),(86,266,'status_success','2012-10-24 12:50:21',NULL),(87,266,'estimated_hours','2012-10-24 12:50:21','1.0'),(88,266,'remaining_hours','2012-10-24 12:50:21','1.0'),(89,267,'story_points','2012-10-24 12:51:05',NULL),(90,267,'fixed_version_id','2012-10-24 12:51:05','3'),(91,267,'status_open','2012-10-24 12:51:05','true'),(92,267,'status_success','2012-10-24 12:51:05',NULL),(93,267,'estimated_hours','2012-10-24 12:51:05','4.0'),(94,267,'remaining_hours','2012-10-24 12:51:05','4.0'),(95,268,'story_points','2012-10-25 11:36:33',NULL),(96,268,'fixed_version_id','2012-10-25 11:36:33',NULL),(97,268,'status_open','2012-10-25 11:36:33','true'),(98,268,'status_success','2012-10-25 11:36:33',NULL),(99,268,'estimated_hours','2012-10-25 11:36:33','200.0'),(100,268,'remaining_hours','2012-10-25 11:36:33','0.0'),(101,269,'story_points','2012-10-25 11:39:43',NULL),(102,269,'fixed_version_id','2012-10-25 11:39:43',NULL),(103,269,'status_open','2012-10-25 11:39:43','true'),(104,269,'status_success','2012-10-25 11:39:43',NULL),(105,269,'estimated_hours','2012-10-25 11:39:43','4.0'),(106,269,'remaining_hours','2012-10-25 11:39:43','4.0'),(107,270,'story_points','2012-10-25 11:41:26',NULL),(108,270,'fixed_version_id','2012-10-25 11:41:26',NULL),(109,270,'status_open','2012-10-25 11:41:26','true'),(110,270,'status_success','2012-10-25 11:41:26',NULL),(111,270,'estimated_hours','2012-10-25 11:41:26','2.0'),(112,270,'remaining_hours','2012-10-25 11:41:26','2.0'),(113,271,'story_points','2012-10-25 12:16:54',NULL),(114,271,'fixed_version_id','2012-10-25 12:16:54',NULL),(115,271,'status_open','2012-10-25 12:16:54','true'),(116,271,'status_success','2012-10-25 12:16:54',NULL),(117,271,'estimated_hours','2012-10-25 12:16:54','2.0'),(118,271,'remaining_hours','2012-10-25 12:16:54','2.0'),(119,272,'story_points','2012-10-25 12:17:44',NULL),(120,272,'fixed_version_id','2012-10-25 12:17:44',NULL),(121,272,'status_open','2012-10-25 12:17:44','true'),(122,272,'status_success','2012-10-25 12:17:44',NULL),(123,272,'estimated_hours','2012-10-25 12:17:44','5.0'),(124,272,'remaining_hours','2012-10-25 12:17:44','5.0'),(125,273,'story_points','2012-10-25 12:18:12',NULL),(126,273,'fixed_version_id','2012-10-25 12:18:12',NULL),(127,273,'status_open','2012-10-25 12:18:12','true'),(128,273,'status_success','2012-10-25 12:18:12',NULL),(129,273,'estimated_hours','2012-10-25 12:18:12',NULL),(130,273,'remaining_hours','2012-10-25 12:18:12',NULL),(131,274,'story_points','2012-10-25 12:18:35',NULL),(132,274,'fixed_version_id','2012-10-25 12:18:35',NULL),(133,274,'status_open','2012-10-25 12:18:35','true'),(134,274,'status_success','2012-10-25 12:18:35',NULL),(135,274,'estimated_hours','2012-10-25 12:18:35',NULL),(136,274,'remaining_hours','2012-10-25 12:18:35',NULL),(137,275,'story_points','2012-10-25 12:19:07',NULL),(138,275,'fixed_version_id','2012-10-25 12:19:07',NULL),(139,275,'status_open','2012-10-25 12:19:07','true'),(140,275,'status_success','2012-10-25 12:19:07',NULL),(141,275,'estimated_hours','2012-10-25 12:19:07',NULL),(142,275,'remaining_hours','2012-10-25 12:19:07',NULL),(143,276,'story_points','2012-10-25 12:24:02',NULL),(144,276,'fixed_version_id','2012-10-25 12:24:02',NULL),(145,276,'status_open','2012-10-25 12:24:02','true'),(146,276,'status_success','2012-10-25 12:24:02',NULL),(147,276,'estimated_hours','2012-10-25 12:24:02',NULL),(148,276,'remaining_hours','2012-10-25 12:24:02',NULL),(149,277,'story_points','2012-10-25 12:25:23',NULL),(150,277,'fixed_version_id','2012-10-25 12:25:23',NULL),(151,277,'status_open','2012-10-25 12:25:23','true'),(152,277,'status_success','2012-10-25 12:25:23',NULL),(153,277,'estimated_hours','2012-10-25 12:25:23','3.0'),(154,277,'remaining_hours','2012-10-25 12:25:23','3.0'),(155,278,'story_points','2012-10-25 12:26:17',NULL),(156,278,'fixed_version_id','2012-10-25 12:26:17',NULL),(157,278,'status_open','2012-10-25 12:26:17','true'),(158,278,'status_success','2012-10-25 12:26:17',NULL),(159,278,'estimated_hours','2012-10-25 12:26:17',NULL),(160,278,'remaining_hours','2012-10-25 12:26:17',NULL),(161,279,'story_points','2012-10-25 12:27:07',NULL),(162,279,'fixed_version_id','2012-10-25 12:27:07',NULL),(163,279,'status_open','2012-10-25 12:27:07','true'),(164,279,'status_success','2012-10-25 12:27:07',NULL),(165,279,'estimated_hours','2012-10-25 12:27:07',NULL),(166,279,'remaining_hours','2012-10-25 12:27:07',NULL),(167,280,'story_points','2012-10-25 12:28:41',NULL),(168,280,'fixed_version_id','2012-10-25 12:28:41',NULL),(169,280,'status_open','2012-10-25 12:28:41','true'),(170,280,'status_success','2012-10-25 12:28:41',NULL),(171,280,'estimated_hours','2012-10-25 12:28:41','8.0'),(172,280,'remaining_hours','2012-10-25 12:28:41','8.0'),(173,273,'estimated_hours','2012-10-25 13:01:50','3.0'),(174,273,'remaining_hours','2012-10-25 13:01:50','3.0'),(175,281,'story_points','2012-10-25 13:05:01',NULL),(176,281,'fixed_version_id','2012-10-25 13:05:01',NULL),(177,281,'status_open','2012-10-25 13:05:01','true'),(178,281,'status_success','2012-10-25 13:05:01',NULL),(179,281,'estimated_hours','2012-10-25 13:05:01','4.0'),(180,281,'remaining_hours','2012-10-25 13:05:01','4.0'),(181,282,'story_points','2012-10-25 13:06:24',NULL),(182,282,'fixed_version_id','2012-10-25 13:06:24',NULL),(183,282,'status_open','2012-10-25 13:06:24','true'),(184,282,'status_success','2012-10-25 13:06:24',NULL),(185,282,'estimated_hours','2012-10-25 13:06:24',NULL),(186,282,'remaining_hours','2012-10-25 13:06:24',NULL),(187,283,'story_points','2012-10-25 13:25:58',NULL),(188,283,'fixed_version_id','2012-10-25 13:25:58',NULL),(189,283,'status_open','2012-10-25 13:25:58','true'),(190,283,'status_success','2012-10-25 13:25:58',NULL),(191,283,'estimated_hours','2012-10-25 13:25:58','5.0'),(192,283,'remaining_hours','2012-10-25 13:25:58','5.0'),(193,273,'status_open','2012-10-26 09:13:34','true'),(194,273,'status_success','2012-10-26 09:13:34','true'),(195,271,'status_open','2012-10-26 09:14:17','true'),(196,271,'status_success','2012-10-26 09:14:17','true'),(197,272,'status_open','2012-10-26 09:16:35','true'),(198,272,'status_success','2012-10-26 09:16:35','true'),(199,275,'status_open','2012-10-26 09:51:42','true'),(200,275,'status_success','2012-10-26 09:51:42','true'),(201,275,'status_open','2012-10-26 09:57:22','true'),(202,275,'status_success','2012-10-26 09:57:22','true'),(203,274,'status_open','2012-10-26 10:04:45','true'),(204,274,'status_success','2012-10-26 10:04:45','true'),(205,284,'story_points','2012-10-26 15:24:25',NULL),(206,284,'fixed_version_id','2012-10-26 15:24:25',NULL),(207,284,'status_open','2012-10-26 15:24:25','true'),(208,284,'status_success','2012-10-26 15:24:25',NULL),(209,284,'estimated_hours','2012-10-26 15:24:25','4.0'),(210,284,'remaining_hours','2012-10-26 15:24:25','4.0'),(211,229,'status_open','2012-10-29 10:35:59','true'),(212,229,'status_success','2012-10-29 10:35:59','true'),(213,229,'remaining_hours','2012-10-29 10:35:59','4.0'),(214,205,'status_open','2012-10-29 10:42:57','true'),(215,205,'status_success','2012-10-29 10:42:57','true'),(216,235,'remaining_hours','2012-10-29 10:43:30','4.0'),(217,285,'story_points','2012-10-29 18:23:11',NULL),(218,285,'fixed_version_id','2012-10-29 18:23:11','3'),(219,285,'status_open','2012-10-29 18:23:11','true'),(220,285,'status_success','2012-10-29 18:23:11',NULL),(221,285,'estimated_hours','2012-10-29 18:23:11',NULL),(222,285,'remaining_hours','2012-10-29 18:23:11','0.0'),(223,286,'story_points','2012-10-29 20:35:47',NULL),(224,286,'fixed_version_id','2012-10-29 20:35:47',NULL),(225,286,'status_open','2012-10-29 20:35:47','true'),(226,286,'status_success','2012-10-29 20:35:47',NULL),(227,286,'estimated_hours','2012-10-29 20:35:47',NULL),(228,286,'remaining_hours','2012-10-29 20:35:47',NULL),(229,287,'story_points','2012-10-29 20:36:13',NULL),(230,287,'fixed_version_id','2012-10-29 20:36:13',NULL),(231,287,'status_open','2012-10-29 20:36:13','true'),(232,287,'status_success','2012-10-29 20:36:13',NULL),(233,287,'estimated_hours','2012-10-29 20:36:13','6.0'),(234,287,'remaining_hours','2012-10-29 20:36:13','6.0'),(235,288,'story_points','2012-10-29 20:36:25',NULL),(236,288,'fixed_version_id','2012-10-29 20:36:25',NULL),(237,288,'status_open','2012-10-29 20:36:25','true'),(238,288,'status_success','2012-10-29 20:36:25',NULL),(239,288,'estimated_hours','2012-10-29 20:36:25',NULL),(240,288,'remaining_hours','2012-10-29 20:36:25',NULL),(241,289,'story_points','2012-10-31 11:51:02',NULL),(242,289,'fixed_version_id','2012-10-31 11:51:02',NULL),(243,289,'status_open','2012-10-31 11:51:02','true'),(244,289,'status_success','2012-10-31 11:51:02',NULL),(245,289,'estimated_hours','2012-10-31 11:51:02','1.0'),(246,289,'remaining_hours','2012-10-31 11:51:02','1.0'),(247,290,'story_points','2012-10-31 12:20:09',NULL),(248,290,'fixed_version_id','2012-10-31 12:20:09',NULL),(249,290,'status_open','2012-10-31 12:20:09','true'),(250,290,'status_success','2012-10-31 12:20:09',NULL),(251,290,'estimated_hours','2012-10-31 12:20:09',NULL),(252,290,'remaining_hours','2012-10-31 12:20:09','0.0'),(253,288,'remaining_hours','2012-10-31 12:21:38','0.0'),(254,286,'remaining_hours','2012-10-31 12:21:57','0.0'),(255,291,'story_points','2012-10-31 13:31:51',NULL),(256,291,'fixed_version_id','2012-10-31 13:31:51',NULL),(257,291,'status_open','2012-10-31 13:31:51','true'),(258,291,'status_success','2012-10-31 13:31:51',NULL),(259,291,'estimated_hours','2012-10-31 13:31:51',NULL),(260,291,'remaining_hours','2012-10-31 13:31:51',NULL),(261,267,'status_open','2012-10-31 16:02:37','true'),(262,267,'status_success','2012-10-31 16:02:37','true'),(263,276,'status_open','2012-10-31 19:38:33','true'),(264,276,'status_success','2012-10-31 19:38:33','true'),(265,276,'estimated_hours','2012-10-31 19:38:33','3.0'),(266,276,'remaining_hours','2012-10-31 19:38:33','3.0'),(267,292,'story_points','2012-10-31 20:51:34',NULL),(268,292,'fixed_version_id','2012-10-31 20:51:34',NULL),(269,292,'status_open','2012-10-31 20:51:34','true'),(270,292,'status_success','2012-10-31 20:51:34',NULL),(271,292,'estimated_hours','2012-10-31 20:51:34','1.0'),(272,292,'remaining_hours','2012-10-31 20:51:34','1.0'),(273,293,'story_points','2012-11-01 10:17:25',NULL),(274,293,'fixed_version_id','2012-11-01 10:17:25',NULL),(275,293,'status_open','2012-11-01 10:17:25','true'),(276,293,'status_success','2012-11-01 10:17:25',NULL),(277,293,'estimated_hours','2012-11-01 10:17:25','4.0'),(278,293,'remaining_hours','2012-11-01 10:17:25','4.0'),(279,289,'status_open','2012-11-01 10:19:21','true'),(280,289,'status_success','2012-11-01 10:19:21','true');
/*!40000 ALTER TABLE `rb_journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_burndown_days`
--

DROP TABLE IF EXISTS `release_burndown_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release_burndown_days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `release_id` int(11) NOT NULL,
  `day` date NOT NULL,
  `remaining_story_points` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release_burndown_days`
--

LOCK TABLES `release_burndown_days` WRITE;
/*!40000 ALTER TABLE `release_burndown_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `release_burndown_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `release_start_date` date NOT NULL,
  `release_end_date` date NOT NULL,
  `initial_story_points` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` text,
  `identifier` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositories`
--

LOCK TABLES `repositories` WRITE;
/*!40000 ALTER TABLE `repositories` DISABLE KEYS */;
INSERT INTO `repositories` VALUES (3,1,'/root/ntnu-netlight-project/.git','','','/root/ntnu-netlight-project/.git','Repository::Git','',NULL,'--- \nheads: \n- d2138233bf0d309b27260bc59f820c981c6ab997\ndb_consistent: \n  ordering: 1\nextra_report_last_commit: \"0\"\n','github',1);
/*!40000 ALTER TABLE `repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Non member',1,1,1,'--- \n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default'),(2,'Anonymous',2,1,2,'--- \n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_files\n- :browse_repository\n- :view_changesets\n','default'),(3,'Manager',3,1,0,'--- \n- :add_project\n- :edit_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :manage_news\n- :comment_news\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :view_gantt\n','all'),(4,'Developer',4,1,0,'--- \n- :manage_versions\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :sprints\n- :sprints_tasks\n- :burndown_charts\n- :log_time\n- :view_time_entries\n- :delete_wiki_pages\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n','default'),(5,'Reporter',5,1,0,'--- \n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('11'),('11-redmine_backlogs'),('12'),('12-redmine_backlogs'),('13'),('14'),('15'),('15-redmine_backlogs'),('16'),('17'),('17-redmine_backlogs'),('18'),('19'),('19-redmine_backlogs'),('2'),('20'),('20090214190337'),('20090312172426'),('20090312194159'),('20090318181151'),('20090323224724'),('20090401221305'),('20090401231134'),('20090403001910'),('20090406161854'),('20090425161243'),('20090503121501'),('20090503121505'),('20090503121510'),('20090614091200'),('20090704172350'),('20090704172355'),('20090704172358'),('20091010093521'),('20091017212227'),('20091017212457'),('20091017212644'),('20091017212938'),('20091017213027'),('20091017213113'),('20091017213151'),('20091017213228'),('20091017213257'),('20091017213332'),('20091017213444'),('20091017213536'),('20091017213642'),('20091017213716'),('20091017213757'),('20091017213835'),('20091017213910'),('20091017214015'),('20091017214107'),('20091017214136'),('20091017214236'),('20091017214308'),('20091017214336'),('20091017214406'),('20091017214440'),('20091017214519'),('20091017214611'),('20091017214644'),('20091017214720'),('20091017214750'),('20091025163651'),('20091108092559'),('20091114105931'),('20091123212029'),('20091205124427'),('20091220183509'),('20091220183727'),('20091220184736'),('20091225164732'),('20091227112908'),('20100129193402'),('20100129193813'),('20100221100219'),('20100313132032'),('20100313171051'),('20100705164950'),('20100819172912'),('20101104182107'),('20101107130441'),('20101114115114'),('20101114115359'),('20110220160626'),('20110223180944'),('20110223180953'),('20110224000000'),('20110226120112'),('20110226120132'),('20110227125750'),('20110228000000'),('20110228000100'),('20110401192910'),('20110408103312'),('20110412065600'),('20110511000000'),('20110902000000'),('20111201201315'),('20120115143024'),('20120115143100'),('20120115143126'),('20120127174243'),('20120205111326'),('20120223110929'),('20120301153455'),('20120422150750'),('21'),('22'),('23'),('23-redmine_backlogs'),('24'),('24-redmine_backlogs'),('25'),('25-redmine_backlogs'),('26'),('26-redmine_backlogs'),('27'),('27-redmine_backlogs'),('28'),('29'),('29-redmine_backlogs'),('3'),('30'),('30-redmine_backlogs'),('31'),('32'),('32-redmine_backlogs'),('33'),('33-redmine_backlogs'),('34'),('34-redmine_backlogs'),('35'),('35-redmine_backlogs'),('36'),('36-redmine_backlogs'),('37'),('38'),('39'),('4'),('40'),('41'),('42'),('43'),('44'),('45'),('46'),('47'),('48'),('49'),('5'),('50'),('51'),('52'),('53'),('54'),('55'),('56'),('57'),('58'),('59'),('6'),('60'),('61'),('62'),('63'),('64'),('65'),('66'),('67'),('68'),('69'),('7'),('70'),('71'),('72'),('73'),('74'),('75'),('76'),('77'),('78'),('79'),('8'),('80'),('81'),('82'),('83'),('84'),('85'),('86'),('87'),('88'),('89'),('9'),('90'),('91'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'plugin_AgileDwarf','--- !map:ActiveSupport::HashWithIndifferentAccess \nstclosed: \"1\"\nstcolumn5: \"2\"\nstcolumn4: \"1\"\nstcolumn3: \"3\"\nstcolumn2: \"2\"\nstcolumn1: \"1\"\nstcolumncount: \"2\"\nactivity: \"8\"\ntracker: \"1\"\n','2012-09-04 01:42:45'),(2,'default_projects_public','1','2012-09-04 17:09:52'),(3,'sequential_project_identifiers','0','2012-09-04 17:09:52'),(4,'default_projects_modules','--- \n- issue_tracking\n- time_tracking\n- news\n- documents\n- files\n- wiki\n- repository\n- boards\n- calendar\n- gantt\n- scrum\n','2012-09-04 17:09:52'),(5,'autofetch_changesets','1','2012-09-10 13:15:55'),(6,'commit_fix_done_ratio','100','2012-09-10 13:15:55'),(7,'commit_logtime_enabled','0','2012-09-10 13:15:55'),(8,'commit_ref_keywords','refs,references,IssueID','2012-09-10 13:15:55'),(9,'enabled_scm','--- \n- Git\n','2012-09-10 13:15:56'),(10,'commit_cross_project_ref','0','2012-09-10 13:15:56'),(11,'commit_fix_status_id','0','2012-09-10 13:15:56'),(12,'repository_log_display_limit','100','2012-09-10 13:15:56'),(13,'sys_api_enabled','0','2012-09-10 13:15:56'),(14,'commit_fix_keywords','fixes,closes','2012-09-10 13:15:56'),(15,'plugin_redmine_backlogs','--- \n:points_burn_direction: down\n:task_tracker: 3\n:taskboard_card_order: story_follows_tasks\n:card_spec: \n:wiki_template: \"\"\n:story_points: \"1,2,3,5,8\"\n:story_trackers: \n- 2\n:show_burndown_in_sidebar: enabled\n','2012-10-23 01:23:44');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_entries`
--

LOCK TABLES `time_entries` WRITE;
/*!40000 ALTER TABLE `time_entries` DISABLE KEYS */;
INSERT INTO `time_entries` VALUES (2,1,4,32,2,'Copy tasks from spreadsheet to issue tracking system.',8,'2012-09-04',2012,9,36,'2012-09-04 14:04:46','2012-09-04 14:04:46'),(3,1,5,32,2,'',8,'2012-09-04',2012,9,36,'2012-09-04 14:06:18','2012-09-04 14:06:18'),(4,1,5,35,1,'Introduction for the project',13,'2012-09-04',2012,9,36,'2012-09-04 14:11:50','2012-09-04 14:11:50'),(5,1,5,35,4,'Guest lecture from Bekk on Scrum, Testing and Git',13,'2012-09-04',2012,9,36,'2012-09-04 14:12:28','2012-09-04 14:12:28'),(6,1,6,19,3,'Initial Risk Assessment and Countermeasures',10,'2012-08-28',2012,8,35,'2012-09-04 14:13:06','2012-09-04 14:13:06'),(7,1,5,28,0.5,'',10,'2012-08-21',2012,8,34,'2012-09-04 14:19:35','2012-09-04 14:19:35'),(8,1,5,29,0.5,'',10,'2012-08-28',2012,8,35,'2012-09-04 14:23:39','2012-09-04 14:23:39'),(9,1,5,9,0.7,'',10,'2012-08-21',2012,8,34,'2012-09-04 14:24:39','2012-09-04 14:24:39'),(10,1,5,20,0.5,'',10,'2012-09-04',2012,9,36,'2012-09-04 14:25:15','2012-09-04 14:25:15'),(11,1,5,22,0.5,'',10,'2012-09-04',2012,9,36,'2012-09-04 14:25:48','2012-09-04 14:25:48'),(12,1,5,40,2,'',10,'2012-09-04',2012,9,36,'2012-09-04 15:14:45','2012-09-04 15:14:45'),(13,1,6,40,2,'',10,'2012-09-04',2012,9,36,'2012-09-04 15:15:44','2012-09-04 15:15:44'),(14,1,7,21,1,'',10,'2012-09-04',2012,9,36,'2012-09-04 15:18:35','2012-09-04 15:18:35'),(15,1,7,23,1,'',10,'2012-09-04',2012,9,36,'2012-09-04 15:18:59','2012-09-04 15:18:59'),(16,1,7,18,0.5,'',10,'2012-09-04',2012,9,36,'2012-09-04 15:19:45','2012-09-04 15:19:45'),(17,1,7,17,0.7,'',10,'2012-09-04',2012,9,36,'2012-09-04 15:20:16','2012-09-04 15:20:16'),(18,1,7,16,0.5,'',10,'2012-09-04',2012,9,36,'2012-09-04 15:21:10','2012-09-04 15:21:10'),(19,1,7,26,0.5,'',10,'2012-09-04',2012,9,36,'2012-09-04 15:21:38','2012-09-04 15:21:38'),(20,1,8,34,13,'First customer meeting.',12,'2012-08-21',2012,8,34,'2012-09-04 15:27:39','2012-09-04 15:27:39'),(21,1,8,34,8,'First advisor meeting, incl. notes.',12,'2012-08-22',2012,8,34,'2012-09-04 15:29:10','2012-09-04 15:29:10'),(22,1,8,43,9,'',12,'2012-08-27',2012,8,35,'2012-09-04 15:59:04','2012-09-04 15:59:04'),(26,1,8,46,5.25,'',12,'2012-09-04',2012,9,36,'2012-09-04 16:13:47','2012-09-04 16:13:47'),(27,1,8,45,6,'',12,'2012-08-30',2012,8,35,'2012-09-04 16:15:57','2012-09-04 16:15:57'),(28,1,8,44,2,'',12,'2012-08-30',2012,8,35,'2012-09-04 16:18:00','2012-09-04 16:18:00'),(29,1,8,42,7,'',12,'2012-08-22',2012,8,34,'2012-09-04 16:19:06','2012-09-04 16:19:06'),(30,1,8,41,13,'',12,'2012-08-21',2012,8,34,'2012-09-04 16:19:50','2012-09-04 16:19:50'),(31,1,8,47,15,'',10,'2012-09-03',2012,9,36,'2012-09-04 16:23:35','2012-09-04 16:23:35'),(32,1,6,48,2,'Import of previous activities on Redmine',10,'2012-09-04',2012,9,36,'2012-09-04 17:04:49','2012-09-04 17:04:49'),(33,1,4,31,8,'Redmine instalation and configuration',14,'2012-09-02',2012,9,35,'2012-09-04 23:12:08','2012-09-04 23:12:08'),(34,1,4,31,1,'MongoDB instalation',14,'2012-09-04',2012,9,36,'2012-09-04 23:12:21','2012-09-04 23:12:21'),(35,1,5,24,2,'',10,'2012-09-05',2012,9,36,'2012-09-05 12:47:27','2012-09-05 12:47:27'),(36,1,5,10,4,'',10,'2012-09-05',2012,9,36,'2012-09-05 12:47:50','2012-09-05 12:47:50'),(37,1,5,50,1.5,'',10,'2012-09-05',2012,9,36,'2012-09-05 13:33:07','2012-09-05 13:33:07'),(38,1,4,31,2.5,'Redmine configuration',14,'2012-09-04',2012,9,36,'2012-09-05 13:55:27','2012-09-05 13:55:27'),(39,1,4,31,1,'Redmine connect github and autoupdate',14,'2012-09-04',2012,9,36,'2012-09-05 13:55:55','2012-09-05 13:55:55'),(40,1,4,31,2,'Report latex autobuild',14,'2012-09-04',2012,9,36,'2012-09-05 13:56:11','2012-09-05 13:58:19'),(41,1,4,27,2,'Raw template created and uploaded to github.',10,'2012-09-05',2012,9,36,'2012-09-05 14:00:12','2012-09-05 14:00:12'),(42,1,5,50,1,'',10,'2012-09-05',2012,9,36,'2012-09-05 14:46:30','2012-09-05 14:46:30'),(43,1,8,49,4,'Everyone attended',12,'2012-09-06',2012,9,36,'2012-09-06 17:26:57','2012-09-06 17:26:57'),(44,1,4,50,1.5,'Revised and sent the report and agenda.',14,'2012-09-06',2012,9,36,'2012-09-06 17:43:52','2012-09-06 17:43:52'),(45,1,5,33,2,'',10,'2012-09-07',2012,9,36,'2012-09-07 13:19:47','2012-09-07 13:19:47'),(46,1,5,25,2,'',10,'2012-09-07',2012,9,36,'2012-09-07 13:20:21','2012-09-07 13:20:21'),(47,1,5,33,2,'',10,'2012-09-07',2012,9,36,'2012-09-07 14:41:33','2012-09-07 14:41:33'),(48,1,8,53,4,'Everyone attended',12,'2012-09-07',2012,9,36,'2012-09-09 17:08:01','2012-09-09 17:08:01'),(49,1,5,38,2,'',10,'2012-09-05',2012,9,36,'2012-09-09 17:08:31','2012-09-09 17:08:31'),(50,1,7,38,0.3,'',10,'2012-09-09',2012,9,36,'2012-09-09 17:09:18','2012-09-09 17:09:18'),(51,1,8,54,4,'Collective effort',14,'2012-09-09',2012,9,36,'2012-09-09 17:12:11','2012-09-09 17:12:11'),(53,1,4,37,2,'Agenda and questions.',14,'2012-09-09',2012,9,36,'2012-09-09 17:13:31','2012-09-09 17:13:31'),(54,1,6,48,0.5,'',14,'2012-09-09',2012,9,36,'2012-09-09 17:46:49','2012-09-09 17:46:49'),(55,1,5,33,1,'',10,'2012-09-10',2012,9,37,'2012-09-10 13:51:53','2012-09-10 13:51:53'),(56,1,8,60,11,'Discussed domain and name',12,'2012-09-10',2012,9,37,'2012-09-10 18:13:15','2012-09-10 18:13:15'),(57,1,5,62,4,'',10,'2012-09-11',2012,9,37,'2012-09-11 16:06:16','2012-09-11 16:06:16'),(58,1,4,31,1,NULL,8,'2012-09-11',2012,9,37,'2012-09-11 18:03:38','2012-09-11 18:03:38'),(59,1,4,32,1,NULL,8,'2012-09-11',2012,9,37,'2012-09-11 18:03:42','2012-09-11 18:03:42'),(60,1,4,30,4,NULL,8,'2012-09-11',2012,9,37,'2012-09-11 18:03:54','2012-09-11 18:03:54'),(61,1,4,27,1,NULL,8,'2012-09-11',2012,9,37,'2012-09-11 18:04:03','2012-09-11 18:04:03'),(62,1,4,11,0.75,'wrote redmine description and way we use it',10,'2012-09-11',2012,9,37,'2012-09-11 18:24:31','2012-09-11 18:24:31'),(63,1,4,13,0.5,'Done.',10,'2012-09-11',2012,9,37,'2012-09-11 18:39:14','2012-09-11 18:39:14'),(64,1,4,12,0.2,'We wont be using Google Code. We use Github + Redmine instead. Scheduled project for deletion and wrote info to Google Group.',10,'2012-09-11',2012,9,37,'2012-09-11 18:40:16','2012-09-11 18:40:16'),(65,1,4,15,0.6,'Wrote description.',10,'2012-09-11',2012,9,37,'2012-09-11 19:45:50','2012-09-11 19:45:50'),(66,1,5,62,1,'',10,'2012-09-11',2012,9,37,'2012-09-11 19:49:12','2012-09-11 19:49:12'),(67,1,4,27,1.5,'Bare latex template for report created. Automatic build and upload current version to web each 10 minutes. TODO Make title page nicer.',10,'2012-09-11',2012,9,37,'2012-09-11 19:52:22','2012-09-11 19:52:22'),(68,1,4,32,0.5,'issue management - closing, creating, assigning',11,'2012-09-11',2012,9,37,'2012-09-11 20:15:46','2012-09-11 20:15:46'),(69,1,4,65,1,'Create interactive/hyperlink table of contents and footnotes.',10,'2012-09-11',2012,9,37,'2012-09-11 20:43:03','2012-09-11 20:43:03'),(70,1,7,66,2,'',10,'2012-09-12',2012,9,37,'2012-09-12 13:33:47','2012-09-12 13:33:47'),(71,1,5,62,0.5,'',10,'2012-09-12',2012,9,37,'2012-09-12 13:58:07','2012-09-12 13:58:07'),(72,1,5,69,2,'',10,'2012-09-12',2012,9,37,'2012-09-12 14:02:19','2012-09-12 14:02:19'),(73,1,4,69,0.5,'Checked and corrected details.',14,'2012-09-12',2012,9,37,'2012-09-12 15:14:23','2012-09-12 15:14:23'),(74,1,4,70,0.6,'Revised and sent the weekly report and agenda.',14,'2012-09-12',2012,9,37,'2012-09-12 15:17:36','2012-09-12 15:17:36'),(75,1,7,66,2,'',10,'2012-09-12',2012,9,37,'2012-09-12 21:52:34','2012-09-12 21:52:34'),(76,1,5,73,2,'',10,'2012-09-13',2012,9,37,'2012-09-13 15:35:13','2012-09-13 15:35:13'),(77,1,8,71,3,'Compiled the meeting notes and send them to advisor.',12,'2012-09-13',2012,9,37,'2012-09-13 16:25:49','2012-09-13 16:25:49'),(78,1,8,68,3,'',12,'2012-09-13',2012,9,37,'2012-09-13 16:26:12','2012-09-13 16:26:12'),(79,1,4,95,2,'',10,'2012-09-13',2012,9,37,'2012-09-13 17:04:14','2012-09-13 17:04:14'),(80,1,5,73,2,'',10,'2012-09-13',2012,9,37,'2012-09-13 18:26:53','2012-09-13 18:26:53'),(81,1,6,123,1,'Investigation of SignalR',14,'2012-09-13',2012,9,37,'2012-09-13 21:09:05','2012-09-13 21:09:05'),(82,1,5,73,2.5,'',10,'2012-09-14',2012,9,37,'2012-09-14 13:49:46','2012-09-14 13:49:46'),(83,1,4,75,3,NULL,8,'2012-09-17',2012,9,38,'2012-09-17 17:49:12','2012-09-17 17:49:12'),(84,1,4,75,0.5,'',10,'2012-09-17',2012,9,38,'2012-09-17 18:11:17','2012-09-17 18:11:17'),(85,1,5,74,1,'',10,'2012-09-17',2012,9,38,'2012-09-17 22:04:56','2012-09-17 22:04:56'),(86,1,5,129,1,'',10,'2012-09-17',2012,9,38,'2012-09-17 23:00:56','2012-09-17 23:00:56'),(87,1,5,61,1,'',10,'2012-09-17',2012,9,38,'2012-09-18 00:13:03','2012-09-18 00:13:03'),(88,1,8,127,8,'',13,'2012-09-18',2012,9,38,'2012-09-18 00:16:30','2012-09-18 00:16:30'),(89,1,6,130,4,'',10,'2012-09-18',2012,9,38,'2012-09-18 20:16:54','2012-09-18 20:16:54'),(90,1,8,131,4,'All four team members attended.',12,'2012-09-18',2012,9,38,'2012-09-18 20:18:30','2012-09-18 20:18:30'),(91,1,5,133,2,'',10,'2012-09-18',2012,9,38,'2012-09-18 23:50:32','2012-09-18 23:50:32'),(92,1,5,134,1,'',10,'2012-09-18',2012,9,38,'2012-09-18 23:51:16','2012-09-18 23:51:16'),(93,1,5,135,1,'',10,'2012-09-19',2012,9,38,'2012-09-19 13:12:26','2012-09-19 13:12:26'),(94,1,5,135,0.25,'Added to LaTex report',10,'2012-09-19',2012,9,38,'2012-09-19 13:23:22','2012-09-19 13:23:22'),(95,1,4,32,1.5,'issue management - lectures, project plan',11,'2012-09-19',2012,9,38,'2012-09-19 13:59:46','2012-09-19 13:59:46'),(96,1,4,31,3.5,'node.js experiments and instalation',14,'2012-09-19',2012,9,38,'2012-09-19 14:01:09','2012-09-19 14:01:09'),(97,1,5,136,2,'',10,'2012-09-19',2012,9,38,'2012-09-19 14:32:25','2012-09-19 14:32:25'),(98,1,5,74,2,'',10,'2012-09-20',2012,9,38,'2012-09-20 12:15:40','2012-09-20 12:15:40'),(99,1,4,137,0.5,'Checked and corrected details. Sent.',10,'2012-09-20',2012,9,38,'2012-09-20 13:41:53','2012-09-20 13:41:53'),(100,1,5,139,2,'',10,'2012-09-20',2012,9,38,'2012-09-20 13:44:45','2012-09-20 13:44:45'),(101,1,8,138,4,'',12,'2012-09-20',2012,9,38,'2012-09-20 13:45:03','2012-09-20 13:45:03'),(102,1,4,140,0.3,'',10,'2012-09-20',2012,9,38,'2012-09-20 13:46:46','2012-09-20 13:46:46'),(103,1,4,80,1.5,'',14,'2012-09-20',2012,9,38,'2012-09-20 13:48:05','2012-09-20 13:48:05'),(104,1,4,82,0.6,'Checked and corrected details. Sent.',10,'2012-09-20',2012,9,38,'2012-09-20 13:48:35','2012-09-20 13:48:35'),(105,1,5,81,0.5,'',10,'2012-09-20',2012,9,38,'2012-09-20 13:52:02','2012-09-20 13:52:02'),(106,1,4,142,1,'Created Docs file and added structure.',12,'2012-09-20',2012,9,38,'2012-09-20 13:52:35','2012-09-20 13:52:35'),(107,1,4,143,0.5,'Contacted a person, who is in Trondheim.',14,'2012-09-20',2012,9,38,'2012-09-20 13:53:55','2012-09-20 13:53:55'),(108,1,7,144,4,'',10,'2012-09-20',2012,9,38,'2012-09-20 14:06:10','2012-09-20 14:06:10'),(109,1,7,144,1,'',10,'2012-09-20',2012,9,38,'2012-09-20 14:06:27','2012-09-20 14:06:27'),(110,1,5,65,1,'',10,'2012-09-20',2012,9,38,'2012-09-20 15:35:49','2012-09-20 15:35:49'),(111,1,7,144,7,'',10,'2012-09-21',2012,9,38,'2012-09-21 00:49:16','2012-09-21 00:49:16'),(112,1,8,145,6,'Helt presentation, discussed and wrote short summary.',10,'2012-09-21',2012,9,38,'2012-09-21 15:41:40','2012-09-21 15:41:40'),(113,1,6,146,4,'done, imported to latex document',10,'2012-09-21',2012,9,38,'2012-09-21 16:45:54','2012-09-21 16:45:54'),(114,1,7,144,3,'',10,'2012-09-24',2012,9,39,'2012-09-24 00:50:49','2012-09-24 00:50:49'),(115,1,8,147,12,'Everyone attended',13,'2012-09-24',2012,9,39,'2012-09-24 17:44:46','2012-09-24 17:44:46'),(116,1,5,74,2,'Added the timeline of the testing process',10,'2012-09-25',2012,9,39,'2012-09-25 11:47:42','2012-09-25 11:47:42'),(117,1,7,4,1.5,'',10,'2012-09-25',2012,9,39,'2012-09-25 16:10:14','2012-09-25 16:10:14'),(118,1,8,83,6,'We had to wait for the customer and than meeting was held.',12,'2012-09-26',2012,9,39,'2012-09-26 10:12:23','2012-09-26 10:12:23'),(119,1,8,84,2,'',10,'2012-09-26',2012,9,39,'2012-09-26 10:13:19','2012-09-26 10:13:19'),(120,1,4,84,1,'revised and sent',10,'2012-09-26',2012,9,39,'2012-09-26 10:14:12','2012-09-26 10:14:12'),(121,1,4,128,1,'found and reserved a room',12,'2012-09-26',2012,9,39,'2012-09-26 10:14:42','2012-09-26 10:14:42'),(122,1,4,150,3.5,'wrote a document user stories v2',12,'2012-09-26',2012,9,39,'2012-09-26 10:16:54','2012-09-26 10:16:54'),(123,1,7,144,1,'',10,'2012-09-26',2012,9,39,'2012-09-26 10:17:06','2012-09-26 10:17:06'),(124,1,4,148,3.5,'set up new rules, explained to customer and setup email forwarding',10,'2012-09-26',2012,9,39,'2012-09-26 10:20:26','2012-09-26 10:20:26'),(125,1,4,65,2,'made new title page with logos',10,'2012-09-26',2012,9,39,'2012-09-26 10:21:34','2012-09-26 10:21:34'),(126,1,8,152,16,'12-14, 17-19:00',10,'2012-09-26',2012,9,39,'2012-09-26 10:24:02','2012-09-26 10:24:02'),(127,1,4,155,8,'Done risk, user stories, communication rules, quality assurance',10,'2012-09-26',2012,9,39,'2012-09-26 10:26:40','2012-09-26 10:26:40'),(128,1,4,155,2,'minor changes and bug fixing',10,'2012-09-26',2012,9,39,'2012-09-26 10:26:58','2012-09-26 10:26:58'),(129,1,4,155,2,'created separate files for chapters and cleaned the document',10,'2012-09-24',2012,9,39,'2012-09-26 10:28:53','2012-09-26 10:28:53'),(130,1,5,32,0.5,'Added all the user stories and created the first sprint',10,'2012-09-26',2012,9,39,'2012-09-26 10:49:36','2012-09-26 10:49:36'),(131,1,4,179,0.5,'imported domain specific ones',11,'2012-09-26',2012,9,39,'2012-09-26 10:49:56','2012-09-26 10:49:56'),(132,1,5,154,2,'Created account on pubnub.com, and researched how it would be implemented',10,'2012-09-25',2012,9,39,'2012-09-26 10:51:14','2012-09-26 10:51:29'),(133,1,5,154,1,'Implementation',10,'2012-09-26',2012,9,39,'2012-09-26 10:51:46','2012-09-26 10:51:46'),(134,1,4,183,1,'installed',10,'2012-09-26',2012,9,39,'2012-09-26 10:55:20','2012-09-26 10:55:20'),(135,1,4,183,1,'teste - proof of concept - see pubnub-cli.js on github',10,'2012-09-26',2012,9,39,'2012-09-26 10:55:42','2012-09-26 10:55:42'),(136,1,4,180,2,'installed and tested',14,'2012-09-26',2012,9,39,'2012-09-26 10:56:42','2012-09-26 10:56:42'),(137,1,4,181,2,'installed and tested',14,'2012-09-26',2012,9,39,'2012-09-26 10:57:19','2012-09-26 10:57:19'),(138,1,4,182,2,'installed and tested',14,'2012-09-26',2012,9,39,'2012-09-26 10:57:42','2012-09-26 10:57:42'),(139,1,4,153,6.5,'created app.js and public/index.html for demonstration',9,'2012-09-26',2012,9,39,'2012-09-26 11:01:15','2012-09-26 11:01:15'),(140,1,5,153,3,'Added the ability to add, delete, update and get info on specific books',9,'2012-09-27',2012,9,39,'2012-09-27 12:55:11','2012-10-02 18:34:31'),(141,1,5,185,1,'',9,'2012-09-27',2012,9,39,'2012-09-27 12:56:39','2012-10-02 18:34:15'),(142,1,6,157,3,'',10,'2012-09-27',2012,9,39,'2012-09-28 01:30:35','2012-09-28 01:30:35'),(143,1,6,157,3,'',10,'2012-09-27',2012,9,39,'2012-09-28 01:30:48','2012-09-28 01:30:48'),(144,1,6,157,3,'',10,'2012-09-26',2012,9,39,'2012-09-28 01:30:57','2012-09-28 01:30:57'),(145,1,6,159,1,'',10,'2012-09-26',2012,9,39,'2012-09-28 01:32:51','2012-09-28 01:32:51'),(146,1,6,160,1,'',10,'2012-09-26',2012,9,39,'2012-09-28 01:33:02','2012-09-28 01:33:02'),(147,1,5,186,1,'',10,'2012-09-28',2012,9,39,'2012-09-28 10:55:53','2012-09-28 10:55:53'),(148,1,5,153,1,'',9,'2012-09-28',2012,9,39,'2012-09-28 10:57:21','2012-10-02 18:33:54'),(149,1,6,174,3,'Made the command history persistent across refreshes, page changes and entire sessions',9,'2012-09-29',2012,9,39,'2012-09-29 21:45:12','2012-09-29 21:45:12'),(150,1,5,153,1,'',10,'2012-10-02',2012,10,40,'2012-10-02 16:56:46','2012-10-02 16:56:46'),(151,1,5,153,3,'Made jQuery ajax example code, added cross origin possibility to the server',9,'2012-10-01',2012,10,40,'2012-10-02 16:57:51','2012-10-02 18:33:31'),(152,1,5,189,1,'',10,'2012-10-02',2012,10,40,'2012-10-02 16:59:43','2012-10-02 16:59:43'),(153,1,5,65,2,'Added separate chapters for each sprint, added appendices chapter, added test cases',10,'2012-10-02',2012,10,40,'2012-10-02 17:01:07','2012-10-02 17:01:07'),(154,1,6,157,1,'',8,'2012-09-30',2012,9,39,'2012-10-02 18:00:16','2012-10-02 18:00:16'),(155,1,6,157,1,'',9,'2012-10-01',2012,10,40,'2012-10-02 18:00:33','2012-10-02 18:00:33'),(156,1,6,165,1,'',10,'2012-10-01',2012,10,40,'2012-10-02 18:00:54','2012-10-02 18:00:54'),(157,1,6,160,1,'',10,'2012-10-01',2012,10,40,'2012-10-02 18:01:17','2012-10-02 18:01:17'),(158,1,6,162,1,'',10,'2012-10-01',2012,10,40,'2012-10-02 18:01:33','2012-10-02 18:01:33'),(159,1,6,166,1,'',8,'2012-09-30',2012,9,39,'2012-10-02 18:02:07','2012-10-02 18:02:07'),(160,1,6,166,3,'',9,'2012-10-01',2012,10,40,'2012-10-02 18:02:20','2012-10-02 18:02:20'),(161,1,6,161,2,'',8,'2012-10-02',2012,10,40,'2012-10-02 18:03:24','2012-10-02 18:03:24'),(162,1,5,190,2,'Added the plan, goal, and backlog sections',10,'2012-10-02',2012,10,40,'2012-10-02 18:33:04','2012-10-02 18:33:04'),(163,1,6,161,4.5,'Implemented initial networking on client side',9,'2012-10-02',2012,10,40,'2012-10-02 23:31:21','2012-10-02 23:31:21'),(164,1,4,188,0.8,'went through use cases and added a few',10,'2012-10-03',2012,10,40,'2012-10-03 11:21:59','2012-10-03 11:21:59'),(165,1,8,191,12,'discussed progress in the sprint and important questions about UI adn library implementation',10,'2012-10-02',2012,10,40,'2012-10-03 11:28:56','2012-10-03 11:28:56'),(166,1,4,153,2,'made nodeunit working, and created a dump a log on the webpage',11,'2012-10-01',2012,10,40,'2012-10-03 11:34:26','2012-10-03 11:34:26'),(167,1,4,32,3,'communication with customer, advisor, setup forwarding of the mails',10,'2012-10-01',2012,10,40,'2012-10-03 11:37:16','2012-10-03 11:37:16'),(168,1,5,190,2,'Added test cases and finished the work estimation table',10,'2012-10-03',2012,10,40,'2012-10-03 11:44:40','2012-10-03 11:44:40'),(170,1,7,156,5,'',10,'2012-10-03',2012,10,40,'2012-10-03 13:15:38','2012-10-03 13:15:38'),(171,1,4,153,3,'fixing errors on server - accepting cross server scripting, OPTION method (because of ajax)',9,'2012-10-02',2012,10,40,'2012-10-03 13:19:50','2012-10-03 13:19:50'),(172,1,4,153,2.2,'changing the schema for application - adding author ',10,'2012-10-02',2012,10,40,'2012-10-03 13:20:47','2012-10-03 13:28:59'),(173,1,4,31,2,'fixed git automatic update, added www root',11,'2012-10-02',2012,10,40,'2012-10-03 13:22:29','2012-10-03 13:28:32'),(174,1,4,31,2,'trying to fix burndown chart in redmine',9,'2012-10-03',2012,10,40,'2012-10-03 13:22:55','2012-10-03 13:22:55'),(175,1,5,192,1.5,'',12,'2012-10-03',2012,10,40,'2012-10-03 14:30:19','2012-10-03 14:30:59'),(176,1,5,193,1,'',10,'2012-10-03',2012,10,40,'2012-10-03 14:33:31','2012-10-03 14:33:31'),(177,1,4,194,1.2,'Check report, wrote agenda, sent to advisor.',11,'2012-10-03',2012,10,40,'2012-10-03 14:46:27','2012-10-03 14:46:27'),(178,1,6,157,0.5,'persistent splitpane',9,'2012-10-03',2012,10,40,'2012-10-03 23:43:46','2012-10-03 23:43:46'),(179,1,6,160,1,'more convenient methods for deletion',9,'2012-10-03',2012,10,40,'2012-10-03 23:45:52','2012-10-03 23:45:52'),(180,1,6,163,1,'Added a method to filter the list of books using regex on book variables',9,'2012-10-03',2012,10,40,'2012-10-03 23:48:02','2012-10-03 23:48:02'),(181,1,6,170,0.5,'Research on displaying variable and method names in object functions; little progress as of this moment',8,'2012-10-03',2012,10,40,'2012-10-03 23:50:28','2012-10-03 23:50:28'),(182,1,5,195,2.5,'',10,'2012-10-04',2012,10,40,'2012-10-04 14:10:32','2012-10-04 14:10:32'),(183,1,5,193,1,'',10,'2012-10-04',2012,10,40,'2012-10-04 14:33:56','2012-10-04 14:33:56'),(184,1,5,190,2,'Added estimation and actual time used on the different user stories. Also came up with some reasons why it turned out like this',10,'2012-10-04',2012,10,40,'2012-10-04 16:38:26','2012-10-04 16:38:26'),(185,1,8,196,4,'Everyone attended, presented demo, notes written',12,'2012-10-04',2012,10,40,'2012-10-08 14:10:27','2012-10-08 14:23:24'),(186,1,8,198,10,'Everyone attended, presented demo, notes written',12,'2012-10-04',2012,10,40,'2012-10-08 14:20:25','2012-10-08 14:23:09'),(187,1,8,199,12,'',12,'2012-10-08',2012,10,41,'2012-10-08 15:23:29','2012-10-08 15:23:29'),(188,1,5,65,2,'Cleaned up chapter 2, added Gantt chart',10,'2012-10-09',2012,10,41,'2012-10-09 21:00:08','2012-10-09 21:00:08'),(189,1,5,200,1,'Fixed the Gantt chart, so that its readable',10,'2012-10-09',2012,10,41,'2012-10-09 21:01:45','2012-10-09 21:01:45'),(190,1,5,201,1.5,'',10,'2012-10-09',2012,10,41,'2012-10-09 22:52:11','2012-10-09 22:52:11'),(191,1,5,190,1,'Added some points on the evaluation of the sprint',10,'2012-10-09',2012,10,41,'2012-10-09 23:43:23','2012-10-09 23:43:23'),(192,1,5,105,1,'Continued on WBS for Sprint 2',8,'2012-10-10',2012,10,41,'2012-10-10 11:23:33','2012-10-10 11:23:33'),(193,1,5,242,0.5,'Exported WBS to the report',10,'2012-10-10',2012,10,41,'2012-10-10 11:25:19','2012-10-10 11:25:19'),(194,1,5,179,1,'Added the user stories for Sprint 2',11,'2012-10-10',2012,10,41,'2012-10-10 11:26:22','2012-10-10 11:26:22'),(195,1,7,144,2,'',10,'2012-10-07',2012,10,40,'2012-10-10 11:29:49','2012-10-10 11:29:49'),(196,1,7,144,2,'',10,'2012-10-08',2012,10,41,'2012-10-10 11:29:57','2012-10-10 11:29:57'),(197,1,7,105,0.5,'',10,'2012-10-09',2012,10,41,'2012-10-10 11:33:16','2012-10-10 11:33:16'),(198,1,7,243,1.5,'',10,'2012-10-10',2012,10,41,'2012-10-10 11:37:55','2012-10-10 11:37:55'),(199,1,7,243,1.5,'',10,'2012-10-10',2012,10,41,'2012-10-10 12:28:57','2012-10-10 12:28:57'),(200,1,5,244,1,'',11,'2012-10-10',2012,10,41,'2012-10-10 16:41:35','2012-10-10 16:41:35'),(201,1,6,190,4,'Client implementation documentation',10,'2012-10-10',2012,10,41,'2012-10-10 22:42:05','2012-10-10 22:42:05'),(202,1,5,214,0.7,'Created test cases, and added them to the report',10,'2012-10-11',2012,10,41,'2012-10-11 19:17:25','2012-10-11 19:17:25'),(203,1,5,210,0.7,'Created test cases, and added them to the report',10,'2012-10-11',2012,10,41,'2012-10-11 19:18:09','2012-10-11 19:18:09'),(204,1,5,221,0.7,'Created test cases, and added them to the report',10,'2012-10-11',2012,10,41,'2012-10-11 19:18:38','2012-10-11 19:18:38'),(205,1,5,229,0.7,'Created test cases, and added them to the report',10,'2012-10-11',2012,10,41,'2012-10-11 19:19:18','2012-10-11 19:19:18'),(206,1,5,235,0.7,'Created test cases, and added them to the report',10,'2012-10-11',2012,10,41,'2012-10-11 19:19:43','2012-10-11 19:19:43'),(207,1,5,240,0.7,'Created test cases, and added them to the report',10,'2012-10-11',2012,10,41,'2012-10-11 19:20:04','2012-10-11 19:20:04'),(208,1,5,245,2.5,'',10,'2012-10-12',2012,10,41,'2012-10-12 11:08:06','2012-10-12 11:39:18'),(209,1,7,246,3,'',10,'2012-10-13',2012,10,41,'2012-10-13 22:57:54','2012-10-13 22:57:54'),(210,1,7,247,0.5,'',10,'2012-10-13',2012,10,41,'2012-10-13 22:59:07','2012-10-13 22:59:07'),(211,1,7,248,1,'',10,'2012-10-13',2012,10,41,'2012-10-13 22:59:30','2012-10-13 22:59:30'),(212,1,5,2,2,'Added description on plan, fixed some tables',10,'2012-10-14',2012,10,41,'2012-10-14 18:45:46','2012-10-14 18:45:46'),(213,1,4,2,7.5,'wrote some text in management chapter, went through report and checked, updated bibliography, made a release, tagged it on github and uploaded to its learning',10,'2012-10-14',2012,10,41,'2012-10-14 22:19:48','2012-10-14 22:19:48'),(214,1,4,208,2,'found out, how to connect do db withou mongoose',9,'2012-10-15',2012,10,42,'2012-10-15 12:40:38','2012-10-15 12:40:38'),(215,1,5,212,4,'Done',9,'2012-10-15',2012,10,42,'2012-10-15 18:30:19','2012-10-15 18:30:19'),(216,1,5,214,2,'',9,'2012-10-15',2012,10,42,'2012-10-15 18:30:49','2012-10-15 18:30:49'),(217,1,7,220,0.5,'',10,'2012-10-16',2012,10,42,'2012-10-16 12:39:07','2012-10-16 12:39:07'),(218,1,7,219,3.5,'',10,'2012-10-16',2012,10,42,'2012-10-16 12:40:02','2012-10-16 12:40:02'),(219,1,7,218,3,'',10,'2012-10-16',2012,10,42,'2012-10-16 12:44:37','2012-10-16 12:44:37'),(220,1,7,217,3,'',10,'2012-10-16',2012,10,42,'2012-10-16 12:46:21','2012-10-16 12:46:21'),(221,1,7,216,2,'',10,'2012-10-16',2012,10,42,'2012-10-16 12:47:26','2012-10-16 12:47:26'),(223,1,7,223,2,'',10,'2012-10-16',2012,10,42,'2012-10-16 12:50:39','2012-10-16 12:50:39'),(224,1,7,221,3,'',10,'2012-10-16',2012,10,42,'2012-10-16 12:51:18','2012-10-16 12:51:18'),(225,1,5,215,1,'',10,'2012-10-16',2012,10,42,'2012-10-16 15:22:48','2012-10-16 15:22:48'),(226,1,5,249,2,'Added some parts on the planning, and testing of sprint 2',10,'2012-10-16',2012,10,42,'2012-10-16 15:24:36','2012-10-16 15:24:36'),(227,1,6,237,1,'',9,'2012-10-15',2012,10,42,'2012-10-16 15:25:44','2012-10-16 15:25:44'),(228,1,6,240,1,'',14,'2012-10-15',2012,10,42,'2012-10-16 16:41:09','2012-10-16 16:41:09'),(229,1,6,238,1.5,'',9,'2012-10-15',2012,10,42,'2012-10-16 16:41:39','2012-10-16 16:41:39'),(230,1,6,239,1.5,'',9,'2012-10-15',2012,10,42,'2012-10-16 16:42:57','2012-10-16 16:42:57'),(231,1,5,250,3,'The exiting books are now updated rather than replaced on refresh',9,'2012-10-17',2012,10,42,'2012-10-17 12:00:45','2012-10-17 12:01:02'),(232,1,4,208,3,'implemented the API without schema, naive way',9,'2012-10-15',2012,10,42,'2012-10-17 13:24:57','2012-10-17 13:24:57'),(234,1,4,209,1.5,'API updated, just the documentation in report missing',9,'2012-10-15',2012,10,42,'2012-10-17 13:26:40','2012-10-17 13:27:50'),(235,1,4,210,1,'done a little bit of testing, just have to compare functionality with old api and with gui',9,'2012-10-17',2012,10,42,'2012-10-17 13:27:32','2012-10-17 13:27:32'),(236,1,4,31,5,'installed new version of texlive on the server - 2012 and resolved the problems with autobuild',14,'2012-10-16',2012,10,42,'2012-10-17 13:31:42','2012-10-17 13:31:42'),(237,1,4,155,7,'gone through all documents on google drive, archived them and copied missing parts to latex',10,'2012-10-13',2012,10,41,'2012-10-17 13:33:16','2012-10-17 13:33:16'),(238,1,4,78,6,'written supporting text to management chapter, some graphical touches',10,'2012-10-14',2012,10,41,'2012-10-17 13:33:50','2012-10-17 13:33:50'),(239,1,4,2,4.5,'gone through the report, checked that everything is ok for predelivery and delivered to itslearning',10,'2012-10-14',2012,10,41,'2012-10-17 13:35:00','2012-10-17 13:35:00'),(240,1,8,251,16,'sum of man hours spent on meetings',12,'2012-10-16',2012,10,42,'2012-10-17 13:39:15','2012-10-17 13:39:15'),(241,1,6,233,3.25,'',9,'2012-10-16',2012,10,42,'2012-10-17 14:05:55','2012-10-17 14:05:55'),(242,1,6,234,1,'',9,'2012-10-16',2012,10,42,'2012-10-17 14:06:38','2012-10-17 14:06:38'),(243,1,6,235,0.7,'',14,'2012-10-16',2012,10,42,'2012-10-17 14:07:18','2012-10-17 14:07:18'),(244,1,4,89,1,'checked agenda and sent',12,'2012-10-17',2012,10,42,'2012-10-17 19:29:42','2012-10-17 19:29:42'),(245,1,5,89,1,'Write the weekly report and meeting agenda',11,'2012-10-17',2012,10,42,'2012-10-17 20:01:08','2012-10-17 20:01:08'),(246,1,5,212,2,'Added commands to the new buttons',9,'2012-10-17',2012,10,42,'2012-10-17 22:45:39','2012-10-17 22:45:39'),(247,1,8,89,4,'',12,'2012-10-18',2012,10,42,'2012-10-18 10:12:22','2012-10-18 10:12:22'),(249,1,5,214,0.75,'Performed test case',9,'2012-10-19',2012,10,42,'2012-10-22 11:22:44','2012-10-22 11:22:44'),(250,1,5,210,0.75,'Performed test case',9,'2012-10-19',2012,10,42,'2012-10-22 11:23:43','2012-10-22 11:28:44'),(251,1,5,221,0.75,'Performed test cases',9,'2012-10-19',2012,10,42,'2012-10-22 11:24:46','2012-10-22 11:24:46'),(252,1,5,229,0.75,'Perform test cases',9,'2012-10-19',2012,10,42,'2012-10-22 11:25:38','2012-10-22 11:28:31'),(253,1,5,235,0.75,'Performed test cases',9,'2012-10-19',2012,10,42,'2012-10-22 11:26:43','2012-10-22 11:28:19'),(254,1,5,240,0.75,'Performed test cases',9,'2012-10-19',2012,10,42,'2012-10-22 11:27:36','2012-10-22 11:27:36'),(255,1,8,254,8,'prepared for the meeting, had a meeting and compiled notes',12,'2012-10-22',2012,10,43,'2012-10-22 17:49:00','2012-10-22 17:49:00'),(256,1,4,187,1.5,'nodeunit',10,'2012-10-23',2012,10,43,'2012-10-23 08:44:36','2012-10-23 08:44:36'),(257,1,7,263,1,'',10,'2012-10-23',2012,10,43,'2012-10-23 16:28:06','2012-10-23 16:28:06'),(258,1,8,256,12,'',13,'2012-10-22',2012,10,43,'2012-10-24 09:13:17','2012-10-24 12:45:43'),(259,1,8,264,14,'Sprint 2 evaluation, bug fixing, user test',12,'2012-10-22',2012,10,43,'2012-10-24 09:17:01','2012-10-24 12:46:00'),(260,1,5,265,2,'',8,'2012-10-24',2012,10,43,'2012-10-24 12:45:06','2012-10-24 12:45:24'),(261,1,5,266,1,'',11,'2012-10-24',2012,10,43,'2012-10-24 12:50:34','2012-10-24 12:50:34'),(262,1,5,265,2,'',8,'2012-10-24',2012,10,43,'2012-10-24 16:10:54','2012-10-24 16:10:54'),(263,1,5,268,3,'Added different parts on the sprint documentation',10,'2012-10-25',2012,10,43,'2012-10-25 16:36:33','2012-10-25 16:36:33'),(264,1,8,267,4,'Attended meeting and compiled the notes',12,'2012-10-25',2012,10,43,'2012-10-25 16:38:04','2012-10-25 16:38:04'),(265,1,6,273,1,'Started reorganizing, still needs some work',10,'2012-10-26',2012,10,43,'2012-10-26 09:13:19','2012-10-26 09:13:19'),(266,1,6,271,1,'Moved',10,'2012-10-26',2012,10,43,'2012-10-26 09:14:04','2012-10-26 09:14:04'),(267,1,6,272,0.5,'Added description to project management',10,'2012-10-26',2012,10,43,'2012-10-26 09:16:20','2012-10-26 09:16:20'),(268,1,5,275,0.5,'',10,'2012-10-26',2012,10,43,'2012-10-26 09:57:09','2012-10-26 09:57:09'),(269,1,6,274,1.5,'Moved, also wrote a few words about risk management',10,'2012-10-26',2012,10,43,'2012-10-26 10:04:30','2012-10-26 10:04:30'),(270,1,5,284,4,'',10,'2012-10-26',2012,10,43,'2012-10-26 15:24:35','2012-10-26 15:24:35'),(271,1,5,229,2,'',10,'2012-10-22',2012,10,43,'2012-10-29 10:36:46','2012-10-29 10:36:46'),(272,1,5,235,1,'',10,'2012-10-22',2012,10,43,'2012-10-29 10:43:47','2012-10-29 10:43:47'),(273,1,5,268,2,'Fixes WBS for sprint 2',10,'2012-10-29',2012,10,44,'2012-10-29 12:05:46','2012-10-29 12:05:46'),(274,1,5,268,1,'Added introduction on sprint chapters',10,'2012-10-29',2012,10,44,'2012-10-29 13:27:04','2012-10-29 13:27:04'),(275,1,5,284,1,'',10,'2012-10-29',2012,10,44,'2012-10-29 14:08:03','2012-10-29 14:08:03'),(276,1,5,285,2,'',8,'2012-10-29',2012,10,44,'2012-10-29 18:23:27','2012-10-29 18:23:27'),(277,1,7,286,4,'',10,'2012-10-29',2012,10,44,'2012-10-29 20:36:01','2012-10-29 20:36:01'),(278,1,8,287,6,'',12,'2012-10-29',2012,10,44,'2012-10-29 20:36:29','2012-10-29 20:36:29'),(279,1,7,288,2,'',10,'2012-10-29',2012,10,44,'2012-10-29 20:36:41','2012-10-29 20:36:41'),(280,1,5,272,0.5,'Added minitoc package, and used it on the sprint chapters',10,'2012-10-30',2012,10,44,'2012-10-30 10:13:56','2012-10-30 10:13:56'),(281,1,5,272,0.5,'Added minitoc to the rest of the chapters',10,'2012-10-30',2012,10,44,'2012-10-30 10:24:23','2012-10-30 10:24:23'),(282,1,5,281,1,'Reorganized the appendix chapter',10,'2012-10-31',2012,10,44,'2012-10-31 11:47:33','2012-10-31 11:47:33'),(283,1,5,289,1,'',10,'2012-10-31',2012,10,44,'2012-10-31 12:13:29','2012-10-31 12:13:29'),(284,1,7,290,1,'',10,'2012-10-31',2012,10,44,'2012-10-31 12:20:16','2012-10-31 12:20:16'),(285,1,7,291,2,'',10,'2012-10-31',2012,10,44,'2012-10-31 13:31:59','2012-10-31 13:31:59'),(286,1,6,276,3,'',10,'2012-10-31',2012,10,44,'2012-10-31 19:38:02','2012-10-31 19:38:02'),(287,1,6,269,1.2,'Fixed the described issues with the introduction chapter',10,'2012-10-31',2012,10,44,'2012-10-31 20:27:23','2012-10-31 20:28:05'),(288,1,5,292,1,'',10,'2012-10-31',2012,10,44,'2012-10-31 20:51:43','2012-10-31 20:51:43'),(289,1,8,293,4,'',10,'2012-11-01',2012,11,44,'2012-11-01 10:17:36','2012-11-01 10:17:36');
/*!40000 ALTER TABLE `time_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,1,'feeds','d4a38c55c4012d2be04fb1eac29608665b04afd8','2012-09-04 01:22:32'),(2,4,'feeds','d05ee466b50ecfe5ae36718b4210641c33f655e6','2012-09-04 01:49:55'),(3,5,'feeds','cab941677861336cc1b4b8590be22297ac93aea5','2012-09-04 12:57:24'),(4,6,'feeds','ae2c867438fd8f59efff0ed4ac7184373703c731','2012-09-04 13:00:39'),(5,7,'feeds','692225db9569d972638e6ce7b2af9aa77725a6f4','2012-09-04 13:32:20'),(6,8,'feeds','bca7fc67a697711eafdb82353980319c2fccef1c','2012-09-04 16:13:03'),(7,4,'api','ed9c7d1356eaadc6e01295449b3ebfdd828f3496','2012-10-23 01:31:28'),(8,5,'api','a2542f6951e013d414b24b71cf05ee0584f32baa','2012-10-23 13:31:58');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES (1,'Bug',1,1,0),(2,'Feature',1,2,1),(3,'Support',0,3,0);
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text,
  `hide_mail` tinyint(1) DEFAULT '0',
  `time_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,2,'--- {}\n\n',0,NULL),(2,1,'--- {}\n\n',0,NULL),(3,4,'--- \n:comments_sorting: asc\n:gantt_months: 5\n:warn_on_leaving_unsaved: \"1\"\n:diff_type: inline\n:backlogs_task_color: \"#D73BD5\"\n:no_self_notified: false\n:gantt_zoom: 2\n',0,'Prague'),(4,5,'--- \n:comments_sorting: asc\n:gantt_months: 3\n:warn_on_leaving_unsaved: \"1\"\n:backlogs_task_color: \"#B84ECF\"\n:gantt_zoom: 3\n:no_self_notified: false\n',0,'Paris'),(5,6,'--- \n:gantt_months: 6\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \"1\"\n:backlogs_task_color: \"#E84911\"\n:no_self_notified: false\n:gantt_zoom: 2\n',0,''),(6,7,'--- \n:gantt_months: 6\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \"1\"\n:backlogs_task_color: \"#E38E0B\"\n:gantt_zoom: 2\n:no_self_notified: false\n',0,''),(7,8,'--- \n:gantt_months: 6\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \"1\"\n:backlogs_task_color: \"#CDBE65\"\n:no_self_notified: false\n:gantt_zoom: 2\n',0,'');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(30) NOT NULL DEFAULT '',
  `mail` varchar(60) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none',
  `sprint_start_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,1,'Sprint 1','Sprint 1','2012-10-07','2012-09-26 10:13:47','2012-10-23 13:18:44','','closed','none',NULL),(2,1,'Sprint 2','Sprint 2','2012-10-21','2012-10-10 10:40:50','2012-10-23 13:19:21','','closed','none',NULL),(3,1,'Sprint 3','Sprint 3','2012-11-04','2012-10-23 13:19:45','2012-10-23 13:21:20','','open','none','2012-10-22'),(4,1,'Sprint 4','Sprint 4','2012-11-17','2012-10-25 11:32:49','2012-10-25 11:34:00','','open','none','2012-11-04');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchers`
--

DROP TABLE IF EXISTS `watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchers`
--

LOCK TABLES `watchers` WRITE;
/*!40000 ALTER TABLE `watchers` DISABLE KEYS */;
INSERT INTO `watchers` VALUES (1,'Issue',5,4),(2,'Issue',5,7),(3,'Issue',5,6),(4,'Issue',5,5),(5,'Issue',6,4),(6,'Issue',6,7),(7,'Issue',6,6),(8,'Issue',6,5),(9,'Issue',51,4),(10,'Issue',51,5),(11,'Issue',64,4),(12,'Issue',64,7),(13,'Issue',64,6),(14,'Issue',64,5),(15,'Issue',153,4),(16,'Issue',153,7),(17,'Issue',153,6),(18,'Issue',153,8),(19,'Issue',153,5),(20,'Issue',154,4),(21,'Issue',154,7),(22,'Issue',154,6),(23,'Issue',154,8),(24,'Issue',154,5),(25,'Issue',156,4),(26,'Issue',156,7),(27,'Issue',156,6),(28,'Issue',156,5),(29,'Issue',157,4),(30,'Issue',157,7),(31,'Issue',157,6),(32,'Issue',157,5),(34,'Issue',268,4),(35,'Issue',268,7),(36,'Issue',268,6),(37,'Issue',268,5);
/*!40000 ALTER TABLE `watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_content_versions`
--

LOCK TABLES `wiki_content_versions` WRITE;
/*!40000 ALTER TABLE `wiki_content_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_content_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext,
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_contents`
--

LOCK TABLES `wiki_contents` WRITE;
/*!40000 ALTER TABLE `wiki_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_redirects`
--

LOCK TABLES `wiki_redirects` WRITE;
/*!40000 ALTER TABLE `wiki_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikis`
--

LOCK TABLES `wikis` WRITE;
/*!40000 ALTER TABLE `wikis` DISABLE KEYS */;
INSERT INTO `wikis` VALUES (1,1,'Wiki',1);
/*!40000 ALTER TABLE `wikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
INSERT INTO `workflows` VALUES (1,1,1,2,3,0,0),(2,1,1,3,3,0,0),(3,1,1,4,3,0,0),(4,1,1,5,3,0,0),(5,1,1,6,3,0,0),(6,1,2,1,3,0,0),(7,1,2,3,3,0,0),(8,1,2,4,3,0,0),(9,1,2,5,3,0,0),(10,1,2,6,3,0,0),(11,1,3,1,3,0,0),(12,1,3,2,3,0,0),(13,1,3,4,3,0,0),(14,1,3,5,3,0,0),(15,1,3,6,3,0,0),(16,1,4,1,3,0,0),(17,1,4,2,3,0,0),(18,1,4,3,3,0,0),(19,1,4,5,3,0,0),(20,1,4,6,3,0,0),(21,1,5,1,3,0,0),(22,1,5,2,3,0,0),(23,1,5,3,3,0,0),(24,1,5,4,3,0,0),(25,1,5,6,3,0,0),(26,1,6,1,3,0,0),(27,1,6,2,3,0,0),(28,1,6,3,3,0,0),(29,1,6,4,3,0,0),(30,1,6,5,3,0,0),(31,2,1,2,3,0,0),(32,2,1,3,3,0,0),(33,2,1,4,3,0,0),(34,2,1,5,3,0,0),(35,2,1,6,3,0,0),(36,2,2,1,3,0,0),(37,2,2,3,3,0,0),(38,2,2,4,3,0,0),(39,2,2,5,3,0,0),(40,2,2,6,3,0,0),(41,2,3,1,3,0,0),(42,2,3,2,3,0,0),(43,2,3,4,3,0,0),(44,2,3,5,3,0,0),(45,2,3,6,3,0,0),(46,2,4,1,3,0,0),(47,2,4,2,3,0,0),(48,2,4,3,3,0,0),(49,2,4,5,3,0,0),(50,2,4,6,3,0,0),(51,2,5,1,3,0,0),(52,2,5,2,3,0,0),(53,2,5,3,3,0,0),(54,2,5,4,3,0,0),(55,2,5,6,3,0,0),(56,2,6,1,3,0,0),(57,2,6,2,3,0,0),(58,2,6,3,3,0,0),(59,2,6,4,3,0,0),(60,2,6,5,3,0,0),(61,3,1,2,3,0,0),(62,3,1,3,3,0,0),(63,3,1,4,3,0,0),(64,3,1,5,3,0,0),(65,3,1,6,3,0,0),(66,3,2,1,3,0,0),(67,3,2,3,3,0,0),(68,3,2,4,3,0,0),(69,3,2,5,3,0,0),(70,3,2,6,3,0,0),(71,3,3,1,3,0,0),(72,3,3,2,3,0,0),(73,3,3,4,3,0,0),(74,3,3,5,3,0,0),(75,3,3,6,3,0,0),(76,3,4,1,3,0,0),(77,3,4,2,3,0,0),(78,3,4,3,3,0,0),(79,3,4,5,3,0,0),(80,3,4,6,3,0,0),(81,3,5,1,3,0,0),(82,3,5,2,3,0,0),(83,3,5,3,3,0,0),(84,3,5,4,3,0,0),(85,3,5,6,3,0,0),(86,3,6,1,3,0,0),(87,3,6,2,3,0,0),(88,3,6,3,3,0,0),(89,3,6,4,3,0,0),(90,3,6,5,3,0,0),(91,1,1,2,4,0,0),(92,1,1,3,4,0,0),(93,1,1,4,4,0,0),(94,1,1,5,4,0,0),(95,1,2,3,4,0,0),(96,1,2,4,4,0,0),(97,1,2,5,4,0,0),(98,1,3,2,4,0,0),(99,1,3,4,4,0,0),(100,1,3,5,4,0,0),(101,1,4,2,4,0,0),(102,1,4,3,4,0,0),(103,1,4,5,4,0,0),(104,2,1,2,4,0,0),(105,2,1,3,4,0,0),(106,2,1,4,4,0,0),(107,2,1,5,4,0,0),(108,2,2,3,4,0,0),(109,2,2,4,4,0,0),(110,2,2,5,4,0,0),(111,2,3,2,4,0,0),(112,2,3,4,4,0,0),(113,2,3,5,4,0,0),(114,2,4,2,4,0,0),(115,2,4,3,4,0,0),(116,2,4,5,4,0,0),(117,3,1,2,4,0,0),(118,3,1,3,4,0,0),(119,3,1,4,4,0,0),(120,3,1,5,4,0,0),(121,3,2,3,4,0,0),(122,3,2,4,4,0,0),(123,3,2,5,4,0,0),(124,3,3,2,4,0,0),(125,3,3,4,4,0,0),(126,3,3,5,4,0,0),(127,3,4,2,4,0,0),(128,3,4,3,4,0,0),(129,3,4,5,4,0,0),(130,1,1,5,5,0,0),(131,1,2,5,5,0,0),(132,1,3,5,5,0,0),(133,1,4,5,5,0,0),(134,1,3,4,5,0,0),(135,2,1,5,5,0,0),(136,2,2,5,5,0,0),(137,2,3,5,5,0,0),(138,2,4,5,5,0,0),(139,2,3,4,5,0,0),(140,3,1,5,5,0,0),(141,3,2,5,5,0,0),(142,3,3,5,5,0,0),(143,3,4,5,5,0,0),(144,3,3,4,5,0,0);
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-03  0:00:01
