-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 nov. 2023 à 07:21
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `atelier6_dsi3_g1`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `reference` varchar(255) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `qte` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `promo` tinyint(1) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`reference`, `libelle`, `prix`, `qte`, `image`, `promo`, `description`) VALUES
('a102', 'pc asus I5 8go', 1000, 10, 'https://picsum.photos/300', 1, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias illo cumque amet pariatur tempore numquam autem perferendis provident fugit, atque, distinctio ipsam quo. Ratione omnis ea pariatur! Sint, iusto possimus!'),
('h100', 'pc HP I7 16go', 2200, 23, 'https://picsum.photos/300', 0, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias illo cumque amet pariatur tempore numquam autem perferendis provident fugit, atque, distinctio ipsam quo. Ratione omnis ea pariatur! Sint, iusto possimus!'),
('h101', 'pc HP I5 8go', 1900, 10, 'https://picsum.photos/300', 1, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Alias illo cumque amet pariatur tempore numquam autem perferendis provident fugit, atque, distinctio ipsam quo. Ratione omnis ea pariatur! Sint, iusto possimus!');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`reference`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
