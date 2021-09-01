-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 01 sep. 2021 à 19:44
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `springlearn`
--

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `other_info` varchar(255) NOT NULL,
  `resource` varchar(50) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`id`, `created_at`, `description`, `other_info`, `resource`, `user_id`) VALUES
(1, '2021-08-27 19:46:42', 'listing de permissions ', 'OK', '/permissions', 12),
(2, '2021-08-27 19:47:54', 'Lister les utilisateurs', 'OK', '/users', 12),
(10, '2021-08-27 20:23:55', 'listing de roles ', 'OK', '/roles', 12),
(13, '2021-08-27 20:28:49', 'listing de permissions ', 'OK', '/permissions', 12),
(14, '2021-08-27 20:30:24', 'listing de permissions ', 'OK', '/permissions', 12),
(15, '2021-08-27 20:30:43', 'Lister les utilisateurs', 'OK', '/users', 12),
(16, '2021-08-27 20:30:52', 'listing de permissions ', 'OK', '/permissions', 12),
(17, '2021-08-27 20:32:00', 'listing de permissions ', 'OK', '/permissions', 12),
(18, '2021-08-27 20:32:06', 'listing de permissions ', 'OK', '/permissions', 12),
(19, '2021-08-27 20:34:15', 'listing de permissions ', 'OK', '/permissions', 12),
(20, '2021-08-27 20:37:42', 'listing de permissions ', 'OK', '/permissions', 12),
(21, '2021-08-27 20:37:59', 'Lister les utilisateurs', 'OK', '/users', 12),
(22, '2021-08-27 20:42:25', 'listing de permissions ', 'OK', '/permissions', 12),
(23, '2021-08-27 20:43:29', 'listing de permissions ', 'OK', '/permissions', 12),
(24, '2021-08-28 08:45:48', 'listing de permissions ', 'OK', '/permissions', 12),
(25, '2021-08-28 08:48:14', 'listing de permissions ', 'OK', '/permissions', 12),
(26, '2021-08-28 08:52:08', 'listing de permissions ', 'OK', '/permissions', 12),
(27, '2021-08-28 10:18:57', 'listing de permissions ', 'OK', '/permissions', 12),
(28, '2021-08-28 15:10:16', 'envoi mail objet=obj test | dest=test@test.cm | Cc=arcele@azee.cd', 'Envoi OK', '/send-mail', 12),
(29, '2021-08-28 15:20:53', 'envoi mail objet=obj test1 | dest=test@test.cm | Cc=arcele@azee.cd', 'Envoi OK', '/send-mail', 12),
(30, '2021-08-28 15:22:04', 'envoi mail objet=obj test | dest=test1@test.cm | Cc=', 'Envoi OK', '/send-mail', 12),
(31, '2021-08-28 15:22:32', 'envoi mail objet=obj test2 | dest=test2@test.cm | Cc=', 'Envoi OK', '/send-mail', 12),
(32, '2021-08-28 15:22:51', 'envoi mail objet=obj test3 | dest=test@test.cm | Cc=', 'Envoi OK', '/send-mail', 12),
(33, '2021-08-28 15:27:45', 'envoi mail objet=obj test4 | dest=test3@test.cm | Cc=', 'Envoi OK', '/send-mail', 12),
(34, '2021-08-28 16:08:35', 'envoi mail objet=Un test denvoi de simple mail Spring Java | dest=arcelekenmene3@gmail.com | Cc=emailu@test.cm', 'Envoi OK', '/send-mail', 12),
(35, '2021-08-28 16:35:28', 'envoi mail objet=Un test d\'envoi de mail avec PJ Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Envoi OK', '/send-mail', 12),
(36, '2021-08-28 16:44:14', 'envoi mail objet=Un test denvoi de mail avec pj Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Echec !', '/send-mail', 12),
(37, '2021-08-28 16:52:28', 'envoi mail objet=Un test d\'envoi de mail avec pièce jointe Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Echec !', '/send-mail', 12),
(38, '2021-08-28 17:08:11', 'envoi mail objet=Un test denvoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Echec !', '/send-mail', 12),
(39, '2021-08-28 17:20:32', 'envoi mail objet=Un test denvoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Echec !', '/send-mail', 12),
(40, '2021-08-28 17:29:29', 'envoi mail objet=Un test denvoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Envoi OK', '/send-mail', 12),
(41, '2021-08-28 17:49:48', 'envoi mail objet=Encore un test denvoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Envoi OK', '/send-mail', 12),
(42, '2021-08-28 17:54:57', 'envoi mail objet=Un autre test d\'envoi de mail avec pièce jointe, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Echec !', '/send-mail', 12),
(43, '2021-08-28 18:10:43', 'envoi mail objet=Un vrai test d\'envoi de mail, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Envoi OK', '/send-mail', 12),
(44, '2021-08-29 00:25:22', 'listing de permissions ', 'OK', '/permissions', 12),
(45, '2021-08-29 00:29:19', 'envoi mail objet=test sending mail spring | dest=arcele.kenmene@yahoo.fr | Cc=', 'Envoi OK', '/send-mail', 12),
(46, '2021-08-29 00:31:47', 'Lister les utilisateurs', 'OK', '/users', 12),
(47, '2021-08-29 00:31:57', 'listing de roles ', 'OK', '/roles', 12),
(48, '2021-08-29 01:01:59', 'listing de roles ', 'OK', '/roles', 12),
(49, '2021-08-29 01:03:14', 'tentative de creation role Role [id=15, name=One_test1, description=	                        that is one test for test to test for test role .... I want to see, dateCreation=Sun Aug 29 01:03:14 WAT 2021, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]', 'OK', '/create-role', 12),
(50, '2021-08-29 01:03:14', 'listing de roles ', 'OK', '/roles', 12),
(51, '2021-08-29 01:04:20', 'listing de roles ', 'OK', '/roles', 12),
(52, '2021-08-29 01:04:34', 'tentative de supprssion role', 'OK', '/delete-role15', 12),
(53, '2021-08-29 01:04:34', 'listing de roles ', 'OK', '/roles', 12),
(54, '2021-08-30 00:06:30', 'Lister les utilisateurs', 'OK', '/users', 12),
(55, '2021-08-30 00:06:35', 'Afficher details utilisateur', 'Operation OK', '/details-user12', 12),
(56, '2021-08-30 00:15:05', 'Lister les utilisateurs', 'OK', '/users', 12),
(57, '2021-08-30 00:15:20', 'Lister les utilisateurs', 'OK', '/users', 12),
(58, '2021-08-30 00:15:34', 'Lister les utilisateurs', 'OK', '/users', 12),
(59, '2021-08-30 00:15:43', 'Afficher details utilisateur', 'Operation OK', '/details-user4', 12),
(60, '2021-08-30 00:15:49', 'Lister les utilisateurs', 'OK', '/users', 12),
(61, '2021-08-30 00:15:51', 'Afficher details utilisateur', 'Operation OK', '/details-user12', 12),
(62, '2021-08-30 00:16:01', 'Lister les utilisateurs', 'OK', '/users', 12),
(63, '2021-08-30 00:16:08', 'Lister les utilisateurs', 'OK', '/users', 12),
(64, '2021-08-30 00:16:19', 'Modifier info utilisateurUser [id=4, name=admin 1, username=admin1, password=, enabled=true, dateCreation=null, userRoles=[]]', 'OK', '/edit-user4', 12),
(65, '2021-08-30 00:16:19', 'Lister les utilisateurs', 'OK', '/users', 12),
(66, '2021-08-30 00:16:22', 'Afficher details utilisateur', 'Operation OK', '/details-user4', 12),
(67, '2021-08-30 00:16:29', 'Lister les utilisateurs', 'OK', '/users', 12),
(68, '2021-08-30 00:16:46', 'Modifier info utilisateurUser [id=4, name=admin 1, username=admin1, password=, enabled=true, dateCreation=null, userRoles=[UserRole [id=2, role=Role [id=10, name=role_test2, description=role test 2	                        , dateCreation=2021-08-25 10:42:03.0, permissions=[]]], UserRole [id=3, role=Role [id=11, name=role_test3, description=role test 3	                        , dateCreation=2021-08-25 10:42:22.0, permissions=[]]]]]', 'OK', '/edit-user4', 12),
(69, '2021-08-30 00:16:46', 'Lister les utilisateurs', 'OK', '/users', 12),
(70, '2021-08-30 00:16:48', 'Afficher details utilisateur', 'Operation OK', '/details-user4', 12),
(71, '2021-08-30 00:16:53', 'Lister les utilisateurs', 'OK', '/users', 12),
(72, '2021-08-30 00:17:22', 'Lister les utilisateurs', 'OK', '/users', 12),
(73, '2021-08-30 00:17:27', 'Tentative d\'activation/desactivation utilisateur userId = 4', 'operation OK', '/desactive-user', 12),
(74, '2021-08-30 00:17:27', 'Lister les utilisateurs', 'OK', '/users', 12),
(75, '2021-08-30 00:17:36', 'Tentative d\'activation/desactivation utilisateur userId = 4', 'operation OK', '/desactive-user', 12),
(76, '2021-08-30 00:17:36', 'Lister les utilisateurs', 'OK', '/users', 12),
(77, '2021-08-30 00:19:26', 'listing de roles ', 'OK', '/roles', 12),
(78, '2021-08-30 00:19:41', 'listing de roles ', 'OK', '/roles', 12),
(79, '2021-08-30 00:20:02', 'tentative de modification role Role [id=14, name=Manage_sending_mail, description=	                        		              Role pour Gérer l\'envoi des mails          \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=16, name=details_role, description=afficher les details d\'un role, dateCreation=2021-08-26 13:25:00.0], Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0], Role [id=18, name=listing_permissions, description=Pour lister tous les autorisations (ou permissions) du système, dateCreation=2021-08-26 13:25:00.0]]]', 'OK', '/edit-role14', 12),
(80, '2021-08-30 00:20:02', 'listing de roles ', 'OK', '/roles', 12),
(81, '2021-08-30 00:20:19', 'tentative de modification role Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]', 'OK', '/edit-role14', 12),
(82, '2021-08-30 00:20:19', 'listing de roles ', 'OK', '/roles', 12),
(83, '2021-08-30 00:20:32', 'listing de roles ', 'OK', '/roles', 12),
(84, '2021-08-30 00:26:38', 'listing de roles ', 'OK', '/roles', 12),
(85, '2021-08-30 00:27:09', 'listing de roles ', 'OK', '/roles', 12),
(86, '2021-08-30 00:27:26', 'listing de roles ', 'OK', '/roles', 12),
(87, '2021-08-30 00:27:47', 'tentative de modification role Role [id=13, name=role_test_5, description=	                        		                        		                        		                        role test 5\r\n	                        \r\n	                        \r\n	                        , dateCreation=2021-08-25 10:43:20.0, permissions=[Role [id=10, name=enable_or_disable_user, description=pour activer ou désactiver des utilisateurs, dateCreation=2021-08-26 13:25:00.0], Role [id=8, name=listing_user, description=autorisation de lister les utilisateurs, dateCreation=2021-08-26 13:25:00.0]]]', 'OK', '/edit-role13', 12),
(88, '2021-08-30 00:27:47', 'listing de roles ', 'OK', '/roles', 12),
(89, '2021-08-30 00:27:57', 'listing de roles ', 'OK', '/roles', 12),
(90, '2021-08-30 00:28:07', 'listing de roles ', 'OK', '/roles', 12),
(91, '2021-08-30 00:28:12', 'tentative de supprssion role', 'OK', '/delete-role13', 12),
(92, '2021-08-30 00:28:12', 'listing de roles ', 'OK', '/roles', 12),
(93, '2021-08-30 00:28:22', 'listing de roles ', 'OK', '/roles', 12),
(94, '2021-08-30 00:29:04', 'listing de roles ', 'OK', '/roles', 12),
(95, '2021-08-30 00:29:22', 'Lister les utilisateurs', 'OK', '/users', 12),
(96, '2021-08-30 00:29:34', 'Modifier info utilisateurUser [id=4, name=admin 1, username=admin1, password=, enabled=true, dateCreation=null, userRoles=[UserRole [id=4, role=Role [id=10, name=role_test2, description=role test 2	                        , dateCreation=2021-08-25 10:42:03.0, permissions=[]]], UserRole [id=5, role=Role [id=12, name=role_test4, description=role test 4	                        , dateCreation=2021-08-25 10:42:45.0, permissions=[]]]]]', 'OK', '/edit-user4', 12),
(97, '2021-08-30 00:29:34', 'Lister les utilisateurs', 'OK', '/users', 12),
(98, '2021-08-30 00:29:37', 'Afficher details utilisateur', 'Operation OK', '/details-user4', 12),
(99, '2021-08-30 00:29:41', 'Lister les utilisateurs', 'OK', '/users', 12),
(100, '2021-08-30 00:29:49', 'Modifier info utilisateurUser [id=4, name=admin 1, username=admin1, password=, enabled=true, dateCreation=null, userRoles=[UserRole [id=9, role=Role [id=12, name=role_test4, description=role test 4	                        , dateCreation=2021-08-25 10:42:45.0, permissions=[]]], UserRole [id=7, role=Role [id=10, name=role_test2, description=role test 2	                        , dateCreation=2021-08-25 10:42:03.0, permissions=[]]], UserRole [id=8, role=Role [id=11, name=role_test3, description=role test 3	                        , dateCreation=2021-08-25 10:42:22.0, permissions=[]]]]]', 'OK', '/edit-user4', 12),
(101, '2021-08-30 00:29:49', 'Lister les utilisateurs', 'OK', '/users', 12),
(102, '2021-08-30 00:29:53', 'Afficher details utilisateur', 'Operation OK', '/details-user4', 12),
(103, '2021-08-30 00:29:57', 'Lister les utilisateurs', 'OK', '/users', 12),
(104, '2021-08-30 00:30:04', 'listing de roles ', 'OK', '/roles', 12),
(105, '2021-08-30 00:30:20', 'tentative de supprssion role', 'OK', '/delete-role10', 12),
(106, '2021-08-30 00:30:20', 'listing de roles ', 'OK', '/roles', 12),
(107, '2021-08-30 00:30:27', 'Lister les utilisateurs', 'OK', '/users', 12),
(108, '2021-08-30 00:30:38', 'listing de roles ', 'OK', '/roles', 12),
(109, '2021-08-30 00:32:31', 'tentative de modification role Role [id=12, name=role_test4, description=	                        	role test 4	                        \r\n	                        , dateCreation=2021-08-25 10:42:45.0, permissions=[Role [id=11, name=details_user, description=Pour voir les details sur les informations des utilisateurs, dateCreation=2021-08-26 13:25:00.0], Role [id=9, name=create_user, description=pour créer des utilisateurs, dateCreation=2021-08-26 13:25:00.0], Role [id=8, name=listing_user, description=autorisation de lister les utilisateurs, dateCreation=2021-08-26 13:25:00.0]]]', 'OK', '/edit-role12', 12),
(110, '2021-08-30 00:32:31', 'listing de roles ', 'OK', '/roles', 12),
(111, '2021-08-30 00:32:41', 'tentative de supprssion role', 'OK', '/delete-role12', 12),
(112, '2021-08-30 00:32:41', 'listing de roles ', 'OK', '/roles', 12),
(113, '2021-08-30 00:32:49', 'Lister les utilisateurs', 'OK', '/users', 12),
(114, '2021-08-30 00:32:59', 'Afficher details utilisateur', 'Operation OK', '/details-user4', 12),
(115, '2021-08-30 00:33:02', 'Lister les utilisateurs', 'OK', '/users', 12),
(116, '2021-08-30 00:33:26', 'Lister les utilisateurs', 'OK', '/users', 12),
(117, '2021-08-30 00:37:12', 'listing de permissions ', 'OK', '/permissions', 12),
(118, '2021-08-30 00:39:04', 'listing de roles ', 'OK', '/roles', 12),
(119, '2021-08-30 01:13:48', 'Lister les utilisateurs', 'OK', '/users', 12),
(120, '2021-08-30 01:15:59', 'Tentative de creation utilisateur user = User [id=13, name=user Test, username=usertest, password=, enabled=false, dateCreation=Mon Aug 30 01:15:59 WAT 2021, userRoles=null]', 'Operation OK', '/create-user', 12),
(121, '2021-08-30 01:15:59', 'Lister les utilisateurs', 'OK', '/users', 12),
(122, '2021-08-30 01:16:24', 'Tentative d\'activation/desactivation utilisateur userId = 13', 'operation OK', '/desactive-user', 12),
(123, '2021-08-30 01:16:24', 'Lister les utilisateurs', 'OK', '/users', 12),
(124, '2021-08-30 01:22:05', 'Lister les utilisateurs', 'OK', '/users', 12),
(125, '2021-08-30 01:22:15', 'Lister les utilisateurs', 'OK', '/users', 12),
(126, '2021-08-30 01:22:39', 'Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=12, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]', 'OK', '/edit-user13', 12),
(127, '2021-08-30 01:22:39', 'Lister les utilisateurs', 'OK', '/users', 12),
(128, '2021-08-30 01:27:39', 'Lister les utilisateurs', 'OK', '/users', 12),
(129, '2021-08-30 01:27:53', 'Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=13, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]', 'OK', '/edit-user13', 12),
(130, '2021-08-30 01:27:54', 'Lister les utilisateurs', 'OK', '/users', 12),
(131, '2021-08-30 01:28:25', 'Lister les utilisateurs', 'OK', '/users', 12),
(132, '2021-08-30 01:28:57', 'Tentative de creation utilisateur user = User [id=14, name=user Test2, username=usertest2, password=, enabled=false, dateCreation=Mon Aug 30 01:28:56 WAT 2021, userRoles=null]', 'Operation OK', '/create-user', 12),
(133, '2021-08-30 01:28:57', 'Lister les utilisateurs', 'OK', '/users', 12),
(134, '2021-08-30 01:41:03', 'Lister les utilisateurs', 'OK', '/users', 12),
(135, '2021-08-30 01:41:35', 'Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=14, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]', 'OK', '/edit-user13', 12),
(136, '2021-08-30 01:41:35', 'Lister les utilisateurs', 'OK', '/users', 12),
(137, '2021-08-30 01:48:03', 'Lister les utilisateurs', 'OK', '/users', 12),
(138, '2021-08-30 01:48:27', 'Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=15, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]', 'OK', '/edit-user13', 12),
(139, '2021-08-30 01:48:27', 'Lister les utilisateurs', 'OK', '/users', 12),
(140, '2021-08-30 01:55:13', 'Lister les utilisateurs', 'OK', '/users', 12),
(141, '2021-08-30 01:55:36', 'Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=16, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]', 'OK', '/edit-user13', 12),
(142, '2021-08-30 01:55:36', 'Lister les utilisateurs', 'OK', '/users', 12),
(143, '2021-08-30 02:03:13', 'envoi mail objet=testons sending mail spring | dest=arcele.kenmene@yahoo.fr | Cc=', 'Envoi OK', '/send-mail', 13),
(144, '2021-08-30 02:16:10', 'Lister les utilisateurs', 'OK', '/users', 12),
(145, '2021-08-30 02:16:39', 'Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=17, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]', 'OK', '/edit-user13', 12),
(146, '2021-08-30 02:16:39', 'Lister les utilisateurs', 'OK', '/users', 12),
(147, '2021-08-30 02:17:26', 'Tentative de creation utilisateur user = User [id=15, name=user Test3, username=usertest3, password=, enabled=false, dateCreation=Mon Aug 30 02:17:26 WAT 2021, userRoles=null]', 'Operation OK', '/create-user', 12),
(148, '2021-08-30 02:17:26', 'Lister les utilisateurs', 'OK', '/users', 12),
(149, '2021-08-30 02:21:43', 'Lister les utilisateurs', 'OK', '/users', 12),
(150, '2021-08-30 02:23:52', 'Lister les utilisateurs', 'OK', '/users', 12),
(151, '2021-08-30 02:24:10', 'Modifier info utilisateurUser [id=14, name=user Test2, username=usertest2, password=$2a$10$1uoINV5/MVOSQsm4VOLdMeVbi8ZyCM.gP9llruGw3b8B6xbuG.gPG, enabled=false, dateCreation=2021-08-30 01:28:57.0, userRoles=[]]', 'OK', '/edit-user14', 12),
(152, '2021-08-30 02:24:10', 'Lister les utilisateurs', 'OK', '/users', 12),
(153, '2021-08-30 02:27:56', 'Lister les utilisateurs', 'OK', '/users', 12),
(154, '2021-08-30 02:28:00', 'listing de roles ', 'OK', '/roles', 12),
(155, '2021-08-30 02:28:34', 'Lister les utilisateurs', 'OK', '/users', 12),
(156, '2021-08-30 02:28:56', 'Modifier info utilisateurUser [id=13, name=user Test, username=usertest, password=$2a$10$nmzur9GWb6J/Um/1rXVXGeGpbru27aRq6/rBB3/zo9O5WM5cniuUG, enabled=true, dateCreation=2021-08-30 01:15:59.0, userRoles=[UserRole [id=18, role=Role [id=14, name=Manage_sending_mail, description=	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        , dateCreation=2021-08-29 00:34:48.0, permissions=[Role [id=20, name=send_mail, description=Pour envoyer des mails, dateCreation=2021-08-28 20:02:47.0]]]]]]', 'OK', '/edit-user13', 12),
(157, '2021-08-30 02:28:56', 'Lister les utilisateurs', 'OK', '/users', 12),
(158, '2021-08-30 02:29:41', 'Modifier info utilisateurUser [id=12, name=super admin , username=bigadmin, password=$2a$10$KxvM/SpZ1X/cB8WNei8Nl.m545LQI/KFEPAiLUqgkzq5asIqNlXf2, enabled=true, dateCreation=2021-08-25 10:49:55.0, userRoles=[UserRole [id=1, role=Role [id=9, name=superadmin, description=Role du superadmin, dateCreation=2021-08-25 10:41:38.0, permissions=[Role [id=7, name=superadmin, description=autorisation du superadmin, pour celui qui a tous les droit dans le système, dateCreation=2021-08-26 13:25:00.0]]]]]]', 'OK', '/edit-user12', 12),
(159, '2021-08-30 02:29:41', 'Lister les utilisateurs', 'OK', '/users', 12),
(160, '2021-08-30 02:30:23', 'Lister les utilisateurs', 'OK', '/users', 12),
(161, '2021-08-30 02:30:33', 'Tentative d\'activation/desactivation utilisateur userId = 13', 'operation OK', '/desactive-user', 12),
(162, '2021-08-30 02:30:33', 'Lister les utilisateurs', 'OK', '/users', 12),
(163, '2021-08-30 09:19:28', 'Lister les utilisateurs', 'OK', '/users', 12),
(164, '2021-08-31 18:23:42', 'Lister les utilisateurs', 'OK', '/users', 12),
(165, '2021-08-31 18:24:44', 'Tentative de creation utilisateur user = User [id=16, name=mytest0, username=mytest0, password=$2a$10$ja0FpcxJMrg5lvNzfQHnk.OXhJFScM/hvGz/0naVDkvJ8fpljApCS, enabled=false, dateCreation=Tue Aug 31 18:24:44 WAT 2021, userRoles=null]', 'Operation OK', '/create-user', 12),
(166, '2021-08-31 18:24:44', 'Lister les utilisateurs', 'OK', '/users', 12),
(167, '2021-08-31 18:29:59', 'Lister les utilisateurs', 'OK', '/users', 12),
(168, '2021-08-31 18:32:50', 'Afficher details utilisateur', 'Operation OK', '/details-user12', 12),
(169, '2021-09-01 16:01:59', 'Lister les utilisateurs', 'OK', '/users', 12),
(170, '2021-09-01 16:02:35', 'Modifier info utilisateurUser [id=27, name=User create test 10 ... API , username=usertestapi10, password=$2a$10$Y7T1mg4xFR1scRsR49M.kOg9S.t8ypLiW7oqWahADWjGrtTFfLtvW, enabled=true, dateCreation=2021-09-01 15:44:11.0, userRoles=[UserRole [id=31, role=Role [id=9, name=superadmin, description=Role du superadmin, dateCreation=2021-08-25 10:41:38.0, permissions=[Role [id=7, name=superadmin, description=autorisation du superadmin, pour celui qui a tous les droit dans le système, dateCreation=2021-08-26 13:25:00.0]]]], UserRole [id=30, role=Role [id=11, name=role_test3, description=role test 3	                        , dateCreation=2021-08-25 10:42:22.0, permissions=[]]]]]', 'OK', '/edit-user27', 12),
(171, '2021-09-01 16:02:35', 'Lister les utilisateurs', 'OK', '/users', 12),
(172, '2021-09-01 16:02:43', 'Afficher details utilisateur', 'Operation OK', '/details-user27', 12),
(173, '2021-09-01 16:02:50', 'Lister les utilisateurs', 'OK', '/users', 12);

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `date_creation`, `description`, `name`) VALUES
(7, '2021-08-26 13:25:00', 'autorisation du superadmin, pour celui qui a tous les droit dans le système', 'superadmin'),
(8, '2021-08-26 13:25:00', 'autorisation de lister les utilisateurs', 'listing_user'),
(9, '2021-08-26 13:25:00', 'pour créer des utilisateurs', 'create_user'),
(10, '2021-08-26 13:25:00', 'pour activer ou désactiver des utilisateurs', 'enable_or_disable_user'),
(11, '2021-08-26 13:25:00', 'Pour voir les details sur les informations des utilisateurs', 'details_user'),
(12, '2021-08-26 13:25:00', 'Pour modifier un utilisateur', 'edit_user'),
(13, '2021-08-26 13:25:00', 'Pour lister les roles ', 'listing_roles'),
(14, '2021-08-26 13:25:00', 'Pour créer des roles', 'create_role'),
(15, '2021-08-26 13:25:00', 'Pour modifier des roles ', 'edit_role'),
(16, '2021-08-26 13:25:00', 'afficher les details d\'un role', 'details_role'),
(17, '2021-08-26 13:25:00', 'Pour supprimer des roles', 'delete_role'),
(18, '2021-08-26 13:25:00', 'Pour lister tous les autorisations (ou permissions) du système', 'listing_permissions'),
(19, '2021-08-26 14:11:47', 'Autorisation de voir les activités (les logs) des utilisateurs dans le système', 'search_activities_users'),
(20, '2021-08-28 20:02:47', 'Pour envoyer des mails', 'send_mail');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `date_creation`, `name`, `description`) VALUES
(9, '2021-08-25 10:41:38', 'superadmin', 'Role du superadmin'),
(11, '2021-08-25 10:42:22', 'role_test3', 'role test 3	                        '),
(14, '2021-08-29 00:34:48', 'Manage_sending_mail', '	                        		                        		              Role pour Gérer l\'envoi des mails          \r\n	                        \r\n	                        ');

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(9, 7),
(14, 20);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `date_creation`, `enabled`, `password`, `username`, `name`) VALUES
(4, NULL, b'0', '$2a$10$pLJHRRipTOsQYOCAunWZi.L/2sKJIbaTlHeR2xhwaacZlSsFTiwSq', 'admin1', 'admin 1'),
(12, '2021-08-25 10:49:55', b'1', '$2a$10$KxvM/SpZ1X/cB8WNei8Nl.m545LQI/KFEPAiLUqgkzq5asIqNlXf2', 'bigadmin', 'super admin '),
(13, '2021-08-30 01:15:59', b'0', '$2a$10$FPai/bs81P5wXLEYjE3EK.LciSUXGMbH5DFVqAj4ZdKunEJj91It.', 'usertest', 'user Test'),
(16, '2021-08-31 18:24:44', b'0', '$2a$10$ja0FpcxJMrg5lvNzfQHnk.OXhJFScM/hvGz/0naVDkvJ8fpljApCS', 'mytest0', 'mytest0'),
(17, '2021-09-01 14:42:45', b'0', '$2a$10$WLLXYmqpE.mFpPTKgYH2T..0J/LyU/4BV.33YjuFrFK5g520MwA2C', 'usertestapi', 'User create test API'),
(18, '2021-09-01 14:46:45', b'0', '$2a$10$6.VcVHDDWd/BiDsceXAireM31xofrC8xxY.Yqznmpg4c/KvlHh6NS', 'usertestapi1', 'User create test 1 API '),
(19, '2021-09-01 14:50:36', b'0', '$2a$10$quIhb4CxlQVvB0D0mwFrQOEEiF.Y78jAzvzcvYvjrk/YuOHXZmXui', 'usertestapi2', 'User create test 2 API '),
(20, '2021-09-01 14:55:55', b'0', '$2a$10$Xq/2nMA2DMOh3P7s3gn0neqQQVP4K0ZwdBWrorBA634XmNVzUL8hi', 'usertestapi3', 'User create test 3 API '),
(21, '2021-09-01 15:03:37', b'0', '$2a$10$Uw8tNr4TmyGcxFI7oyU2ou4sdGfuxM9KgU9TXO7XAeYgcaiRnzb7m', 'usertestapi4', 'User create test 4 API '),
(22, '2021-09-01 15:09:54', b'0', '$2a$10$5ds5iNIGHwlLd8nVeGuRf.kwkT8LJFIAK72r4i0EQSQQFiSaiMbGa', 'usertestapi5', 'User create test 5 API '),
(23, '2021-09-01 15:18:42', b'0', '$2a$10$GN6o9EGVyjQ1KMXLCRvd9uED6.3lRqexuR/1Y/yl9.yTc.4tpzgMW', 'usertestapi6', 'User create test 6 API '),
(24, '2021-09-01 15:40:34', b'0', '$2a$10$4kVpkGL4/cv2.piwrgKhU.EginwDbM/rsl1.GP6p8N.zeg5hVvrca', 'usertestapi7', 'User create test 7 API '),
(25, '2021-09-01 15:41:00', b'0', '$2a$10$GtitMIR7jxALeZWfisBWF.5RZ0adVTQKozMfV.5RAQZKxPOEoD0QW', 'usertestapi8', 'User create test 8 API '),
(26, '2021-09-01 15:43:36', b'0', '$2a$10$y8yqbQFlczpsdNkkp7euE.qEBRwJxebYaCfiu//LqnrJeAdO8B0XS', 'usertestapi9', 'User create test 9 API '),
(27, '2021-09-01 15:44:11', b'1', '$2a$10$3owrHzosZI3dpeZb.imid.RoG2lhUpKi/vErwWt.lHI0ijOJp9qfW', 'usertestapi10', 'User create test 10 ... API ');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`id`, `role_id`, `user_id`) VALUES
(19, 14, 13),
(20, 9, 12),
(21, 11, 16),
(22, 11, 22),
(23, 11, 23),
(24, 14, 23),
(25, 11, 26),
(26, 14, 26),
(35, 11, 27),
(36, 9, 27);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgqy8beil5y4almtq1tiyofije` (`user_id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_pnvtwliis6p05pn6i3ndjrqt2` (`name`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `FKbx9r9uw77p58gsq4mus0mec0o` (`permission_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  ADD KEY `FK2o0jvgh89lemvvo17cbqvdxaa` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `FKgqy8beil5y4almtq1tiyofije` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `FKbx9r9uw77p58gsq4mus0mec0o` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `FKqi9odri6c1o81vjox54eedwyh` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
