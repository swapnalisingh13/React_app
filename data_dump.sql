-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: task_manager
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invitations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invite_code` varchar(255) NOT NULL,
  `inviter_id` int NOT NULL,
  `role` varchar(50) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  `used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invite_code` (`invite_code`),
  KEY `inviter_id` (`inviter_id`),
  CONSTRAINT `invitations_ibfk_1` FOREIGN KEY (`inviter_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
INSERT INTO `invitations` VALUES (1,'5zo1y0vk8jxeva2j',1,'2',NULL,1,'2025-05-22 10:51:39','2025-05-22 10:50:25'),(2,'w141gidhvc12tunz',1,'2',NULL,1,'2025-05-22 10:53:48','2025-05-22 10:53:19'),(3,'s2kbfgbhg76o92d7',1,'2',NULL,0,NULL,'2025-05-22 10:56:02'),(4,'lojzso1g5183gk6r',1,'2',NULL,1,'2025-05-22 10:57:09','2025-05-22 10:56:40'),(5,'s7g8b26pgymrkdkh',1,'2',NULL,1,'2025-05-22 11:04:25','2025-05-22 11:03:55'),(6,'onadj9w33ti5ef2t',1,'2',NULL,1,'2025-05-22 11:10:21','2025-05-22 11:09:58'),(7,'7gzfr3dmuqtwxzgo',1,'2',NULL,0,NULL,'2025-05-22 12:24:40'),(8,'b4irz94faecfka2o',1,'1',NULL,0,NULL,'2025-05-22 12:24:44'),(9,'mf81qjaz1687bwyw',1,'2',NULL,0,NULL,'2025-05-22 12:39:04'),(10,'coth3sb4gja3kibt',1,'1',NULL,0,NULL,'2025-05-22 12:39:10'),(11,'cwg8uebt5vutceww',1,'1',NULL,1,'2025-05-22 12:44:23','2025-05-22 12:43:27'),(12,'kj1wkwf1a487081m',1,'1',NULL,1,'2025-05-22 12:47:01','2025-05-22 12:45:15'),(13,'oo5g5mku82uol67k',1,'1',NULL,1,'2025-05-22 12:54:02','2025-05-22 12:50:48'),(14,'vo57k6bqhmy2kg94',1,'1',NULL,1,'2025-05-22 14:49:24','2025-05-22 14:48:41'),(15,'saqi7k63jbemzncv',1,'1',NULL,1,'2025-05-22 14:55:27','2025-05-22 14:53:23'),(16,'vu0zfhdi8k39m3b2',1,'1',NULL,0,NULL,'2025-05-22 14:59:35'),(17,'94mb9yh0pyua1cef',1,'1',NULL,1,'2025-05-22 15:01:02','2025-05-22 15:00:32'),(18,'zc9t4k7y2yw24zqn',1,'1',NULL,1,'2025-05-22 15:02:22','2025-05-22 15:02:10'),(19,'c41jo9byri5n0qyu',1,'1',NULL,0,NULL,'2025-05-22 15:03:03'),(20,'cp6unf3uj18afzxv',1,'1',NULL,1,'2025-05-22 15:04:04','2025-05-22 15:03:49'),(21,'w8ypwhavl82pqwap',1,'1',NULL,1,'2025-05-22 15:07:31','2025-05-22 15:06:59'),(22,'xvvgziu4rxmiyxb1',1,'1',NULL,1,'2025-05-22 15:11:08','2025-05-22 15:10:56'),(23,'g3unjllreck7lj63',1,'1',NULL,1,'2025-05-22 15:13:08','2025-05-22 15:12:52'),(24,'s4pkqf77dcs85ux3',1,'1',NULL,1,'2025-05-22 15:14:57','2025-05-22 15:14:31'),(25,'u5930lc5j1wewo6j',1,'1',NULL,1,'2025-05-22 15:18:36','2025-05-22 15:18:10'),(26,'zahhsehblo639rc6',1,'2',NULL,0,NULL,'2025-05-22 15:21:27'),(27,'gnjug1362607433n',1,'2',NULL,1,'2025-05-22 15:49:08','2025-05-22 15:48:50'),(28,'x9uw63snbnt0mmz2',1,'2',NULL,0,NULL,'2025-05-22 16:18:51'),(29,'frz76upvflf6wm77',1,'2',NULL,1,'2025-05-22 16:19:20','2025-05-22 16:18:59'),(30,'rzymmswtbedg70av',1,'1',NULL,1,'2025-05-22 17:24:49','2025-05-22 17:24:20'),(31,'zekqoscd3sw40xa5',1,'2',NULL,0,NULL,'2025-05-23 12:05:13'),(32,'m6wsosey2gnliawz',1,'2',NULL,1,'2025-05-23 12:10:37','2025-05-23 12:10:17'),(33,'cjxy6n037yvommps',1,'2',NULL,1,'2025-05-23 12:18:11','2025-05-23 12:17:25'),(34,'8nhnsbpl33p1omaq',1,'2',NULL,1,'2025-05-23 12:21:43','2025-05-23 12:21:29'),(35,'g9yq5suleutdpdg4',1,'2',NULL,1,'2025-05-23 12:55:17','2025-05-23 12:54:55'),(36,'fbykkh3kcs406shc',1,'2',NULL,0,NULL,'2025-05-23 15:00:35'),(37,'inx1vroec6159r4c',1,'2',NULL,0,NULL,'2025-05-23 17:14:51'),(38,'p83337980i5zpjjw',1,'2',NULL,1,'2025-05-23 17:27:51','2025-05-23 17:26:10'),(39,'e57ljy38v3fa6dp9',1,'2',NULL,1,'2025-05-23 18:16:36','2025-05-23 18:16:18'),(40,'p6m6kng0xb07ppve',1,'2',NULL,1,'2025-05-23 18:22:37','2025-05-23 18:22:02'),(41,'cpof8hq3351xfygw',1,'2',NULL,1,'2025-05-23 18:27:19','2025-05-23 18:26:55'),(42,'v7brwvb5cb3qmaxv',1,'2',NULL,0,NULL,'2025-05-24 10:46:55'),(43,'6qanitkp3n9mtc03',1,'2',NULL,0,NULL,'2025-05-24 16:21:50'),(44,'talw4pagwwpyd95o',1,'2',NULL,1,'2025-05-24 16:23:13','2025-05-24 16:22:50'),(47,'8540uu1c31dn0mo8',1,'2',NULL,1,'2025-05-24 17:41:06','2025-05-24 17:40:23'),(48,'6wt05jjcda5jnpb1',1,'2',NULL,0,NULL,'2025-05-24 17:49:36'),(49,'ukucj98e9cstyutw',1,'2',NULL,1,'2025-05-24 17:52:37','2025-05-24 17:52:27'),(50,'sieadkl62bs1zcja',1,'2',NULL,1,'2025-05-24 17:55:07','2025-05-24 17:54:58'),(51,'oq02qtyo94rw7xpa',1,'2',NULL,0,NULL,'2025-05-29 14:52:02'),(52,'oxip5d7l5eiczm5h',1,'2',NULL,0,NULL,'2025-05-29 15:50:45'),(53,'k2mbrugb9bf2w0vy',1,'2',NULL,0,NULL,'2025-05-29 17:04:41'),(54,'ntr4y15wmj2jhwt6',1,'2',NULL,1,'2025-05-30 11:39:20','2025-05-30 11:39:01'),(55,'trbxfkibx4wlotto',1,'2',NULL,0,NULL,'2025-05-30 13:05:33'),(56,'ln3hbgkj713ca6sj',46,'2',NULL,0,NULL,'2025-08-26 17:42:13'),(57,'vr110pz1m2jin53g',46,'2',NULL,0,NULL,'2025-08-26 17:54:02'),(58,'tpyc2vd4vfvhga08',1,'2',NULL,1,'2025-08-30 16:07:30','2025-08-30 16:06:29');
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_approvals`
--

DROP TABLE IF EXISTS `pending_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_approvals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role` varchar(50) NOT NULL,
  `inviter_id` int DEFAULT NULL,
  `approver_type` varchar(20) NOT NULL,
  `approver_id` int NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `approved_by` int DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `inviter_id` (`inviter_id`),
  KEY `approver_id` (`approver_id`),
  KEY `approved_by` (`approved_by`),
  CONSTRAINT `pending_approvals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `pending_approvals_ibfk_2` FOREIGN KEY (`inviter_id`) REFERENCES `users` (`id`),
  CONSTRAINT `pending_approvals_ibfk_3` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  CONSTRAINT `pending_approvals_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_approvals`
--

LOCK TABLES `pending_approvals` WRITE;
/*!40000 ALTER TABLE `pending_approvals` DISABLE KEYS */;
INSERT INTO `pending_approvals` VALUES (24,40,'2',1,'manager',1,'rejected',1,'2025-05-30 13:05:22','2025-05-23 18:27:19'),(28,44,'2',1,'manager',1,'approved',1,'2025-05-24 17:55:53','2025-05-24 17:55:07'),(29,45,'2',1,'manager',1,'approved',1,'2025-05-30 11:39:28','2025-05-30 11:39:20'),(30,49,'2',1,'manager',1,'approved',1,'2025-08-30 16:07:34','2025-08-30 16:07:30');
/*!40000 ALTER TABLE `pending_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `manager_id` int NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` enum('active','completed','on_hold','cancelled') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Invoice','Invoice management system',1,'2025-04-22 00:00:00',NULL,'active','2025-04-22 10:17:44','2025-04-22 10:17:44'),(2,'Sjjssj','Nsnsjs',1,'2025-04-22 00:00:00',NULL,'active','2025-04-22 10:29:21','2025-09-02 10:20:57'),(3,'Test','Testing',1,'2025-04-22 00:00:00',NULL,'active','2025-04-22 11:58:34','2025-09-02 10:20:57'),(4,'Jieje','Gggg',1,'2025-04-23 00:00:00',NULL,'active','2025-04-23 09:02:17','2025-09-02 10:20:57'),(5,'TaskBot','task bot dummy tasks',46,'2025-09-02 00:00:00',NULL,'active','2025-09-02 09:00:17','2025-09-02 09:00:55');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NOT NULL,
  `reminder_type` int NOT NULL COMMENT '0=tomorrow, 1=today1h, 2=today4h, 3=overdue1, 4=overdue2',
  `sent_at` timestamp NULL DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `idx_reminder_type` (`reminder_type`),
  KEY `idx_is_sent` (`is_sent`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
INSERT INTO `reminders` VALUES (1,68,0,NULL,0),(2,68,1,NULL,0),(3,68,2,NULL,0),(4,68,3,'2025-05-08 10:55:00',1),(5,68,4,'2025-05-08 10:55:00',1),(6,69,0,NULL,0),(7,69,1,NULL,0),(8,69,2,NULL,0),(9,69,3,NULL,0),(10,69,4,NULL,0),(11,70,0,NULL,0),(12,70,1,NULL,0),(13,70,2,NULL,0),(14,70,3,NULL,0),(15,70,4,'2025-05-10 05:00:01',1),(16,71,0,NULL,0),(17,71,1,NULL,0),(18,71,2,NULL,0),(19,71,3,NULL,0),(20,71,4,NULL,0),(21,72,0,NULL,0),(22,72,1,NULL,0),(23,72,2,NULL,0),(24,72,3,NULL,0),(25,72,4,NULL,0),(26,73,0,NULL,0),(27,73,1,NULL,0),(28,73,2,NULL,0),(29,73,3,NULL,0),(30,73,4,NULL,0),(31,74,0,NULL,0),(32,74,1,NULL,0),(33,74,2,NULL,0),(34,74,3,NULL,0),(35,74,4,NULL,0),(36,75,0,NULL,0),(37,75,1,NULL,0),(38,75,2,NULL,0),(39,75,3,NULL,0),(40,75,4,NULL,0),(41,76,0,NULL,0),(42,76,1,'2025-05-12 06:27:00',1),(43,76,2,'2025-05-12 06:30:01',1),(44,76,3,NULL,0),(45,76,4,'2025-05-14 05:00:01',1),(46,77,0,NULL,0),(47,77,1,'2025-05-12 06:27:01',1),(48,77,2,'2025-05-12 06:30:01',1),(49,77,3,NULL,0),(50,77,4,'2025-05-14 05:00:02',1),(51,78,0,NULL,0),(52,78,1,'2025-05-12 06:27:01',1),(53,78,2,'2025-05-12 06:30:01',1),(54,78,3,NULL,0),(55,78,4,'2025-05-14 05:00:02',1),(56,79,0,NULL,0),(57,79,1,'2025-05-12 06:27:02',1),(58,79,2,'2025-05-12 06:30:02',1),(59,79,3,NULL,0),(60,79,4,'2025-05-14 05:00:02',1),(61,80,0,NULL,0),(62,80,1,'2025-05-12 06:27:02',1),(63,80,2,'2025-05-12 06:30:02',1),(64,80,3,NULL,0),(65,80,4,'2025-05-14 05:00:03',1),(66,81,0,NULL,0),(67,81,1,NULL,0),(68,81,2,NULL,0),(69,81,3,NULL,0),(70,81,4,NULL,0),(71,82,0,NULL,0),(72,82,1,NULL,0),(73,82,2,NULL,0),(74,82,3,NULL,0),(75,82,4,NULL,0),(76,83,0,NULL,0),(77,83,1,'2025-05-12 06:27:02',1),(78,83,2,'2025-05-12 06:30:03',1),(79,83,3,NULL,0),(80,83,4,NULL,0),(81,84,0,NULL,0),(82,84,1,NULL,0),(83,84,2,NULL,0),(84,84,3,NULL,0),(85,84,4,NULL,0),(86,85,0,NULL,0),(87,85,1,NULL,0),(88,85,2,NULL,0),(89,85,3,NULL,0),(90,85,4,NULL,0),(91,86,0,NULL,0),(92,86,1,NULL,0),(93,86,2,NULL,0),(94,86,3,NULL,0),(95,86,4,NULL,0),(96,87,0,NULL,0),(97,87,1,NULL,0),(98,87,2,NULL,0),(99,87,3,NULL,0),(100,87,4,NULL,0),(101,88,0,NULL,0),(102,88,1,NULL,0),(103,88,2,NULL,0),(104,88,3,NULL,0),(105,88,4,NULL,0),(106,89,0,NULL,0),(107,89,1,NULL,0),(108,89,2,NULL,0),(109,89,3,NULL,0),(110,89,4,NULL,0),(111,90,0,NULL,0),(112,90,1,NULL,0),(113,90,2,NULL,0),(114,90,3,NULL,0),(115,90,4,'2025-05-14 05:00:03',1),(116,91,0,NULL,0),(117,91,1,NULL,0),(118,91,2,NULL,0),(119,91,3,NULL,0),(120,91,4,NULL,0),(121,92,0,NULL,0),(122,92,1,NULL,0),(123,92,2,NULL,0),(124,92,3,NULL,0),(125,92,4,'2025-05-14 05:00:04',1),(126,93,0,NULL,0),(127,93,1,NULL,0),(128,93,2,NULL,0),(129,93,3,NULL,0),(130,93,4,'2025-05-20 05:00:00',1),(131,94,0,NULL,0),(132,94,1,NULL,0),(133,94,2,NULL,0),(134,94,3,NULL,0),(135,94,4,NULL,0),(136,95,0,NULL,0),(137,95,1,NULL,0),(138,95,2,NULL,0),(139,95,3,NULL,0),(140,95,4,'2025-05-20 05:00:01',1),(141,96,0,NULL,0),(142,96,1,NULL,0),(143,96,2,NULL,0),(144,96,3,NULL,0),(145,96,4,NULL,0),(146,97,0,NULL,0),(147,97,1,NULL,0),(148,97,2,NULL,0),(149,97,3,NULL,0),(150,97,4,NULL,0),(151,98,0,NULL,0),(152,98,1,NULL,0),(153,98,2,NULL,0),(154,98,3,NULL,0),(155,98,4,'2025-05-20 05:00:01',1),(156,99,0,NULL,0),(157,99,1,NULL,0),(158,99,2,NULL,0),(159,99,3,NULL,0),(160,99,4,NULL,0),(161,100,0,NULL,0),(162,100,1,NULL,0),(163,100,2,NULL,0),(164,100,3,NULL,0),(165,100,4,NULL,0),(166,101,0,NULL,0),(167,101,1,NULL,0),(168,101,2,NULL,0),(169,101,3,NULL,0),(170,101,4,NULL,0),(171,102,0,NULL,0),(172,102,1,NULL,0),(173,102,2,NULL,0),(174,102,3,NULL,0),(175,102,4,NULL,0),(176,103,0,NULL,0),(177,103,1,NULL,0),(178,103,2,NULL,0),(179,103,3,NULL,0),(180,103,4,NULL,0),(181,104,0,NULL,0),(182,104,1,NULL,0),(183,104,2,NULL,0),(184,104,3,NULL,0),(185,104,4,NULL,0),(186,105,0,NULL,0),(187,105,1,NULL,0),(188,105,2,NULL,0),(189,105,3,NULL,0),(190,105,4,'2025-05-20 05:00:01',1),(191,106,0,NULL,0),(192,106,1,NULL,0),(193,106,2,NULL,0),(194,106,3,NULL,0),(195,106,4,NULL,0),(196,1,0,NULL,0),(197,1,1,NULL,0),(198,1,2,NULL,0),(199,1,3,NULL,0),(200,1,4,'2025-05-21 05:00:00',1),(201,2,0,NULL,0),(202,2,1,NULL,0),(203,2,2,NULL,0),(204,2,3,NULL,0),(205,2,4,NULL,0),(206,3,0,NULL,0),(207,3,1,NULL,0),(208,3,2,NULL,0),(209,3,3,NULL,0),(210,3,4,'2025-05-23 05:00:01',1),(211,4,0,NULL,0),(212,4,1,NULL,0),(213,4,2,NULL,0),(214,4,3,NULL,0),(215,4,4,'2025-05-23 05:00:01',1),(216,5,0,NULL,0),(217,5,1,NULL,0),(218,5,2,NULL,0),(219,5,3,NULL,0),(220,5,4,NULL,0),(221,6,0,NULL,0),(222,6,1,NULL,0),(223,6,2,NULL,0),(224,6,3,NULL,0),(225,6,4,NULL,0),(226,7,0,NULL,0),(227,7,1,NULL,0),(228,7,2,NULL,0),(229,7,3,NULL,0),(230,7,4,NULL,0),(231,8,0,'2025-06-04 03:30:01',1),(232,8,1,NULL,0),(233,8,2,NULL,0),(234,8,3,NULL,0),(235,8,4,'2025-08-28 05:00:01',1),(236,9,0,NULL,0),(237,9,1,NULL,0),(238,9,2,NULL,0),(239,9,3,NULL,0),(240,9,4,'2025-05-24 05:00:01',1),(241,10,0,NULL,0),(242,10,1,NULL,0),(243,10,2,NULL,0),(244,10,3,NULL,0),(245,10,4,'2025-08-28 05:00:01',1),(246,11,0,NULL,0),(247,11,1,NULL,0),(248,11,2,NULL,0),(249,11,3,NULL,0),(250,11,4,NULL,0),(251,12,0,NULL,0),(252,12,1,NULL,0),(253,12,2,NULL,0),(254,12,3,NULL,0),(255,12,4,'2025-05-26 05:00:01',1),(256,13,0,NULL,0),(257,13,1,NULL,0),(258,13,2,NULL,0),(259,13,3,NULL,0),(260,13,4,NULL,0),(261,14,0,NULL,0),(262,14,1,NULL,0),(263,14,2,NULL,0),(264,14,3,NULL,0),(265,14,4,NULL,0),(266,15,0,NULL,0),(267,15,1,NULL,0),(268,15,2,NULL,0),(269,15,3,NULL,0),(270,15,4,'2025-05-26 05:00:01',1),(271,16,0,NULL,0),(272,16,1,NULL,0),(273,16,2,NULL,0),(274,16,3,NULL,0),(275,16,4,NULL,0),(276,17,0,NULL,0),(277,17,1,NULL,0),(278,17,2,NULL,0),(279,17,3,NULL,0),(280,17,4,NULL,0),(281,18,0,NULL,0),(282,18,1,NULL,0),(283,18,2,NULL,0),(284,18,3,NULL,0),(285,18,4,NULL,0),(286,19,0,NULL,0),(287,19,1,NULL,0),(288,19,2,NULL,0),(289,19,3,NULL,0),(290,19,4,NULL,0),(291,20,0,NULL,0),(292,20,1,NULL,0),(293,20,2,NULL,0),(294,20,3,NULL,0),(295,20,4,'2025-05-30 05:00:01',1),(296,21,0,NULL,0),(297,21,1,NULL,0),(298,21,2,NULL,0),(299,21,3,NULL,0),(300,21,4,NULL,0),(301,22,0,NULL,0),(302,22,1,NULL,0),(303,22,2,NULL,0),(304,22,3,NULL,0),(305,22,4,'2025-05-30 05:00:01',1),(306,23,0,NULL,0),(307,23,1,NULL,0),(308,23,2,NULL,0),(309,23,3,NULL,0),(310,23,4,'2025-05-30 05:00:02',1),(311,24,0,NULL,0),(312,24,1,NULL,0),(313,24,2,NULL,0),(314,24,3,NULL,0),(315,24,4,'2025-05-30 05:00:02',1),(316,25,0,NULL,0),(317,25,1,NULL,0),(318,25,2,NULL,0),(319,25,3,NULL,0),(320,25,4,'2025-05-30 05:00:02',1),(321,26,0,NULL,0),(322,26,1,NULL,0),(323,26,2,NULL,0),(324,26,3,NULL,0),(325,26,4,NULL,0),(326,27,0,NULL,0),(327,27,1,NULL,0),(328,27,2,NULL,0),(329,27,3,NULL,0),(330,27,4,'2025-06-04 05:00:01',1),(331,28,0,NULL,0),(332,28,1,NULL,0),(333,28,2,NULL,0),(334,28,3,NULL,0),(335,28,4,'2025-06-02 05:00:00',1),(336,29,0,NULL,0),(337,29,1,NULL,0),(338,29,2,NULL,0),(339,29,3,NULL,0),(340,29,4,NULL,0),(341,30,0,NULL,0),(342,30,1,NULL,0),(343,30,2,NULL,0),(344,30,3,NULL,0),(345,30,4,NULL,0),(346,31,0,NULL,0),(347,31,1,NULL,0),(348,31,2,NULL,0),(349,31,3,NULL,0),(350,31,4,NULL,0),(351,32,0,NULL,0),(352,32,1,NULL,0),(353,32,2,NULL,0),(354,32,3,NULL,0),(355,32,4,NULL,0),(356,33,0,NULL,0),(357,33,1,NULL,0),(358,33,2,NULL,0),(359,33,3,NULL,0),(360,33,4,NULL,0),(361,34,0,NULL,0),(362,34,1,NULL,0),(363,34,2,NULL,0),(364,34,3,NULL,0),(365,34,4,NULL,0),(366,35,0,NULL,0),(367,35,1,NULL,0),(368,35,2,NULL,0),(369,35,3,NULL,0),(370,35,4,NULL,0),(371,36,0,NULL,0),(372,36,1,NULL,0),(373,36,2,NULL,0),(374,36,3,NULL,0),(375,36,4,NULL,0),(376,38,0,NULL,0),(377,38,1,NULL,0),(378,38,2,NULL,0),(379,38,3,NULL,0),(380,38,4,NULL,0),(381,39,0,NULL,0),(382,39,1,NULL,0),(383,39,2,NULL,0),(384,39,3,NULL,0),(385,39,4,NULL,0),(386,40,0,NULL,0),(387,40,1,NULL,0),(388,40,2,NULL,0),(389,40,3,NULL,0),(390,40,4,NULL,0),(391,41,0,NULL,0),(392,41,1,NULL,0),(393,41,2,NULL,0),(394,41,3,NULL,0),(395,41,4,NULL,0);
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `employee_id` int DEFAULT NULL,
  `assigned_by` int NOT NULL,
  `due_date` datetime NOT NULL,
  `status` enum('pending','completed','overdue','pending_approval') DEFAULT 'pending',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved_by` int DEFAULT NULL,
  `priority` enum('Low','Medium','High') DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `links` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_by` (`assigned_by`),
  KEY `idx_employee` (`employee_id`),
  KEY `idx_status` (`status`),
  KEY `idx_due_date` (`due_date`),
  KEY `fk_project_task` (`project_id`),
  KEY `idx_is_active` (`is_active`),
  CONSTRAINT `fk_project_task` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tasks_ibfk_5` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Bellp xhsh',1,1,'2025-05-20 22:00:00','completed','2025-05-21 06:17:23','2025-05-20 07:04:42','2025-09-02 10:05:40',1,NULL,3,0,'https://dummy.link/task/1'),(3,'Bsnsbsb',1,1,'2025-05-22 19:00:00','completed','2025-05-23 05:31:04','2025-05-22 12:02:21','2025-09-02 10:05:40',1,NULL,4,0,'https://dummy.link/task/3'),(4,'Bsnsbsb',1,1,'2025-05-22 19:00:00','completed','2025-05-23 07:01:27','2025-05-22 12:06:16','2025-09-02 09:01:32',1,NULL,2,0,'https://dummy.link/task/4'),(5,'Hello',1,1,'2025-05-23 15:00:00','completed','2025-05-24 09:41:11','2025-05-23 05:16:40','2025-09-02 09:01:32',1,NULL,2,0,'https://dummy.link/task/5'),(6,'qwwqwqwqw',11,1,'2025-06-06 14:00:00','completed','2025-05-24 09:39:54','2025-05-23 10:25:27','2025-09-02 12:19:41',1,NULL,1,0,'https://dummy.link/task/6'),(7,'sdsadsds',11,1,'2025-06-12 14:00:00','completed','2025-05-29 09:16:06','2025-05-23 10:26:18','2025-09-02 12:19:46',1,NULL,2,0,'C:\\Users\\Swapnali\\Downloads\\telegram-bot-main\\telegram-bot-main\\src\\commands'),(8,'sasasas',1,1,'2025-06-05 14:00:00','overdue',NULL,'2025-05-23 10:36:34','2025-09-02 10:05:40',NULL,NULL,4,1,NULL),(9,'ssasasasa',1,1,'2025-05-23 17:00:00','overdue',NULL,'2025-05-23 11:06:06','2025-09-02 10:05:40',NULL,NULL,4,1,NULL),(10,'asasasasasasa',1,1,'2025-06-12 23:59:59','overdue',NULL,'2025-05-23 12:27:25','2025-09-02 10:05:40',NULL,NULL,4,1,NULL),(12,'bhai chal ghar jaate hai\n6.30 pm',1,1,'2025-05-24 18:00:00','completed','2025-05-29 09:16:25','2025-05-24 11:03:42','2025-09-02 10:05:40',1,NULL,3,0,'https://dummy.link/task/12'),(15,'sas\nasasa\nasasa\nASAS\nSASA',1,1,'2025-05-24 20:00:00','completed','2025-05-29 09:21:13','2025-05-24 11:42:04','2025-09-02 10:05:40',1,NULL,2,0,'https://dummy.link/task/15'),(17,'Task Bot UI',45,46,'2025-05-26 18:30:00','completed','2025-05-27 04:38:37','2025-05-26 11:31:15','2025-09-02 10:05:40',44,NULL,5,0,'https://dummy.link/task/17'),(18,'Hello',46,1,'2025-05-29 15:00:00','completed','2025-05-29 09:35:01','2025-05-29 09:22:46','2025-09-02 10:05:40',1,NULL,1,0,'https://dummy.link/task/18'),(19,'PFEPL Web Analytics',47,46,'2025-05-29 18:30:00','completed','2025-05-29 09:53:46','2025-05-29 09:52:55','2025-09-02 10:05:40',44,NULL,5,0,'https://dummy.link/task/19'),(20,'2323232',1,1,'2025-05-29 17:00:00','overdue',NULL,'2025-05-29 09:53:33','2025-09-02 10:05:40',NULL,NULL,3,1,NULL),(21,'Temp123',44,46,'2025-05-29 18:30:00','completed','2025-05-29 09:55:27','2025-05-29 09:54:57','2025-09-02 10:05:40',44,NULL,5,0,'https://dummy.link/task/21'),(22,'make the ui of tel bot little more ellaborate so i can understand for example :_ like every box like date filter like have label for everything ok\ni mean box ok',44,1,'2025-05-29 17:00:00','completed','2025-05-31 04:34:48','2025-05-29 10:20:21','2025-09-02 09:03:20',-1,NULL,3,0,'https://dummy.link/task/22'),(23,'sdsdsdsd',1,1,'2025-05-29 18:30:00','overdue',NULL,'2025-05-29 12:23:00','2025-09-02 09:03:20',NULL,NULL,2,1,NULL),(24,'sdsdsds',44,1,'2025-05-29 19:30:00','completed','2025-05-31 04:34:14','2025-05-29 12:29:38','2025-09-02 10:05:40',1,NULL,1,0,'https://dummy.link/task/24'),(25,'sdsdsds',1,1,'2025-05-29 19:30:00','overdue',NULL,'2025-05-29 12:32:59','2025-09-02 10:05:40',NULL,NULL,4,1,NULL),(26,'sasaa',47,1,'2025-06-12 23:59:59','completed','2025-08-26 12:26:58','2025-05-29 12:37:20','2025-09-02 10:05:40',1,NULL,3,0,'https://dummy.link/task/26'),(27,'asasaas',47,46,'2025-06-03 23:59:59','overdue',NULL,'2025-05-29 12:43:22','2025-09-02 10:05:40',NULL,NULL,5,1,NULL),(28,'sdsds',1,1,'2025-05-31 13:30:00','overdue',NULL,'2025-05-31 11:55:49','2025-09-02 10:05:40',NULL,NULL,2,1,NULL),(29,'1. PFEPL bot\n2. 30 August, 2:00pm',46,46,'2025-08-30 23:59:59','completed','2025-08-26 12:13:43','2025-08-26 11:18:51','2025-09-02 10:05:40',46,NULL,5,0,'https://dummy.link/task/29'),(30,'Pfepl bots',46,46,'2025-08-30 23:59:59','completed','2025-08-26 12:16:16','2025-08-26 12:14:51','2025-09-02 10:05:40',46,NULL,5,0,'https://dummy.link/task/30'),(31,'pfepl bots',1,1,'2025-08-31 23:59:59','completed','2025-08-26 12:25:27','2025-08-26 12:20:19','2025-09-02 12:17:47',1,NULL,2,0,'https://dummy.link/task/31'),(32,'pfepl bots',1,1,'2025-08-31 23:59:59','completed','2025-08-26 12:25:44','2025-08-26 12:25:00','2025-09-02 12:17:11',1,NULL,3,0,'https://dummy.link/task/32'),(33,'adsdf',1,1,'2025-09-15 23:59:59','completed','2025-08-26 12:28:00','2025-08-26 12:27:47','2025-09-02 12:17:11',1,NULL,3,0,'https://dummy.link/task/33'),(34,'Hello',46,1,'2025-08-31 23:59:59','completed','2025-08-26 12:31:58','2025-08-26 12:31:00','2025-09-02 10:05:40',1,NULL,1,0,'https://dummy.link/task/34'),(36,'pfepl bots',46,46,'2025-09-15 23:59:59','pending',NULL,'2025-08-28 04:50:32','2025-09-02 10:05:40',NULL,NULL,5,1,NULL),(37,'news',46,46,'2025-09-15 23:59:59','completed','2025-08-27 18:29:59','2025-08-21 18:29:59','2025-09-02 09:03:52',1,NULL,5,0,'https://dummy.link/task/37'),(38,'adding html',46,46,'2025-08-29 23:59:59','completed','2025-09-02 10:11:48','2025-08-28 06:32:46','2025-09-02 10:11:47',46,NULL,5,0,NULL),(39,'fungi varities',46,46,'2025-09-20 23:59:59','pending',NULL,'2025-09-02 10:10:53','2025-09-02 10:10:53',NULL,NULL,NULL,1,NULL),(40,'employee 50 config',47,46,'2025-09-26 23:59:59','pending',NULL,'2025-09-02 11:25:43','2025-09-02 11:25:43',NULL,NULL,NULL,1,NULL),(41,'employee 50 config',46,46,'2025-09-26 23:59:59','pending',NULL,'2025-09-02 11:26:30','2025-09-02 11:26:30',NULL,NULL,NULL,1,NULL),(42,'cloudurity',52,46,'2025-07-26 23:59:59','completed','2025-07-02 10:11:48','2025-06-02 12:11:48','2025-07-02 10:11:48',NULL,NULL,5,0,'C:\\Users\\Satty\\Downloads\\Office'),(43,'camera',51,46,'2025-09-26 23:59:59','pending',NULL,'2025-09-01 18:29:59','2025-09-01 18:29:59',NULL,NULL,5,1,NULL),(44,'work',51,46,'2025-08-26 23:59:59','overdue',NULL,'2025-08-24 18:29:59','2025-08-24 18:29:59',NULL,NULL,5,1,NULL),(45,'ulhas',50,46,'2025-09-26 23:59:59','completed','2025-09-02 10:11:48','2025-08-26 18:29:59','2025-09-02 10:11:48',NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `telegram_id` bigint NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role` tinyint NOT NULL DEFAULT '2' COMMENT 'Role: 0=admin, 1=manager, 2=employee',
  `manager_id` int DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `telegram_id` (`telegram_id`),
  KEY `idx_telegram_id` (`telegram_id`),
  KEY `idx_user_role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1344633224,NULL,'Azeem','Shaikh','2025-04-17 06:35:35','2025-09-02 12:55:07',1,0,'active','user1@example.com','+91345678901'),(11,6601508398,NULL,'Mohammad Aamir','Khan','2025-05-20 10:54:20','2025-09-02 12:55:07',1,1,'active','user11@example.com','+91345678911'),(35,7159557860,NULL,'Fahad','Shaikh','2025-05-23 06:51:43','2025-09-02 12:54:29',2,1,'active','user35@example.com','+12345678935'),(40,6599222550,NULL,'Amr',NULL,'2025-05-23 12:57:19','2025-09-02 12:54:29',2,1,'active','user40@example.com','+12345678940'),(44,1417635652,'WyvernOF','Karthik','Nambiar','2025-05-24 12:25:07','2025-09-02 12:54:29',2,46,'active','user44@example.com','+12345678944'),(45,1760940384,'dipalidipali','Dipali','Patel','2025-05-30 06:09:20','2025-09-02 12:54:29',2,46,'active','user45@example.com','+12345678945'),(46,1201032986,'S_s313','Swapnali','','2025-08-26 11:16:50','2025-09-02 12:55:25',1,1,'active','user46@example.com','+91345678946'),(47,1201032999,'emp_dummy','Test','Employee','2025-08-28 04:58:34','2025-09-02 12:55:25',2,46,'active','user47@example.com','+91345678947'),(49,6050279866,'Player55545','Player','55545','2025-08-30 10:37:30','2025-09-02 12:54:29',2,1,'active','user49@example.com','+12345678949'),(50,9999323293,'Delle_56','Sakshi','Sen','2025-08-30 10:39:30','2025-09-02 12:54:29',2,46,'active','user50@example.com','+12345678950'),(51,2345253424,'Rage_Rider','Raghav','Suri','2025-08-30 10:41:30','2025-09-02 12:54:29',2,46,'active','user51@example.com','+12345678951'),(52,4343434334,'Saty','Satyan','Pichi','2025-08-30 10:43:30','2025-09-02 12:54:29',2,46,'active','user52@example.com','+12345678952');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_backup`
--

DROP TABLE IF EXISTS `users_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_backup` (
  `id` int NOT NULL DEFAULT '0',
  `telegram_id` bigint NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `role` enum('employee','manager','admin') DEFAULT 'employee',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_backup`
--

LOCK TABLES `users_backup` WRITE;
/*!40000 ALTER TABLE `users_backup` DISABLE KEYS */;
INSERT INTO `users_backup` VALUES (1,1344633224,NULL,'Azeem','Shaikh','manager','2025-04-17 06:35:35','2025-04-18 09:38:00'),(2,1760940384,'dipalidipali','Dipali','Patel','employee','2025-04-17 07:09:45','2025-04-17 07:09:45'),(4,6599222550,NULL,'Amr',NULL,'employee','2025-04-17 12:08:11','2025-04-17 12:08:11');
/*!40000 ALTER TABLE `users_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'task_manager'
--

--
-- Dumping routines for database 'task_manager'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-03 11:19:32
