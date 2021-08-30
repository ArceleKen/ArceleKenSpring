-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 28 août 2021 à 20:03
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
-- Structure de la table `bank_account`
--

CREATE TABLE `bank_account` (
  `ID` bigint(20) NOT NULL,
  `FULL_NAME` varchar(128) NOT NULL,
  `BALANCE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bank_account`
--

INSERT INTO `bank_account` (`ID`, `FULL_NAME`, `BALANCE`) VALUES
(1, 'Tom', 300),
(2, 'Jerry', 4800),
(3, 'Donald', 3000);

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
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
(43, '2021-08-28 18:10:43', 'envoi mail objet=Un vrai test d\'envoi de mail, utilisant Spring Java | dest=arcelekenmene3@gmail.com | Cc=', 'Envoi OK', '/send-mail', 12);

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
(10, '2021-08-25 10:42:03', 'role_test2', 'role test 2	                        '),
(11, '2021-08-25 10:42:22', 'role_test3', 'role test 3	                        '),
(12, '2021-08-25 10:42:45', 'role_test4', 'role test 4	                        '),
(13, '2021-08-25 10:43:20', 'role_test_5', '	                        		                        		                        role test 5\r\n	                        \r\n	                        ');

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
(9, 7);

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
(4, NULL, b'1', '$2a$10$85APdiKnih5w6mTcFf9Cn.L8q9HyBPBmAl2NSlDwIi2ucTUytMUD2', 'admin1', 'admin 1'),
(12, '2021-08-25 10:49:55', b'1', '$2a$10$KxvM/SpZ1X/cB8WNei8Nl.m545LQI/KFEPAiLUqgkzq5asIqNlXf2', 'bigadmin', 'admin supreme');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(12, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`ID`);

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
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
