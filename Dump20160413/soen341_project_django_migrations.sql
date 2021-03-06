CREATE DATABASE  IF NOT EXISTS `soen341_project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `soen341_project`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: soen341_project
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-02-27 03:50:40.205817'),(2,'auth','0001_initial','2016-02-27 03:50:42.146928'),(3,'admin','0001_initial','2016-02-27 03:50:42.528949'),(4,'admin','0002_logentry_remove_auto_add','2016-02-27 03:50:42.573952'),(5,'contenttypes','0002_remove_content_type_name','2016-02-27 03:50:43.012977'),(6,'auth','0002_alter_permission_name_max_length','2016-02-27 03:50:43.197988'),(7,'auth','0003_alter_user_email_max_length','2016-02-27 03:50:43.381998'),(8,'auth','0004_alter_user_username_opts','2016-02-27 03:50:43.399999'),(9,'auth','0005_alter_user_last_login_null','2016-02-27 03:50:43.550008'),(10,'auth','0006_require_contenttypes_0002','2016-02-27 03:50:43.561009'),(11,'auth','0007_alter_validators_add_error_messages','2016-02-27 03:50:43.585010'),(12,'sessions','0001_initial','2016-02-27 03:50:43.841025'),(13,'sites','0001_initial','2016-02-27 03:50:43.921029'),(14,'sites','0002_alter_domain_unique','2016-02-27 03:50:43.997033'),(15,'app','0001_initial','2016-02-27 22:20:02.375831'),(16,'app','0002_auto_20160311_0100','2016-03-11 06:06:27.983936'),(17,'app','0003_auto_20160311_0106','2016-03-11 06:07:07.866217'),(18,'app','0004_authuser','2016-03-30 22:19:07.955783'),(19,'app','0005_auto_20160331_1237','2016-04-04 01:58:15.037174');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-13  0:24:38
