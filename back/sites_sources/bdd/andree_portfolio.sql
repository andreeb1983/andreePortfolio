-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 11 oct. 2018 à 16:06
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `andree_portfolio`
--
CREATE DATABASE IF NOT EXISTS `andree_portfolio` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `andree_portfolio`;

-- --------------------------------------------------------

--
-- Structure de la table `t_achievements`
--

CREATE TABLE `t_achievements` (
  `id_achievement` int(3) NOT NULL,
  `title_achievement` varchar(150) NOT NULL,
  `subtitle_achievement` varchar(150) NOT NULL,
  `date_achievement` int(11) NOT NULL,
  `description_achievement` text NOT NULL,
  `id_utilisateur` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_comments`
--

CREATE TABLE `t_comments` (
  `id_comment` int(3) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_experiences`
--

CREATE TABLE `t_experiences` (
  `id_experience` int(3) NOT NULL,
  `title_exp` varchar(150) NOT NULL,
  `subtitle_exp` varchar(255) NOT NULL,
  `dates_exp` varchar(100) NOT NULL,
  `description_exp` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_hobbies`
--

CREATE TABLE `t_hobbies` (
  `id_hobby` int(3) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `id_user` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_hobbies`
--

INSERT INTO `t_hobbies` (`id_hobby`, `hobby`, `id_user`) VALUES
(1, 'Cinéma', 1),
(2, 'Cuisiner', 1),
(3, 'Théâtre', 1),
(4, 'Nager', 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_skills`
--

CREATE TABLE `t_skills` (
  `id_skill` int(3) NOT NULL,
  `skill` varchar(150) NOT NULL,
  `level` int(3) NOT NULL,
  `category` enum('front','back','cms/framework','project management') NOT NULL,
  `id_user` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_skills`
--

INSERT INTO `t_skills` (`id_skill`, `skill`, `level`, `category`, `id_user`) VALUES
(1, 'HTML5', 80, 'front', 1),
(2, 'CSS3', 80, 'front', 1),
(7, 'Symfony', 50, 'back', 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_social_networks`
--

CREATE TABLE `t_social_networks` (
  `id_social_network` int(3) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_user` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_titles`
--

CREATE TABLE `t_titles` (
  `id_title` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `profile` tinytext NOT NULL,
  `id_user` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_trainings`
--

CREATE TABLE `t_trainings` (
  `id_training` int(3) NOT NULL,
  `title_training` varchar(150) NOT NULL,
  `subtitle_training` varchar(255) NOT NULL,
  `date_training` date NOT NULL,
  `description_training` text NOT NULL,
  `id_user` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `id_user` int(3) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `age` smallint(5) NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('femme','homme') NOT NULL,
  `civilstatus` enum('M','Mme') NOT NULL,
  `address` text NOT NULL,
  `zip` varchar(6) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`id_user`, `firstname`, `lastname`, `email`, `phone1`, `phone2`, `password`, `username`, `age`, `birthday`, `gender`, `civilstatus`, `address`, `zip`, `city`, `country`, `comments`) VALUES
(1, 'Andrée', 'Baptiste', 'a.baptiste.m@gmail.com', '0637055347', '', 'eden&mia', 'andreeb', 34, '1983-12-01', 'femme', 'Mme', '8, rue des frères Lumière', '93230', 'Romainville', 'France', 'minutieuse, curieuse et observatrice');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_comments`
--
ALTER TABLE `t_comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Index pour la table `t_experiences`
--
ALTER TABLE `t_experiences`
  ADD PRIMARY KEY (`id_experience`);

--
-- Index pour la table `t_hobbies`
--
ALTER TABLE `t_hobbies`
  ADD PRIMARY KEY (`id_hobby`);

--
-- Index pour la table `t_skills`
--
ALTER TABLE `t_skills`
  ADD PRIMARY KEY (`id_skill`);

--
-- Index pour la table `t_social_networks`
--
ALTER TABLE `t_social_networks`
  ADD PRIMARY KEY (`id_social_network`);

--
-- Index pour la table `t_titles`
--
ALTER TABLE `t_titles`
  ADD PRIMARY KEY (`id_title`);

--
-- Index pour la table `t_trainings`
--
ALTER TABLE `t_trainings`
  ADD PRIMARY KEY (`id_training`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_comments`
--
ALTER TABLE `t_comments`
  MODIFY `id_comment` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_experiences`
--
ALTER TABLE `t_experiences`
  MODIFY `id_experience` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_hobbies`
--
ALTER TABLE `t_hobbies`
  MODIFY `id_hobby` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `t_skills`
--
ALTER TABLE `t_skills`
  MODIFY `id_skill` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `t_social_networks`
--
ALTER TABLE `t_social_networks`
  MODIFY `id_social_network` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_titles`
--
ALTER TABLE `t_titles`
  MODIFY `id_title` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_trainings`
--
ALTER TABLE `t_trainings`
  MODIFY `id_training` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
