-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 04 déc. 2023 à 11:16
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
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'PC'),
(2, 'Tablette'),
(3, 'Smartphone'),
(4, 'Imprimante');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `qte` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `promo` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `libelle`, `prix`, `qte`, `image`, `promo`, `description`, `id_categorie`) VALUES
(1, 'Produit n°1', 432, 72, 'https://picsum.photos/300/?random=1', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(2, 'Produit n°2', 2797, 20, 'https://picsum.photos/300/?random=2', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(3, 'Produit n°3', 1051, 59, 'https://picsum.photos/300/?random=3', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(4, 'Produit n°4', 2103, 144, 'https://picsum.photos/300/?random=4', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(5, 'Produit n°5', 1616, 82, 'https://picsum.photos/300/?random=5', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(6, 'Produit n°6', 2466, 147, 'https://picsum.photos/300/?random=6', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(7, 'Produit n°7', 532, 1, 'https://picsum.photos/300/?random=7', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(8, 'Produit n°8', 1442, 35, 'https://picsum.photos/300/?random=8', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(9, 'Produit n°9', 439, 178, 'https://picsum.photos/300/?random=9', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(10, 'Produit n°10', 2670, 90, 'https://picsum.photos/300/?random=10', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(11, 'Produit n°11', 2739, 18, 'https://picsum.photos/300/?random=11', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(12, 'Produit n°12', 630, 127, 'https://picsum.photos/300/?random=12', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(13, 'Produit n°13', 2073, 37, 'https://picsum.photos/300/?random=13', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(14, 'Produit n°14', 2157, 150, 'https://picsum.photos/300/?random=14', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(15, 'Produit n°15', 2774, 100, 'https://picsum.photos/300/?random=15', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(16, 'Produit n°16', 974, 55, 'https://picsum.photos/300/?random=16', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(17, 'Produit n°17', 833, 182, 'https://picsum.photos/300/?random=17', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(18, 'Produit n°18', 336, 86, 'https://picsum.photos/300/?random=18', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(19, 'Produit n°19', 2210, 53, 'https://picsum.photos/300/?random=19', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(20, 'Produit n°20', 752, 135, 'https://picsum.photos/300/?random=20', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(21, 'Produit n°21', 129, 120, 'https://picsum.photos/300/?random=21', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(22, 'Produit n°22', 359, 123, 'https://picsum.photos/300/?random=22', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(23, 'Produit n°23', 2569, 21, 'https://picsum.photos/300/?random=23', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(24, 'Produit n°24', 400, 122, 'https://picsum.photos/300/?random=24', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(25, 'Produit n°25', 2065, 2, 'https://picsum.photos/300/?random=25', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(26, 'Produit n°26', 646, 170, 'https://picsum.photos/300/?random=26', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(27, 'Produit n°27', 2414, 190, 'https://picsum.photos/300/?random=27', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(28, 'Produit n°28', 1937, 73, 'https://picsum.photos/300/?random=28', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(29, 'Produit n°29', 1743, 18, 'https://picsum.photos/300/?random=29', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(30, 'Produit n°30', 440, 78, 'https://picsum.photos/300/?random=30', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(31, 'Produit n°31', 1009, 31, 'https://picsum.photos/300/?random=31', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(32, 'Produit n°32', 2192, 29, 'https://picsum.photos/300/?random=32', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(33, 'Produit n°33', 2516, 121, 'https://picsum.photos/300/?random=33', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(34, 'Produit n°34', 877, 83, 'https://picsum.photos/300/?random=34', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(35, 'Produit n°35', 102, 142, 'https://picsum.photos/300/?random=35', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(36, 'Produit n°36', 2199, 169, 'https://picsum.photos/300/?random=36', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(37, 'Produit n°37', 2514, 33, 'https://picsum.photos/300/?random=37', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(38, 'Produit n°38', 1780, 160, 'https://picsum.photos/300/?random=38', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(39, 'Produit n°39', 2428, 136, 'https://picsum.photos/300/?random=39', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(40, 'Produit n°40', 1502, 56, 'https://picsum.photos/300/?random=40', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(41, 'Produit n°41', 832, 187, 'https://picsum.photos/300/?random=41', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(42, 'Produit n°42', 819, 193, 'https://picsum.photos/300/?random=42', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(43, 'Produit n°43', 2733, 90, 'https://picsum.photos/300/?random=43', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(44, 'Produit n°44', 2709, 81, 'https://picsum.photos/300/?random=44', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(45, 'Produit n°45', 302, 79, 'https://picsum.photos/300/?random=45', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(46, 'Produit n°46', 2704, 170, 'https://picsum.photos/300/?random=46', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(47, 'Produit n°47', 1021, 48, 'https://picsum.photos/300/?random=47', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(48, 'Produit n°48', 2912, 53, 'https://picsum.photos/300/?random=48', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(49, 'Produit n°49', 693, 172, 'https://picsum.photos/300/?random=49', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(50, 'Produit n°50', 1638, 108, 'https://picsum.photos/300/?random=50', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(51, 'Produit n°51', 2533, 114, 'https://picsum.photos/300/?random=51', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(52, 'Produit n°52', 2659, 96, 'https://picsum.photos/300/?random=52', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(53, 'Produit n°53', 2858, 113, 'https://picsum.photos/300/?random=53', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(54, 'Produit n°54', 167, 196, 'https://picsum.photos/300/?random=54', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(55, 'Produit n°55', 310, 42, 'https://picsum.photos/300/?random=55', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(56, 'Produit n°56', 1212, 30, 'https://picsum.photos/300/?random=56', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(57, 'Produit n°57', 1855, 18, 'https://picsum.photos/300/?random=57', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(58, 'Produit n°58', 1070, 140, 'https://picsum.photos/300/?random=58', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(59, 'Produit n°59', 1360, 84, 'https://picsum.photos/300/?random=59', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(60, 'Produit n°60', 1677, 48, 'https://picsum.photos/300/?random=60', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(61, 'Produit n°61', 433, 200, 'https://picsum.photos/300/?random=61', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(62, 'Produit n°62', 1676, 95, 'https://picsum.photos/300/?random=62', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(63, 'Produit n°63', 1723, 2, 'https://picsum.photos/300/?random=63', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(64, 'Produit n°64', 2795, 69, 'https://picsum.photos/300/?random=64', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(65, 'Produit n°65', 2524, 117, 'https://picsum.photos/300/?random=65', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(66, 'Produit n°66', 1546, 163, 'https://picsum.photos/300/?random=66', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(67, 'Produit n°67', 1328, 85, 'https://picsum.photos/300/?random=67', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(68, 'Produit n°68', 709, 41, 'https://picsum.photos/300/?random=68', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(69, 'Produit n°69', 2508, 56, 'https://picsum.photos/300/?random=69', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(70, 'Produit n°70', 1053, 106, 'https://picsum.photos/300/?random=70', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(71, 'Produit n°71', 2148, 15, 'https://picsum.photos/300/?random=71', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(72, 'Produit n°72', 897, 183, 'https://picsum.photos/300/?random=72', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(73, 'Produit n°73', 1210, 29, 'https://picsum.photos/300/?random=73', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(74, 'Produit n°74', 2551, 84, 'https://picsum.photos/300/?random=74', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(75, 'Produit n°75', 991, 109, 'https://picsum.photos/300/?random=75', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(76, 'Produit n°76', 1634, 157, 'https://picsum.photos/300/?random=76', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(77, 'Produit n°77', 1582, 165, 'https://picsum.photos/300/?random=77', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(78, 'Produit n°78', 2177, 137, 'https://picsum.photos/300/?random=78', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(79, 'Produit n°79', 2985, 38, 'https://picsum.photos/300/?random=79', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(80, 'Produit n°80', 1549, 19, 'https://picsum.photos/300/?random=80', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(81, 'Produit n°81', 463, 39, 'https://picsum.photos/300/?random=81', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 2),
(82, 'Produit n°82', 1539, 66, 'https://picsum.photos/300/?random=82', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(83, 'Produit n°83', 113, 92, 'https://picsum.photos/300/?random=83', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(84, 'Produit n°84', 1236, 25, 'https://picsum.photos/300/?random=84', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(85, 'Produit n°85', 1380, 111, 'https://picsum.photos/300/?random=85', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(86, 'Produit n°86', 777, 12, 'https://picsum.photos/300/?random=86', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(87, 'Produit n°87', 982, 102, 'https://picsum.photos/300/?random=87', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(88, 'Produit n°88', 2988, 84, 'https://picsum.photos/300/?random=88', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(89, 'Produit n°89', 2751, 52, 'https://picsum.photos/300/?random=89', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(90, 'Produit n°90', 2700, 181, 'https://picsum.photos/300/?random=90', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(91, 'Produit n°91', 316, 32, 'https://picsum.photos/300/?random=91', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(92, 'Produit n°92', 2992, 74, 'https://picsum.photos/300/?random=92', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(93, 'Produit n°93', 2924, 15, 'https://picsum.photos/300/?random=93', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(94, 'Produit n°94', 342, 174, 'https://picsum.photos/300/?random=94', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(95, 'Produit n°95', 1943, 176, 'https://picsum.photos/300/?random=95', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(96, 'Produit n°96', 2664, 78, 'https://picsum.photos/300/?random=96', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 1),
(97, 'Produit n°97', 2134, 14, 'https://picsum.photos/300/?random=97', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 3),
(98, 'Produit n°98', 765, 81, 'https://picsum.photos/300/?random=98', 0, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4),
(99, 'Produit n°99', 399, 60, 'https://picsum.photos/300/?random=99', 1, ' Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nIusto, quasi voluptatem tempore dolor ipsa asperiores quis odit \r\nid ut saepe, rerum v\r\neniam aspernatur eum laudantium tempora nemo vitae esse similique.', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
