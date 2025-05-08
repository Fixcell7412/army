-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: army
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `tbl_accounts`
--

DROP TABLE IF EXISTS `tbl_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unit_offices_name_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `e_signature_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_accounts`
--

LOCK TABLES `tbl_accounts` WRITE;
/*!40000 ALTER TABLE `tbl_accounts` DISABLE KEYS */;
INSERT INTO `tbl_accounts` VALUES (1,'1','Dennis','L','Bongaitan','s','2025-02-15','0','Dennis1234','denzlord13@gmail.com','1','2','1234','Admin','67b01b4fd283c.jpg','67cefa6407abd.jpg','a','a','active','2025-02-15 04:42:55','2025-03-10 09:55:40',NULL),(4,'2','TESTING','s','BONGAITAN','N/A','2025-03-11','33','Davao City','remelyn.macalisang@dssc.edu.ph','1','2','12345','User','67cf0d4c3492c.jpg','67cf0d4c349fb.jpg','u','u','active','2025-03-10 16:03:24',NULL,NULL),(5,'1','cs','csd','scd','scd','1998-03-31','','sdcsd','csddcssdc@gmail.com','1','2','sd22','User','67cf171f5df06.jpg','67cf171f5e003.png','sc','$2y$10$qxXQLeflJLeuWRNMd/CUOO/5bzsnpi/.MdqwhIs6nN7.cBMMI.O9K','active','2025-03-10 16:45:19',NULL,NULL),(6,'2','bbbbbbbbbbbbb','bnnbnb','dvdf','dvf','2025-03-11','','dvf','remelybbn.macalisang@dssc.edu.ph','2','2','vdfdvf','User','67cf17cd135b3.jpg','67cf17cd136c9.jpg','dvfdv','$2y$10$8gr7aG3KdSA7Gq63NSv3zudo8AhqVZW335QxKju4jcb.JyYnKMtDi','inactive','2025-03-10 16:48:13',NULL,NULL),(7,'2','csdcscsdcs','csdsd','sc','scscd','1998-03-31','17','scs','rscdemelyn.macalisang@dssc.edu.ph','1','2','scscsc','User','67cf1855432ec.jpg','67cf185543481.jpg','csdcsd','$2y$10$5I4o0cRkt3RivlWwts6vD.ysbh1ulHh2vTSYJUbsdBTIOI4.d.PL6','inactive','2025-03-10 16:50:29','2025-03-10 16:53:15',NULL),(8,'1','testuser','csdscdcsdcsd','csdsdcsd','scscd','1998-03-31','26','scdscd','testuser@gmail.com','2','2','csdcsdcsd','User','67cf1928a1b29.jpg','67cf1928a1c26.jpg','scdsd','1234','active','2025-03-10 16:54:00','2025-03-10 10:33:47',NULL);
/*!40000 ALTER TABLE `tbl_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activity_logs`
--

DROP TABLE IF EXISTS `tbl_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activity_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `details` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activity_logs`
--

LOCK TABLES `tbl_activity_logs` WRITE;
/*!40000 ALTER TABLE `tbl_activity_logs` DISABLE KEYS */;
INSERT INTO `tbl_activity_logs` VALUES (1,1,'Created Account','Created new account for asxc axs (ID: 3)','2025-02-15 14:26:25'),(2,1,'Page View','Viewed Accounts Management page','2025-02-15 14:27:17'),(3,1,'Page View','Viewed Accounts Management page','2025-02-15 14:28:03'),(4,1,'Page View','Viewed Designation Management page','2025-02-15 15:10:10'),(5,1,'Page View','Viewed Designation Management page','2025-02-15 15:10:16'),(6,1,'Page View','Viewed Designation Management page','2025-02-15 15:11:42'),(7,1,'Page View','Viewed Designation Management page','2025-02-15 15:12:06'),(8,1,'Page View','Viewed Designation Management page','2025-02-15 15:12:37'),(9,1,'Page View','Viewed Profile page','2025-02-15 15:12:52'),(10,1,'Page View','Viewed Profile page','2025-02-15 15:13:11'),(11,1,'Page View','Viewed Profile page','2025-02-15 15:13:13'),(12,1,'Page View','Viewed Profile page','2025-02-15 15:13:28'),(13,1,'Page View','Viewed Analytics page','2025-02-15 15:13:29'),(14,1,'Page View','Viewed Profile page','2025-02-15 15:13:33'),(15,1,'Page View','Viewed Profile page','2025-02-15 15:17:11'),(16,1,'Page View','Viewed Inventory Management page','2025-02-15 15:17:50'),(17,1,'Page View','Viewed Add Post page','2025-02-15 15:17:55'),(18,1,'Page View','Viewed Add Post page','2025-02-15 15:18:46'),(19,1,'Page View','Viewed Add Post page','2025-02-15 15:22:00'),(20,1,'Page View','Viewed Add Post page','2025-02-15 15:22:50'),(21,1,'Page View','Viewed Add Post page','2025-02-15 15:23:41'),(22,1,'Page View','Viewed Add Post page','2025-02-15 15:24:20'),(23,1,'Page View','Viewed Add Post page','2025-02-15 15:25:44'),(24,1,'Page View','Viewed Add Post page','2025-02-15 15:27:30'),(25,1,'Page View','Viewed Add Post page','2025-02-15 15:27:47'),(26,1,'Create Post','Created new post: VFD','2025-02-15 15:27:47'),(27,1,'Page View','Viewed Add Post page','2025-02-15 15:28:11'),(28,1,'Page View','Viewed Add Post page','2025-02-15 15:28:56'),(29,1,'Page View','Viewed Add Post page','2025-02-15 15:29:03'),(30,1,'Page View','Viewed Add Post page','2025-02-15 15:30:33'),(31,1,'Page View','Viewed Add Post page','2025-02-15 15:32:32'),(32,1,'Page View','Viewed Add Post page','2025-02-15 15:33:35'),(33,1,'Page View','Viewed Add Post page','2025-02-15 15:35:45'),(34,1,'Page View','Viewed Add Post page','2025-02-15 15:36:54'),(35,1,'Page View','Viewed Add Post page','2025-02-15 15:38:07'),(36,1,'Page View','Viewed Add Post page','2025-02-15 15:38:26'),(37,1,'Page View','Viewed Add Post page','2025-02-15 15:39:06'),(38,1,'Page View','Viewed Add Post page','2025-02-15 15:39:10'),(39,1,'Delete Post','Deleted post ID: 1','2025-02-15 15:39:10'),(40,1,'Page View','Viewed Add Post page','2025-02-15 15:39:12'),(41,1,'Page View','Viewed Add Post page','2025-02-15 15:39:21'),(42,1,'Create Post','Created new post: dwqdqw','2025-02-15 15:39:21'),(43,1,'Page View','Viewed Add Post page','2025-02-15 15:39:23'),(44,1,'Page View','Viewed Add Post page','2025-02-15 15:40:13'),(45,1,'Page View','Viewed Add Post page','2025-02-15 15:40:22'),(46,1,'Create Post','Created new post: asdxasx','2025-02-15 15:40:22'),(47,1,'Page View','Viewed Add Post page','2025-02-15 15:40:24'),(48,1,'Page View','Viewed Add Post page','2025-02-15 15:41:04'),(49,1,'Page View','Viewed Add Post page','2025-02-15 15:41:08'),(50,1,'Delete Post','Deleted post ID: 3','2025-02-15 15:41:08'),(51,1,'Page View','Viewed Add Post page','2025-02-15 15:41:10'),(52,1,'Page View','Viewed Add Post page','2025-02-15 15:41:14'),(53,1,'Update Post','Updated post: dwqdqw','2025-02-15 15:41:14'),(54,1,'Page View','Viewed Add Post page','2025-02-15 15:41:16'),(55,1,'Page View','Viewed Add Post page','2025-02-15 15:42:49'),(56,1,'Page View','Viewed Add Post page','2025-02-15 15:42:53'),(57,1,'Update Post','Updated post: dwqdqw','2025-02-15 15:42:54'),(58,1,'Page View','Viewed Add Post page','2025-02-15 15:42:55'),(59,1,'Page View','Viewed Add Post page','2025-02-15 15:44:35'),(60,1,'Page View','Viewed Add Post page','2025-02-15 15:44:44'),(61,1,'Create Post','Created new post: sxasaxsxa','2025-02-15 15:44:44'),(62,1,'Page View','Viewed Add Post page','2025-02-15 15:44:47'),(63,1,'Page View','Viewed Add Post page','2025-02-15 15:44:56'),(64,1,'Update Post','Updated post: sxasaxsxa','2025-02-15 15:44:56'),(65,1,'Page View','Viewed Add Post page','2025-02-15 15:44:57'),(66,1,'Page View','Viewed Add Post page','2025-02-15 15:45:01'),(67,1,'Delete Post','Deleted post ID: 2','2025-02-15 15:45:01'),(68,1,'Page View','Viewed Add Post page','2025-02-15 15:45:03'),(69,1,'Page View','Viewed Add Post page','2025-02-15 15:45:18'),(70,1,'Page View','Viewed Analytics page','2025-02-15 15:45:24'),(71,1,'Page View','Viewed Analytics page','2025-02-15 15:45:26'),(72,1,'Page View','Viewed Analytics page','2025-02-15 15:46:04'),(73,1,'Page View','Viewed Analytics page','2025-02-15 15:46:44'),(74,1,'Page View','Viewed Analytics page','2025-02-15 15:46:46'),(75,1,'Page View','Viewed Analytics page','2025-02-15 15:46:57'),(76,1,'Page View','Viewed Analytics page','2025-02-15 15:47:00'),(77,1,'Page View','Viewed Add Post page','2025-02-15 15:47:44'),(78,1,'Page View','Viewed Add Post page','2025-02-15 15:47:58'),(79,1,'Page View','Viewed Add Post page','2025-02-15 15:48:10'),(80,1,'Page View','Viewed Add Post page','2025-02-15 15:48:24'),(81,1,'Page View','Viewed Add Post page','2025-02-15 15:48:29'),(82,1,'Page View','Viewed Add Post page','2025-02-15 15:48:50'),(83,1,'Page View','Viewed Add Post page','2025-02-15 15:48:52'),(84,1,'Page View','Viewed Analytics page','2025-02-15 15:49:20'),(85,1,'Page View','Viewed Analytics page','2025-02-15 15:49:41'),(86,1,'Page View','Viewed Add Post page','2025-02-15 15:49:43'),(87,1,'Page View','Viewed Add Post page','2025-02-15 15:49:49'),(88,1,'Page View','Viewed Add Post page','2025-02-15 15:49:51'),(89,1,'Page View','Viewed Analytics page','2025-02-15 15:49:54'),(90,1,'Page View','Viewed Analytics page','2025-02-15 15:50:03'),(91,1,'Page View','Viewed Add Post page','2025-02-15 15:50:04'),(92,1,'Page View','Viewed Analytics page','2025-02-15 15:50:12'),(93,1,'Page View','Viewed Add Post page','2025-02-15 15:50:13'),(94,1,'Page View','Viewed Add Post page','2025-02-15 15:51:05'),(95,1,'Page View','Viewed Add Post page','2025-02-15 15:52:43'),(96,1,'Page View','Viewed Add Post page','2025-02-15 15:53:01'),(97,1,'Page View','Viewed Add Post page','2025-02-15 15:53:04'),(98,1,'Page View','Viewed Add Post page','2025-02-15 15:53:27'),(99,1,'Page View','Viewed Add Post page','2025-02-15 15:54:33'),(100,1,'Page View','Viewed Add Post page','2025-02-15 15:54:38'),(101,1,'Page View','Viewed Add Post page','2025-02-15 15:54:46'),(102,1,'Page View','Viewed Add Post page','2025-02-15 15:54:50'),(103,1,'Page View','Viewed Analytics page','2025-02-15 15:54:53'),(104,1,'Page View','Viewed Add Post page','2025-02-15 15:54:55'),(105,1,'Page View','Viewed Add Post page','2025-02-15 15:55:15'),(106,1,'Page View','Viewed Add Post page','2025-02-15 15:55:31'),(107,1,'Page View','Viewed Accounts Management page','2025-02-15 15:55:38'),(108,1,'Page View','Viewed Analytics page','2025-02-15 15:55:41'),(109,1,'Page View','Viewed Add Post page','2025-02-15 15:55:43'),(110,1,'Page View','Viewed Dashboard page','2025-02-28 22:31:19'),(111,1,'Page View','Viewed Add Post page','2025-02-28 22:31:27'),(112,1,'Page View','Viewed Add Post page','2025-02-28 22:31:32'),(113,1,'Page View','Viewed Analytics page','2025-02-28 22:31:34'),(114,1,'Page View','Viewed Accounts Management page','2025-02-28 22:33:07'),(115,1,'Page View','Viewed Add Post page','2025-02-28 22:33:10'),(116,1,'Page View','Viewed Location Management page','2025-02-28 22:33:13'),(117,1,'Page View','Viewed Unit/Offices Management page','2025-02-28 22:33:19'),(118,1,'Page View','Viewed Designation Management page','2025-02-28 22:33:21'),(119,1,'Page View','Viewed Add Post page','2025-02-28 22:33:24'),(120,1,'Page View','Viewed Inventory Management page','2025-02-28 22:33:26'),(121,1,'Page View','Viewed Location Management page','2025-02-28 22:37:54'),(122,1,'Page View','Viewed Location Management page','2025-02-28 22:37:57'),(123,1,'Page View','Viewed Location Management page','2025-02-28 22:38:00'),(124,1,'Page View','Viewed Profile page','2025-02-28 22:39:31'),(125,1,'Page View','Viewed Profile page','2025-02-28 22:41:10'),(126,1,'Page View','Viewed Profile page','2025-02-28 22:41:23'),(127,1,'Page View','Viewed Rank Management page','2025-02-28 22:41:30'),(128,1,'Page View','Viewed Rank Management page','2025-02-28 22:41:33'),(129,1,'Page View','Viewed Rank Management page','2025-02-28 22:41:36'),(130,1,'Page View','Viewed Profile page','2025-02-28 22:41:41'),(131,1,'Page View','Viewed Profile page','2025-02-28 22:43:10'),(132,1,'Page View','Viewed Profile page','2025-02-28 22:43:18'),(133,1,'Page View','Viewed Profile page','2025-02-28 22:44:33'),(134,1,'Page View','Viewed Profile page','2025-02-28 22:44:43'),(135,1,'Page View','Viewed Profile page','2025-02-28 22:46:27'),(136,1,'Page View','Viewed Profile page','2025-02-28 22:46:33'),(137,1,'Page View','Viewed Profile page','2025-02-28 22:47:27'),(138,1,'Page View','Viewed Profile page','2025-02-28 22:47:32'),(139,1,'Page View','Viewed Profile page','2025-02-28 22:49:25'),(140,1,'Page View','Viewed Profile page','2025-02-28 22:49:30'),(141,1,'Page View','Viewed Profile page','2025-02-28 22:49:43'),(142,1,'Page View','Viewed Profile page','2025-02-28 22:53:36'),(143,1,'Page View','Viewed Profile page','2025-02-28 22:53:45'),(144,1,'Page View','Viewed Profile page','2025-02-28 22:55:06'),(145,1,'Page View','Viewed Profile page','2025-02-28 22:55:15'),(146,1,'Page View','Viewed Profile page','2025-02-28 22:56:12'),(147,1,'Page View','Viewed Profile page','2025-02-28 22:56:53'),(148,1,'Page View','Viewed Profile page','2025-02-28 22:58:20'),(149,1,'Page View','Viewed Profile page','2025-02-28 22:58:46'),(150,1,'Page View','Viewed Profile page','2025-02-28 22:59:19'),(151,1,'Profile Update','Updated personal information','2025-02-28 22:59:19'),(152,1,'Page View','Viewed Profile page','2025-02-28 22:59:20'),(153,1,'Page View','Viewed Profile page','2025-02-28 22:59:26'),(154,1,'Profile Update','Updated personal information','2025-02-28 22:59:26'),(155,1,'Page View','Viewed Profile page','2025-02-28 22:59:27'),(156,1,'Page View','Viewed Profile page','2025-02-28 23:00:40'),(157,1,'Page View','Viewed Profile page','2025-02-28 23:00:45'),(158,1,'Profile Update','Updated personal information','2025-02-28 23:00:45'),(159,1,'Page View','Viewed Profile page','2025-02-28 23:00:47'),(160,1,'Page View','Viewed Profile page','2025-02-28 23:01:32'),(161,1,'Page View','Viewed Profile page','2025-02-28 23:01:36'),(162,1,'Page View','Viewed Profile page','2025-02-28 23:02:19'),(163,1,'Page View','Viewed Profile page','2025-02-28 23:02:24'),(164,1,'Page View','Viewed Profile page','2025-02-28 23:03:42'),(165,1,'Page View','Viewed Profile page','2025-02-28 23:03:46'),(166,1,'Page View','Viewed Dashboard page','2025-02-28 23:05:08'),(167,1,'Page View','Viewed Profile page','2025-02-28 23:05:12'),(168,1,'Page View','Viewed Accounts Management page','2025-02-28 23:06:02'),(169,1,'Page View','Viewed Accounts Management page','2025-02-28 23:06:06'),(170,1,'Page View','Viewed Profile page','2025-02-28 23:06:09'),(171,1,'Page View','Viewed Profile page','2025-02-28 23:07:12'),(172,1,'Page View','Viewed Profile page','2025-02-28 23:07:17'),(173,1,'Page View','Viewed Profile page','2025-02-28 23:09:16'),(174,1,'Page View','Viewed Profile page','2025-02-28 23:09:21'),(175,1,'Page View','Viewed Profile page','2025-02-28 23:09:49'),(176,1,'Page View','Viewed Profile page','2025-02-28 23:10:26'),(177,1,'Page View','Viewed Profile page','2025-02-28 23:10:42'),(178,1,'Page View','Viewed Profile page','2025-02-28 23:10:51'),(179,1,'Page View','Viewed Profile page','2025-02-28 23:16:17'),(180,1,'Page View','Viewed Profile page','2025-02-28 23:16:39'),(181,1,'Page View','Viewed Profile page','2025-02-28 23:17:10'),(182,1,'Page View','Viewed Profile page','2025-02-28 23:17:18'),(183,1,'Page View','Viewed Profile page','2025-02-28 23:22:57'),(184,1,'Page View','Viewed Profile page','2025-02-28 23:23:04'),(185,1,'Page View','Viewed Profile page','2025-02-28 23:23:30'),(186,1,'Page View','Viewed Analytics page','2025-02-28 23:23:42'),(187,1,'Page View','Viewed Analytics page','2025-02-28 23:25:38'),(188,1,'Page View','Viewed Add Post page','2025-02-28 23:25:39'),(189,1,'Page View','Viewed Add Post page','2025-02-28 23:25:40'),(190,1,'Page View','Viewed Analytics page','2025-02-28 23:25:42'),(191,1,'Page View','Viewed Analytics page','2025-02-28 23:26:13'),(192,1,'Page View','Viewed Analytics page','2025-02-28 23:27:07'),(193,1,'Page View','Viewed Analytics page','2025-02-28 23:28:34'),(194,1,'Page View','Viewed Accounts Management page','2025-02-28 23:48:34'),(195,1,'Page View','Viewed Accounts Management page','2025-02-28 23:48:53'),(196,1,'Page View','Viewed Analytics page','2025-03-01 00:32:05'),(197,1,'Page View','Viewed Analytics page','2025-03-01 00:34:36'),(198,1,'Page View','Viewed Analytics page','2025-03-01 00:35:16'),(199,1,'Page View','Viewed Analytics page','2025-03-01 00:36:31'),(200,1,'Page View','Viewed Analytics page','2025-03-01 00:37:20'),(201,1,'Page View','Viewed Analytics page','2025-03-01 00:37:44'),(202,1,'Page View','Viewed Analytics page','2025-03-01 00:39:14'),(203,1,'Page View','Viewed Analytics page','2025-03-01 00:39:21'),(204,1,'Page View','Viewed Analytics page','2025-03-01 00:39:29'),(205,1,'Page View','Viewed Analytics page','2025-03-01 00:40:10'),(206,1,'Page View','Viewed Analytics page','2025-03-01 00:40:38'),(207,1,'Page View','Viewed Analytics page','2025-03-01 00:41:12'),(208,1,'Page View','Viewed Analytics page','2025-03-01 00:41:38'),(209,1,'Page View','Viewed Analytics page','2025-03-01 00:42:50'),(210,1,'Page View','Viewed Analytics page','2025-03-01 00:44:23'),(211,1,'Page View','Viewed Analytics page','2025-03-01 00:44:39'),(212,1,'Page View','Viewed Analytics page','2025-03-01 00:44:47'),(213,1,'Page View','Viewed Analytics page','2025-03-01 00:45:06'),(214,1,'Page View','Viewed Analytics page','2025-03-01 00:45:15'),(215,1,'Page View','Viewed Analytics page','2025-03-01 00:45:35'),(216,1,'Page View','Viewed Analytics page','2025-03-01 00:45:53'),(217,1,'Page View','Viewed Analytics page','2025-03-01 00:47:05'),(218,1,'Page View','Viewed Inventory Management page','2025-03-01 00:47:42'),(219,1,'Page View','Viewed Profile page','2025-03-01 00:50:15'),(220,1,'Page View','Viewed Accounts Management page','2025-03-01 00:50:19'),(221,1,'Page View','Viewed Accounts Management page','2025-03-01 00:50:25'),(222,1,'Page View','Viewed Profile page','2025-03-01 00:50:29'),(223,1,'Page View','Viewed Profile page','2025-03-01 00:50:33'),(224,1,'Page View','Viewed Profile page','2025-03-01 00:50:53'),(225,1,'Page View','Viewed Accounts Management page','2025-03-01 00:50:56'),(226,1,'Page View','Viewed Analytics page','2025-03-01 00:51:04'),(227,2,'Page View','Viewed Inventory Management page','2025-03-01 09:31:58'),(228,2,'Page View','Viewed Inventory Management page','2025-03-01 09:33:01'),(229,2,'Page View','Viewed Inventory Management page','2025-03-01 09:33:23'),(230,2,'Page View','Viewed Inventory Management page','2025-03-01 09:33:40'),(231,2,'Page View','Viewed Inventory Management page','2025-03-01 09:34:07'),(232,2,'Page View','Viewed Inventory Management page','2025-03-01 09:35:12'),(233,2,'Page View','Viewed Profile page','2025-03-01 09:35:14'),(234,2,'Page View','Viewed Profile page','2025-03-01 09:36:06'),(235,2,'Page View','Viewed Profile page','2025-03-01 09:36:13'),(236,2,'Page View','Viewed Inventory Management page','2025-03-01 09:36:32'),(237,2,'Page View','Viewed Inventory Management page','2025-03-01 09:36:38'),(238,2,'Page View','Viewed Inventory Management page','2025-03-01 09:37:06'),(239,2,'Page View','Viewed Inventory Management page','2025-03-01 09:37:09'),(240,2,'Page View','Viewed Inventory Management page','2025-03-01 09:46:19'),(241,2,'Page View','Viewed Inventory Management page','2025-03-01 09:46:34'),(242,2,'Page View','Viewed Inventory Management page','2025-03-01 09:46:36'),(243,2,'Page View','Viewed Inventory Management page','2025-03-01 09:49:18'),(244,2,'Page View','Viewed Inventory Management page','2025-03-01 09:52:12'),(245,2,'Page View','Viewed Inventory Management page','2025-03-01 09:52:26'),(246,2,'Page View','Viewed Inventory Management page','2025-03-01 09:53:06'),(247,2,'Page View','Viewed Inventory Management page','2025-03-01 09:53:48'),(248,2,'Page View','Viewed Inventory Management page','2025-03-01 09:54:17'),(249,2,'Page View','Viewed Inventory Management page','2025-03-01 09:54:20'),(250,2,'Page View','Viewed Inventory Management page','2025-03-01 09:57:32'),(251,2,'Page View','Viewed Inventory Management page','2025-03-01 09:58:37'),(252,2,'Page View','Viewed Inventory Management page','2025-03-01 10:01:03'),(253,2,'Page View','Viewed Inventory Management page','2025-03-01 10:02:36'),(254,2,'Page View','Viewed Inventory Management page','2025-03-01 10:02:54'),(255,2,'Page View','Viewed Inventory Management page','2025-03-01 10:02:57'),(256,2,'Page View','Viewed Inventory Management page','2025-03-01 10:05:42'),(257,2,'Page View','Viewed Inventory Management page','2025-03-01 10:05:45'),(258,2,'Page View','Viewed Inventory Management page','2025-03-01 10:05:46'),(259,2,'Page View','Viewed Inventory Management page','2025-03-01 10:05:46'),(260,2,'Page View','Viewed Inventory Management page','2025-03-01 10:09:24'),(261,2,'Page View','Viewed Inventory Management page','2025-03-01 10:09:30'),(262,2,'Page View','Viewed Inventory Management page','2025-03-01 10:10:05'),(263,2,'Page View','Viewed Inventory Management page','2025-03-01 10:10:31'),(264,2,'Page View','Viewed Inventory Management page','2025-03-01 10:10:42'),(265,2,'Page View','Viewed Inventory Management page','2025-03-01 10:10:45'),(266,2,'Page View','Viewed Inventory Management page','2025-03-01 10:11:06'),(267,2,'Page View','Viewed Inventory Management page','2025-03-01 10:11:09'),(268,2,'Page View','Viewed Inventory Management page','2025-03-01 10:11:33'),(269,2,'Page View','Viewed Inventory Management page','2025-03-01 10:11:47'),(270,2,'Page View','Viewed Inventory Management page','2025-03-01 10:11:50'),(271,2,'Page View','Viewed Inventory Management page','2025-03-01 10:11:54'),(272,2,'Page View','Viewed Inventory Management page','2025-03-01 10:12:53'),(273,2,'Page View','Viewed Inventory Management page','2025-03-01 10:13:18'),(274,2,'Page View','Viewed Inventory Management page','2025-03-01 10:13:51'),(275,2,'Page View','Viewed Inventory Management page','2025-03-01 10:14:44'),(276,2,'Page View','Viewed Inventory Management page','2025-03-01 10:16:10'),(277,2,'Page View','Viewed Inventory Management page','2025-03-01 10:18:19'),(278,2,'Page View','Viewed Inventory Management page','2025-03-01 10:18:44'),(279,2,'Page View','Viewed Inventory Management page','2025-03-01 10:18:58'),(280,2,'Page View','Viewed Inventory Management page','2025-03-01 10:19:48'),(281,2,'Page View','Viewed Inventory Management page','2025-03-01 10:19:50'),(282,2,'Page View','Viewed Inventory Management page','2025-03-01 10:19:52'),(283,2,'Page View','Viewed Inventory Management page','2025-03-01 10:19:54'),(284,2,'Page View','Viewed Inventory Management page','2025-03-01 10:20:06'),(285,2,'Page View','Viewed Inventory Management page','2025-03-01 10:20:44'),(286,2,'Page View','Viewed Inventory Management page','2025-03-01 10:20:46'),(287,2,'Page View','Viewed Inventory Management page','2025-03-01 10:20:52'),(288,3,'Page View','Viewed Inventory Management page','2025-03-01 10:38:28'),(289,3,'Page View','Viewed Inventory Management page','2025-03-01 10:38:55'),(290,3,'Page View','Viewed Inventory Management page','2025-03-01 10:39:03'),(291,3,'Page View','Viewed Inventory Management page','2025-03-01 10:39:04'),(292,3,'Page View','Viewed Inventory Management page','2025-03-01 10:42:37'),(293,3,'Page View','Viewed Inventory Management page','2025-03-01 10:44:11'),(294,3,'Page View','Viewed Inventory Management page','2025-03-01 10:44:27'),(295,3,'Page View','Viewed Inventory Management page','2025-03-01 10:44:30'),(296,3,'Page View','Viewed Inventory Management page','2025-03-01 10:44:42'),(297,3,'Page View','Viewed Inventory Management page','2025-03-01 10:44:50'),(298,3,'Page View','Viewed Profile page','2025-03-01 10:44:52'),(299,3,'Page View','Viewed Profile page','2025-03-01 10:44:57'),(300,3,'Page View','Viewed Profile page','2025-03-01 10:45:00'),(301,3,'Page View','Viewed Profile page','2025-03-01 10:45:38'),(302,3,'Page View','Viewed Dashboard page','2025-03-01 10:47:59'),(303,3,'Page View','Viewed Inventory Management page','2025-03-01 10:48:36'),(304,3,'Page View','Viewed Inventory Management page','2025-03-01 10:48:38'),(305,3,'Page View','Viewed Dashboard page','2025-03-01 10:48:41'),(306,3,'Page View','Viewed Dashboard page','2025-03-01 10:49:06'),(307,3,'Page View','Viewed Dashboard page','2025-03-01 10:49:20'),(308,3,'Page View','Viewed Inventory Management page','2025-03-01 10:50:19'),(309,3,'Page View','Viewed Inventory Management page','2025-03-01 10:52:25'),(310,3,'Page View','Viewed Inventory Management page','2025-03-01 10:52:37'),(311,3,'Page View','Viewed Inventory Management page','2025-03-01 10:52:38'),(312,3,'Page View','Viewed Inventory Management page','2025-03-01 10:52:40'),(313,3,'Page View','Viewed Inventory Management page','2025-03-01 10:52:42'),(314,3,'Page View','Viewed Inventory Management page','2025-03-01 10:55:08'),(315,3,'Page View','Viewed Inventory Management page','2025-03-01 10:55:09'),(316,3,'Page View','Viewed Inventory Management page','2025-03-01 11:24:24'),(317,3,'Page View','Viewed Dashboard page','2025-03-01 11:24:27'),(318,3,'Page View','Viewed Dashboard page','2025-03-01 11:24:29'),(319,3,'Page View','Viewed Dashboard page','2025-03-01 11:28:44'),(320,3,'Page View','Viewed Dashboard page','2025-03-01 11:29:07'),(321,3,'Page View','Viewed Profile page','2025-03-01 11:29:11'),(322,3,'Page View','Viewed Profile page','2025-03-01 11:31:31'),(323,3,'Page View','Viewed Profile page','2025-03-01 11:33:11'),(324,3,'Page View','Viewed Inventory Management page','2025-03-01 11:34:34'),(325,3,'Page View','Viewed Inventory Management page','2025-03-01 11:35:53'),(326,1,'Page View','Viewed Dashboard page','2025-03-01 11:50:09'),(327,1,'Page View','Viewed Inventory Management page','2025-03-01 11:50:38'),(328,1,'Page View','Viewed Analytics page','2025-03-01 11:51:08'),(329,1,'Page View','Viewed Analytics page','2025-03-01 11:53:49'),(330,1,'Page View','Viewed Add Post page','2025-03-01 11:54:08'),(331,1,'Page View','Viewed Add Post page','2025-03-01 11:57:02'),(332,1,'Page View','Viewed Add Post page','2025-03-01 11:59:45'),(333,1,'Page View','Viewed Analytics page','2025-03-01 11:59:47'),(334,1,'Page View','Viewed Analytics page','2025-03-01 12:00:00'),(335,1,'Page View','Viewed Analytics page','2025-03-01 12:00:36'),(336,1,'Page View','Viewed Analytics page','2025-03-01 12:09:10'),(337,1,'Page View','Viewed Analytics page','2025-03-01 12:11:43'),(338,1,'Page View','Viewed Analytics page','2025-03-01 12:12:29'),(339,1,'Page View','Viewed Analytics page','2025-03-01 12:15:26'),(340,1,'Page View','Viewed Analytics page','2025-03-01 12:15:31'),(341,1,'Page View','Viewed Analytics page','2025-03-01 12:16:30'),(342,1,'Page View','Viewed Analytics page','2025-03-01 12:19:21'),(343,1,'Page View','Viewed Add Post page','2025-03-01 12:20:13'),(344,1,'Page View','Viewed Analytics page','2025-03-01 12:20:21'),(345,1,'Page View','Viewed Inventory Management page','2025-03-01 12:24:14'),(346,1,'Page View','Viewed Analytics page','2025-03-01 12:27:36'),(347,1,'Page View','Viewed Analytics page','2025-03-01 12:29:14'),(348,1,'Page View','Viewed Analytics page','2025-03-01 12:31:03'),(349,1,'Page View','Viewed Analytics page','2025-03-01 12:31:32'),(350,1,'Page View','Viewed Analytics page','2025-03-01 12:32:25'),(351,1,'Page View','Viewed Analytics page','2025-03-01 12:33:08'),(352,1,'Page View','Viewed Analytics page','2025-03-01 12:34:02'),(353,1,'Page View','Viewed Analytics page','2025-03-01 12:34:21'),(354,1,'Page View','Viewed Add Post page','2025-03-01 12:34:53'),(355,1,'Page View','Viewed Analytics page','2025-03-01 12:34:55'),(356,1,'Page View','Viewed Analytics page','2025-03-01 12:35:02'),(357,1,'Page View','Viewed Add Post page','2025-03-01 12:35:04'),(358,1,'Page View','Viewed Analytics page','2025-03-01 12:35:07'),(359,1,'Page View','Viewed Analytics page','2025-03-01 12:35:21'),(360,1,'Page View','Viewed Analytics page','2025-03-01 12:35:37'),(361,1,'Page View','Viewed Analytics page','2025-03-01 12:37:58'),(362,1,'Page View','Viewed Analytics page','2025-03-01 12:40:56'),(363,1,'Page View','Viewed Analytics page','2025-03-01 12:41:06'),(364,1,'Page View','Viewed Analytics page','2025-03-01 12:42:10'),(365,1,'Page View','Viewed Analytics page','2025-03-01 12:42:20'),(366,1,'Page View','Viewed Analytics page','2025-03-01 12:42:41'),(367,1,'Page View','Viewed Analytics page','2025-03-01 12:43:01'),(368,1,'Page View','Viewed Analytics page','2025-03-01 12:43:13'),(369,1,'Page View','Viewed Analytics page','2025-03-01 12:43:27'),(370,1,'Page View','Viewed Analytics page','2025-03-01 12:43:50'),(371,1,'Page View','Viewed Add Post page','2025-03-01 12:44:05'),(372,1,'Page View','Viewed Analytics page','2025-03-01 12:44:07'),(373,1,'Page View','Viewed Analytics page','2025-03-01 12:45:12'),(374,1,'Page View','Viewed Analytics page','2025-03-01 12:45:19'),(375,1,'Page View','Viewed Analytics page','2025-03-01 12:46:09'),(376,1,'Page View','Viewed Analytics page','2025-03-01 12:46:19'),(377,1,'Page View','Viewed Analytics page','2025-03-01 12:46:36'),(378,1,'Page View','Viewed Analytics page','2025-03-01 12:46:44'),(379,1,'Page View','Viewed Analytics page','2025-03-01 12:46:56'),(380,1,'Page View','Viewed Analytics page','2025-03-01 12:46:59'),(381,1,'Page View','Viewed Inventory Management page','2025-03-01 12:47:35'),(382,1,'Page View','Viewed Analytics page','2025-03-01 12:47:37'),(383,1,'Page View','Viewed Add Post page','2025-03-01 12:47:39'),(384,1,'Page View','Viewed Add Post page','2025-03-01 12:47:44'),(385,1,'Page View','Viewed Add Post page','2025-03-01 12:47:51'),(386,1,'Page View','Viewed Add Post page','2025-03-01 12:48:04'),(387,1,'Page View','Viewed Add Post page','2025-03-01 12:48:06'),(388,1,'Page View','Viewed Inventory Management page','2025-03-01 12:48:15'),(389,1,'Page View','Viewed Accounts Management page','2025-03-01 12:49:51'),(390,1,'Page View','Viewed Accounts Management page','2025-03-01 12:49:54'),(391,1,'Page View','Viewed Inventory Management page','2025-03-01 12:50:00'),(392,1,'Page View','Viewed Inventory Management page','2025-03-01 12:51:15'),(393,1,'Page View','Viewed Inventory Management page','2025-03-01 12:53:30'),(394,1,'Page View','Viewed Inventory Management page','2025-03-01 12:55:11'),(395,1,'Page View','Viewed Inventory Management page','2025-03-01 12:55:45'),(396,1,'Page View','Viewed Inventory Management page','2025-03-01 12:57:42'),(397,1,'Page View','Viewed Inventory Management page','2025-03-01 13:00:05'),(398,1,'Page View','Viewed Inventory Management page','2025-03-01 13:05:04'),(399,1,'Page View','Viewed Inventory Management page','2025-03-01 13:05:26'),(400,1,'Page View','Viewed Inventory Management page','2025-03-01 13:07:53'),(401,1,'Page View','Viewed Inventory Management page','2025-03-01 13:07:56'),(402,1,'Page View','Viewed Inventory Management page','2025-03-01 13:07:59'),(403,1,'Page View','Viewed Inventory Management page','2025-03-01 13:08:02'),(404,1,'Page View','Viewed Inventory Management page','2025-03-01 13:11:58'),(405,1,'Page View','Viewed Inventory Management page','2025-03-01 13:12:24'),(406,1,'Page View','Viewed Inventory Management page','2025-03-01 13:12:27'),(407,1,'Page View','Viewed Inventory Management page','2025-03-01 13:12:34'),(408,1,'Page View','Viewed Inventory Management page','2025-03-01 13:12:38'),(409,1,'Page View','Viewed Inventory Management page','2025-03-01 13:13:36'),(410,1,'Page View','Viewed Profile page','2025-03-01 13:15:58'),(411,1,'Page View','Viewed Profile page','2025-03-01 13:16:12'),(412,1,'Page View','Viewed Profile page','2025-03-01 13:16:32'),(413,1,'Page View','Viewed Inventory Management page','2025-03-01 13:16:36'),(414,1,'Page View','Viewed Inventory Management page','2025-03-01 13:19:32'),(415,1,'Page View','Viewed Inventory Management page','2025-03-01 13:19:38'),(416,1,'Page View','Viewed Inventory Management page','2025-03-01 13:19:41'),(417,1,'Page View','Viewed Inventory Management page','2025-03-01 13:20:30'),(418,1,'Page View','Viewed Inventory Management page','2025-03-01 13:20:45'),(419,1,'Page View','Viewed Inventory Management page','2025-03-01 13:20:50'),(420,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:12'),(421,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:16'),(422,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:18'),(423,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:25'),(424,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:28'),(425,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:39'),(426,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:42'),(427,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:52'),(428,1,'Page View','Viewed Inventory Management page','2025-03-01 13:21:55'),(429,1,'Page View','Viewed Inventory Management page','2025-03-01 13:22:08'),(430,1,'Page View','Viewed Inventory Management page','2025-03-01 13:22:15'),(431,1,'Page View','Viewed Inventory Management page','2025-03-01 13:22:31'),(432,3,'Page View','Viewed Dashboard page','2025-03-01 13:22:55'),(433,3,'Page View','Viewed Inventory Management page','2025-03-01 13:22:57'),(434,3,'Page View','Viewed Inventory Management page','2025-03-01 13:24:23'),(435,3,'Page View','Viewed Inventory Management page','2025-03-01 13:25:52'),(436,3,'Page View','Viewed Inventory Management page','2025-03-01 13:25:53'),(437,1,'Page View','Viewed Dashboard page','2025-03-01 13:28:46'),(438,1,'Page View','Viewed Inventory Management page','2025-03-01 13:28:56'),(439,1,'Page View','Viewed Inventory Management page','2025-03-01 13:28:59'),(440,1,'Page View','Viewed Inventory Management page','2025-03-01 13:29:02'),(441,3,'Page View','Viewed Dashboard page','2025-03-01 13:30:09'),(442,3,'Page View','Viewed Inventory Management page','2025-03-01 13:30:11'),(443,3,'Page View','Viewed Inventory Management page','2025-03-01 13:30:21'),(444,3,'Page View','Viewed Inventory Management page','2025-03-01 13:30:35'),(445,3,'Page View','Viewed Inventory Management page','2025-03-01 13:30:52'),(446,3,'Page View','Viewed Inventory Management page','2025-03-01 13:31:09'),(447,3,'Page View','Viewed Inventory Management page','2025-03-01 13:32:13'),(448,3,'Page View','Viewed Inventory Management page','2025-03-01 13:32:47'),(449,3,'Page View','Viewed Dashboard page','2025-03-01 13:32:54'),(450,3,'Page View','Viewed Dashboard page','2025-03-01 13:32:56'),(451,3,'Page View','Viewed Dashboard page','2025-03-01 13:33:06'),(452,3,'Page View','Viewed Dashboard page','2025-03-01 13:33:08'),(453,3,'Page View','Viewed Inventory Management page','2025-03-01 13:33:09'),(454,3,'Page View','Viewed Dashboard page','2025-03-01 13:33:14'),(455,3,'Page View','Viewed Dashboard page','2025-03-01 13:33:15'),(456,3,'Page View','Viewed Inventory Management page','2025-03-01 13:34:30'),(457,3,'Page View','Viewed Dashboard page','2025-03-01 13:34:49'),(458,3,'Page View','Viewed Add Post page','2025-03-01 13:37:00'),(459,3,'Page View','Viewed Add Post page','2025-03-01 13:37:16'),(460,3,'Page View','Viewed Add Post page','2025-03-01 13:37:18'),(461,3,'Page View','Viewed Add Post page','2025-03-01 13:37:19'),(462,3,'Page View','Viewed Inventory Management page','2025-03-01 13:37:21'),(463,1,'Page View','Viewed Dashboard page','2025-03-01 13:37:32'),(464,1,'Page View','Viewed Analytics page','2025-03-01 13:38:23'),(465,1,'Page View','Viewed Analytics page','2025-03-01 13:38:29'),(466,1,'Page View','Viewed Analytics page','2025-03-01 13:38:39'),(467,1,'Page View','Viewed Analytics page','2025-03-01 13:38:47'),(468,1,'Page View','Viewed Analytics page','2025-03-01 13:38:56'),(469,1,'Page View','Viewed Analytics page','2025-03-01 13:39:21'),(470,1,'Page View','Viewed Analytics page','2025-03-01 13:39:27'),(471,1,'Page View','Viewed Analytics page','2025-03-01 13:40:41'),(472,1,'Page View','Viewed Analytics page','2025-03-01 13:40:52'),(473,1,'Page View','Viewed Analytics page','2025-03-01 13:41:47'),(474,1,'Page View','Viewed Analytics page','2025-03-01 13:48:08'),(475,1,'Page View','Viewed Important Notices page','2025-03-01 13:50:58'),(476,1,'Page View','Viewed Important Notices page','2025-03-01 13:52:28'),(477,1,'Page View','Viewed Important Notices page','2025-03-01 13:52:52'),(478,1,'Page View','Viewed Important Notices page','2025-03-01 13:53:10'),(479,1,'Page View','Viewed Important Notices page','2025-03-01 13:53:12'),(480,1,'Page View','Viewed Important Notices page','2025-03-01 13:53:55'),(481,1,'Page View','Viewed Analytics page','2025-03-01 13:54:15'),(482,1,'Page View','Viewed Analytics page','2025-03-01 13:58:17'),(483,1,'Page View','Viewed Analytics page','2025-03-01 13:58:30'),(484,1,'Page View','Viewed Analytics page','2025-03-01 13:58:46'),(485,3,'Page View','Viewed Dashboard page','2025-03-01 13:59:22'),(486,3,'Page View','Viewed Dashboard page','2025-03-01 13:59:26'),(487,3,'Page View','Viewed Dashboard page','2025-03-01 13:59:27'),(488,1,'Page View','Viewed Dashboard page','2025-03-01 13:59:49'),(489,1,'Page View','Viewed Add Post page','2025-03-01 13:59:52'),(490,3,'Page View','Viewed Add Post page','2025-03-01 14:00:16'),(491,3,'Page View','Viewed Add Post page','2025-03-01 14:00:22'),(492,3,'Page View','Viewed Add Post page','2025-03-01 14:00:42'),(493,3,'Page View','Viewed Add Post page','2025-03-01 14:00:47'),(494,3,'Page View','Viewed Add Post page','2025-03-01 14:00:48'),(495,3,'Page View','Viewed Add Post page','2025-03-01 14:00:49'),(496,3,'Page View','Viewed Add Post page','2025-03-01 14:04:18'),(497,3,'Page View','Viewed Add Post page','2025-03-01 14:04:44'),(498,3,'Page View','Viewed Add Post page','2025-03-01 14:05:16'),(499,3,'Page View','Viewed Add Post page','2025-03-01 14:05:22'),(500,3,'Page View','Viewed Add Post page','2025-03-01 14:05:29'),(501,3,'Page View','Viewed Add Post page','2025-03-01 14:05:45'),(502,3,'Page View','Viewed Add Post page','2025-03-01 14:06:18'),(503,3,'Page View','Viewed Dashboard page','2025-03-01 14:07:16'),(504,3,'Page View','Viewed Dashboard page','2025-03-01 14:08:05'),(505,3,'Page View','Viewed Dashboard page','2025-03-01 14:08:15'),(506,3,'Page View','Viewed Dashboard page','2025-03-01 14:08:24'),(507,3,'Page View','Viewed Dashboard page','2025-03-01 14:08:32'),(508,3,'Page View','Viewed Dashboard page','2025-03-01 14:09:13'),(509,3,'Page View','Viewed Dashboard page','2025-03-01 14:09:20'),(510,3,'Page View','Viewed Dashboard page','2025-03-01 14:09:31'),(511,3,'Page View','Viewed Dashboard page','2025-03-01 14:10:23'),(512,3,'Page View','Viewed Dashboard page','2025-03-01 14:10:34'),(513,3,'Page View','Viewed Add Post page','2025-03-01 14:11:18'),(514,3,'Page View','Viewed Dashboard page','2025-03-01 14:11:20'),(515,3,'Page View','Viewed Dashboard page','2025-03-01 14:11:45'),(516,3,'Page View','Viewed Dashboard page','2025-03-01 14:12:20'),(517,3,'Page View','Viewed Inventory Management page','2025-03-01 14:12:45'),(518,1,'Page View','Viewed Dashboard page','2025-03-01 14:13:42'),(519,1,'Page View','Viewed Dashboard page','2025-03-01 14:14:57'),(520,1,'Page View','Viewed Add Post page','2025-03-01 14:15:19'),(521,1,'Page View','Viewed Accounts Management page','2025-03-01 14:17:28'),(522,1,'Page View','Viewed Calendar Page','2025-03-01 14:17:30'),(523,1,'Page View','Viewed Accounts Management page','2025-03-01 14:17:32'),(524,1,'Page View','Viewed Calendar Page','2025-03-01 14:19:38'),(525,1,'Page View','Viewed Calendar Page','2025-03-01 14:19:52'),(526,1,'Page View','Viewed Calendar Page','2025-03-01 14:20:55'),(527,1,'Page View','Viewed Accounts Management page','2025-03-01 14:21:30'),(528,1,'Page View','Viewed Inventory Management page','2025-03-01 14:27:52'),(529,1,'Page View','Viewed Dashboard page','2025-03-01 06:34:12'),(530,1,'Page View','Viewed Important Notices page','2025-03-01 06:34:32'),(531,1,'Page View','Viewed Important Notices page','2025-03-01 06:34:36'),(532,1,'Page View','Viewed Add Post page','2025-03-01 06:34:39'),(533,1,'Page View','Viewed Unit/Offices Management page','2025-03-01 06:34:54'),(534,3,'Page View','Viewed Add Post page','2025-03-01 06:35:18'),(535,3,'Page View','Viewed Dashboard page','2025-03-01 06:35:23'),(536,3,'Page View','Viewed Add Post page','2025-03-01 06:48:39'),(537,3,'Page View','Viewed Add Post page','2025-03-01 06:49:42'),(538,3,'Page View','Viewed Dashboard page','2025-03-01 06:49:52'),(539,3,'Page View','Viewed Add Post page','2025-03-01 06:50:03'),(540,3,'Page View','Viewed Add Post page','2025-03-01 06:50:23'),(541,3,'Page View','Viewed Add Post page','2025-03-01 06:50:36'),(542,3,'Page View','Viewed Profile page','2025-03-01 06:50:50'),(543,3,'Page View','Viewed Profile page','2025-03-01 06:52:08'),(544,3,'Profile Update','Updated personal information','2025-03-01 06:52:08'),(545,3,'Page View','Viewed Profile page','2025-03-01 06:52:13'),(546,3,'Page View','Viewed Inventory Management page','2025-03-01 06:52:27'),(547,3,'Page View','Viewed Inventory Management page','2025-03-01 06:52:28'),(548,3,'Page View','Viewed Profile page','2025-03-01 06:52:45'),(549,3,'Page View','Viewed Dashboard page','2025-03-01 06:53:29'),(550,3,'Page View','Viewed Dashboard page','2025-03-01 06:53:56'),(551,3,'Page View','Viewed Inventory Management page','2025-03-01 06:54:02'),(552,3,'Page View','Viewed Add Post page','2025-03-01 06:54:21'),(553,3,'Page View','Viewed Dashboard page','2025-03-01 06:54:27'),(554,3,'Page View','Viewed Dashboard page','2025-03-01 06:54:33'),(555,3,'Page View','Viewed Inventory Management page','2025-03-01 06:54:41'),(556,3,'Page View','Viewed Inventory Management page','2025-03-01 06:54:46'),(557,3,'Page View','Viewed Add Post page','2025-03-01 06:55:08'),(558,3,'Page View','Viewed Dashboard page','2025-03-01 06:55:13'),(559,3,'Page View','Viewed Profile page','2025-03-01 06:55:26'),(560,3,'Page View','Viewed Profile page','2025-03-01 06:57:36'),(561,3,'Page View','Viewed Profile page','2025-03-01 06:57:44'),(562,3,'Page View','Viewed Add Post page','2025-03-01 06:59:17'),(563,3,'Page View','Viewed Inventory Management page','2025-03-01 07:00:34'),(564,3,'Page View','Viewed Dashboard page','2025-03-01 07:01:57'),(565,3,'Page View','Viewed Add Post page','2025-03-01 07:03:15'),(566,3,'Page View','Viewed Add Post page','2025-03-01 07:03:26'),(567,3,'Page View','Viewed Add Post page','2025-03-01 07:03:29'),(568,3,'Page View','Viewed Add Post page','2025-03-01 07:03:30'),(569,3,'Page View','Viewed Add Post page','2025-03-01 07:03:35'),(570,3,'Page View','Viewed Dashboard page','2025-03-01 07:03:41'),(571,3,'Page View','Viewed Add Post page','2025-03-01 07:03:44'),(572,3,'Page View','Viewed Add Post page','2025-03-01 07:03:57'),(573,3,'Page View','Viewed Add Post page','2025-03-01 07:04:30'),(574,3,'Page View','Viewed Add Post page','2025-03-01 07:04:41'),(575,3,'Page View','Viewed Add Post page','2025-03-01 07:05:12'),(576,3,'Page View','Viewed Dashboard page','2025-03-01 07:05:15'),(577,3,'Page View','Viewed Dashboard page','2025-03-01 07:05:20'),(578,1,'Page View','Viewed Dashboard page','2025-03-01 07:05:44'),(579,3,'Page View','Viewed Inventory Management page','2025-03-01 07:07:43'),(580,3,'Page View','Viewed Inventory Management page','2025-03-01 07:08:04'),(581,3,'Page View','Viewed Dashboard page','2025-03-01 07:08:31'),(582,3,'Page View','Viewed Dashboard page','2025-03-01 07:08:40'),(583,3,'Page View','Viewed Inventory Management page','2025-03-01 07:09:32'),(584,1,'Page View','Viewed Inventory Management page','2025-03-01 07:09:38'),(585,3,'Page View','Viewed Profile page','2025-03-01 07:12:48'),(586,3,'Page View','Viewed Add Post page','2025-03-01 07:16:09'),(587,1,'Page View','Viewed Profile page','2025-03-01 07:16:36'),(588,1,'Page View','Viewed Inventory Management page','2025-03-01 07:16:40'),(589,3,'Page View','Viewed Add Post page','2025-03-01 07:16:46'),(590,3,'Page View','Viewed Add Post page','2025-03-01 07:21:42'),(591,3,'Page View','Viewed Add Post page','2025-03-01 07:21:53'),(592,1,'Page View','Viewed Dashboard page','2025-03-01 07:22:08'),(593,1,'Page View','Viewed Inventory Management page','2025-03-01 07:24:48'),(594,3,'Page View','Viewed Inventory Management page','2025-03-01 07:24:54'),(595,3,'Page View','Viewed Inventory Management page','2025-03-01 07:25:10'),(596,3,'Page View','Viewed Add Post page','2025-03-01 07:26:00'),(597,3,'Page View','Viewed Inventory Management page','2025-03-01 07:26:05'),(598,3,'Page View','Viewed Inventory Management page','2025-03-01 07:26:33'),(599,3,'Page View','Viewed Inventory Management page','2025-03-01 07:26:39'),(600,3,'Page View','Viewed Inventory Management page','2025-03-01 07:28:38'),(601,3,'Page View','Viewed Inventory Management page','2025-03-01 07:28:43'),(602,1,'Page View','Viewed Dashboard page','2025-03-01 07:45:36'),(603,1,'Page View','Viewed Unit/Offices Management page','2025-03-01 07:46:27'),(604,1,'Page View','Viewed Inventory Management page','2025-03-01 07:46:33'),(605,1,'Page View','Viewed Add Post page','2025-03-01 07:47:05'),(606,1,'Page View','Viewed Inventory Management page','2025-03-01 07:47:08'),(607,1,'Page View','Viewed Unit/Offices Management page','2025-03-01 07:47:12'),(608,1,'Page View','Viewed Dashboard page','2025-03-01 07:47:15'),(609,1,'Page View','Viewed Inventory Management page','2025-03-01 07:47:24'),(610,3,'Page View','Viewed Inventory Management page','2025-03-01 08:35:43'),(611,3,'Page View','Viewed Inventory Management page','2025-03-01 08:35:47'),(612,3,'Page View','Viewed Inventory Management page','2025-03-01 08:37:20'),(613,3,'Page View','Viewed Inventory Management page','2025-03-01 08:37:23'),(614,3,'Page View','Viewed Inventory Management page','2025-03-01 08:37:25'),(615,3,'Page View','Viewed Inventory Management page','2025-03-01 08:37:26'),(616,3,'Page View','Viewed Inventory Management page','2025-03-01 08:37:28'),(617,3,'Page View','Viewed Inventory Management page','2025-03-01 08:37:29'),(618,3,'Page View','Viewed Inventory Management page','2025-03-01 08:37:34'),(619,3,'Page View','Viewed Inventory Management page','2025-03-01 08:37:34'),(620,3,'Page View','Viewed Inventory Management page','2025-03-01 08:41:35'),(621,3,'Page View','Viewed Inventory Management page','2025-03-01 08:41:39'),(622,3,'Page View','Viewed Inventory Management page','2025-03-01 08:42:21'),(623,3,'Page View','Viewed Inventory Management page','2025-03-01 08:42:25'),(624,3,'Page View','Viewed Inventory Management page','2025-03-01 08:43:10'),(625,1,'Page View','Viewed Dashboard page','2025-03-01 08:44:18'),(626,1,'Page View','Viewed Add Post page','2025-03-01 08:45:14'),(627,1,'Page View','Viewed Important Notices page','2025-03-01 08:45:53'),(628,1,'Page View','Viewed Important Notices page','2025-03-01 08:47:13'),(629,1,'Page View','Viewed Important Notices page','2025-03-01 08:47:17'),(630,3,'Page View','Viewed Add Post page','2025-03-01 08:48:12'),(631,1,'Page View','Viewed Important Notices page','2025-03-01 08:50:00'),(632,1,'Page View','Viewed Important Notices page','2025-03-01 08:50:04'),(633,3,'Page View','Viewed Add Post page','2025-03-01 08:50:09'),(634,3,'Page View','Viewed Add Post page','2025-03-01 08:50:20'),(635,1,'Page View','Viewed Important Notices page','2025-03-01 13:58:42'),(636,3,'Page View','Viewed Add Post page','2025-03-09 04:55:10'),(637,3,'Page View','Viewed Dashboard page','2025-03-09 04:55:21'),(638,3,'Page View','Viewed Add Post page','2025-03-09 04:55:25'),(639,3,'Page View','Viewed Add Post page','2025-03-09 04:55:44'),(640,3,'Page View','Viewed Inventory Management page','2025-03-09 04:55:50'),(641,3,'Page View','Viewed Inventory Management page','2025-03-09 04:55:52'),(642,3,'Page View','Viewed Inventory Management page','2025-03-09 04:55:54'),(643,3,'Page View','Viewed Inventory Management page','2025-03-09 05:01:44'),(644,3,'Page View','Viewed Add Post page','2025-03-09 05:03:10'),(645,3,'Page View','Viewed Profile page','2025-03-09 05:03:25'),(646,3,'Page View','Viewed Add Post page','2025-03-09 05:03:52'),(647,3,'Page View','Viewed Add Post page','2025-03-09 05:04:12'),(648,3,'Page View','Viewed Add Post page','2025-03-09 05:04:44'),(649,1,'Page View','Viewed Dashboard page','2025-03-10 22:05:25'),(650,1,'Page View','Viewed Profile page','2025-03-10 22:05:35'),(651,1,'Page View','Viewed Add Post page','2025-03-10 22:05:54'),(652,1,'Page View','Viewed Add Post page','2025-03-10 22:08:42'),(653,1,'Page View','Viewed Add Post page','2025-03-10 22:09:11'),(654,1,'Create Post','Created new post: cscds','2025-03-10 22:09:11'),(655,1,'Page View','Viewed Add Post page','2025-03-10 22:09:12'),(656,1,'Page View','Viewed Add Post page','2025-03-10 22:15:28'),(657,1,'Page View','Viewed Add Post page','2025-03-10 22:17:02'),(658,1,'Page View','Viewed Add Post page','2025-03-10 22:17:30'),(659,1,'Page View','Viewed Add Post page','2025-03-10 22:17:43'),(660,1,'Create Post','Created new post: csddcs','2025-03-10 22:17:43'),(661,1,'Page View','Viewed Add Post page','2025-03-10 22:17:45'),(662,1,'Page View','Viewed Add Post page','2025-03-10 22:20:54'),(663,1,'Page View','Viewed Add Post page','2025-03-10 22:24:53'),(664,1,'Page View','Viewed Add Post page','2025-03-10 22:25:06'),(665,1,'Create Post','Created new post: cscds','2025-03-10 22:25:06'),(666,1,'Page View','Viewed Add Post page','2025-03-10 22:25:08'),(667,1,'Page View','Viewed Add Post page','2025-03-10 22:26:16'),(668,1,'Page View','Viewed Add Post page','2025-03-10 22:27:11'),(669,1,'Page View','Viewed Add Post page','2025-03-10 22:28:04'),(670,1,'Update Post','Updated post: cscds','2025-03-10 22:28:04'),(671,1,'Page View','Viewed Add Post page','2025-03-10 22:28:06'),(672,1,'Page View','Viewed Add Post page','2025-03-10 22:29:54'),(673,1,'Page View','Viewed Add Post page','2025-03-10 22:32:55'),(674,1,'Page View','Viewed Add Post page','2025-03-10 22:33:57'),(675,1,'Page View','Viewed Unit/Offices Management page','2025-03-10 22:34:09'),(676,1,'Page View','Viewed Unit/Offices Management page','2025-03-10 22:34:32'),(677,1,'Page View','Viewed Unit/Offices Management page','2025-03-10 22:38:46'),(678,1,'Page View','Viewed Rank Management page','2025-03-10 22:38:49'),(679,1,'Page View','Viewed Rank Management page','2025-03-10 22:38:53'),(680,1,'Page View','Viewed Rank Management page','2025-03-10 22:38:56'),(681,1,'Page View','Viewed Rank Management page','2025-03-10 22:39:00'),(682,1,'Page View','Viewed Rank Management page','2025-03-10 22:39:02'),(683,1,'Page View','Viewed Rank Management page','2025-03-10 22:39:06'),(684,1,'Page View','Viewed Rank Management page','2025-03-10 22:39:08'),(685,1,'Page View','Viewed Profile page','2025-03-10 22:39:15'),(686,1,'Page View','Viewed Profile page','2025-03-10 22:41:15'),(687,1,'Page View','Viewed Profile page','2025-03-10 22:41:23'),(688,1,'Page View','Viewed Profile page','2025-03-10 22:41:34'),(689,1,'Page View','Viewed Profile page','2025-03-10 22:42:09'),(690,1,'Profile Update','Updated personal information','2025-03-10 22:42:09'),(691,1,'Page View','Viewed Profile page','2025-03-10 22:42:10'),(692,1,'Page View','Viewed Profile page','2025-03-10 22:42:44'),(693,1,'Profile Update','Updated personal information','2025-03-10 22:42:44'),(694,1,'Page View','Viewed Profile page','2025-03-10 22:42:45'),(695,1,'Page View','Viewed Profile page','2025-03-10 22:46:58'),(696,1,'Page View','Viewed Profile page','2025-03-10 22:47:04'),(697,1,'Profile Update','Updated personal information','2025-03-10 22:47:04'),(698,1,'Page View','Viewed Profile page','2025-03-10 22:47:06'),(699,1,'Page View','Viewed Inventory Management page','2025-03-10 22:47:25'),(700,1,'Page View','Viewed Location Management page','2025-03-10 22:48:27'),(701,1,'Page View','Viewed Designation Management page','2025-03-10 22:48:36'),(702,1,'Page View','Viewed Add Post page','2025-03-10 22:48:38'),(703,1,'Page View','Viewed Inventory Management page','2025-03-10 22:49:03'),(704,1,'Page View','Viewed Inventory Management page','2025-03-10 22:52:58'),(705,1,'Page View','Viewed Inventory Management page','2025-03-10 22:56:05'),(706,1,'Page View','Viewed Network Management page','2025-03-10 22:56:07'),(707,1,'Page View','Viewed Network Management page','2025-03-10 22:56:11'),(708,1,'Page View','Viewed Network Management page','2025-03-10 22:56:14'),(709,1,'Page View','Viewed Network Management page','2025-03-10 22:56:27'),(710,1,'Page View','Viewed Network Management page','2025-03-10 22:56:30'),(711,1,'Page View','Viewed Inventory Management page','2025-03-10 22:59:01'),(712,1,'Page View','Viewed Inventory Management page','2025-03-10 23:07:31'),(713,1,'Page View','Viewed Location Management page','2025-03-10 23:08:47'),(714,1,'Page View','Viewed Inventory Management page','2025-03-10 23:08:50'),(715,1,'Page View','Viewed Profile page','2025-03-10 23:24:50'),(716,1,'Page View','Viewed Accounts Management page','2025-03-10 23:25:09'),(717,1,'Page View','Viewed Unit/Offices Management page','2025-03-10 23:25:47'),(718,1,'Page View','Viewed Designation Management page','2025-03-10 23:28:42'),(719,1,'Page View','Viewed Profile page','2025-03-10 23:28:50'),(720,1,'Page View','Viewed Designation Management page','2025-03-10 23:29:02'),(721,1,'Page View','Viewed Unit/Offices Management page','2025-03-10 23:29:08'),(722,1,'Page View','Viewed Accounts Management page','2025-03-10 23:29:12'),(723,1,'Page View','Viewed Accounts Management page','2025-03-10 23:33:11'),(724,1,'Page View','Viewed Accounts Management page','2025-03-10 23:33:35'),(725,1,'Page View','Viewed Accounts Management page','2025-03-10 23:34:26'),(726,1,'Page View','Viewed Accounts Management page','2025-03-10 23:35:16'),(727,1,'Page View','Viewed Accounts Management page','2025-03-10 23:36:11'),(728,1,'Page View','Viewed Accounts Management page','2025-03-10 23:36:51'),(729,1,'Page View','Viewed Accounts Management page','2025-03-10 23:37:26'),(730,1,'Page View','Viewed Accounts Management page','2025-03-10 23:41:57'),(731,1,'Page View','Viewed Accounts Management page','2025-03-10 23:43:03'),(732,1,'Page View','Viewed Accounts Management page','2025-03-10 23:44:18'),(733,1,'Page View','Viewed Accounts Management page','2025-03-10 23:49:13'),(734,1,'Page View','Viewed Accounts Management page','2025-03-10 23:49:52'),(735,1,'Page View','Viewed Accounts Management page','2025-03-10 23:50:09'),(736,1,'Page View','Viewed Accounts Management page','2025-03-10 23:50:28'),(737,1,'Page View','Viewed Accounts Management page','2025-03-10 23:50:56'),(738,1,'Page View','Viewed Add Post page','2025-03-10 23:51:13'),(739,1,'Page View','Viewed Accounts Management page','2025-03-10 23:51:18'),(740,1,'Page View','Viewed Accounts Management page','2025-03-10 23:51:58'),(741,1,'Page View','Viewed Accounts Management page','2025-03-10 23:52:19'),(742,1,'Page View','Viewed Accounts Management page','2025-03-10 23:53:05'),(743,1,'Page View','Viewed Accounts Management page','2025-03-10 23:53:24'),(744,1,'Page View','Viewed Accounts Management page','2025-03-10 23:56:26'),(745,1,'Page View','Viewed Accounts Management page','2025-03-10 23:56:48'),(746,1,'Page View','Viewed Accounts Management page','2025-03-10 23:57:13'),(747,1,'Page View','Viewed Accounts Management page','2025-03-10 23:58:01'),(748,1,'Page View','Viewed Accounts Management page','2025-03-10 23:58:27'),(749,1,'Page View','Viewed Accounts Management page','2025-03-10 23:59:02'),(750,1,'Page View','Viewed Accounts Management page','2025-03-10 23:59:33'),(751,1,'Page View','Viewed Accounts Management page','2025-03-11 00:01:20'),(752,1,'Page View','Viewed Accounts Management page','2025-03-11 00:02:36'),(753,1,'Page View','Viewed Accounts Management page','2025-03-11 00:03:24'),(754,1,'Created Account','Created new account for TESTING BONGAITAN (ID: 4)','2025-03-11 00:03:24'),(755,1,'Page View','Viewed Accounts Management page','2025-03-11 00:03:26'),(756,1,'Page View','Viewed Accounts Management page','2025-03-11 00:04:47'),(757,1,'Page View','Viewed Accounts Management page','2025-03-11 00:05:47'),(758,1,'Page View','Viewed Accounts Management page','2025-03-11 00:08:08'),(759,1,'Page View','Viewed Accounts Management page','2025-03-11 00:10:05'),(760,1,'Page View','Viewed Accounts Management page','2025-03-11 00:11:16'),(761,1,'Page View','Viewed Accounts Management page','2025-03-11 00:12:36'),(762,1,'Page View','Viewed Accounts Management page','2025-03-11 00:12:56'),(763,1,'Page View','Viewed Accounts Management page','2025-03-11 00:13:21'),(764,1,'Page View','Viewed Accounts Management page','2025-03-11 00:13:41'),(765,1,'Page View','Viewed Accounts Management page','2025-03-11 00:14:43'),(766,1,'Page View','Viewed Accounts Management page','2025-03-11 00:17:52'),(767,1,'Page View','Viewed Accounts Management page','2025-03-11 00:18:29'),(768,1,'Page View','Viewed Accounts Management page','2025-03-11 00:19:58'),(769,1,'Page View','Viewed Accounts Management page','2025-03-11 00:22:21'),(770,1,'Page View','Viewed Accounts Management page','2025-03-11 00:24:56'),(771,1,'Page View','Viewed Accounts Management page','2025-03-11 00:26:39'),(772,1,'Page View','Viewed Accounts Management page','2025-03-11 00:26:53'),(773,1,'Page View','Viewed Accounts Management page','2025-03-11 00:28:22'),(774,1,'Page View','Viewed Accounts Management page','2025-03-11 00:28:50'),(775,1,'Page View','Viewed Accounts Management page','2025-03-11 00:30:07'),(776,1,'Page View','Viewed Accounts Management page','2025-03-11 00:30:19'),(777,1,'Page View','Viewed Accounts Management page','2025-03-11 00:31:30'),(778,1,'Page View','Viewed Accounts Management page','2025-03-11 00:34:45'),(779,1,'Page View','Viewed Accounts Management page','2025-03-11 00:36:45'),(780,1,'Page View','Viewed Accounts Management page','2025-03-11 00:37:14'),(781,1,'Page View','Viewed Accounts Management page','2025-03-11 00:37:31'),(782,1,'Page View','Viewed Accounts Management page','2025-03-11 00:40:31'),(783,1,'Page View','Viewed Accounts Management page','2025-03-11 00:41:49'),(784,1,'Page View','Viewed Accounts Management page','2025-03-11 00:43:02'),(785,1,'Page View','Viewed Accounts Management page','2025-03-11 00:43:33'),(786,1,'Page View','Viewed Accounts Management page','2025-03-11 00:44:25'),(787,1,'Page View','Viewed Accounts Management page','2025-03-11 00:44:39'),(788,1,'Page View','Viewed Accounts Management page','2025-03-11 00:44:43'),(789,1,'Page View','Viewed Accounts Management page','2025-03-11 00:45:19'),(790,1,'Created Account','Created new account for cs scd (ID: 5)','2025-03-11 00:45:19'),(791,1,'Page View','Viewed Accounts Management page','2025-03-11 00:45:21'),(792,1,'Page View','Viewed Accounts Management page','2025-03-11 00:46:57'),(793,1,'Page View','Viewed Accounts Management page','2025-03-11 00:47:41'),(794,1,'Page View','Viewed Accounts Management page','2025-03-11 00:48:13'),(795,1,'Created Account','Created new account for bbbbbbbbbbbbb dvdf (ID: 6)','2025-03-11 00:48:13'),(796,1,'Page View','Viewed Accounts Management page','2025-03-11 00:48:15'),(797,1,'Page View','Viewed Accounts Management page','2025-03-11 00:48:30'),(798,1,'Page View','Viewed Accounts Management page','2025-03-11 00:49:42'),(799,1,'Page View','Viewed Accounts Management page','2025-03-11 00:50:29'),(800,1,'Created Account','Created new account for csdcscsdcs sc (ID: 7)','2025-03-11 00:50:29'),(801,1,'Page View','Viewed Accounts Management page','2025-03-11 00:50:31'),(802,1,'Page View','Viewed Accounts Management page','2025-03-11 00:52:08'),(803,1,'Page View','Viewed Accounts Management page','2025-03-11 00:52:44'),(804,1,'Page View','Viewed Accounts Management page','2025-03-11 00:53:15'),(805,1,'Updated Account','Updated account for csdcscsdcs sc (ID: 7). Changes: ','2025-03-11 00:53:15'),(806,1,'Page View','Viewed Accounts Management page','2025-03-11 00:53:17'),(807,1,'Page View','Viewed Accounts Management page','2025-03-11 00:54:00'),(808,1,'Created Account','Created new account for cscsddcs csdsdcsd (ID: 8)','2025-03-11 00:54:00'),(809,1,'Page View','Viewed Accounts Management page','2025-03-11 00:54:02'),(810,1,'Page View','Viewed Accounts Management page','2025-03-10 17:55:23'),(811,1,'Page View','Viewed Accounts Management page','2025-03-10 17:55:40'),(812,1,'Updated Account','Updated account for Dennis Bongaitan (ID: 1). Changes: Rank:  → scdcdscscsdcsd, User Type: admin → Admin','2025-03-10 17:55:40'),(813,1,'Page View','Viewed Accounts Management page','2025-03-10 17:55:42'),(814,1,'Page View','Viewed Profile page','2025-03-11 00:55:47'),(815,1,'Page View','Viewed Profile page','2025-03-11 00:56:18'),(816,1,'Page View','Viewed Profile page','2025-03-11 00:56:38'),(817,1,'Page View','Viewed Profile page','2025-03-11 00:56:49'),(818,1,'Page View','Viewed Profile page','2025-03-11 00:57:35'),(819,1,'Page View','Viewed Profile page','2025-03-11 00:58:22'),(820,1,'Page View','Viewed Profile page','2025-03-11 00:58:54'),(821,1,'Page View','Viewed Profile page','2025-03-11 00:59:59'),(822,1,'Page View','Viewed Inventory Management page','2025-03-11 01:00:27'),(823,1,'Page View','Viewed Inventory Management page','2025-03-11 01:02:45'),(824,1,'Page View','Viewed Inventory Management page','2025-03-11 01:04:28'),(825,1,'Page View','Viewed Inventory Management page','2025-03-11 01:04:54'),(826,1,'Page View','Viewed Inventory Management page','2025-03-11 01:05:16'),(827,1,'Page View','Viewed Inventory Management page','2025-03-11 01:06:07'),(828,1,'Page View','Viewed Inventory Management page','2025-03-11 01:11:38'),(829,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:02'),(830,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:16'),(831,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:19'),(832,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:25'),(833,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:28'),(834,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:31'),(835,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:34'),(836,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:37'),(837,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:12:40'),(838,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:30'),(839,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:39'),(840,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:41'),(841,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:44'),(842,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:46'),(843,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:49'),(844,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:51'),(845,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:55'),(846,1,'Page View','Viewed Processor Management page','2025-03-11 01:15:58'),(847,1,'Page View','Viewed Processor Management page','2025-03-11 01:20:30'),(848,1,'Page View','Viewed Antivirus Software Management page','2025-03-11 01:20:36'),(849,1,'Page View','Viewed Antivirus Software Management page','2025-03-11 01:20:43'),(850,1,'Page View','Viewed Antivirus Software Management page','2025-03-11 01:20:45'),(851,1,'Page View','Viewed Antivirus Software Management page','2025-03-11 01:20:51'),(852,1,'Page View','Viewed Antivirus Software Management page','2025-03-11 01:20:54'),(853,1,'Page View','Viewed Application Software Management page','2025-03-11 01:23:53'),(854,1,'Page View','Viewed Application Software Management page','2025-03-11 01:24:04'),(855,1,'Page View','Viewed Application Software Management page','2025-03-11 01:24:06'),(856,1,'Page View','Viewed Application Software Management page','2025-03-11 01:24:12'),(857,1,'Page View','Viewed Application Software Management page','2025-03-11 01:24:14'),(858,1,'Page View','Viewed Application Software Management page','2025-03-11 01:26:38'),(859,1,'Page View','Viewed Application Software Management page','2025-03-11 01:28:06'),(860,1,'Page View','Viewed Operating System Management page','2025-03-11 01:28:10'),(861,1,'Page View','Viewed Operating System Management page','2025-03-11 01:28:17'),(862,1,'Page View','Viewed Operating System Management page','2025-03-11 01:28:19'),(863,1,'Page View','Viewed Installed RAM Management page','2025-03-11 01:29:54'),(864,1,'Page View','Viewed Installed RAM Management page','2025-03-11 01:30:00'),(865,1,'Page View','Viewed Installed RAM Management page','2025-03-11 01:30:02'),(866,1,'Page View','Viewed Installed RAM Management page','2025-03-11 01:30:08'),(867,1,'Page View','Viewed Installed RAM Management page','2025-03-11 01:30:10'),(868,1,'Page View','Viewed Processor Management page','2025-03-11 01:30:15'),(869,1,'Page View','Viewed Hard Drive Management page','2025-03-11 01:30:17'),(870,1,'Page View','Viewed Installed RAM Management page','2025-03-11 01:30:20'),(871,1,'Page View','Viewed Operating System Management page','2025-03-11 01:30:23'),(872,1,'Page View','Viewed Application Software Management page','2025-03-11 01:30:26'),(873,1,'Page View','Viewed Antivirus Software Management page','2025-03-11 01:30:32'),(874,1,'Page View','Viewed Inventory Management page','2025-03-11 01:30:52'),(875,1,'Page View','Viewed Inventory Management page','2025-03-11 01:31:52'),(876,1,'Page View','Viewed Inventory Management page','2025-03-11 01:32:06'),(877,1,'Page View','Viewed Inventory Management page','2025-03-11 01:32:35'),(878,1,'Page View','Viewed Accounts Management page','2025-03-10 18:33:11'),(879,1,'Page View','Viewed Accounts Management page','2025-03-10 18:33:47'),(880,1,'Updated Account','Updated account for testuser csdsdcsd (ID: 8). Changes: First Name: cscsddcs → testuser','2025-03-10 18:33:47'),(881,1,'Page View','Viewed Accounts Management page','2025-03-10 18:33:49'),(882,1,'Page View','Viewed Add Post page','2025-03-11 01:34:21'),(883,1,'Page View','Viewed Inventory Management page','2025-03-11 01:34:30'),(884,1,'Page View','Viewed Inventory Management page','2025-03-11 01:52:27'),(885,1,'Page View','Viewed Inventory Management page','2025-03-11 02:03:28'),(886,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:19'),(887,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:20'),(888,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:20'),(889,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:20'),(890,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:21'),(891,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:21'),(892,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:21'),(893,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:54'),(894,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:54'),(895,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:55'),(896,1,'Page View','Viewed Inventory Management page','2025-03-11 02:06:55'),(897,1,'Page View','Viewed Inventory Management page','2025-03-11 02:08:06'),(898,1,'Page View','Viewed Inventory Management page','2025-03-11 02:08:07'),(899,1,'Page View','Viewed Inventory Management page','2025-03-11 02:08:07'),(900,1,'Page View','Viewed Inventory Management page','2025-03-11 02:08:08'),(901,1,'Page View','Viewed Inventory Management page','2025-03-11 02:08:09'),(902,1,'Page View','Viewed Add Post page','2025-03-11 02:08:11'),(903,1,'Page View','Viewed Add Post page','2025-03-11 02:08:14'),(904,1,'Page View','Viewed Add Post page','2025-03-11 02:08:41'),(905,1,'Page View','Viewed Add Post page','2025-03-11 02:08:43'),(906,1,'Page View','Viewed Add Post page','2025-03-11 02:11:35'),(907,1,'Page View','Viewed Add Post page','2025-03-11 02:11:35'),(908,1,'Page View','Viewed Add Post page','2025-03-11 02:11:42'),(909,1,'Page View','Viewed Add Post page','2025-03-11 02:12:58'),(910,1,'Page View','Viewed Add Post page','2025-03-11 02:13:29'),(911,1,'Page View','Viewed Add Post page','2025-03-11 02:13:49'),(912,1,'Page View','Viewed Add Post page','2025-03-11 02:14:26'),(913,1,'Page View','Viewed Add Post page','2025-03-11 02:14:27'),(914,1,'Page View','Viewed Add Post page','2025-03-11 02:14:27'),(915,1,'Page View','Viewed Add Post page','2025-03-11 02:14:27'),(916,1,'Page View','Viewed Inventory Management page','2025-03-11 02:15:38'),(917,1,'Page View','Viewed Inventory Management page','2025-03-11 02:17:59'),(918,1,'Page View','Viewed Inventory Management page','2025-03-11 02:18:15'),(919,1,'Page View','Viewed Inventory Management page','2025-03-11 02:18:53'),(920,1,'Page View','Viewed Dashboard page','2025-03-11 02:18:56'),(921,1,'Page View','Viewed Dashboard page','2025-03-11 02:18:57'),(922,1,'Page View','Viewed Add Post page','2025-03-11 02:19:05'),(923,1,'Page View','Viewed Add Post page','2025-03-11 02:19:43'),(924,1,'Page View','Viewed Add Post page','2025-03-11 02:19:44'),(925,1,'Page View','Viewed Add Post page','2025-03-11 02:19:44'),(926,1,'Page View','Viewed Add Post page','2025-03-11 02:19:50'),(927,1,'Page View','Viewed Dashboard page','2025-03-11 02:20:05'),(928,1,'Page View','Viewed Dashboard page','2025-03-11 02:20:05'),(929,1,'Page View','Viewed Add Post page','2025-03-11 02:20:06'),(930,1,'Page View','Viewed Add Post page','2025-03-11 02:23:04'),(931,1,'Page View','Viewed Add Post page','2025-03-11 02:24:47'),(932,1,'Page View','Viewed Add Post page','2025-03-11 02:25:16'),(933,1,'Page View','Viewed Add Post page','2025-03-11 02:27:18'),(934,1,'Page View','Viewed Add Post page','2025-03-11 02:27:24'),(935,1,'Page View','Viewed Add Post page','2025-03-11 02:27:43'),(936,1,'Page View','Viewed Add Post page','2025-03-11 02:27:45'),(937,1,'Page View','Viewed Add Post page','2025-03-11 02:28:33'),(938,4,'Page View','Viewed Profile page','2025-03-11 02:32:57'),(939,4,'Page View','Viewed Profile page','2025-03-11 02:33:21'),(940,4,'Page View','Viewed Profile page','2025-03-11 02:33:25'),(941,4,'Page View','Viewed Profile page','2025-03-11 02:34:47'),(942,4,'Page View','Viewed Profile page','2025-03-11 02:35:01'),(943,4,'Page View','Viewed Inventory Management page','2025-03-11 02:43:39'),(944,4,'Page View','Viewed Inventory Management page','2025-03-11 02:46:26'),(945,4,'Page View','Viewed Inventory Management page','2025-03-11 02:48:31'),(946,4,'Page View','Viewed Inventory Management page','2025-03-11 02:48:50'),(947,4,'Page View','Viewed Inventory Management page','2025-03-11 02:49:37'),(948,4,'Page View','Viewed Inventory Management page','2025-03-11 02:50:50'),(949,4,'Page View','Viewed Inventory Management page','2025-03-11 02:51:22'),(950,4,'Page View','Viewed Inventory Management page','2025-03-11 02:51:49'),(951,4,'Page View','Viewed Inventory Management page','2025-03-11 02:52:43'),(952,4,'Page View','Viewed Inventory Management page','2025-03-11 02:53:01'),(953,4,'Page View','Viewed Inventory Management page','2025-03-11 02:53:14'),(954,4,'Page View','Viewed Inventory Management page','2025-03-11 02:53:35'),(955,4,'Page View','Viewed Inventory Management page','2025-03-11 02:54:12'),(956,4,'Page View','Viewed Inventory Management page','2025-03-11 02:54:35'),(957,4,'Page View','Viewed Inventory Management page','2025-03-11 02:56:54'),(958,4,'Page View','Viewed Inventory Management page','2025-03-11 02:57:32'),(959,4,'Page View','Viewed Inventory Management page','2025-03-11 02:57:43'),(960,4,'Page View','Viewed Inventory Management page','2025-03-11 02:57:52'),(961,4,'Page View','Viewed Inventory Management page','2025-03-11 02:58:53'),(962,4,'Page View','Viewed Inventory Management page','2025-03-11 03:00:42'),(963,4,'Page View','Viewed Inventory Management page','2025-03-11 03:00:59'),(964,4,'Page View','Viewed Inventory Management page','2025-03-11 03:02:25'),(965,4,'Page View','Viewed Inventory Management page','2025-03-11 03:06:25'),(966,4,'Page View','Viewed Inventory Management page','2025-03-11 03:09:09'),(967,4,'Page View','Viewed Inventory Management page','2025-03-11 03:12:06'),(968,4,'Page View','Viewed Inventory Management page','2025-03-11 03:14:05'),(969,4,'Page View','Viewed Inventory Management page','2025-03-11 03:14:28'),(970,4,'Page View','Viewed Inventory Management page','2025-03-11 03:14:40'),(971,4,'Page View','Viewed Inventory Management page','2025-03-11 03:15:48'),(972,4,'Page View','Viewed Inventory Management page','2025-03-11 03:16:37'),(973,4,'Page View','Viewed Inventory Management page','2025-03-11 03:17:36'),(974,4,'Page View','Viewed Inventory Management page','2025-03-11 03:17:56'),(975,4,'Page View','Viewed Inventory Management page','2025-03-11 03:18:10'),(976,4,'Page View','Viewed Inventory Management page','2025-03-11 03:19:00'),(977,4,'Page View','Viewed Inventory Management page','2025-03-11 03:19:14'),(978,4,'Page View','Viewed Inventory Management page','2025-03-11 03:19:42'),(979,4,'Page View','Viewed Inventory Management page','2025-03-11 03:20:32'),(980,4,'Page View','Viewed Inventory Management page','2025-03-11 03:20:58'),(981,4,'Page View','Viewed Inventory Management page','2025-03-11 03:24:33'),(982,4,'Page View','Viewed Inventory Management page','2025-03-11 03:27:04'),(983,4,'Page View','Viewed Inventory Management page','2025-03-11 03:28:26'),(984,4,'Page View','Viewed Inventory Management page','2025-03-11 03:29:05'),(985,4,'Page View','Viewed Inventory Management page','2025-03-11 03:29:19'),(986,4,'Page View','Viewed Inventory Management page','2025-03-11 03:29:42'),(987,4,'Page View','Viewed Inventory Management page','2025-03-11 03:30:44'),(988,4,'Page View','Viewed Inventory Management page','2025-03-11 03:31:23'),(989,4,'Page View','Viewed Inventory Management page','2025-03-11 03:32:08'),(990,4,'Page View','Viewed Inventory Management page','2025-03-11 03:32:41'),(991,4,'Page View','Viewed Inventory Management page','2025-03-11 03:33:07'),(992,4,'Page View','Viewed Inventory Management page','2025-03-11 03:33:46'),(993,4,'Page View','Viewed Inventory Management page','2025-03-11 03:34:23'),(994,4,'Page View','Viewed Inventory Management page','2025-03-11 03:37:22'),(995,4,'Page View','Viewed Inventory Management page','2025-03-11 03:38:24'),(996,4,'Page View','Viewed Inventory Management page','2025-03-11 03:41:18'),(997,4,'Page View','Viewed Inventory Management page','2025-03-11 03:43:04'),(998,4,'Page View','Viewed Inventory Management page','2025-03-11 03:43:06'),(999,4,'Page View','Viewed Inventory Management page','2025-03-11 03:43:06'),(1000,4,'Page View','Viewed Inventory Management page','2025-03-11 03:43:07'),(1001,4,'Page View','Viewed Inventory Management page','2025-03-11 03:44:09'),(1002,4,'Page View','Viewed Inventory Management page','2025-03-11 03:44:10'),(1003,4,'Page View','Viewed Inventory Management page','2025-03-11 03:44:10'),(1004,4,'Page View','Viewed Inventory Management page','2025-03-11 03:44:10'),(1005,4,'Page View','Viewed Inventory Management page','2025-03-11 03:44:11'),(1006,4,'Page View','Viewed Inventory Management page','2025-03-11 03:44:20'),(1007,4,'Page View','Viewed Inventory Management page','2025-03-11 03:45:33'),(1008,4,'Page View','Viewed Inventory Management page','2025-03-11 03:45:34'),(1009,4,'Page View','Viewed Inventory Management page','2025-03-11 03:45:34'),(1010,4,'Page View','Viewed Inventory Management page','2025-03-11 03:45:35'),(1011,4,'Page View','Viewed Inventory Management page','2025-03-11 03:45:35'),(1012,4,'Page View','Viewed Inventory Management page','2025-03-11 03:47:24'),(1013,4,'Page View','Viewed Inventory Management page','2025-03-11 03:47:25'),(1014,4,'Page View','Viewed Inventory Management page','2025-03-11 03:47:25'),(1015,4,'Page View','Viewed Inventory Management page','2025-03-11 03:47:25'),(1016,4,'Page View','Viewed Inventory Management page','2025-03-11 03:48:04'),(1017,4,'Page View','Viewed Inventory Management page','2025-03-11 03:49:57'),(1018,4,'Page View','Viewed Inventory Management page','2025-03-11 03:50:13'),(1019,4,'Page View','Viewed Inventory Management page','2025-03-11 03:50:19'),(1020,4,'Page View','Viewed Inventory Management page','2025-03-11 03:50:36'),(1021,4,'Page View','Viewed Inventory Management page','2025-03-11 03:51:00'),(1022,4,'Page View','Viewed Inventory Management page','2025-03-11 21:39:05'),(1023,4,'Page View','Viewed Inventory Management page','2025-03-11 21:43:36'),(1024,4,'Page View','Viewed Inventory Management page','2025-03-11 21:51:12'),(1025,4,'Page View','Viewed Inventory Management page','2025-03-11 21:51:36'),(1026,4,'Page View','Viewed Inventory Management page','2025-03-11 21:53:07'),(1027,4,'Page View','Viewed Inventory Management page','2025-03-11 21:54:58'),(1028,4,'Page View','Viewed Inventory Management page','2025-03-11 21:56:38'),(1029,4,'Page View','Viewed Inventory Management page','2025-03-11 21:57:08'),(1030,4,'Page View','Viewed Inventory Management page','2025-03-11 21:57:34'),(1031,4,'Page View','Viewed Inventory Management page','2025-03-11 21:57:50'),(1032,4,'Page View','Viewed Inventory Management page','2025-03-11 22:00:16'),(1033,4,'Page View','Viewed Inventory Management page','2025-03-11 22:00:22'),(1034,4,'Page View','Viewed Inventory Management page','2025-03-11 22:00:30'),(1035,4,'Page View','Viewed Inventory Management page','2025-03-11 22:00:34'),(1036,4,'Page View','Viewed Inventory Management page','2025-03-11 22:00:44'),(1037,4,'Page View','Viewed Inventory Management page','2025-03-11 22:01:56'),(1038,4,'Page View','Viewed Inventory Management page','2025-03-11 22:02:01'),(1039,4,'Page View','Viewed Inventory Management page','2025-03-11 22:07:45'),(1040,4,'Page View','Viewed Inventory Management page','2025-03-11 22:07:48'),(1041,4,'Page View','Viewed Inventory Management page','2025-03-11 22:09:59'),(1042,4,'Page View','Viewed Inventory Management page','2025-03-11 22:10:01'),(1043,4,'Page View','Viewed Inventory Management page','2025-03-11 22:11:07'),(1044,4,'Page View','Viewed Inventory Management page','2025-03-11 22:11:09'),(1045,4,'Page View','Viewed Inventory Management page','2025-03-11 22:11:15'),(1046,4,'Page View','Viewed Inventory Management page','2025-03-11 22:11:17'),(1047,4,'Page View','Viewed Inventory Management page','2025-03-11 22:11:28'),(1048,4,'Page View','Viewed Inventory Management page','2025-03-11 22:13:01'),(1049,4,'Page View','Viewed Inventory Management page','2025-03-11 22:13:03'),(1050,4,'Page View','Viewed Inventory Management page','2025-03-11 22:13:45'),(1051,4,'Page View','Viewed Inventory Management page','2025-03-11 22:13:49'),(1052,4,'Page View','Viewed Inventory Management page','2025-03-11 22:13:52'),(1053,4,'Page View','Viewed Inventory Management page','2025-03-11 22:14:38'),(1054,4,'Page View','Viewed Inventory Management page','2025-03-11 22:14:40'),(1055,4,'Page View','Viewed Inventory Management page','2025-03-11 22:14:44'),(1056,4,'Page View','Viewed Inventory Management page','2025-03-11 22:15:19'),(1057,4,'Page View','Viewed Inventory Management page','2025-03-11 22:15:20'),(1058,4,'Page View','Viewed Inventory Management page','2025-03-11 22:16:13'),(1059,4,'Page View','Viewed Inventory Management page','2025-03-11 22:16:14'),(1060,4,'Page View','Viewed Inventory Management page','2025-03-11 22:17:39'),(1061,4,'Page View','Viewed Inventory Management page','2025-03-11 22:17:41'),(1062,4,'Page View','Viewed Inventory Management page','2025-03-11 22:17:57'),(1063,4,'Page View','Viewed Inventory Management page','2025-03-11 22:19:16'),(1064,4,'Page View','Viewed Inventory Management page','2025-03-11 22:20:31'),(1065,4,'Page View','Viewed Inventory Management page','2025-03-11 22:20:34'),(1066,4,'Page View','Viewed Inventory Management page','2025-03-11 22:20:42'),(1067,4,'Page View','Viewed Inventory Management page','2025-03-11 22:21:02'),(1068,4,'Page View','Viewed Inventory Management page','2025-03-11 22:21:07'),(1069,4,'Page View','Viewed Inventory Management page','2025-03-11 22:23:47'),(1070,4,'Page View','Viewed Inventory Management page','2025-03-11 22:23:50'),(1071,4,'Page View','Viewed Inventory Management page','2025-03-11 22:23:57'),(1072,4,'Page View','Viewed Inventory Management page','2025-03-11 22:23:59'),(1073,4,'Page View','Viewed Inventory Management page','2025-03-11 22:24:04'),(1074,4,'Page View','Viewed Inventory Management page','2025-03-11 22:24:06'),(1075,4,'Page View','Viewed Inventory Management page','2025-03-11 22:24:09'),(1076,4,'Page View','Viewed Inventory Management page','2025-03-11 22:24:11'),(1077,4,'Page View','Viewed Inventory Management page','2025-03-11 22:26:07'),(1078,4,'Page View','Viewed Inventory Management page','2025-03-11 22:26:10'),(1079,4,'Page View','Viewed Inventory Management page','2025-03-11 22:27:41'),(1080,4,'Page View','Viewed Inventory Management page','2025-03-11 22:29:29'),(1081,4,'Page View','Viewed Inventory Management page','2025-03-11 22:31:33'),(1082,4,'Page View','Viewed Inventory Management page','2025-03-11 22:33:35'),(1083,4,'Page View','Viewed Inventory Management page','2025-03-11 22:33:37'),(1084,4,'Page View','Viewed Inventory Management page','2025-03-11 22:33:38'),(1085,4,'Page View','Viewed Inventory Management page','2025-03-11 22:33:39'),(1086,4,'Page View','Viewed Inventory Management page','2025-03-11 22:33:39'),(1087,4,'Page View','Viewed Inventory Management page','2025-03-11 22:33:39'),(1088,4,'Page View','Viewed Inventory Management page','2025-03-11 22:33:51'),(1089,4,'Page View','Viewed Inventory Management page','2025-03-11 22:33:55'),(1090,4,'Page View','Viewed Inventory Management page','2025-03-11 22:34:42'),(1091,4,'Page View','Viewed Inventory Management page','2025-03-11 22:34:43'),(1092,4,'Page View','Viewed Inventory Management page','2025-03-11 22:34:46'),(1093,4,'Page View','Viewed Inventory Management page','2025-03-11 22:34:47'),(1094,4,'Page View','Viewed Inventory Management page','2025-03-11 22:35:24'),(1095,4,'Page View','Viewed Inventory Management page','2025-03-11 22:35:26'),(1096,4,'Page View','Viewed Inventory Management page','2025-03-11 22:35:28'),(1097,4,'Page View','Viewed Inventory Management page','2025-03-11 22:35:55'),(1098,4,'Page View','Viewed Inventory Management page','2025-03-11 22:35:57'),(1099,4,'Page View','Viewed Inventory Management page','2025-03-11 22:36:19'),(1100,4,'Page View','Viewed Inventory Management page','2025-03-11 22:36:21'),(1101,4,'Page View','Viewed Inventory Management page','2025-03-11 22:36:21'),(1102,4,'Page View','Viewed Inventory Management page','2025-03-11 22:36:23'),(1103,4,'Page View','Viewed Inventory Management page','2025-03-11 22:36:50'),(1104,4,'Page View','Viewed Inventory Management page','2025-03-11 22:36:53'),(1105,4,'Page View','Viewed Inventory Management page','2025-03-11 22:36:54'),(1106,4,'Page View','Viewed Inventory Management page','2025-03-11 22:38:08'),(1107,4,'Page View','Viewed Inventory Management page','2025-03-11 22:38:19'),(1108,4,'Page View','Viewed Inventory Management page','2025-03-11 22:38:20'),(1109,4,'Page View','Viewed Profile page','2025-03-11 22:38:31'),(1110,4,'Page View','Viewed Profile page','2025-03-11 22:38:38'),(1111,4,'Page View','Viewed Inventory Management page','2025-03-11 22:38:50'),(1112,4,'Page View','Viewed Inventory Management page','2025-03-11 22:41:12'),(1113,4,'Page View','Viewed Inventory Management page','2025-03-11 22:41:15'),(1114,4,'Page View','Viewed Inventory Management page','2025-03-11 22:41:34'),(1115,4,'Page View','Viewed Inventory Management page','2025-03-11 22:41:36'),(1116,4,'Page View','Viewed Profile page','2025-03-11 22:41:39'),(1117,4,'Page View','Viewed Inventory Management page','2025-03-11 22:41:43'),(1118,4,'Page View','Viewed Inventory Management page','2025-03-11 22:44:20'),(1119,4,'Page View','Viewed Inventory Management page','2025-03-11 22:48:20'),(1120,4,'Page View','Viewed Inventory Management page','2025-03-11 22:48:25'),(1121,4,'Page View','Viewed Inventory Management page','2025-03-11 22:48:28'),(1122,4,'Page View','Viewed Inventory Management page','2025-03-11 22:48:32'),(1123,4,'Page View','Viewed Inventory Management page','2025-03-11 22:48:33'),(1124,4,'Page View','Viewed Inventory Management page','2025-03-11 22:49:27'),(1125,4,'Page View','Viewed Inventory Management page','2025-03-11 22:51:44'),(1126,4,'Page View','Viewed Inventory Management page','2025-03-11 22:51:45'),(1127,4,'Page View','Viewed Inventory Management page','2025-03-11 22:52:06'),(1128,4,'Page View','Viewed Inventory Management page','2025-03-11 22:52:08'),(1129,4,'Page View','Viewed Inventory Management page','2025-03-11 22:54:18'),(1130,4,'Page View','Viewed Inventory Management page','2025-03-11 22:54:28'),(1131,4,'Page View','Viewed Inventory Management page','2025-03-11 22:54:29'),(1132,4,'Page View','Viewed Inventory Management page','2025-03-11 22:56:43'),(1133,4,'Page View','Viewed Inventory Management page','2025-03-11 22:56:47'),(1134,4,'Page View','Viewed Inventory Management page','2025-03-11 22:57:30'),(1135,4,'Page View','Viewed Inventory Management page','2025-03-11 22:59:04'),(1136,4,'Page View','Viewed Inventory Management page','2025-03-11 22:59:19'),(1137,4,'Page View','Viewed Inventory Management page','2025-03-11 22:59:22'),(1138,4,'Page View','Viewed Inventory Management page','2025-03-11 22:59:58'),(1139,4,'Page View','Viewed Inventory Management page','2025-03-11 23:00:13'),(1140,4,'Page View','Viewed Inventory Management page','2025-03-11 23:00:26'),(1141,4,'Page View','Viewed Inventory Management page','2025-03-11 23:00:30'),(1142,4,'Page View','Viewed Inventory Management page','2025-03-11 23:00:49'),(1143,4,'Page View','Viewed Inventory Management page','2025-03-11 23:01:01'),(1144,4,'Page View','Viewed Inventory Management page','2025-03-11 23:01:03'),(1145,4,'Page View','Viewed Inventory Management page','2025-03-11 23:01:18'),(1146,4,'Page View','Viewed Inventory Management page','2025-03-11 23:01:32'),(1147,4,'Page View','Viewed Inventory Management page','2025-03-11 23:03:04'),(1148,4,'Page View','Viewed Inventory Management page','2025-03-11 23:03:09'),(1149,4,'Page View','Viewed Inventory Management page','2025-03-11 23:03:12'),(1150,4,'Page View','Viewed Inventory Management page','2025-03-11 23:03:58'),(1151,4,'Page View','Viewed Inventory Management page','2025-03-11 23:04:16'),(1152,4,'Page View','Viewed Inventory Management page','2025-03-11 23:06:23'),(1153,4,'Page View','Viewed Inventory Management page','2025-03-11 23:26:40'),(1154,4,'Page View','Viewed Inventory Management page','2025-03-12 09:33:10'),(1155,4,'Page View','Viewed Inventory Management page','2025-03-12 09:33:59'),(1156,4,'Page View','Viewed Inventory Management page','2025-03-12 09:34:15'),(1157,4,'Page View','Viewed Inventory Management page','2025-03-12 09:34:51'),(1158,4,'Page View','Viewed Inventory Management page','2025-03-12 09:34:54'),(1159,4,'Page View','Viewed Inventory Management page','2025-03-12 09:34:56'),(1160,4,'Page View','Viewed Inventory Management page','2025-03-12 09:34:59'),(1161,1,'Page View','Viewed Dashboard page','2025-03-12 09:48:41'),(1162,1,'Page View','Viewed Dashboard page','2025-03-12 09:50:11'),(1163,1,'Page View','Viewed Dashboard page','2025-03-12 09:51:56'),(1164,1,'Page View','Viewed Dashboard page','2025-03-12 09:53:30'),(1165,1,'Page View','Viewed Dashboard page','2025-03-12 09:54:16'),(1166,1,'Page View','Viewed Inventory Management page','2025-03-12 09:57:00'),(1167,1,'Page View','Viewed Inventory Management page','2025-03-12 09:57:01'),(1168,1,'Page View','Viewed Inventory Management page','2025-03-12 09:57:01'),(1169,1,'Page View','Viewed Inventory Management page','2025-03-12 09:57:01'),(1170,1,'Page View','Viewed Inventory Management page','2025-03-12 09:57:01'),(1171,1,'Page View','Viewed Inventory Management page','2025-03-12 09:57:02'),(1172,1,'Page View','Viewed Inventory Management page','2025-03-12 09:57:49'),(1173,1,'Page View','Viewed Inventory Management page','2025-03-12 09:58:36'),(1174,1,'Page View','Viewed Inventory Management page','2025-03-12 10:01:04'),(1175,1,'Page View','Viewed Inventory Management page','2025-03-12 10:01:26'),(1176,1,'Page View','Viewed Add Post page','2025-03-12 11:13:36'),(1177,1,'Page View','Viewed Dashboard page','2025-03-12 11:13:43'),(1178,1,'Page View','Viewed Dashboard page','2025-03-12 13:06:11'),(1179,1,'Page View','Viewed Important Notices page','2025-03-12 13:06:47'),(1180,1,'Page View','Viewed Dashboard page','2025-03-12 13:07:05'),(1181,1,'Page View','Viewed Accounts Management page','2025-03-12 07:37:44'),(1182,1,'Page View','Viewed Accounts Management page','2025-03-12 07:42:13'),(1183,1,'Page View','Viewed Add Post page','2025-03-12 15:34:47'),(1184,1,'Page View','Viewed Add Post page','2025-03-12 15:34:51'),(1185,1,'Page View','Viewed Add Post page','2025-03-12 15:34:56'),(1186,1,'Page View','Viewed Dashboard page','2025-03-12 15:35:03'),(1187,1,'Page View','Viewed Add Post page','2025-03-12 15:35:04'),(1188,1,'Page View','Viewed Add Post page','2025-03-12 15:38:36'),(1189,1,'Page View','Viewed Add Post page','2025-03-12 15:38:41'),(1190,1,'Page View','Viewed Dashboard page','2025-03-12 15:38:43'),(1191,1,'Page View','Viewed Important Notices page','2025-03-12 15:38:52'),(1192,1,'Page View','Viewed Important Notices page','2025-03-12 15:38:55'),(1193,1,'Page View','Viewed Processor Management page','2025-03-12 15:39:44'),(1194,1,'Page View','Viewed Profile page','2025-03-12 15:39:49'),(1195,1,'Page View','Viewed Accounts Management page','2025-03-12 08:39:59'),(1196,1,'Page View','Viewed Dashboard page','2025-03-12 15:42:15'),(1197,1,'Page View','Viewed Dashboard page','2025-03-12 15:42:58'),(1198,1,'Page View','Viewed Dashboard page','2025-03-12 15:45:48'),(1199,1,'Page View','Viewed Dashboard page','2025-03-12 15:47:01'),(1200,1,'Page View','Viewed Inventory Management page','2025-03-12 16:22:45'),(1201,1,'Page View','Viewed Inventory Management page','2025-03-12 16:26:24'),(1202,1,'Page View','Viewed Inventory Management page','2025-03-12 16:28:05'),(1203,1,'Page View','Viewed Inventory Management page','2025-03-12 16:30:10'),(1204,1,'Page View','Viewed Inventory Management page','2025-03-12 16:30:37'),(1205,1,'Page View','Viewed Inventory Management page','2025-03-12 16:32:10'),(1206,1,'Page View','Viewed Inventory Management page','2025-03-12 16:32:10'),(1207,1,'Page View','Viewed Inventory Management page','2025-03-12 16:32:40'),(1208,1,'Page View','Viewed Network Management page','2025-03-12 16:46:59'),(1209,1,'Page View','Viewed Rank Management page','2025-03-12 16:47:20'),(1210,1,'Page View','Viewed Profile page','2025-03-12 16:49:27'),(1211,1,'Page View','Viewed Add Post page','2025-03-12 16:49:30'),(1212,1,'Page View','Viewed Processor Management page','2025-03-12 16:49:57'),(1213,1,'Page View','Viewed Add Post page','2025-03-12 16:50:14'),(1214,1,'Page View','Viewed Unit/Offices Management page','2025-03-12 16:51:03'),(1215,1,'Page View','Viewed Add Post page','2025-03-12 16:51:08'),(1216,1,'Page View','Viewed Add Post page','2025-03-12 16:51:59'),(1217,1,'Page View','Viewed Profile page','2025-03-12 16:52:02'),(1218,1,'Page View','Viewed Dashboard page','2025-03-12 16:52:05'),(1219,1,'Page View','Viewed Profile page','2025-03-12 16:52:09'),(1220,1,'Page View','Viewed Dashboard page','2025-03-12 16:52:12'),(1221,1,'Page View','Viewed Dashboard page','2025-03-12 16:55:19'),(1222,1,'Page View','Viewed Inventory Management page','2025-03-12 16:55:22'),(1223,1,'Page View','Viewed Inventory Management page','2025-03-12 17:05:46'),(1224,1,'Page View','Viewed Inventory Management page','2025-03-12 17:06:31'),(1225,1,'Page View','Viewed Inventory Management page','2025-03-12 17:07:17'),(1226,4,'Page View','Viewed Inventory Management page','2025-03-12 17:07:52'),(1227,1,'Page View','Viewed Dashboard page','2025-03-12 17:08:06'),(1228,1,'Page View','Viewed Inventory Management page','2025-03-12 17:08:08'),(1229,1,'Page View','Viewed Inventory Management page','2025-03-12 17:08:26'),(1230,1,'Page View','Viewed Inventory Management page','2025-03-12 17:09:23'),(1231,1,'Page View','Viewed Inventory Management page','2025-03-12 17:11:33'),(1232,1,'Page View','Viewed Inventory Management page','2025-03-12 17:15:24'),(1233,1,'Page View','Viewed Inventory Management page','2025-03-12 17:15:25'),(1234,1,'Page View','Viewed Inventory Management page','2025-03-12 17:15:31'),(1235,1,'Page View','Viewed Inventory Management page','2025-03-12 17:16:14'),(1236,1,'Page View','Viewed Inventory Management page','2025-03-12 17:16:19'),(1237,1,'Page View','Viewed Inventory Management page','2025-03-12 17:16:21'),(1238,1,'Page View','Viewed Inventory Management page','2025-03-12 17:33:49'),(1239,1,'Page View','Viewed Add Post page','2025-03-12 17:33:52'),(1240,1,'Page View','Viewed Add Post page','2025-03-12 17:34:05'),(1241,1,'Create Bulletin','Created new cybersecurity bulletin: cdscsd','2025-03-12 17:34:05'),(1242,1,'Page View','Viewed Add Post page','2025-03-12 17:34:07'),(1243,1,'Page View','Viewed Add Post page','2025-03-12 17:39:50'),(1244,1,'Page View','Viewed Add Post page','2025-03-12 17:40:21'),(1245,1,'Page View','Viewed Add Post page','2025-03-12 17:40:50'),(1246,1,'Create Tutorial','Created new cybersecurity tutorial: csds','2025-03-12 17:40:50'),(1247,1,'Page View','Viewed Add Post page','2025-03-12 17:40:51'),(1248,1,'Page View','Viewed Add Post page','2025-03-12 17:41:06'),(1249,1,'Page View','Viewed Add Post page','2025-03-12 17:44:12'),(1250,1,'Page View','Viewed Add Post page','2025-03-12 17:44:17'),(1251,1,'Page View','Viewed Add Post page','2025-03-12 17:44:37'),(1252,1,'Page View','Viewed Add Post page','2025-03-12 17:46:03'),(1253,1,'Page View','Viewed Add Post page','2025-03-12 17:46:17'),(1254,1,'Page View','Viewed Add Post page','2025-03-12 17:47:50'),(1255,1,'Page View','Viewed Add Post page','2025-03-12 17:48:56'),(1256,1,'Page View','Viewed Add Post page','2025-03-12 17:49:03'),(1257,1,'Page View','Viewed Add Post page','2025-03-12 17:49:19'),(1258,1,'Page View','Viewed Add Post page','2025-03-12 17:49:32'),(1259,1,'Page View','Viewed Add Post page','2025-03-12 17:49:47'),(1260,1,'Page View','Viewed Add Post page','2025-03-12 17:50:27'),(1261,1,'Page View','Viewed Add Post page','2025-03-12 17:50:36'),(1262,1,'Page View','Viewed Add Post page','2025-03-12 17:51:01'),(1263,1,'Page View','Viewed Add Post page','2025-03-12 17:51:12'),(1264,1,'Page View','Viewed Add Post page','2025-03-12 17:59:30');
/*!40000 ALTER TABLE `tbl_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_add_unit_offices`
--

DROP TABLE IF EXISTS `tbl_add_unit_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_add_unit_offices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit_offices_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_add_unit_offices`
--

LOCK TABLES `tbl_add_unit_offices` WRITE;
/*!40000 ALTER TABLE `tbl_add_unit_offices` DISABLE KEYS */;
INSERT INTO `tbl_add_unit_offices` VALUES (1,'bbbb','2025-02-14 18:29:27',NULL,NULL),(2,'cefffe','2025-02-14 18:30:46',NULL,NULL),(3,'mmmm','2025-02-14 18:35:11','2025-02-14 18:45:25',NULL),(7,'test','2025-02-15 01:45:58',NULL,'2025-02-15 01:50:10');
/*!40000 ALTER TABLE `tbl_add_unit_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_antivirus_software`
--

DROP TABLE IF EXISTS `tbl_antivirus_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_antivirus_software` (
  `id` int NOT NULL AUTO_INCREMENT,
  `antivirus_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_antivirus_software`
--

LOCK TABLES `tbl_antivirus_software` WRITE;
/*!40000 ALTER TABLE `tbl_antivirus_software` DISABLE KEYS */;
INSERT INTO `tbl_antivirus_software` VALUES (1,'KMSPICO','2025-03-10 17:20:43','2025-03-10 17:20:51',NULL);
/*!40000 ALTER TABLE `tbl_antivirus_software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_application_software`
--

DROP TABLE IF EXISTS `tbl_application_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_application_software` (
  `id` int NOT NULL AUTO_INCREMENT,
  `application_software_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_application_software`
--

LOCK TABLES `tbl_application_software` WRITE;
/*!40000 ALTER TABLE `tbl_application_software` DISABLE KEYS */;
INSERT INTO `tbl_application_software` VALUES (1,'ms office 2026','2025-03-10 17:24:04','2025-03-10 17:24:12',NULL);
/*!40000 ALTER TABLE `tbl_application_software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cybersecurity_bulletin`
--

DROP TABLE IF EXISTS `tbl_cybersecurity_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cybersecurity_bulletin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cybersecurity_bulletin_name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `cybersecurity_bulletin_image` varchar(255) DEFAULT NULL,
  `supporting_document` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cybersecurity_bulletin`
--

LOCK TABLES `tbl_cybersecurity_bulletin` WRITE;
/*!40000 ALTER TABLE `tbl_cybersecurity_bulletin` DISABLE KEYS */;
INSERT INTO `tbl_cybersecurity_bulletin` VALUES (1,'cdscsd','scdscd','67d1550d9f8d1.jpg','doc_67d1550d9fa7e.xls','active','2025-03-12 09:34:05',NULL,NULL);
/*!40000 ALTER TABLE `tbl_cybersecurity_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_designation`
--

DROP TABLE IF EXISTS `tbl_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_designation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_designation`
--

LOCK TABLES `tbl_designation` WRITE;
/*!40000 ALTER TABLE `tbl_designation` DISABLE KEYS */;
INSERT INTO `tbl_designation` VALUES (1,'vvvvvvvvvvvvvvv','2025-02-15 01:52:27','2025-02-15 01:53:10','2025-02-15 01:53:17'),(2,'ccccccccccc','2025-02-15 01:52:35',NULL,NULL),(3,'cccccccc','2025-02-15 01:52:41',NULL,NULL);
/*!40000 ALTER TABLE `tbl_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hard_drive`
--

DROP TABLE IF EXISTS `tbl_hard_drive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_hard_drive` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hard_drive_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hard_drive`
--

LOCK TABLES `tbl_hard_drive` WRITE;
/*!40000 ALTER TABLE `tbl_hard_drive` DISABLE KEYS */;
INSERT INTO `tbl_hard_drive` VALUES (1,'128GB/500GB','2025-03-10 17:12:16','2025-03-10 17:12:25',NULL),(2,'CSCDSCDS','2025-03-10 17:12:31',NULL,'2025-03-10 17:12:37');
/*!40000 ALTER TABLE `tbl_hard_drive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_important_notice`
--

DROP TABLE IF EXISTS `tbl_important_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_important_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `important_message` longtext COLLATE utf8mb4_general_ci,
  `start_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createD_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_important_notice`
--

LOCK TABLES `tbl_important_notice` WRITE;
/*!40000 ALTER TABLE `tbl_important_notice` DISABLE KEYS */;
INSERT INTO `tbl_important_notice` VALUES (1,'Reminders: Submission of Monthly Inventory for the month of March 2025 ','2025-02-28 21:53:00','2025-02-28 21:53:00','2025-03-01 05:53:10','2025-03-01 08:47:13',NULL),(2,'AAR Cyber Security Updates AAR','2025-03-01 04:49:00','2025-03-01 05:50:00','2025-03-01 08:50:00',NULL,NULL);
/*!40000 ALTER TABLE `tbl_important_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventory`
--

DROP TABLE IF EXISTS `tbl_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `computer_devices_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `location_id` varchar(255) DEFAULT NULL,
  `date_acquired` date DEFAULT NULL,
  `processor_id` varchar(255) DEFAULT NULL,
  `hard_drive_id` varchar(255) DEFAULT NULL,
  `installed_ram_id` varchar(255) DEFAULT NULL,
  `operating_system_id` varchar(255) DEFAULT NULL,
  `licensed_operating` varchar(255) DEFAULT NULL,
  `application_software_id` varchar(255) DEFAULT NULL,
  `licensed_application` varchar(255) DEFAULT NULL,
  `antivirus_software_id` varchar(255) DEFAULT NULL,
  `licensed_antivirus` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `comments` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventory`
--

LOCK TABLES `tbl_inventory` WRITE;
/*!40000 ALTER TABLE `tbl_inventory` DISABLE KEYS */;
INSERT INTO `tbl_inventory` VALUES (1,'bobo','cds','2','2025-03-11','1','1','1','1','Yes','1','Yes','1','Yes','PLDC','4','Approved',NULL,'2025-03-11 14:52:06','2025-03-12 07:39:00',NULL),(2,'cssccsd','cdsscd','3','2025-04-15','1','1','1','1','No','1','No','1','Yes','PLDC','1','Pending',NULL,'2025-03-12 08:30:37',NULL,'2025-03-12 09:15:31'),(3,'cssccsd','cdsscd','3','2025-04-15','1','1','1','1','No','1','No','1','Yes','PLDC','1','Pending',NULL,'2025-03-12 08:32:10',NULL,'2025-03-12 09:16:19');
/*!40000 ALTER TABLE `tbl_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_location`
--

DROP TABLE IF EXISTS `tbl_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_location`
--

LOCK TABLES `tbl_location` WRITE;
/*!40000 ALTER TABLE `tbl_location` DISABLE KEYS */;
INSERT INTO `tbl_location` VALUES (1,'bbbb','2025-02-15 02:45:57','2025-02-15 02:46:04','2025-02-15 02:46:16'),(2,'bbbb','2025-02-15 02:46:10','2025-02-15 02:47:39',NULL),(3,'scdcsdcsd','2025-02-28 14:37:57',NULL,NULL);
/*!40000 ALTER TABLE `tbl_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_network`
--

DROP TABLE IF EXISTS `tbl_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_network` (
  `id` int NOT NULL AUTO_INCREMENT,
  `network_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_network`
--

LOCK TABLES `tbl_network` WRITE;
/*!40000 ALTER TABLE `tbl_network` DISABLE KEYS */;
INSERT INTO `tbl_network` VALUES (1,'PLDC','2025-03-10 14:56:11','2025-03-10 14:56:27',NULL);
/*!40000 ALTER TABLE `tbl_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notifications`
--

DROP TABLE IF EXISTS `tbl_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `message` text,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notifications`
--

LOCK TABLES `tbl_notifications` WRITE;
/*!40000 ALTER TABLE `tbl_notifications` DISABLE KEYS */;
INSERT INTO `tbl_notifications` VALUES (1,4,'You submitted inventory \'csccsd\' on March 11, 2025',0,'2025-03-11 14:52:06',NULL),(2,4,'Your inventory item \'bobo\' has been declined. Reason: dvfvdfvd',0,'2025-03-12 04:57:30',NULL),(3,4,'Your inventory item \'bobo\' has been declined. Reason: dvdcdv',0,'2025-03-12 05:00:17',NULL),(4,4,'Dear TESTING s BONGAITAN N/A, your inventory item \'bobo\' has been declined. Reason: vddvfdfdf',0,'2025-03-12 05:03:36',NULL),(5,4,'Dear TESTING s BONGAITAN N/A, your inventory item \'bobo\' has been approved',0,'2025-03-12 05:09:27',NULL),(6,4,'Dear TESTING s BONGAITAN N/A, your inventory item \'bobo\' has been approved',0,'2025-03-12 07:39:00',NULL),(7,1,'New inventory item added: cssccsd',0,'2025-03-12 08:32:10',NULL);
/*!40000 ALTER TABLE `tbl_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_operating_system`
--

DROP TABLE IF EXISTS `tbl_operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_operating_system` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operating_system_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_operating_system`
--

LOCK TABLES `tbl_operating_system` WRITE;
/*!40000 ALTER TABLE `tbl_operating_system` DISABLE KEYS */;
INSERT INTO `tbl_operating_system` VALUES (1,'WINDOWS 10','2025-03-10 17:28:17',NULL,NULL);
/*!40000 ALTER TABLE `tbl_operating_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `post_specification` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `post_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supporting_document` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post`
--

LOCK TABLES `tbl_post` WRITE;
/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */;
INSERT INTO `tbl_post` VALUES (1,'VFD','VDF','VDF','67b041f3b303d.jpg',NULL,'active','2025-02-15 07:27:47',NULL,'2025-02-15 07:39:10'),(2,'dwqdqw','dwewde','wedwedwed','67b044a9c6d51.jpg',NULL,'active','2025-02-15 07:39:21',NULL,'2025-02-15 07:45:01'),(3,'asdxasx','addada','dwedwewed','67b044e6bbf53.jpg',NULL,'active','2025-02-15 07:40:22',NULL,'2025-02-15 07:41:08'),(4,'sxasaxsxa','xasaxsaxs','xasaxs','67b045ec90120.png',NULL,'active','2025-02-15 07:44:44','2025-02-15 07:44:56',NULL),(5,'cscds','cscs','dcscsd','67cef287245d3.docx',NULL,'active','2025-03-10 14:09:11',NULL,NULL),(6,'csddcs','csdcs','cdscsd','67cef487ebf43.jpg','67cef487ec50b.xlsx','active','2025-03-10 14:17:43',NULL,NULL),(7,'cscds','csd','scd','67cef64268dd9.png','doc_67cef6f441916.pdf','active','2025-03-10 14:25:06','2025-03-10 14:28:04',NULL);
/*!40000 ALTER TABLE `tbl_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_processor`
--

DROP TABLE IF EXISTS `tbl_processor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_processor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `processor_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_processor`
--

LOCK TABLES `tbl_processor` WRITE;
/*!40000 ALTER TABLE `tbl_processor` DISABLE KEYS */;
INSERT INTO `tbl_processor` VALUES (1,'AMD RYZEN 8','2025-03-10 17:15:39','2025-03-10 17:15:55',NULL),(2,'CDSCDSCSD','2025-03-10 17:15:44',NULL,'2025-03-10 17:15:49');
/*!40000 ALTER TABLE `tbl_processor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ram`
--

DROP TABLE IF EXISTS `tbl_ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ram` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ram_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ram`
--

LOCK TABLES `tbl_ram` WRITE;
/*!40000 ALTER TABLE `tbl_ram` DISABLE KEYS */;
INSERT INTO `tbl_ram` VALUES (1,'12GB','2025-03-10 17:30:00','2025-03-10 17:30:08',NULL);
/*!40000 ALTER TABLE `tbl_ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rank`
--

DROP TABLE IF EXISTS `tbl_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_rank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rank`
--

LOCK TABLES `tbl_rank` WRITE;
/*!40000 ALTER TABLE `tbl_rank` DISABLE KEYS */;
INSERT INTO `tbl_rank` VALUES (1,'cccc','2025-03-10 14:38:53','2025-03-10 14:39:00',NULL),(2,'scdcdscscsdcsd','2025-03-10 14:39:06',NULL,NULL);
/*!40000 ALTER TABLE `tbl_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_report`
--

DROP TABLE IF EXISTS `tbl_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_report`
--

LOCK TABLES `tbl_report` WRITE;
/*!40000 ALTER TABLE `tbl_report` DISABLE KEYS */;
INSERT INTO `tbl_report` VALUES (1,'March','Yes','2025-03-12 06:31:08',NULL),(2,'March','Yes','2025-03-12 08:48:22',NULL);
/*!40000 ALTER TABLE `tbl_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tutorial_at_cybersecurity`
--

DROP TABLE IF EXISTS `tbl_tutorial_at_cybersecurity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tutorial_at_cybersecurity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tutorial_at_cybersecurity_name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `tutorial_at_cybersecurity_image` varchar(255) DEFAULT NULL,
  `supporting_documents` varchar(255) DEFAULT NULL,
  `links` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tutorial_at_cybersecurity`
--

LOCK TABLES `tbl_tutorial_at_cybersecurity` WRITE;
/*!40000 ALTER TABLE `tbl_tutorial_at_cybersecurity` DISABLE KEYS */;
INSERT INTO `tbl_tutorial_at_cybersecurity` VALUES (1,'csds','cdsdcsdcs','67d156a2173f9.jpg','doc_67d156a21753d.docx','https://www.youtube.com/watch?v=Ih7hr76fkxo','active','2025-03-12 09:40:50',NULL,NULL);
/*!40000 ALTER TABLE `tbl_tutorial_at_cybersecurity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-14 10:23:04
