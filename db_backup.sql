-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: myclass
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add choice',7,'add_choice'),(26,'Can change choice',7,'change_choice'),(27,'Can delete choice',7,'delete_choice'),(28,'Can view choice',7,'view_choice'),(29,'Can add question',8,'add_question'),(30,'Can change question',8,'change_question'),(31,'Can delete question',8,'delete_question'),(32,'Can view question',8,'view_question'),(33,'Can add theme',9,'add_theme'),(34,'Can change theme',9,'change_theme'),(35,'Can delete theme',9,'delete_theme'),(36,'Can view theme',9,'view_theme'),(37,'Can add person',10,'add_person'),(38,'Can change person',10,'change_person'),(39,'Can delete person',10,'delete_person'),(40,'Can view person',10,'view_person'),(41,'Can add addrres',11,'add_addrres'),(42,'Can change addrres',11,'change_addrres'),(43,'Can delete addrres',11,'delete_addrres'),(44,'Can view addrres',11,'view_addrres'),(45,'Can add address',11,'add_address'),(46,'Can change address',11,'change_address'),(47,'Can delete address',11,'delete_address'),(48,'Can view address',11,'view_address'),(49,'Can add subject',12,'add_subject'),(50,'Can change subject',12,'change_subject'),(51,'Can delete subject',12,'delete_subject'),(52,'Can view subject',12,'view_subject'),(53,'Can add teacher',13,'add_teacher'),(54,'Can change teacher',13,'change_teacher'),(55,'Can delete teacher',13,'delete_teacher'),(56,'Can view teacher',13,'view_teacher'),(57,'Can add grade',14,'add_grade'),(58,'Can change grade',14,'change_grade'),(59,'Can delete grade',14,'delete_grade'),(60,'Can view grade',14,'view_grade'),(61,'Can add puple',15,'add_puple'),(62,'Can change puple',15,'change_puple'),(63,'Can delete puple',15,'delete_puple'),(64,'Can view puple',15,'view_puple'),(65,'Can add myschool',16,'add_myschool'),(66,'Can change myschool',16,'change_myschool'),(67,'Can delete myschool',16,'delete_myschool'),(68,'Can view myschool',16,'view_myschool');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$GbNDXBExQazOkoxPF9PtpD$2sQZq3Xcu9w+vGh49PPKsymxrvsMdA9gGhdFpGGkrxo=','2023-05-07 08:36:59.237684',1,'admin','','','andriyturko33@gmail.com',1,1,'2023-04-30 09:03:23.266183'),(2,'pbkdf2_sha256$260000$sM0JJVdcTi2z0JFyFcYxUT$GI5AYDR6BRLovB7OKkrgbyGVB78lgKNZUplJfMype98=',NULL,0,'bobik','','','',0,1,'2023-04-30 09:05:50.000000'),(3,'pbkdf2_sha256$260000$KthI62pskKemsL5BK5c79m$bmv6G16G9AvAwis4Osmpxb64dvz7H4HILfp4RNUfa+M=','2023-11-05 09:41:08.736016',1,'andriy','','','andriyturko33@gmail.com',1,1,'2023-05-06 13:19:58.627430');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-04-30 09:05:50.309472','2','bobik',1,'[{\"added\": {}}]',4,1),(2,'2023-04-30 09:06:17.609185','2','bobik',2,'[]',4,1),(3,'2023-05-07 08:41:17.246987','1','What\'s up?',2,'[]',8,1),(4,'2023-05-07 09:45:51.861870','7','hello',1,'[{\"added\": {}}]',7,1),(5,'2023-05-07 09:47:45.984997','2','black',2,'[{\"changed\": {\"fields\": [\"Choice text\"]}}]',7,1),(6,'2023-05-14 08:43:48.674703','2','How do you do?',1,'[{\"added\": {}}]',8,3),(7,'2023-05-25 13:57:07.656965','8','BMW',1,'[{\"added\": {}}]',7,3),(8,'2023-05-25 13:57:26.422900','9','Mercedes-benz',1,'[{\"added\": {}}]',7,3),(9,'2023-05-25 13:57:59.264040','10','Porsche',1,'[{\"added\": {}}]',7,3),(10,'2023-05-25 14:00:26.932763','11','AUDI',1,'[{\"added\": {}}]',7,3),(11,'2023-05-25 14:01:02.345535','9','Mercedes-benz',2,'[{\"changed\": {\"fields\": [\"Votes\"]}}]',7,3),(12,'2023-06-02 14:29:49.845277','1','weather',1,'[{\"added\": {}}]',9,3),(13,'2023-06-02 14:30:19.868419','2','How do you do?',2,'[{\"changed\": {\"fields\": [\"Theme\"]}}]',8,3),(14,'2023-06-11 08:39:05.813888','1','Person object (1)',1,'[{\"added\": {}}]',10,3),(15,'2023-06-11 08:39:36.084009','2','Person object (2)',1,'[{\"added\": {}}]',10,3),(16,'2023-06-11 08:40:17.471675','3','Person object (3)',1,'[{\"added\": {}}]',10,3),(17,'2023-06-11 08:41:10.698136','1','Person object (1)',2,'[]',10,3),(18,'2023-06-19 13:55:50.219143','1','Address object (1)',1,'[{\"added\": {}}]',11,3),(19,'2023-06-19 14:36:55.057752','3','Roman Lysak',2,'[{\"changed\": {\"fields\": [\"Address\"]}}]',10,3),(20,'2023-06-19 14:39:54.508304','1','Yavoriv Peremogy 20',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',11,3),(21,'2023-06-19 14:41:08.832242','2','Chernylava Lesi Ukrainky 75',1,'[{\"added\": {}}]',11,3),(22,'2023-06-19 14:42:14.630841','3','Naghachiv Zelena 99',1,'[{\"added\": {}}]',11,3),(23,'2023-06-19 14:42:29.150430','3','Roman Lysak',2,'[]',10,3),(24,'2023-06-19 14:42:57.241880','1','Anndriy Turko',2,'[{\"changed\": {\"fields\": [\"Address\"]}}]',10,3),(25,'2023-06-19 14:43:06.052360','2','Vasyl Turko',2,'[{\"changed\": {\"fields\": [\"Address\"]}}]',10,3),(26,'2023-06-19 14:45:29.864890','4','Dimon Romanyk',1,'[{\"added\": {}}]',10,3),(27,'2023-06-26 11:24:52.888927','4','Ternopil Grushewskogo 783',1,'[{\"added\": {}}]',11,3),(28,'2023-06-26 11:24:54.786796','5','Vlad Kravchencko',1,'[{\"added\": {}}]',10,3),(29,'2023-07-03 10:14:01.318112','1','studied at two institutes 35',1,'[{\"added\": {}}]',13,3),(30,'2023-07-03 10:14:05.483778','1','Math easy',1,'[{\"added\": {}}]',12,3),(31,'2023-07-03 10:16:46.973383','2','red duplom 30',1,'[{\"added\": {}}]',13,3),(32,'2023-07-03 10:16:49.248507','2','IT',1,'[{\"added\": {}}]',12,3),(33,'2023-07-03 10:20:03.434730','3','skillfully knows how to lie on the sofa and drink beer 50',1,'[{\"added\": {}}]',13,3),(34,'2023-07-03 10:20:05.819997','3','physical training',1,'[{\"added\": {}}]',12,3),(35,'2023-07-03 10:20:32.588114','1','studied at two institutes 35',2,'[{\"changed\": {\"fields\": [\"Person\"]}}]',13,3),(36,'2023-08-30 10:01:23.742120','1','Grade object (1)',1,'[{\"added\": {}}]',14,3),(37,'2023-08-30 10:01:51.364685','2','Grade object (2)',1,'[{\"added\": {}}]',14,3),(38,'2023-08-30 10:02:08.478863','3','Grade object (3)',1,'[{\"added\": {}}]',14,3),(39,'2023-08-30 10:02:25.015144','1','Puple object (1)',1,'[{\"added\": {}}]',15,3),(40,'2023-08-30 10:02:31.272098','2','Puple object (2)',1,'[{\"added\": {}}]',15,3),(41,'2023-08-30 10:02:38.432875','3','Puple object (3)',1,'[{\"added\": {}}]',15,3),(42,'2023-08-30 10:58:44.969204','4','Dimon Romanyk 8',1,'[{\"added\": {}}]',15,3),(43,'2023-09-02 10:33:45.241767','6','Artem Cisda',1,'[{\"added\": {}}]',10,3),(44,'2023-09-02 10:34:02.292698','7','Max Kit',1,'[{\"added\": {}}]',10,3),(45,'2023-09-02 10:34:45.323270','8','Vlad Pavlyk',1,'[{\"added\": {}}]',10,3),(46,'2023-09-02 10:35:30.130349','9','Vitalik Cohman',1,'[{\"added\": {}}]',10,3),(47,'2023-09-02 10:36:02.040533','5','Vitalik Cohman 8',1,'[{\"added\": {}}]',15,3),(48,'2023-09-02 10:36:11.012249','6','Max Kit 11',1,'[{\"added\": {}}]',15,3),(49,'2023-09-02 10:36:16.769778','7','Vlad Pavlyk 3',1,'[{\"added\": {}}]',15,3),(50,'2023-09-02 10:36:22.921463','8','Artem Cisda 8',1,'[{\"added\": {}}]',15,3),(51,'2023-09-03 08:35:05.450008','9','Vlad Kravchencko 8',1,'[{\"added\": {}}]',15,3),(52,'2023-09-03 08:37:22.850153','4','8b',1,'[{\"added\": {}}]',14,3),(53,'2023-09-09 17:59:31.330784','5','Baget Macron 55',1,'[{\"added\": {}}]',11,3),(54,'2023-09-09 18:00:51.927873','6','Varshava Pontovsii 9',1,'[{\"added\": {}}]',11,3),(55,'2023-09-09 18:02:06.371272','7','Mac Macovskogo 534',1,'[{\"added\": {}}]',11,3),(56,'2023-09-09 18:02:48.763295','8','Naghachiv Nudna 77',1,'[{\"added\": {}}]',11,3),(57,'2023-10-15 08:08:57.708956','1','Anndriy Turko Yavoriv Peremogy 20 8',1,'[{\"added\": {}}]',16,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'myschool','address'),(14,'myschool','grade'),(16,'myschool','myschool'),(10,'myschool','person'),(15,'myschool','puple'),(12,'myschool','subject'),(13,'myschool','teacher'),(7,'polls','choice'),(8,'polls','question'),(9,'polls','theme'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-30 08:54:55.576598'),(2,'auth','0001_initial','2023-04-30 08:54:55.714683'),(3,'admin','0001_initial','2023-04-30 08:54:55.748123'),(4,'admin','0002_logentry_remove_auto_add','2023-04-30 08:54:55.757217'),(5,'admin','0003_logentry_add_action_flag_choices','2023-04-30 08:54:55.766064'),(6,'contenttypes','0002_remove_content_type_name','2023-04-30 08:54:55.805871'),(7,'auth','0002_alter_permission_name_max_length','2023-04-30 08:54:55.821865'),(8,'auth','0003_alter_user_email_max_length','2023-04-30 08:54:55.836693'),(9,'auth','0004_alter_user_username_opts','2023-04-30 08:54:55.847227'),(10,'auth','0005_alter_user_last_login_null','2023-04-30 08:54:55.863441'),(11,'auth','0006_require_contenttypes_0002','2023-04-30 08:54:55.865157'),(12,'auth','0007_alter_validators_add_error_messages','2023-04-30 08:54:55.873754'),(13,'auth','0008_alter_user_username_max_length','2023-04-30 08:54:55.890713'),(14,'auth','0009_alter_user_last_name_max_length','2023-04-30 08:54:55.905839'),(15,'auth','0010_alter_group_name_max_length','2023-04-30 08:54:55.921280'),(16,'auth','0011_update_proxy_permissions','2023-04-30 08:54:55.929957'),(17,'auth','0012_alter_user_first_name_max_length','2023-04-30 08:54:55.945381'),(18,'sessions','0001_initial','2023-04-30 08:54:55.961612'),(19,'polls','0001_initial','2023-05-06 11:45:42.301004'),(20,'polls','0002_auto_20230602_1427','2023-06-02 14:29:07.427554'),(21,'myschool','0001_initial','2023-06-11 08:27:20.228830'),(22,'myschool','0002_addrres','2023-06-17 17:28:00.861078'),(23,'myschool','0003_rename_addrres_address','2023-06-19 13:52:20.864224'),(24,'myschool','0004_auto_20230619_1415','2023-06-19 14:15:42.518892'),(25,'myschool','0005_person_address','2023-06-19 14:36:09.960961'),(26,'myschool','0006_alter_person_address','2023-06-19 14:44:27.474549'),(27,'myschool','0007_subject_teacher','2023-07-03 10:08:59.628602'),(28,'myschool','0008_auto_20230804_1121','2023-08-04 11:23:02.063360'),(29,'myschool','0009_auto_20230903_0834','2023-09-03 08:34:34.297309'),(30,'myschool','0010_auto_20230910_0833','2023-09-10 08:33:12.512598'),(34,'myschool','0011_myschool','2023-11-05 09:31:33.094609'),(35,'myschool','0012_delete_myschool','2023-11-05 09:31:33.099419');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2dupru5sf70maq2nzwm332v909adp678','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1qzZcy:bdH1CJCgPgd_cdQocqlXd1dleMA4WcQ85ePSfJyTrjY','2023-11-19 09:41:08.738659'),('7ydwos0pon3yjmwpfv48c3a6q14zymrs','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1qrvRb:xAm70-6e3JJosxa6ssluwEZbdmmfrAgVGQ_LF4eHqWQ','2023-10-29 07:21:47.408002'),('8ptd3tkax9wo4p6brdx27s2f7e2c9670','.eJxVjDsOwjAQBe_iGln-xbYo6TmDtevd4ACypTipIu5OIqWA9s3M20SCdSlp7TynicRVaHH53RDyi-sB6An10WRudZknlIciT9rlvRG_b6f7d1Cgl70eFdjsI5JzSGN0dvCagtGGGZ12aA3ZQXNka6JVSD5gNGQUBKLdzOLzBeREN-s:1pt2yI:4xkAWrPFh-tsAQCD0JR6yAZGzG3_fMIwIK3ht4P2Y6E','2023-05-14 09:03:54.836339'),('8rla0t1r9rb1wbywhekdhr8w2pfzbdlb','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1qMUzm:o0dKWTeDvQf7yQtS1RN-p-9gw6q8SGARs58h_9KyL2U','2023-08-03 14:51:10.428547'),('8s44hz06gttmttlxzwy9ntz24a7qrehe','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1qAZjE:QxrVCutuUv3g4b8LxaIZ7DSxtF531ZJ3cbnKxtcXh2s','2023-07-01 17:28:48.613116'),('ap5uaye7og74qm17d4bjfjlweh1ql8yl','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1qbHzJ:Rn_vBBYvSUe6-I0mrt_qwqghp5XXLE2Z5hfkSmr39uA','2023-09-13 09:59:49.278317'),('da4p6a9qnzgyzd71eo6e24gsr5rulk4i','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1py7JE:5--IAB_WFZM2Ck_jiXki1QZGdU6isYDBhQ6jsdgDzYg','2023-05-28 08:42:28.724877'),('lmog6yeu8vkony7xbx4he2x50iqkoxch','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1q4OtR:WFfL-ULXT4DvkCx4tWexH3SMEVWMLyPZczENcLgdo-Y','2023-06-14 16:41:49.616940'),('niv977dy4hhjkizf5w4dk1cvldo7ttlj','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1qkQap:yfzHckIbqa9OMGSKR3qBfPj9AfRcJvNtFhtiFrU0Rgs','2023-10-08 15:00:19.318177'),('wdq0gi3ihsubheqgdqhjsncyk24l5bj3','.eJxVjDsOwjAQBe_iGln-xbYo6TmDtevd4ACypTipIu5OIqWA9s3M20SCdSlp7TynicRVaHH53RDyi-sB6An10WRudZknlIciT9rlvRG_b6f7d1Cgl70eFdjsI5JzSGN0dvCagtGGGZ12aA3ZQXNka6JVSD5gNGQUBKLdzOLzBeREN-s:1pvZt5:sDlO6e8lYRT9tOKk7DnjUoA4npKdtO53mju_1cMNZyE','2023-05-21 08:36:59.240215'),('x10rhr95ioglj6ydmri9asgcv0kuo26y','.eJxVjDsOwjAQBe_iGln-JP5Q0ucM1q53wQFkS3FSIe4OkVJA-2bmvUSCbS1p67ykmcRZWHH63RDyg-sO6A711mRudV1mlLsiD9rl1Iifl8P9OyjQy7fWpKK9sgUcDTjrvTMYc1QaOLs4Aiv0QSEF0hiCHaxHzAMSggGVA4v3B-k8OIE:1qGFMA:3BaItfOim9gv75Eucep3tTII-Bm7tFK0tqwaU7UoivM','2023-07-17 08:56:26.256199');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myschool_address`
--

DROP TABLE IF EXISTS `myschool_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myschool_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `town` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myschool_address`
--

LOCK TABLES `myschool_address` WRITE;
/*!40000 ALTER TABLE `myschool_address` DISABLE KEYS */;
INSERT INTO `myschool_address` VALUES (1,'Ukraine','Lviv','Yavoriv','Peremogy','20'),(2,'Ukraine','Zhytomyr','Chernylava','Lesi Ukrainky','75'),(3,'Ukraine','Kyiv','Naghachiv','Zelena','99'),(4,'Ukraine','Ternopil','Ternopil','Grushewskogo','783'),(5,'French','Paris','Baget','Macron','55'),(6,'Polannd','Varshava','Varshava','Pontovsii','9'),(7,'Ukraine','Odessa','Mac','Macovskogo','534'),(8,'Ukraine','Lviv','Naghachiv','Nudna','77'),(9,'USA','New York','New York','Krygla','92'),(10,'Ukrainne','','New York','Makoveya','92'),(11,'Ukraine','Lviv','Shcklo','Shevchenka','948'),(12,'Ukraine','Yavoiv','Semirivka','Peremogy','68'),(13,'Ukraine','Yavoiv','Semirivka','Peremogy','68'),(14,'Ukraine','Yavoiv','Mac','Peremogu','202'),(15,'Ukraine','Yavoiv','Mac','Peremogu','202'),(16,'Ukraine','Paris','Ternopil','Hermer','55'),(17,'Paris','Efilieva','France','Bageta','89'),(18,'Ukrajdjd','Xjxjxjdjjd','Sidkdjdjkd','Skskdkdkdk','3'),(19,'Ukraine','Lviv','Javorov','Peremohy','124'),(20,'Ukraine','Lviv','Javoriv','Peremohy','124');
/*!40000 ALTER TABLE `myschool_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myschool_grade`
--

DROP TABLE IF EXISTS `myschool_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myschool_grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` varchar(4) NOT NULL,
  `spec` varchar(30) NOT NULL,
  `floor` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myschool_grade_grade_cd82600d_uniq` (`grade`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myschool_grade`
--

LOCK TABLES `myschool_grade` WRITE;
/*!40000 ALTER TABLE `myschool_grade` DISABLE KEYS */;
INSERT INTO `myschool_grade` VALUES (1,'8','big',2,7),(2,'11','very cool',2,3),(3,'3','small',1,1),(4,'8b','fnkdjs',1,4);
/*!40000 ALTER TABLE `myschool_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myschool_person`
--

DROP TABLE IF EXISTS `myschool_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myschool_person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `birth_date` date NOT NULL,
  `address_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myschool_person_address_id_90528476_fk_myschool_address_id` (`address_id`),
  CONSTRAINT `myschool_person_address_id_90528476_fk_myschool_address_id` FOREIGN KEY (`address_id`) REFERENCES `myschool_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myschool_person`
--

LOCK TABLES `myschool_person` WRITE;
/*!40000 ALTER TABLE `myschool_person` DISABLE KEYS */;
INSERT INTO `myschool_person` VALUES (1,'Anndriy','Turko','2009-12-05',2),(2,'Vasyl','Turko','2023-06-11',3),(3,'Roman','Lysak','2023-06-11',1),(4,'Dimon','Romanyk','2023-06-19',2),(5,'Vlad','Kravchencko','2023-06-26',4),(6,'Artem','Cisda','2023-09-02',1),(7,'Max','Kit','2023-09-02',1),(8,'Vlad','Pavlyk','2023-09-02',2),(9,'Vitalik','Cohman','2023-09-02',3),(10,'Denis','Baglay','2010-07-23',3),(11,'Sashko','Volosko','2023-09-10',2),(12,'Vitya','Oleh','2023-09-16',11),(13,'Anya','Hula','2023-09-16',11),(14,'Denis','Pelunnio','2023-09-16',1),(15,'Vasyl','Dacko','2023-09-16',17),(16,'Iryna','Tyrko','2023-09-16',5);
/*!40000 ALTER TABLE `myschool_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myschool_puple`
--

DROP TABLE IF EXISTS `myschool_puple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myschool_puple` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade_id` bigint(20) NOT NULL,
  `person_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myschool_puple_person_id_c4a23086_uniq` (`person_id`),
  KEY `myschool_puple_grade_id_ef68e5b5_fk_myschool_grade_id` (`grade_id`),
  CONSTRAINT `myschool_puple_person_id_c4a23086_fk_myschool_person_id` FOREIGN KEY (`person_id`) REFERENCES `myschool_person` (`id`),
  CONSTRAINT `myschool_puple_grade_id_ef68e5b5_fk_myschool_grade_id` FOREIGN KEY (`grade_id`) REFERENCES `myschool_grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myschool_puple`
--

LOCK TABLES `myschool_puple` WRITE;
/*!40000 ALTER TABLE `myschool_puple` DISABLE KEYS */;
INSERT INTO `myschool_puple` VALUES (1,1,1),(2,2,2),(3,3,3),(4,1,4),(5,1,9),(6,2,7),(7,3,8),(8,1,6),(9,1,5);
/*!40000 ALTER TABLE `myschool_puple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myschool_subject`
--

DROP TABLE IF EXISTS `myschool_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myschool_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `hours` varchar(30) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myschool_subject_teacher_id_b02e9381_fk_myschool_teacher_id` (`teacher_id`),
  CONSTRAINT `myschool_subject_teacher_id_b02e9381_fk_myschool_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `myschool_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myschool_subject`
--

LOCK TABLES `myschool_subject` WRITE;
/*!40000 ALTER TABLE `myschool_subject` DISABLE KEYS */;
INSERT INTO `myschool_subject` VALUES (1,'Math','easy','35',1),(2,'IT','cool','1',2),(3,'physical training','very interesting and funny','500',3);
/*!40000 ALTER TABLE `myschool_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myschool_teacher`
--

DROP TABLE IF EXISTS `myschool_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myschool_teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `experience` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `education` varchar(100) NOT NULL,
  `person_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myschool_teacher_person_id_5f2ab89d_fk_myschool_person_id` (`person_id`),
  CONSTRAINT `myschool_teacher_person_id_5f2ab89d_fk_myschool_person_id` FOREIGN KEY (`person_id`) REFERENCES `myschool_person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myschool_teacher`
--

LOCK TABLES `myschool_teacher` WRITE;
/*!40000 ALTER TABLE `myschool_teacher` DISABLE KEYS */;
INSERT INTO `myschool_teacher` VALUES (1,'35','35555','studied at two institutes',5),(2,'30','60000','red duplom',2),(3,'50','300','skillfully knows how to lie on',4),(4,'12','50000','ZNO 200',13),(5,'25','10000','Mr.Olympia',14);
/*!40000 ALTER TABLE `myschool_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_question_id_c5b4b260_fk_polls_question_id` (`question_id`),
  CONSTRAINT `polls_choice_question_id_c5b4b260_fk_polls_question_id` FOREIGN KEY (`question_id`) REFERENCES `polls_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
INSERT INTO `polls_choice` VALUES (2,'black',0,1),(5,'the sky',1,1),(6,'Just hacking again',1,1),(7,'hello',2,1),(8,'BMW',1,2),(9,'Mercedes-benz',20,2),(10,'Porsche',0,2),(11,'AUDI',1,2);
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_question`
--

DROP TABLE IF EXISTS `polls_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `theme_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_question_theme_id_113bad43_fk_polls_theme_id` (`theme_id`),
  CONSTRAINT `polls_question_theme_id_113bad43_fk_polls_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `polls_theme` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_question`
--

LOCK TABLES `polls_question` WRITE;
/*!40000 ALTER TABLE `polls_question` DISABLE KEYS */;
INSERT INTO `polls_question` VALUES (1,'What\'s up?','2023-05-06 12:58:17.000000',NULL),(2,'How do you do?','2023-05-14 08:43:47.000000',1);
/*!40000 ALTER TABLE `polls_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_theme`
--

DROP TABLE IF EXISTS `polls_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `theme_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_theme`
--

LOCK TABLES `polls_theme` WRITE;
/*!40000 ALTER TABLE `polls_theme` DISABLE KEYS */;
INSERT INTO `polls_theme` VALUES (1,'weather','2023-06-02 14:29:48.000000');
/*!40000 ALTER TABLE `polls_theme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19  9:36:33
