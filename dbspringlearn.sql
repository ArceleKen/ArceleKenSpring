-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: springlearn
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `description` longtext,
  `other_info` varchar(255) NOT NULL,
  `resource` varchar(50) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgqy8beil5y4almtq1tiyofije` (`user_id`),
  CONSTRAINT `FKgqy8beil5y4almtq1tiyofije` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'2021-08-27 19:46:42','listing de permissions ','OK','/permissions',12),(2,'2021-08-27 19:47:54','Lister les utilisateurs','OK','/users',12),(10,'2021-08-27 20:23:55','listing de roles ','OK','/roles',12),(13,'2021-08-27 20:28:49','listing de permissions ','OK','/permissions',12),(14,'2021-08-27 20:30:24','listing de permissions ','OK','/permissions',12),(15,'2021-08-27 20:30:43','Lister les utilisateurs','OK','/users',12),(16,'2021-08-27 20:30:52','listing de permissions ','OK','/permissions',12),(17,'2021-08-27 20:32:00','listing de permissions ','OK','/permissions',12),(18,'2021-08-27 20:32:06','listing de permissions ','OK','/permissions',12),(19,'2021-08-27 20:34:15','listing de permissions ','OK','/permissions',12),(20,'2021-08-27 20:37:42','listing de permissions ','OK','/permissions',12),(21,'2021-08-27 20:37:59','Lister les utilisateurs','OK','/users',12),(22,'2021-08-27 20:42:25','listing de permissions ','OK','/permissions',12),(23,'2021-08-27 20:43:29','listing de permissions ','OK','/permissions',12),(24,'2021-08-28 08:45:48','listing de permissions ','OK','/permissions',12),(25,'2021-08-28 08:48:14','listing de permissions ','OK','/permissions',12),(26,'2021-08-28 08:52:08','listing de permissions ','OK','/permissions',12),(27,'2021-08-28 10:18:57','listing de permissions ','OK','/permissions',12),(28,'2021-08-28 15:10:16','envoi mail objet=obj test | dest=test@test.cm | Cc=arcele@azee.cd','Envoi OK','/send-mail',12),(29,'2021-08-28 15:20:53','envoi mail objet=obj test1 | dest=test@test.cm | Cc=arcele@azee.cd','Envoi OK','/send-mail',12),(30,'2021-08-28 15:22:04','envoi mail objet=obj test | dest=test1@test.cm | Cc=','Envoi OK','/send-mail',12),(31,'2021-08-28 15:22:32','envoi mail objet=obj test2 | dest=test2@test.cm | Cc=','Envoi OK','/send-mail',12),(32,'2021-08-28 15:22:51','envoi mail objet=obj test3 | dest=test@test.cm | Cc=','Envoi OK','/send-mail',12),(33,'2021-08-28 15:27:45','envoi mail objet=obj test4 | dest=test3@test.cm | Cc=','Envoi OK','/send-mail',12),(34,'2021-08-28 16:08:35','envoi mail objet=Un test denvoi de simple mail Spring Java | dest=arcelekenmene3@gmail.com | Cc=emailu@test.cm','Envoi OK','/send-mail',12),(35,'2021-08-28 16:35:28','envoi mail objet=Un test d\'envoi de mail avec PJ Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Envoi OK','/send-mail',12),(36,'2021-08-28 16:44:14','envoi mail objet=Un test denvoi de mail avec pj Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Echec !','/send-mail',12),(37,'2021-08-28 16:52:28','envoi mail objet=Un test d\'envoi de mail avec pièce jointe Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Echec !','/send-mail',12),(38,'2021-08-28 17:08:11','envoi mail objet=Un test denvoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Echec !','/send-mail',12),(39,'2021-08-28 17:20:32','envoi mail objet=Un test denvoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Echec !','/send-mail',12),(40,'2021-08-28 17:29:29','envoi mail objet=Un test denvoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Envoi OK','/send-mail',12),(41,'2021-08-28 17:49:48','envoi mail objet=Encore un test denvoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Envoi OK','/send-mail',12),(42,'2021-08-28 17:54:57','envoi mail objet=Un autre test d\'envoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Echec !','/send-mail',12),(43,'2021-08-28 18:10:43','envoi mail objet=Un vrai test d\'envoi de mail, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=','Envoi OK','/send-mail',12),(44,'2021-08-29 00:25:22','listing de permissions ','OK','/permissions',12),(45,'2021-08-29 00:29:19','envoi mail objet=test sending mail spring | dest=arcele.kenmene@yahoo.fr | Cc=','Envoi OK','/send-mail',12),(46,'2021-08-29 00:31:47','Lister les utilisateurs','OK','/users',12),(47,'2021-08-29 00:31:57','listing de roles ','OK','/roles',12),(48,'2021-08-29 01:01:59','listing de roles ','OK','/roles',12),(49,'2021-08-29 01:03:14','tentative de creation role Role [id=15, name=One_test1, description=	                        that is one test for test to test for test role .... I want to see, dateCreation=Sun Aug 29 01:03:14 WAT 2021, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]','OK','/create-role',12),(50,'2021-08-29 01:03:14','listing de roles ','OK','/roles',12),(51,'2021-08-29 01:04:20','listing de roles ','OK','/roles',12),(52,'2021-08-29 01:04:34','tentative de supprssion role','OK','/delete-role15',12),(53,'2021-08-29 01:04:34','listing de roles ','OK','/roles',12),(54,'2021-08-30 00:06:30','Lister les utilisateurs','OK','/users',12),(55,'2021-08-30 00:06:35','Afficher details utilisateur','Operation OK','/details-user12',12),(56,'2021-08-30 00:15:05','Lister les utilisateurs','OK','/users',12),(57,'2021-08-30 00:15:20','Lister les utilisateurs','OK','/users',12),(58,'2021-08-30 00:15:34','Lister les utilisateurs','OK','/users',12),(59,'2021-08-30 00:15:43','Afficher details utilisateur','Operation OK','/details-user4',12),(60,'2021-08-30 00:15:49','Lister les utilisateurs','OK','/users',12),(61,'2021-08-30 00:15:51','Afficher details utilisateur','Operation OK','/details-user12',12),(62,'2021-08-30 00:16:01','Lister les utilisateurs','OK','/users',12),(63,'2021-08-30 00:16:08','Lister les utilisateurs','OK','/users',12),(64,'2021-08-30 00:16:19','Modifier info utilisateurUser [id=4, name=admin 1, username=admin1, password=, enabled=true, dateCreation=null, userRoles=[]]','OK','/edit-user4',12),(65,'2021-08-30 00:16:19','Lister les utilisateurs','OK','/users',12),(66,'2021-08-30 00:16:22','Afficher details utilisateur','Operation OK','/details-user4',12),(67,'2021-08-30 00:16:29','Lister les utilisateurs','OK','/users',12),(68,'2021-08-30 00:16:46','Modifier info utilisateurUser [id=4, name=admin 1, username=admin1, password=, enabled=true, dateCreation=null, userRoles=[UserRole [id=2, role=Role [id=10, name=role_test2, description=role test 2	                        , dateCreation=2021-08-25 10:42:03.0, permissions=[]]], UserRole [id=3, role=Role [id=11, name=role_test3, description=role test 3	                        , dateCreation=2021-08-25 10:42:22.0, permissions=[]]]]]','OK','/edit-user4',12),(69,'2021-08-30 00:16:46','Lister les utilisateurs','OK','/users',12),(70,'2021-08-30 00:16:48','Afficher details utilisateur','Operation OK','/details-user4',12),(71,'2021-08-30 00:16:53','Lister les utilisateurs','OK','/users',12),(72,'2021-08-30 00:17:22','Lister les utilisateurs','OK','/users',12),(73,'2021-08-30 00:17:27','Tentative d\'activation/desactivation utilisateur userId = 4','operation OK','/desactive-user',12),(74,'2021-08-30 00:17:27','Lister les utilisateurs','OK','/users',12),(75,'2021-08-30 00:17:36','Tentative d\'activation/desactivation utilisateur userId = 4','operation OK','/desactive-user',12),(76,'2021-08-30 00:17:36','Lister les utilisateurs','OK','/users',12),(77,'2021-08-30 00:19:26','listing de roles ','OK','/roles',12),(78,'2021-08-30 00:19:41','listing de roles ','OK','/roles',12),(79,'2021-08-30 00:20:02','tentative de modification role Role [id=14, name=Manage_sending_mail, description=	                        		              Role pour Gérer l\'envoi des mails          \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=16, name=details_role, description=afficher les details d\'un role, dateCreation=2021-08-26 13:25:00.0], Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0], Role [id=18, name=listing_permissions, description=Pour lister tous les autorisations (ou permissions) du système, dateCreation=2021-08-26 13:25:00.0]]]','OK','/edit-role14',12),(80,'2021-08-30 00:20:02','listing de roles ','OK','/roles',12),(81,'2021-08-30 00:20:19','tentative de modification role Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]','OK','/edit-role14',12),(82,'2021-08-30 00:20:19','listing de roles ','OK','/roles',12),(83,'2021-08-30 00:20:32','listing de roles ','OK','/roles',12),(84,'2021-08-30 00:26:38','listing de roles ','OK','/roles',12),(85,'2021-08-30 00:27:09','listing de roles ','OK','/roles',12),(86,'2021-08-30 00:27:26','listing de roles ','OK','/roles',12),(87,'2021-08-30 00:27:47','tentative de modification role Role [id=13, name=role_test_5, description=	                        		                        		                        		                        role test 5\r\n	                        \r\n	                        \r\n	                        , dateCreation=2021-08-25 10:43:20.0, permissions=[Role [id=10, name=enable_or_disable_user, description=pour activer ou désactiver des utilisateurs, dateCreation=2021-08-26 13:25:00.0], Role [id=8, name=listing_user, description=autorisation de lister les utilisateurs, dateCreation=2021-08-26 13:25:00.0]]]','OK','/edit-role13',12),(88,'2021-08-30 00:27:47','listing de roles ','OK','/roles',12),(89,'2021-08-30 00:27:57','listing de roles ','OK','/roles',12),(90,'2021-08-30 00:28:07','listing de roles ','OK','/roles',12),(91,'2021-08-30 00:28:12','tentative de supprssion role','OK','/delete-role13',12),(92,'2021-08-30 00:28:12','listing de roles ','OK','/roles',12),(93,'2021-08-30 00:28:22','listing de roles ','OK','/roles',12),(94,'2021-08-30 00:29:04','listing de roles ','OK','/roles',12),(95,'2021-08-30 00:29:22','Lister les utilisateurs','OK','/users',12),(96,'2021-08-30 00:29:34','Modifier info utilisateurUser [id=4, name=admin 1, username=admin1, password=, enabled=true, dateCreation=null, userRoles=[UserRole [id=4, role=Role [id=10, name=role_test2, description=role test 2	                        , dateCreation=2021-08-25 10:42:03.0, permissions=[]]], UserRole [id=5, role=Role [id=12, name=role_test4, description=role test 4	                        , dateCreation=2021-08-25 10:42:45.0, permissions=[]]]]]','OK','/edit-user4',12),(97,'2021-08-30 00:29:34','Lister les utilisateurs','OK','/users',12),(98,'2021-08-30 00:29:37','Afficher details utilisateur','Operation OK','/details-user4',12),(99,'2021-08-30 00:29:41','Lister les utilisateurs','OK','/users',12),(100,'2021-08-30 00:29:49','Modifier info utilisateurUser [id=4, name=admin 1, username=admin1, password=, enabled=true, dateCreation=null, userRoles=[UserRole [id=9, role=Role [id=12, name=role_test4, description=role test 4	                        , dateCreation=2021-08-25 10:42:45.0, permissions=[]]], UserRole [id=7, role=Role [id=10, name=role_test2, description=role test 2	                        , dateCreation=2021-08-25 10:42:03.0, permissions=[]]], UserRole [id=8, role=Role [id=11, name=role_test3, description=role test 3	                        , dateCreation=2021-08-25 10:42:22.0, permissions=[]]]]]','OK','/edit-user4',12),(101,'2021-08-30 00:29:49','Lister les utilisateurs','OK','/users',12),(102,'2021-08-30 00:29:53','Afficher details utilisateur','Operation OK','/details-user4',12),(103,'2021-08-30 00:29:57','Lister les utilisateurs','OK','/users',12),(104,'2021-08-30 00:30:04','listing de roles ','OK','/roles',12),(105,'2021-08-30 00:30:20','tentative de supprssion role','OK','/delete-role10',12),(106,'2021-08-30 00:30:20','listing de roles ','OK','/roles',12),(107,'2021-08-30 00:30:27','Lister les utilisateurs','OK','/users',12),(108,'2021-08-30 00:30:38','listing de roles ','OK','/roles',12),(109,'2021-08-30 00:32:31','tentative de modification role Role [id=12, name=role_test4, description=	                        	role test 4	                        \r\n	                        , dateCreation=2021-08-25 10:42:45.0, permissions=[Role [id=11, name=details_user, description=Pour voir les details sur les informations des utilisateurs, dateCreation=2021-08-26 13:25:00.0], Role [id=9, name=create_user, description=pour créer des utilisateurs, dateCreation=2021-08-26 13:25:00.0], Role [id=8, name=listing_user, description=autorisation de lister les utilisateurs, dateCreation=2021-08-26 13:25:00.0]]]','OK','/edit-role12',12),(110,'2021-08-30 00:32:31','listing de roles ','OK','/roles',12),(111,'2021-08-30 00:32:41','tentative de supprssion role','OK','/delete-role12',12),(112,'2021-08-30 00:32:41','listing de roles ','OK','/roles',12),(113,'2021-08-30 00:32:49','Lister les utilisateurs','OK','/users',12),(114,'2021-08-30 00:32:59','Afficher details utilisateur','Operation OK','/details-user4',12),(115,'2021-08-30 00:33:02','Lister les utilisateurs','OK','/users',12),(116,'2021-08-30 00:33:26','Lister les utilisateurs','OK','/users',12),(117,'2021-08-30 00:37:12','listing de permissions ','OK','/permissions',12),(118,'2021-08-30 00:39:04','listing de roles ','OK','/roles',12),(119,'2021-08-30 01:13:48','Lister les utilisateurs','OK','/users',12),(120,'2021-08-30 01:15:59','Tentative de creation utilisateur user = User [id=13, name=user Test, username=usertest, password=, enabled=false, dateCreation=Mon Aug 30 01:15:59 WAT 2021, userRoles=null]','Operation OK','/create-user',12),(121,'2021-08-30 01:15:59','Lister les utilisateurs','OK','/users',12),(122,'2021-08-30 01:16:24','Tentative d\'activation/desactivation utilisateur userId = 13','operation OK','/desactive-user',12),(123,'2021-08-30 01:16:24','Lister les utilisateurs','OK','/users',12),(124,'2021-08-30 01:22:05','Lister les utilisateurs','OK','/users',12),(125,'2021-08-30 01:22:15','Lister les utilisateurs','OK','/users',12),(126,'2021-08-30 01:22:39','Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=12, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]','OK','/edit-user13',12),(127,'2021-08-30 01:22:39','Lister les utilisateurs','OK','/users',12),(128,'2021-08-30 01:27:39','Lister les utilisateurs','OK','/users',12),(129,'2021-08-30 01:27:53','Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=13, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]','OK','/edit-user13',12),(130,'2021-08-30 01:27:54','Lister les utilisateurs','OK','/users',12),(131,'2021-08-30 01:28:25','Lister les utilisateurs','OK','/users',12),(132,'2021-08-30 01:28:57','Tentative de creation utilisateur user = User [id=14, name=user Test2, username=usertest2, password=, enabled=false, dateCreation=Mon Aug 30 01:28:56 WAT 2021, userRoles=null]','Operation OK','/create-user',12),(133,'2021-08-30 01:28:57','Lister les utilisateurs','OK','/users',12),(134,'2021-08-30 01:41:03','Lister les utilisateurs','OK','/users',12),(135,'2021-08-30 01:41:35','Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=14, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]','OK','/edit-user13',12),(136,'2021-08-30 01:41:35','Lister les utilisateurs','OK','/users',12),(137,'2021-08-30 01:48:03','Lister les utilisateurs','OK','/users',12),(138,'2021-08-30 01:48:27','Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=15, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]','OK','/edit-user13',12),(139,'2021-08-30 01:48:27','Lister les utilisateurs','OK','/users',12),(140,'2021-08-30 01:55:13','Lister les utilisateurs','OK','/users',12),(141,'2021-08-30 01:55:36','Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=16, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]','OK','/edit-user13',12),(142,'2021-08-30 01:55:36','Lister les utilisateurs','OK','/users',12),(143,'2021-08-30 02:03:13','envoi mail objet=testons sending mail spring | dest=arcele.kenmene@yahoo.fr | Cc=','Envoi OK','/send-mail',13),(144,'2021-08-30 02:16:10','Lister les utilisateurs','OK','/users',12),(145,'2021-08-30 02:16:39','Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=17, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]','OK','/edit-user13',12),(146,'2021-08-30 02:16:39','Lister les utilisateurs','OK','/users',12),(147,'2021-08-30 02:17:26','Tentative de creation utilisateur user = User [id=15, name=user Test3, username=usertest3, password=, enabled=false, dateCreation=Mon Aug 30 02:17:26 WAT 2021, userRoles=null]','Operation OK','/create-user',12),(148,'2021-08-30 02:17:26','Lister les utilisateurs','OK','/users',12),(149,'2021-08-30 02:21:43','Lister les utilisateurs','OK','/users',12),(150,'2021-08-30 02:23:52','Lister les utilisateurs','OK','/users',12),(151,'2021-08-30 02:24:10','Modifier info utilisateurUser [id=14, name=user Test2, username=usertest2, password=$2a$10$1uoINV5/MVOSQsm4VOLdMeVbi8ZyCM.gP9llruGw3b8B6xbuG.gPG, enabled=false, dateCreation=2021-08-30 01:28:57.0, userRoles=[]]','OK','/edit-user14',12),(152,'2021-08-30 02:24:10','Lister les utilisateurs','OK','/users',12),(153,'2021-08-30 02:27:56','Lister les utilisateurs','OK','/users',12),(154,'2021-08-30 02:28:00','listing de roles ','OK','/roles',12),(155,'2021-08-30 02:28:34','Lister les utilisateurs','OK','/users',12),(156,'2021-08-30 02:28:56','Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=$2a$10$nmzur9GWb6J/Um/1rXVXGeGpbru27aRq6/rBB3/zo9O5WM5cniuUG, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=18, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]','OK','/edit-user13',12),(157,'2021-08-30 02:28:56','Lister les utilisateurs','OK','/users',12),(158,'2021-08-30 02:29:41','Modifier info utilisateurUser [id=12, name=super admin , username=bigadmin, password=$2a$10$KxvM/SpZ1X/cB8WNei8Nl.m545LQI/KFEPAiLUqgkzq5asIqNlXf2, enabled=true, dateCreation=2021-08-25 10:49:55.0, userRoles=[UserRole [id=1, role=Role [id=9, name=superadmin, description=Role du superadmin, dateCreation=2021-08-25 10:41:38.0, permissions=[Role [id=7, name=superadmin, description=autorisation du superadmin, pour celui qui a tous les droit dans le système, dateCreation=2021-08-26 13:25:00.0]]]]]]','OK','/edit-user12',12),(159,'2021-08-30 02:29:41','Lister les utilisateurs','OK','/users',12),(160,'2021-08-30 02:30:23','Lister les utilisateurs','OK','/users',12),(161,'2021-08-30 02:30:33','Tentative d\'activation/desactivation utilisateur userId = 13','operation OK','/desactive-user',12),(162,'2021-08-30 02:30:33','Lister les utilisateurs','OK','/users',12);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime DEFAULT NULL,
  `description` longtext,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pnvtwliis6p05pn6i3ndjrqt2` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (7,'2021-08-26 13:25:00','autorisation du superadmin, pour celui qui a tous les droit dans le système','superadmin'),(8,'2021-08-26 13:25:00','autorisation de lister les utilisateurs','listing_user'),(9,'2021-08-26 13:25:00','pour créer des utilisateurs','create_user'),(10,'2021-08-26 13:25:00','pour activer ou désactiver des utilisateurs','enable_or_disable_user'),(11,'2021-08-26 13:25:00','Pour voir les details sur les informations des utilisateurs','details_user'),(12,'2021-08-26 13:25:00','Pour modifier un utilisateur','edit_user'),(13,'2021-08-26 13:25:00','Pour lister les roles ','listing_roles'),(14,'2021-08-26 13:25:00','Pour créer des roles','create_role'),(15,'2021-08-26 13:25:00','Pour modifier des roles ','edit_role'),(16,'2021-08-26 13:25:00','afficher les details d\'un role','details_role'),(17,'2021-08-26 13:25:00','Pour supprimer des roles','delete_role'),(18,'2021-08-26 13:25:00','Pour lister tous les autorisations (ou permissions) du système','listing_permissions'),(19,'2021-08-26 14:11:47','Autorisation de voir les activités (les logs) des utilisateurs dans le système','search_activities_users'),(20,'2021-08-28 20:02:47','Pour envoyer des mails','send_mail');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (9,'2021-08-25 10:41:38','superadmin','Role du superadmin'),(11,'2021-08-25 10:42:22','role_test3','role test 3	                        '),(14,'2021-08-29 00:34:48','Manage_sending_mail','	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        ');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FKbx9r9uw77p58gsq4mus0mec0o` (`permission_id`),
  CONSTRAINT `FKbx9r9uw77p58gsq4mus0mec0o` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `FKqi9odri6c1o81vjox54eedwyh` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_permissions`
--

LOCK TABLES `roles_permissions` WRITE;
/*!40000 ALTER TABLE `roles_permissions` DISABLE KEYS */;
INSERT INTO `roles_permissions` VALUES (9,7),(14,20);
/*!40000 ALTER TABLE `roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,NULL,_binary '','','admin1','admin 1'),(12,'2021-08-25 10:49:55',_binary '','$2a$10$KxvM/SpZ1X/cB8WNei8Nl.m545LQI/KFEPAiLUqgkzq5asIqNlXf2','bigadmin','super admin '),(13,'2021-08-30 01:15:59',_binary '\0','$2a$10$FPai/bs81P5wXLEYjE3EK.LciSUXGMbH5DFVqAj4ZdKunEJj91It.','usertest','user Test');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  KEY `FK2o0jvgh89lemvvo17cbqvdxaa` (`user_id`),
  CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (19,14,13),(20,9,12);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-30  2:40:27
