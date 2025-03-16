-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 26 mars 2022 à 13:44
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecran`
--

-- --------------------------------------------------------

--
-- Structure de la table `boucles`
--

CREATE TABLE `boucles` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `heure_debut` datetime NOT NULL,
  `heure_fin` datetime NOT NULL,
  `nomboucle` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `vendredi_soir` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `samedi_jour` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `samedi_stream` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `samedi_soir` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `dimanche` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boucles` Version simplifiée
--

INSERT INTO `boucles` (`id`, `nom`, `heure_debut`, `heure_fin`, `nomboucle`) VALUES
(1, 'vendredi_soir', '2023-03-17 17:00:00', '2023-03-18 0:00:00', 'vendredi_soir'),
(2, 'samedi_jour', '2023-03-18 07:00:00', '2023-03-17 20:00:00', 'samedi_jour'),
(3, 'samedi_stream', '2023-03-18 20:00:00', '2023-03-17 22:00:00', 'samedi_stream'),
(4, 'samedi_soir', '2023-03-18 22:00:00', '2023-03-19 05:00:00', 'samedi_soir'),
(5, 'dimanche', '2023-03-19 07:00:00', '2023-03-17 17:00:00', 'dimanche')

INSERT INTO `vendredi_soir` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'fullscreen', '00:01:00', '', '', 'vendredi4.png', ''),
(2, 'fullscreen', '00:01:00', '', '', 'vendredi5.png', ''),
(3, 'fullscreen', '00:01:00', '', '', 'patisserie.jpeg', ''),
(4, 'fullscreen', '00:01:00', '', '', 'pwc.jpg', ''),
(5, 'fullscreen', '00:01:00', '', '', 'sandwich.jpeg', ''),
(6, 'fullscreen', '00:01:00', '', '', 'casino.jpeg', ''),
(7, 'fullscreen', '00:01:00', '', '', 'Couverture fb.png', ''),
(8, 'video', '00:01:01', '', '', 'teaser.mp4', '')

INSERT INTO `samedi_jour` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'fullscreen', '00:01:00', '', '', "Soiree.png", ''),
(2, 'fullscreen', '00:01:00', '', '', 'pwc.jpg', ''),
(7, 'fullscreen', '00:01:00', '', '', 'Couverture fb.png', '')

INSERT INTO `vendredi_stream` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '01:00:00', '', '', NULL, '')

INSERT INTO `samedi_soir` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'fullscreen', '00:01:00', '', '', "Soiree.png", ''),
(2, 'fullscreen', '00:01:00', '', '', 'pwc.jpg', ''),
(3, 'fullscreen', '00:01:00', '', '', 'degrisement.jpg', ''),
(7, 'fullscreen', '00:01:00', '', '', 'Couverture fb.png', ''),

INSERT INTO `dimanche` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'fullscreen', '00:01:00', '', '', "village.png", ''),
(2, 'fullscreen', '00:01:00', '', '', 'pwc.jpg', ''),
(7, 'fullscreen', '00:01:00', '', '', 'Couverture fb.png', ''),

-- --------------------------------------------------------

--
-- Structure de la table `calendrier`
--

CREATE TABLE `calendrier` (
  `id_calendrier` int(11) NOT NULL,
  `chemin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `calendrier`
--

INSERT INTO `calendrier` (`id_calendrier`, `chemin`) VALUES
(10, './Calendrier/09_02_21.png'),
(11, './Calendrier/09_02_28.png'),
(12, './Calendrier/09_02_35.png');

-- --------------------------------------------------------

--
-- Structure de la table `classement`
--

CREATE TABLE `classement` (
  `id` int(11) NOT NULL,
  `id_ecole` int(11) DEFAULT NULL,
  `classement` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classement`
--

INSERT INTO `classement` (`id`, `id_ecole`, `classement`, `points`) VALUES
(92, 93, 12, 0),
(93, 95, 12, 0),
(94, 100, 12, 0),
(95, 91, 8, 8000),
(96, 89, 11, 480),
(97, 78, 12, 0),
(98, 83, 12, 0),
(99, 87, 9, 6000),
(100, 107, 12, 0),
(101, 110, 12, 0),
(102, 143, 12, 0),
(103, 145, 12, 0),
(104, 244, 12, 0),
(105, 131, 0, 0),
(106, 129, 12, 0),
(107, 115, 12, 0),
(108, 118, 5, 18000),
(109, 122, 12, 0),
(110, 54, 12, 0),
(111, 51, 7, 8720),
(112, 20, 12, 0),
(113, 23, 12, 0),
(114, 25, 6, 12000),
(115, 17, 3, 40000),
(116, 10, 12, 0),
(117, 3, 12, 0),
(118, 4, 1, 48000),
(119, 8, 12, 0),
(120, 26, 12, 0),
(121, 28, 12, 0),
(122, 44, 12, 0),
(123, 46, 12, 0),
(124, 48, 1, 48000),
(125, 38, 12, 0),
(126, 36, 12, 0),
(127, 30, 4, 24000),
(128, 32, 10, 1200),
(129, 34, 12, 0),
(130, 1, 12, 0);

-- --------------------------------------------------------

--
-- Structure de la table `dd`
--

CREATE TABLE `dd` (
  `id_DD` int(11) DEFAULT NULL,
  `chemin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dd`
--

INSERT INTO `dd` (`id_DD`, `chemin`) VALUES
(1, './DD/3ens.png'),
(2, './DD/LeSaviezVous.png'),
(3, './DD/drapeau1.png'),
(4, './DD/LowBattery.png'),
(5, './DD/HandisportP4.PNG');

-- -------------------------------------------------------- boucle

--
-- Structure de la table `samedi_5h_6h`
--

CREATE TABLE `samedi_5h_6h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_5h_6h`
--

INSERT INTO `samedi_5h_6h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:10:00', '', '', '', NULL),
(2, 'VDP', '00:00:10', '', '', 'schodou', NULL),
(3, 'VDP', '00:00:10', '', '', 'slheug', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_6h_7h`
--

CREATE TABLE `samedi_6h_7h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_6h_7h`
--

INSERT INTO `samedi_6h_7h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:01:00', 'navettes', ' 3', NULL, ''),
(2, 'ecureuil', '00:01:00', 'image, stream, image', '', '', ''),
(3, 'navettes', '00:01:00', 'navettes', ' 3', NULL, ''),
(4, 'ecureuil', '00:01:00', '', '', NULL, NULL),
(5, 'navettes', '00:01:00', 'navettes', ' 3', NULL, ''),
(6, 'ecureuil', '00:01:00', 'image, stream, image', '', '', ''),
(7, 'navettes', '00:01:00', 'navettes', ' 3', NULL, ''),
(8, 'ecureuil', '00:01:00', '', '', NULL, NULL),
(9, 'VDP', '00:00:08', '', '', 'manah', NULL),
(10, 'VDP', '00:00:08', '', '', 'dahlgow', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_7h_8h`
--

CREATE TABLE `samedi_7h_8h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_7h_8h`
--

INSERT INTO `samedi_7h_8h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:02:00', '', '', NULL, ''),
(2, 'ecureuil', '00:02:00', '', '', '', ''),
(3, 'navettes', '00:02:00', '', '', NULL, ''),
(4, 'ecureuil', '00:02:00', '', '', '', ''),
(5, 'VDP', '00:00:08', '', '', 'haykix', NULL),
(6, 'VDP', '00:00:08', '', '', 'guyrek', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_8h_9h`
--

CREATE TABLE `samedi_8h_9h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_8h_9h`
--

INSERT INTO `samedi_8h_9h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:01:00', '', '', NULL, ''),
(2, 'ecureuil', '00:01:00', '', '', 'Badminton', ''),
(3, 'navettes', '00:01:00', '', '', NULL, ''),
(4, 'ecureuil', '00:01:00', '', '', 'FootF', ''),
(29, 'VDP', '00:00:08', '', '', 'yaroh', ''),
(30, 'VDP', '00:00:08', '', '', 'laikha', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_9h_10h`
--

CREATE TABLE `samedi_9h_10h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_9h_10h`
--

INSERT INTO `samedi_9h_10h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:02:00', '', '', NULL, ''),
(2, 'scores', '00:02:00', '', '', 'BasketF', ''),
(3, 'navettes', '00:02:00', '', '', NULL, ''),
(4, 'scores', '00:02:00', '', '', 'BasketH', ''),
(5, 'navettes', '00:02:00', '', '', NULL, ''),
(6, 'navettes', '00:02:00', '', '', '', ''),
(7, 'scores', '00:02:00', '', '', 'HandH', ''),
(8, 'navettes', '00:02:00', '', '', NULL, ''),
(9, 'scores', '00:02:00', '', '', 'HandF', ''),
(10, 'navettes', '00:02:00', '', '', NULL, ''),
(11, 'navettes', '00:02:00', '', '', NULL, ''),
(12, 'scores', '00:02:00', '', '', 'RugbyH', ''),
(13, 'navettes', '00:02:00', '', '', NULL, ''),
(14, 'scores', '00:02:00', '', '', 'RugbyF', ''),
(15, 'navettes', '00:02:00', '', '', NULL, ''),
(16, 'navettes', '00:02:00', '', '', '', ''),
(17, 'scores', '00:02:00', '', '', 'VolleyH', ''),
(18, 'navettes', '00:02:00', '', '', NULL, ''),
(19, 'scores', '00:02:00', '', '', 'VolleyF', ''),
(20, 'navettes', '00:02:00', '', '', NULL, ''),
(21, 'navettes', '00:02:00', '', '', NULL, ''),
(22, 'scores', '00:02:00', '', '', 'Judo', ''),
(23, 'navettes', '00:02:00', '', '', NULL, ''),
(24, 'scores', '00:02:00', '', '', 'Tennis', ''),
(25, 'navettes', '00:02:00', '', '', NULL, ''),
(26, 'navettes', '00:02:00', '', '', '', ''),
(27, 'scores', '00:02:00', '', '', 'Tennis de Table', ''),
(28, 'navettes', '00:02:00', '', '', NULL, ''),
(29, 'VDP', '00:00:08', '', '', 'baullo', ''),
(30, 'VDP', '00:00:08', '', '', 'aukrom', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_10h_11h`
--

CREATE TABLE `samedi_10h_11h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_10h_11h`
--

INSERT INTO `samedi_10h_11h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:02:00', '', '', 'BasketF', ''),
(2, 'scores', '00:02:00', '', '', 'BasketH', ''),
(3, 'navettes', '00:02:00', '', '', '', ''),
(4, 'scores', '00:02:00', '', '', 'HandH', ''),
(5, 'scores', '00:02:00', '', '', 'HandF', ''),
(6, 'scores', '00:02:00', '', '', 'RugbyH', ''),
(7, 'scores', '00:02:00', '', '', 'RugbyF', ''),
(8, 'scores', '00:02:00', '', '', 'VolleyH', ''),
(9, 'scores', '00:02:00', '', '', 'VolleyF', ''),
(10, 'scores', '00:02:00', '', '', 'Judo', ''),
(11, 'scores', '00:02:00', '', '', 'Tennis', ''),
(12, 'scores', '00:02:00', '', '', 'Tennis de Table', ''),
(13, 'VDP', '00:00:08', '', '', 'rhycha', ''),
(14, 'VDP', '00:00:08', '', '', 'melynn', ''),
(15, 'mourai', '00:00:15', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_11h_12h`
--

CREATE TABLE `samedi_11h_12h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_11h_12h`
--

INSERT INTO `samedi_11h_12h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(9, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(10, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(11, 'village', '00:01:00', '', '', '', ''),
(12, 'VDP', '00:00:08', '', ' ', 'jezou', ''),
(13, 'VDP', '00:00:08', '', '', 'yzos', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_12h_13h`
--

CREATE TABLE `samedi_12h_13h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_12h_13h`
--

INSERT INTO `samedi_12h_13h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'village', '00:01:00', '', '', '', ''),
(16, 'VDP', '00:00:08', '', ' ', 'skyh', ''),
(17, 'VDP', '00:00:08', '', '', 'prom', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_13h_14h`
--

CREATE TABLE `samedi_13h_14h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_13h_14h`
--

INSERT INTO `samedi_13h_14h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'scores', '00:01:00', '', '', 'Badminton', ''),
(16, 'VDP', '00:00:08', '', ' ', 'slheug', ''),
(17, 'VDP', '00:00:08', '', '', 'dimmi', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_14h_15h`
--

CREATE TABLE `samedi_14h_15h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_14h_15h`
--

INSERT INTO `samedi_14h_15h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'village', '00:01:00', '', '', '', ''),
(16, 'VDP', '00:00:08', '', ' ', 'schodou', ''),
(17, 'VDP', '00:00:08', '', '', 'tchosen', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_15h_16h`
--

CREATE TABLE `samedi_15h_16h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_15h_16h`
--

INSERT INTO `samedi_15h_16h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'village', '00:01:00', '', '', '', ''),
(16, 'VDP', '00:00:08', '', ' ', 'haykix', ''),
(17, 'VDP', '00:00:08', '', '', 'guyrek', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_16h_17h`
--

CREATE TABLE `samedi_16h_17h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_16h_17h`
--

INSERT INTO `samedi_16h_17h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'village', '00:01:00', '', '', '', ''),
(16, 'VDP', '00:00:08', '', ' ', 'baullo', ''),
(17, 'VDP', '00:00:08', '', '', 'aukrom', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_17h_18h`
--

CREATE TABLE `samedi_17h_18h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_17h_18h`
--

INSERT INTO `samedi_17h_18h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'BasketH', ''),
(3, 'stream', '00:10:00', '', ' ', 'RugbyF', ''),
(4, 'stream', '00:10:00', '', '', 'RugbyH', ''),
(5, 'stream', '00:10:00', '', ' ', 'HandF', ''),
(6, 'stream', '00:10:00', '', '', 'VolleyH', ''),
(7, 'stream', '00:10:00', '', ' ', 'VolleyF', ''),
(8, 'village', '00:01:00', '', '', '', ''),
(9, 'VDP', '00:00:08', '', ' ', 'yaroh', ''),
(10, 'VDP', '00:00:08', '', '', 'laikha', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_18h_19h`
--

CREATE TABLE `samedi_18h_19h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_18h_19h`
--

INSERT INTO `samedi_18h_19h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'HandH', ''),
(3, 'stream', '00:10:00', '', ' ', 'RugbyF', ''),
(4, 'stream', '00:10:00', '', '', 'RugbyH', ''),
(5, 'stream', '00:10:00', '', ' ', 'HandF', ''),
(6, 'stream', '00:10:00', '', '', 'VolleyH', ''),
(7, 'stream', '00:10:00', '', ' ', 'VolleyF', ''),
(8, 'village', '00:01:00', '', '', '', ''),
(9, 'VDP', '00:00:08', '', ' ', 'rhycha', ''),
(10, 'VDP', '00:00:08', '', '', 'melynn', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_19h_20h`
--

CREATE TABLE `samedi_19h_20h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_19h_20h`
--

INSERT INTO `samedi_19h_20h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'HandH', ''),
(3, 'stream', '00:10:00', '', ' ', 'RugbyF', ''),
(4, 'stream', '00:10:00', '', '', 'RugbyH', ''),
(5, 'stream', '00:10:00', '', ' ', 'HandF', ''),
(6, 'stream', '00:10:00', '', '', 'VolleyH', ''),
(7, 'stream', '00:10:00', '', ' ', 'VolleyF', ''),
(8, 'village', '00:01:00', '', '', '', ''),
(9, 'VDP', '00:00:08', '', ' ', 'slheug', ''),
(10, 'VDP', '00:00:08', '', '', 'prom', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_20h_21h`
--

CREATE TABLE `samedi_20h_21h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_20h_21h`
--

INSERT INTO `samedi_20h_21h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'BasketH', ''),
(3, 'stream', '00:10:00', '', ' ', 'RugbyF', ''),
(4, 'stream', '00:10:00', '', '', 'RugbyH', ''),
(5, 'stream', '00:10:00', '', ' ', 'HandF', ''),
(6, 'stream', '00:10:00', '', '', 'VolleyH', ''),
(7, 'fullscreen', '00:00:00', '', '', 'soireeH', NULL),
(8, 'RAVSS', '00:10:00', '', ' ', '', ''),
(9, 'fullscreen', '00:01:00', '', '', 'degrisement', ''),
(10, 'fullscreen', '00:01:00', '', '', 'changement', ''),
(11, 'VDP', '00:00:08', '', ' ', 'schodou', ''),
(12, 'VDP', '00:00:08', '', '', 'yzos', '');


--
-- Structure de la table `samedi_21h_22h`
--

CREATE TABLE `samedi_21h_22h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_21h_22h`
--

INSERT INTO `samedi_21h_22h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'BasketH', ''),
(3, 'fullscreen', '00:01:00', '', ' ', 'soireeH', ''),
(4, 'fullscreen', '00:01:00', '', '', 'soiree2', ''),
(5, 'RAVSS', '00:01:00', '', ' ', 'VolleyF', ''),
(6, 'fullscreen', '00:01:00', '', '', 'degrisement', ''),
(7, 'fullscreen', '00:01:00', '', '', 'changement', ''),
(8, 'VDP', '00:00:08', '', ' ', 'tchosen', ''),
(9, 'VDP', '00:00:08', '', '', 'teykoh', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_22h_23h`
--

CREATE TABLE `samedi_22h_23h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_22h_23h`
--

INSERT INTO `samedi_22h_23h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'fullscreen', '00:01:00', 'image, video', ' ', 'soireeH', ''),
(2, 'fullscreen', '00:01:00', 'stream', '', 'soiree2', ''),
(3, 'RAVSS', '00:01:00', 'image, video', ' ', '', ''),
(4, 'fullscreen', '00:00:20', 'stream', '', 'degrisement', ''),
(5, 'fullscreen', '00:01:00', 'image, video', ' ', 'changement', ''),
(6, 'VDP', '00:00:08', 'stream', '', 'haykix', ''),
(7, 'VDP', '00:00:08', 'image, video', ' ', 'guyrek', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_23h_00h`
--

CREATE TABLE `samedi_23h_00h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_23h_00h`
--

INSERT INTO `samedi_23h_00h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'fullscreen', '00:01:00', 'image, video', ' ', 'soireeH', ''),
(2, 'fullscreen', '00:01:00', 'stream', '', 'soiree2', ''),
(3, 'RAVSS', '00:01:00', 'image, video', ' ', '', ''),
(4, 'fullscreen', '00:00:20', 'stream', '', 'degrisement', ''),
(5, 'fullscreen', '00:01:00', 'image, video', ' ', 'changement', ''),
(6, 'VDP', '00:00:08', 'stream', '', 'manah', ''),
(7, 'VDP', '00:00:08', 'image, video', ' ', 'dahlgow', '');

--
-- Structure de la table `dimanche_7h_8h`
--

CREATE TABLE `dimanche_7h_8h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_7h_8h`
--

INSERT INTO `dimanche_7h_8h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'village', '00:00:30', 'image, video', ' ', '', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_8h_9h`
--

CREATE TABLE `dimanche_8h_9h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_8h_9h`
--

INSERT INTO `dimanche_8h_9h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_9h_10h`
--

CREATE TABLE `dimanche_9h_10h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_9h_10h`
--

INSERT INTO `dimanche_9h_10h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_10h_11h`
--

CREATE TABLE `dimanche_10h_11h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_10h_11h`
--

INSERT INTO `dimanche_10h_11h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_11h_12h`
--

CREATE TABLE `dimanche_11h_12h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_11h_12h`
--

INSERT INTO `dimanche_11h_12h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_12h_13h`
--

CREATE TABLE `dimanche_12h_13h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_12h_13h`
--

INSERT INTO `dimanche_12h_13h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_13h_14h`
--

CREATE TABLE `dimanche_13h_14h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_13h_14h`
--

INSERT INTO `dimanche_13h_14h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_14h_15h`
--

CREATE TABLE `dimanche_14h_15h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_14h_15h`
--

INSERT INTO `dimanche_14h_15h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_15h_16h`
--

CREATE TABLE `dimanche_15h_16h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_15h_16h`
--

INSERT INTO `dimanche_15h_16h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dimanche_16h_17h`
--

CREATE TABLE `dimanche_16h_17h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dimanche_16h_17h`
--

INSERT INTO `dimanche_16h_17h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'page1', '00:00:30', 'image, video', ' ', 'text_photo/dimanche_9.png, sponsor/Deloitte.mp4', ''),
(2, 'streamtest', '00:00:20', 'stream', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ecoles`
--

CREATE TABLE `ecoles` (
  `id_ecole` int(11) NOT NULL,
  `nom_ecole` varchar(255) DEFAULT NULL,
  `abreviation` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `etat_ecole` int(11) DEFAULT NULL,
  `logo_ecole` varchar(255) DEFAULT NULL,
  `id_challenger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ecoles`
--

INSERT INTO `ecoles` (`id_ecole`, `nom_ecole`, `abreviation`, `points`, `etat_ecole`, `logo_ecole`, `id_challenger`) VALUES
(104, 'Centrale Lille', 'EC Lille', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/141a2a38723e1c1bed596fb6fad61b1fa72900ca', 1),
(105, 'Agro ParisTech', 'AgroParis', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/216f8f8efb10527fbadb17c801cd1aa507911ee8', 3),
(106, 'Centrale Marseille', 'ECM', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/381aa2886d3e510eadd51e276cb3e30a73e6b334', 4),
(107, 'Centrale Nantes', 'ECN', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/d8f4d7ec815c53e7693bccd8cccdf78aae63845c', 8),
(108, 'Chimie ParisTech', 'Chimie Paris', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/bfa4f470d690f2bd46de18d43f84fce83fe92f3e', 10),
(109, 'Centrale Supelec', 'CS', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/6192f8c9d2d432f3066b80393dfdff25b8e84f86', 17),
(110, 'ESPCI', 'ESPCI', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/7a435443fe19d605d18f59b09e1b83dc51838b82', 20),
(111, 'CESI', 'CESI', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/968707b576afb2fcbe967d72d55242a09d8add56', 23),
(112, 'ENS Lyon', 'ENS', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/235e9bcd2f3cf05d01668109395ebef69331e5f8', 25),
(113, 'ENSAM Bordeaux', 'ENSAM Bordeaux', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/d2ebcee1189cb0430a115a885ff77b3317a27a66', 26),
(114, 'ENSIIE', 'ENSIIE', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/1a035182b8827430717fe275d71ab1682b0e7d76', 28),
(115, 'ENSTA', 'ENSTA', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/9c3331ff6a4db26dafc190b1dceb404f3c7bbfa5', 30),
(116, 'ENTPE Lyon', 'ENTPE', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/42517802280d536cd216f886629a672da0cd930e', 32),
(117, 'ISAE Supaero', 'Supaero', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/6a7ef4c0a7a2601cc176c0c3c3c8cb882fbe096f', 34),
(118, 'Navale', 'Navale', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/289dcfd5ead911508171ed54f9a7f36b2ff611d7', 36),
(119, 'Université de Seville', 'USevilla', 0, 1, 'https://challenger.eclair.ec-lyon.fr/image/0366df78ccf564b3885a0a769e55afe976d599b1', 38),
(120, 'SeaTech', 'SeaTech', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/1743447e8564bfca57256a7a4ec20033fb408b01', 44),
(121, 'ENAC Toulouse', 'ENAC', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/915b8beda6af0ac4f4d9f8add5c502257fbdbd62', 46),
(122, 'Mines d\'Alès', 'Mines Alès', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/e2f79e480efd0d38575136a7176a8e57a3957d8d', 48),
(123, 'Mines de Saint-Etienne', 'Mines Sté', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/8fb51f2a71ead6a20d785800aea4bdaace14bb3d', 51),
(124, 'Polytechnique', 'X', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/2aab3a14f379e90f92d5658b501a7adabc1745c3', 54),
(125, 'Fanfare ISAE Supaero', '', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/8580404655042534d1ac49a627480ff69efe1439', 78),
(126, 'CPE Lyon', 'CPE', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/ba664896d7854012e6ac6679c8cc2d976db01418', 83),
(127, 'ENSAM Cluny', 'ENSAM C', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/6be487d608a52e74c49eb131e1d8853aaa1e416e', 87),
(128, 'ENSEA', 'ENSEA', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/e41b8b818e2672ab188eaf0ca2db67c1823bddbd', 89),
(129, 'IMT Atlantique', 'IMT', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/81b783e6178398d7520e33a21361878587c3d5d0', 91),
(130, 'Mines de Nancy', 'Mines Nancy', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/3b3b9ed45b17d0b6c9b353caad7a395bd8e741c0', 93),
(131, 'Supoptique', 'Supop', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/57c91334cf84dcef120682147ff325158edaf892', 95),
(132, 'Télecom ParisTech', 'Télécom Paris', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/e17f6753784f136d943c9176c06325016ef36adb', 100),
(133, 'ECAM', 'ECAM', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/799104a363b12d65f980a6effc06366420cd3031', 107),
(134, 'Itech', 'ITECH', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/dce51efdd3029b8a357a15be2862bb1323af155c', 110),
(135, 'Sigma Clermont', 'Sigma', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/087b6be69cc1701ee72bd38d24764e8ecda0f8c7', 115),
(136, 'Mines de Paris', 'Mines Paris', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/17a871629a54bdf70bd342cc44e4bdfe91cf3510', 118),
(137, 'Télécom INT', 'INT', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/8a1d89567c91ccbe759e30113a62094b4efea7e8', 122),
(138, 'Centrale Casablanca', 'ECC', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/c743ec9ee074d87b320f54e55ce5eb5d4b52dc46', 129),
(139, 'Ecole Centrale de Lyon', 'EC Lyon', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/3372b7ed1734fb4c9b97ff579402913594c14c45', 131),
(140, 'EPFL', 'EPFL', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/f807279721df7cb6929f7d0f8c267d70bc8b9cae', 143),
(141, 'ENSAM Aix-en-Provence', 'ENSAM AIX', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/0b05a15ae291349ae2e59296ef7b900f2324ae44', 145),
(142, 'EM Lyon', 'EM Lyon', 0, 1, 'http://challenger.eclair.ec-lyon.fr/image/5708eb6d738aebfc6ca6669ad7ad4078b8bc4436', 244);

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `id_equipe` int(11) NOT NULL,
  `nom_equipe` varchar(255) DEFAULT NULL,
  `id_ecole` int(11) DEFAULT NULL,
  `id_sport` int(11) DEFAULT NULL,
  `individuel` int(11) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `classement_indiv` int(11) DEFAULT NULL,
  `id_challenger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`id_equipe`, `nom_equipe`, `id_ecole`, `id_sport`, `individuel`, `numero`, `points`, `classement_indiv`, `id_challenger`) VALUES
(467, 'Mines de Nancy N°1', 93, 1, 0, 'N°1', 0, 1, 10),
(468, 'ENAC Toulouse N°1', 46, 1, 0, 'N°1', 0, 1, 22),
(469, 'Mines d\'Alès N°1', 48, 1, 0, 'N°1', 0, 1, 24),
(470, 'SeaTech N°1', 44, 1, 0, 'N°1', 0, 1, 44),
(471, 'Centrale Lille N°1', 1, 1, 0, 'N°1', 0, 1, 69),
(472, 'ISAE Supaero N°1', 34, 1, 0, 'N°1', 0, 1, 76),
(473, 'Supoptique N°1', 95, 1, 0, 'N°1', 0, 1, 100),
(474, 'Mines de Saint-Etienne N°1', 51, 1, 0, 'N°1', 0, 1, 111),
(475, 'Centrale Marseille N°1', 4, 1, 0, 'N°1', 0, 1, 136),
(476, 'Agro ParisTech N°1', 3, 1, 0, 'N°1', 0, 1, 139),
(477, 'ENSTA N°1', 30, 1, 0, 'N°1', 0, 1, 180),
(478, 'ENSIIE N°1', 28, 1, 0, 'N°1', 0, 1, 187),
(479, 'Télecom ParisTech N°1', 100, 1, 0, 'N°1', 0, 1, 194),
(480, 'ENSEA N°1', 89, 1, 0, 'N°1', 0, 1, 199),
(481, 'Mines de Paris N°1', 118, 1, 0, 'N°1', 0, 1, 251),
(482, 'Centrale Supelec N°1', 17, 1, 0, 'N°1', 0, 1, 262),
(483, 'Polytechnique N°1', 54, 1, 0, 'N°1', 0, 1, 282),
(484, 'EPFL N°1', 143, 1, 0, 'N°1', 0, 1, 318),
(485, 'ENS Lyon N°1', 25, 1, 0, 'N°1', 0, 1, 363),
(486, 'Itech N°1', 110, 1, 0, 'N°1', 0, 1, 375),
(487, 'Télécom INT N°1', 122, 1, 0, 'N°1', 0, 1, 392),
(488, 'Ecole Centrale de Lyon N°1', 131, 1, 0, 'N°1', 0, 1, 499),
(489, 'Ecole Centrale de Lyon N°2', 131, 1, 0, 'N°2', 0, 1, 500),
(490, 'Ecole Centrale de Lyon N°3', 131, 1, 0, 'N°3', 0, 1, 505),
(491, 'Ecole Centrale de Lyon N°4', 131, 1, 0, 'N°4', 0, 1, 506),
(492, 'Ecole Centrale de Lyon N°5', 131, 1, 0, 'N°5', 0, 1, 507),
(493, 'Ecole Centrale de Lyon N°6', 131, 1, 0, 'N°6', 0, 1, 508),
(494, 'Centrale Casablanca N°1', 129, 1, 0, 'N°1', 0, 1, 547),
(495, 'Mines de Nancy N°1', 93, 3, 0, 'N°1', 0, 1, 9),
(496, 'Mines d\'Alès N°1', 48, 3, 0, 'N°1', 0, 1, 36),
(497, 'ECAM N°1', 107, 3, 0, 'N°1', 0, 1, 60),
(498, 'Centrale Lille N°1', 1, 3, 0, 'N°1', 0, 1, 79),
(499, 'Supoptique N°1', 95, 3, 0, 'N°1', 0, 1, 103),
(500, 'Mines de Saint-Etienne N°1', 51, 3, 0, 'N°1', 0, 1, 110),
(501, 'Agro ParisTech N°1', 3, 3, 0, 'N°1', 0, 1, 117),
(502, 'Centrale Marseille N°1', 4, 3, 0, 'N°1', 0, 1, 142),
(503, 'ESPCI N°1', 20, 3, 0, 'N°1', 0, 1, 146),
(504, 'ENSTA N°1', 30, 3, 0, 'N°1', 0, 1, 184),
(505, 'Télecom ParisTech N°1', 100, 3, 0, 'N°1', 0, 1, 191),
(506, 'ENSEA N°1', 89, 3, 0, 'N°1', 0, 1, 203),
(507, 'Mines de Paris N°1', 118, 3, 0, 'N°1', 0, 1, 255),
(508, 'IMT Atlantique N°1', 91, 3, 0, 'N°1', 0, 1, 292),
(509, 'EPFL N°1', 143, 3, 0, 'N°1', 0, 1, 306),
(510, 'Centrale Supelec N°1', 17, 3, 0, 'N°1', 0, 1, 330),
(511, 'Ecole Centrale de Lyon N°1', 131, 3, 0, 'N°1', 0, 1, 509),
(512, 'Ecole Centrale de Lyon N°2', 131, 3, 0, 'N°2', 0, 1, 510),
(513, 'Ecole Centrale de Lyon N°3', 131, 3, 0, 'N°3', 0, 1, 511),
(514, 'ENSAM Cluny N°1', 87, 4, 0, 'N°1', 0, 1, 19),
(515, 'Mines d\'Alès N°1', 48, 4, 0, 'N°1', 0, 1, 23),
(516, 'Supoptique N°1', 95, 4, 0, 'N°1', 0, 1, 65),
(517, 'ISAE Supaero N°1', 34, 4, 0, 'N°1', 0, 1, 77),
(518, 'Centrale Lille N°1', 1, 4, 0, 'N°1', 0, 1, 87),
(519, 'Centrale Supelec N°1', 17, 4, 0, 'N°1', 0, 1, 120),
(520, 'Centrale Marseille N°1', 4, 4, 0, 'N°1', 0, 1, 134),
(521, 'Agro ParisTech N°1', 3, 4, 0, 'N°1', 0, 1, 138),
(522, 'ESPCI N°1', 20, 4, 0, 'N°1', 0, 1, 144),
(523, 'ENSEA N°1', 89, 4, 0, 'N°1', 0, 1, 201),
(524, 'Mines de Saint-Etienne N°1', 51, 4, 0, 'N°1', 0, 1, 206),
(525, 'ENSIIE N°1', 28, 4, 0, 'N°1', 0, 1, 208),
(526, 'ECAM N°1', 107, 4, 0, 'N°1', 0, 1, 215),
(527, 'Mines de Paris N°1', 118, 4, 0, 'N°1', 0, 1, 258),
(528, 'Télecom ParisTech N°1', 100, 4, 0, 'N°1', 0, 1, 273),
(529, 'Polytechnique N°1', 54, 4, 0, 'N°1', 0, 1, 279),
(530, 'IMT Atlantique N°1', 91, 4, 0, 'N°1', 0, 1, 297),
(531, 'EPFL N°1', 143, 4, 0, 'N°1', 0, 1, 304),
(532, 'CPE Lyon N°1', 83, 4, 0, 'N°1', 0, 1, 359),
(533, 'SeaTech N°1', 44, 4, 0, 'N°1', 0, 1, 377),
(534, 'Mines de Nancy N°1', 93, 4, 0, 'N°1', 0, 1, 396),
(535, 'ENSAM Aix-en-Provence N°1', 145, 4, 0, 'N°1', 0, 1, 420),
(536, 'Sigma Clermont N°1', 115, 4, 0, 'N°1', 0, 1, 424),
(537, 'ENS Lyon N°1', 25, 4, 0, 'N°1', 0, 1, 464),
(538, 'Ecole Centrale de Lyon N°1', 131, 4, 0, 'N°1', 0, 1, 486),
(539, 'Ecole Centrale de Lyon N°2', 131, 4, 0, 'N°2', 0, 1, 487),
(540, 'Ecole Centrale de Lyon N°3', 131, 4, 0, 'N°3', 0, 1, 488),
(541, 'Ecole Centrale de Lyon N°4', 131, 4, 0, 'N°4', 0, 1, 541),
(542, 'Centrale Casablanca N°1', 129, 4, 0, 'N°1', 0, 1, 550),
(543, 'Université de Seville N°1', 38, 5, 1, 'N°1', 0, 1, 49),
(544, 'Centrale Lille N°1', 1, 5, 1, 'N°1', 0, 1, 80),
(545, 'Télécom INT N°1', 122, 5, 1, 'N°1', 0, 1, 116),
(546, 'Centrale Supelec N°1', 17, 5, 1, 'N°1', 0, 1, 252),
(547, 'Télecom ParisTech N°1', 100, 5, 1, 'N°1', 0, 1, 277),
(548, 'Chimie ParisTech N°1', 10, 5, 1, 'N°1', 0, 1, 291),
(549, 'ENTPE Lyon N°1', 32, 5, 1, 'N°1', 0, 1, 300),
(550, 'SeaTech N°1', 44, 5, 1, 'N°1', 0, 1, 336),
(551, 'Mines de Paris N°1', 118, 5, 1, 'N°1', 0, 1, 340),
(552, 'Centrale Marseille N°1', 4, 5, 1, 'N°1', 0, 1, 345),
(553, 'ENSTA N°1', 30, 5, 1, 'N°1', 0, 1, 346),
(554, 'ENSAM Cluny N°1', 87, 5, 1, 'N°1', 0, 1, 405),
(555, 'Mines d\'Alès N°1', 48, 5, 1, 'N°1', 0, 1, 427),
(556, 'Ecole Centrale de Lyon N°1', 131, 5, 1, 'N°1', 0, 1, 477),
(557, 'Mines de Nancy N°1', 93, 6, 0, 'N°1', 0, 1, 8),
(558, 'Mines d\'Alès N°1', 48, 6, 0, 'N°1', 0, 1, 33),
(559, 'Centrale Lille N°1', 1, 6, 0, 'N°1', 0, 1, 34),
(560, 'Centrale Marseille N°1', 4, 6, 0, 'N°1', 0, 1, 57),
(561, 'Agro ParisTech N°1', 3, 6, 0, 'N°1', 0, 1, 156),
(562, 'ENS Lyon N°1', 25, 6, 0, 'N°1', 0, 1, 211),
(563, 'IMT Atlantique N°1', 91, 6, 0, 'N°1', 0, 1, 294),
(564, 'Centrale Supelec N°1', 17, 6, 0, 'N°1', 0, 1, 314),
(565, 'ENSTA N°1', 30, 6, 0, 'N°1', 0, 1, 350),
(566, 'Mines de Saint-Etienne N°1', 51, 6, 0, 'N°1', 0, 1, 353),
(567, 'Centrale Casablanca N°1', 129, 6, 0, 'N°1', 0, 1, 473),
(568, 'Ecole Centrale de Lyon N°1', 131, 6, 0, 'N°1', 0, 1, 489),
(569, 'Ecole Centrale de Lyon N°2', 131, 6, 0, 'N°2', 0, 1, 490),
(570, 'Ecole Centrale de Lyon N°3', 131, 6, 0, 'N°3', 0, 1, 493),
(571, 'Centrale Lille N°1', 1, 8, 1, 'N°1', 0, 1, 82),
(572, 'ISAE Supaero N°1', 34, 8, 1, 'N°1', 0, 1, 123),
(573, 'ENTPE Lyon N°1', 32, 8, 1, 'N°1', 0, 1, 305),
(574, 'Centrale Marseille N°1', 4, 8, 1, 'N°1', 0, 1, 344),
(575, 'Supoptique N°1', 95, 8, 1, 'N°1', 0, 1, 361),
(576, 'Télécom INT N°1', 122, 8, 1, 'N°1', 0, 1, 393),
(577, 'Mines de Nancy N°1', 93, 8, 1, 'N°1', 0, 1, 401),
(578, 'ENSEA N°1', 89, 8, 1, 'N°1', 0, 1, 416),
(579, 'Mines d\'Alès N°1', 48, 8, 1, 'N°1', 0, 1, 450),
(580, 'Ecole Centrale de Lyon N°1', 131, 8, 1, 'N°1', 0, 1, 494),
(581, 'Télécom INT N°1', 122, 9, 1, 'N°1', 0, 1, 48),
(582, 'Université de Seville N°1', 38, 9, 1, 'N°1', 0, 1, 52),
(583, 'Télecom ParisTech N°1', 100, 9, 1, 'N°1', 0, 1, 58),
(584, 'EPFL N°1', 143, 9, 1, 'N°1', 0, 1, 64),
(585, 'Polytechnique N°1', 54, 9, 1, 'N°1', 0, 1, 115),
(586, 'ISAE Supaero N°1', 34, 9, 1, 'N°1', 0, 1, 127),
(587, 'Centrale Supelec N°1', 17, 9, 1, 'N°1', 0, 1, 135),
(588, 'Chimie ParisTech N°1', 10, 9, 1, 'N°1', 0, 1, 196),
(589, 'Centrale Nantes N°1', 8, 9, 1, 'N°1', 0, 1, 228),
(590, 'Mines de Paris N°1', 118, 9, 1, 'N°1', 0, 1, 247),
(591, 'ENS Lyon N°1', 25, 9, 1, 'N°1', 0, 1, 283),
(592, 'IMT Atlantique N°1', 91, 9, 1, 'N°1', 0, 1, 293),
(593, 'Mines de Saint-Etienne N°1', 51, 9, 1, 'N°1', 0, 1, 357),
(594, 'Agro ParisTech N°1', 3, 9, 1, 'N°1', 0, 1, 364),
(595, 'Centrale Marseille N°1', 4, 9, 1, 'N°1', 0, 1, 376),
(596, 'ENAC Toulouse N°1', 46, 9, 1, 'N°1', 0, 1, 391),
(597, 'ENSAM Cluny N°1', 87, 9, 1, 'N°1', 0, 1, 407),
(598, 'Mines d\'Alès N°1', 48, 9, 1, 'N°1', 0, 1, 451),
(599, 'Ecole Centrale de Lyon N°1', 131, 9, 1, 'N°1', 0, 1, 495),
(600, 'Centrale Lille N°1', 1, 11, 1, 'N°1', 0, 1, 67),
(601, 'Agro ParisTech N°1', 3, 11, 1, 'N°1', 0, 1, 70),
(602, 'ISAE Supaero N°1', 34, 11, 1, 'N°1', 0, 1, 131),
(603, 'Centrale Marseille N°1', 4, 11, 1, 'N°1', 0, 1, 177),
(604, 'Centrale Nantes N°1', 8, 11, 1, 'N°1', 0, 1, 232),
(605, 'Mines de Nancy N°1', 93, 11, 1, 'N°1', 0, 1, 399),
(606, 'Sigma Clermont N°1', 115, 11, 1, 'N°1', 0, 1, 425),
(607, 'Ecole Centrale de Lyon N°1', 131, 11, 1, 'N°1', 0, 1, 531),
(608, 'Mines de Nancy N°1', 93, 12, 0, 'N°1', 0, 1, 11),
(609, 'Itech N°1', 110, 12, 0, 'N°1', 0, 1, 16),
(610, 'Mines d\'Alès N°1', 48, 12, 0, 'N°1', 0, 1, 37),
(611, 'Télécom INT N°1', 122, 12, 0, 'N°1', 0, 1, 46),
(612, 'Centrale Lille N°1', 1, 12, 0, 'N°1', 0, 1, 53),
(613, 'SeaTech N°1', 44, 12, 0, 'N°1', 0, 1, 54),
(614, 'Agro ParisTech N°1', 3, 12, 0, 'N°1', 0, 1, 140),
(615, 'ESPCI N°1', 20, 12, 0, 'N°1', 0, 1, 145),
(616, 'Centrale Marseille N°1', 4, 12, 0, 'N°1', 0, 1, 171),
(617, 'Mines de Saint-Etienne N°1', 51, 12, 0, 'N°1', 0, 1, 209),
(618, 'Télecom ParisTech N°1', 100, 12, 0, 'N°1', 0, 1, 275),
(619, 'IMT Atlantique N°1', 91, 12, 0, 'N°1', 0, 1, 285),
(620, 'Centrale Supelec N°1', 17, 12, 0, 'N°1', 0, 1, 320),
(621, 'Mines de Paris N°1', 118, 12, 0, 'N°1', 0, 1, 341),
(622, 'ECAM N°1', 107, 12, 0, 'N°1', 0, 1, 351),
(623, 'Polytechnique N°1', 54, 12, 0, 'N°1', 0, 1, 362),
(624, 'EPFL N°1', 143, 12, 0, 'N°1', 0, 1, 408),
(625, 'ENSAM Bordeaux N°1', 26, 12, 0, 'N°1', 0, 1, 409),
(626, 'ENS Lyon N°1', 25, 12, 0, 'N°1', 0, 1, 435),
(627, 'Ecole Centrale de Lyon N°1', 131, 12, 0, 'N°1', 0, 1, 512),
(628, 'Ecole Centrale de Lyon N°2', 131, 12, 0, 'N°2', 0, 1, 513),
(629, 'Ecole Centrale de Lyon N°5', 131, 12, 0, 'N°5', 0, 1, 517),
(630, 'Ecole Centrale de Lyon N°4', 131, 12, 0, 'N°4', 0, 1, 545),
(631, 'Itech N°1', 110, 13, 0, 'N°1', 0, 1, 15),
(632, 'Mines d\'Alès N°1', 48, 13, 0, 'N°1', 0, 1, 43),
(633, 'Centrale Lille N°1', 1, 13, 0, 'N°1', 0, 1, 78),
(634, 'Supoptique N°1', 95, 13, 0, 'N°1', 0, 1, 107),
(635, 'ISAE Supaero N°1', 34, 13, 0, 'N°1', 0, 1, 128),
(636, 'Agro ParisTech N°1', 3, 13, 0, 'N°1', 0, 1, 137),
(637, 'Centrale Marseille N°1', 4, 13, 0, 'N°1', 0, 1, 148),
(638, 'Polytechnique N°1', 54, 13, 0, 'N°1', 0, 1, 189),
(639, 'Chimie ParisTech N°1', 10, 13, 0, 'N°1', 0, 1, 195),
(640, 'Centrale Supelec N°1', 17, 13, 0, 'N°1', 0, 1, 212),
(641, 'Mines de Paris N°1', 118, 13, 0, 'N°1', 0, 1, 394),
(642, 'Mines de Nancy N°1', 93, 13, 0, 'N°1', 0, 1, 395),
(643, 'ENS Lyon N°1', 25, 13, 0, 'N°1', 0, 1, 428),
(644, 'Ecole Centrale de Lyon N°1', 131, 13, 0, 'N°1', 0, 1, 515),
(645, 'Ecole Centrale de Lyon N°2', 131, 13, 0, 'N°2', 0, 1, 546),
(646, 'Télécom INT N°1', 122, 14, 1, 'N°1', 0, 1, 45),
(647, 'Navale N°1', 36, 14, 1, 'N°1', 0, 1, 101),
(648, 'Centrale Marseille N°1', 4, 14, 1, 'N°1', 0, 1, 166),
(649, 'ENSTA N°1', 30, 14, 1, 'N°1', 0, 1, 183),
(650, 'ENSEA N°1', 89, 14, 1, 'N°1', 0, 1, 204),
(651, 'Centrale Supelec N°1', 17, 14, 1, 'N°1', 0, 1, 222),
(652, 'Centrale Nantes N°1', 8, 14, 1, 'N°1', 0, 1, 223),
(653, 'Polytechnique N°1', 54, 14, 1, 'N°1', 0, 1, 235),
(654, 'Mines de Paris N°1', 118, 14, 1, 'N°1', 0, 1, 248),
(655, 'Chimie ParisTech N°1', 10, 14, 1, 'N°1', 0, 1, 298),
(656, 'Centrale Lille N°1', 1, 14, 1, 'N°1', 0, 1, 333),
(657, 'Agro ParisTech N°1', 3, 14, 1, 'N°1', 0, 1, 335),
(658, 'Mines d\'Alès N°1', 48, 14, 1, 'N°1', 0, 1, 443),
(659, 'Ecole Centrale de Lyon N°1', 131, 14, 1, 'N°1', 0, 1, 518),
(660, 'Navale N°1', 36, 15, 1, 'N°1', 0, 1, 104),
(661, 'Agro ParisTech N°1', 3, 15, 1, 'N°1', 0, 1, 153),
(662, 'Centrale Supelec N°1', 17, 15, 1, 'N°1', 0, 1, 213),
(663, 'Centrale Nantes N°1', 8, 15, 1, 'N°1', 0, 1, 229),
(664, 'Polytechnique N°1', 54, 15, 1, 'N°1', 0, 1, 242),
(665, 'Mines de Paris N°1', 118, 15, 1, 'N°1', 0, 1, 259),
(666, 'ENSEA N°1', 89, 15, 1, 'N°1', 0, 1, 319),
(667, 'Télécom INT N°1', 122, 15, 1, 'N°1', 0, 1, 325),
(668, 'Centrale Lille N°1', 1, 15, 1, 'N°1', 0, 1, 331),
(669, 'Mines de Saint-Etienne N°1', 51, 15, 1, 'N°1', 0, 1, 354),
(670, 'Itech N°1', 110, 15, 1, 'N°1', 0, 1, 374),
(671, 'Mines de Nancy N°1', 93, 15, 1, 'N°1', 0, 1, 400),
(672, 'IMT Atlantique N°1', 91, 15, 1, 'N°1', 0, 1, 413),
(673, 'Mines d\'Alès N°1', 48, 15, 1, 'N°1', 0, 1, 441),
(674, 'Sigma Clermont N°1', 115, 15, 1, 'N°1', 0, 1, 460),
(675, 'ENSTA N°1', 30, 15, 1, 'N°1', 0, 1, 469),
(676, 'Ecole Centrale de Lyon N°1', 131, 15, 1, 'N°1', 0, 1, 519),
(677, 'EPFL N°1', 143, 16, 0, 'N°1', 0, 1, 41),
(678, 'Centrale Lille N°1', 1, 16, 0, 'N°1', 0, 1, 50),
(679, 'Télécom INT N°1', 122, 16, 0, 'N°1', 0, 1, 75),
(680, 'Agro ParisTech N°1', 3, 16, 0, 'N°1', 0, 1, 92),
(681, 'Navale N°1', 36, 16, 0, 'N°1', 0, 1, 102),
(682, 'ESPCI N°1', 20, 16, 0, 'N°1', 0, 1, 149),
(683, 'ISAE Supaero N°1', 34, 16, 0, 'N°1', 0, 1, 164),
(684, 'Centrale Marseille N°1', 4, 16, 0, 'N°1', 0, 1, 173),
(685, 'ENSIIE N°1', 28, 16, 0, 'N°1', 0, 1, 185),
(686, 'ENSEA N°1', 89, 16, 0, 'N°1', 0, 1, 205),
(687, 'Centrale Nantes N°1', 8, 16, 0, 'N°1', 0, 1, 233),
(688, 'Polytechnique N°1', 54, 16, 0, 'N°1', 0, 1, 234),
(689, 'Mines de Paris N°1', 118, 16, 0, 'N°1', 0, 1, 250),
(690, 'Centrale Supelec N°1', 17, 16, 0, 'N°1', 0, 1, 253),
(691, 'ENAC Toulouse N°1', 46, 16, 0, 'N°1', 0, 1, 385),
(692, 'Mines de Nancy N°1', 93, 16, 0, 'N°1', 0, 1, 386),
(693, 'Sigma Clermont N°1', 115, 16, 0, 'N°1', 0, 1, 423),
(694, 'Mines d\'Alès N°1', 48, 16, 0, 'N°1', 0, 1, 447),
(695, 'Ecole Centrale de Lyon N°1', 131, 16, 0, 'N°1', 0, 1, 530),
(696, 'Mines de Nancy N°1', 93, 17, 0, 'N°1', 0, 1, 7),
(697, 'Mines d\'Alès N°1', 48, 17, 0, 'N°1', 0, 1, 28),
(698, 'ECAM N°1', 107, 17, 0, 'N°1', 0, 1, 62),
(699, 'ENSAM Bordeaux N°1', 26, 17, 0, 'N°1', 0, 1, 72),
(700, 'Centrale Lille N°1', 1, 17, 0, 'N°1', 0, 1, 93),
(701, 'ENSAM Aix-en-Provence N°1', 145, 17, 0, 'N°1', 0, 1, 121),
(702, 'ISAE Supaero N°1', 34, 17, 0, 'N°1', 0, 1, 124),
(703, 'ENSTA N°1', 30, 17, 0, 'N°1', 0, 1, 179),
(704, 'Centrale Supelec N°1', 17, 17, 0, 'N°1', 0, 1, 220),
(705, 'IMT Atlantique N°1', 91, 17, 0, 'N°1', 0, 1, 264),
(706, 'ENSAM Cluny N°1', 87, 17, 0, 'N°1', 0, 1, 370),
(707, 'ENS Lyon N°1', 25, 17, 0, 'N°1', 0, 1, 438),
(708, 'Ecole Centrale de Lyon N°1', 131, 17, 0, 'N°1', 0, 1, 501),
(709, 'Ecole Centrale de Lyon N°2', 131, 17, 0, 'N°2', 0, 1, 502),
(710, 'Ecole Centrale de Lyon N°3', 131, 17, 0, 'N°3', 0, 1, 503),
(711, 'Mines d\'Alès N°1', 48, 18, 0, 'N°1', 0, 1, 35),
(712, 'Centrale Lille N°1', 1, 18, 0, 'N°1', 0, 1, 106),
(713, 'Mines de Saint-Etienne N°1', 51, 18, 0, 'N°1', 0, 1, 113),
(714, 'ISAE Supaero N°1', 34, 18, 0, 'N°1', 0, 1, 129),
(715, 'Centrale Marseille N°1', 4, 18, 0, 'N°1', 0, 1, 150),
(716, 'Agro ParisTech N°1', 3, 18, 0, 'N°1', 0, 1, 155),
(717, 'Centrale Supelec N°1', 17, 18, 0, 'N°1', 0, 1, 221),
(718, 'ENTPE Lyon N°1', 32, 18, 0, 'N°1', 0, 1, 324),
(719, 'Ecole Centrale de Lyon N°1', 131, 18, 0, 'N°1', 0, 1, 504),
(720, 'Ecole Centrale de Lyon N°2', 131, 18, 0, 'N°2', 0, 1, 538),
(721, 'Télecom ParisTech N°1', 100, 19, 1, 'N°1', 0, 1, 59),
(722, 'ISAE Supaero N°1', 34, 19, 1, 'N°1', 0, 1, 88),
(723, 'Centrale Lille N°1', 1, 19, 1, 'N°1', 0, 1, 94),
(724, 'Agro ParisTech N°1', 3, 19, 1, 'N°1', 0, 1, 98),
(725, 'Chimie ParisTech N°1', 10, 19, 1, 'N°1', 0, 1, 198),
(726, 'Centrale Nantes N°1', 8, 19, 1, 'N°1', 0, 1, 226),
(727, 'ENS Lyon N°1', 25, 19, 1, 'N°1', 0, 1, 281),
(728, 'Supoptique N°1', 95, 19, 1, 'N°1', 0, 1, 328),
(729, 'ENAC Toulouse N°1', 46, 19, 1, 'N°1', 0, 1, 380),
(730, 'CESI N°1', 23, 19, 1, 'N°1', 0, 1, 465),
(731, 'Ecole Centrale de Lyon N°1', 131, 19, 1, 'N°1', 0, 1, 532),
(732, 'Mines de Nancy N°1', 93, 20, 1, 'N°1', 0, 1, 13),
(733, 'ENAC Toulouse N°1', 46, 20, 1, 'N°1', 0, 1, 21),
(734, 'Université de Seville N°1', 38, 20, 1, 'N°1', 0, 1, 51),
(735, 'SeaTech N°1', 44, 20, 1, 'N°1', 0, 1, 71),
(736, 'Télécom INT N°1', 122, 20, 1, 'N°1', 0, 1, 74),
(737, 'Agro ParisTech N°1', 3, 20, 1, 'N°1', 0, 1, 97),
(738, 'Centrale Supelec N°1', 17, 20, 1, 'N°1', 0, 1, 122),
(739, 'ISAE Supaero N°1', 34, 20, 1, 'N°1', 0, 1, 162),
(740, 'Centrale Marseille N°1', 4, 20, 1, 'N°1', 0, 1, 163),
(741, 'ENSTA N°1', 30, 20, 1, 'N°1', 0, 1, 181),
(742, 'ENSIIE N°1', 28, 20, 1, 'N°1', 0, 1, 186),
(743, 'Chimie ParisTech N°1', 10, 20, 1, 'N°1', 0, 1, 197),
(744, 'Centrale Nantes N°1', 8, 20, 1, 'N°1', 0, 1, 224),
(745, 'ENSAM Cluny N°1', 87, 20, 1, 'N°1', 0, 1, 286),
(746, 'IMT Atlantique N°1', 91, 20, 1, 'N°1', 0, 1, 289),
(747, 'EPFL N°1', 143, 20, 1, 'N°1', 0, 1, 308),
(748, 'Centrale Lille N°1', 1, 20, 1, 'N°1', 0, 1, 322),
(749, 'Mines de Paris N°1', 118, 20, 1, 'N°1', 0, 1, 343),
(750, 'Mines de Saint-Etienne N°1', 51, 20, 1, 'N°1', 0, 1, 356),
(751, 'Ecole Centrale de Lyon N°1', 131, 20, 1, 'N°1', 0, 1, 521),
(752, 'Centrale Lille N°1', 1, 21, 1, 'N°1', 0, 1, 86),
(753, 'Mines de Saint-Etienne N°1', 51, 21, 1, 'N°1', 0, 1, 114),
(754, 'ISAE Supaero N°1', 34, 21, 1, 'N°1', 0, 1, 133),
(755, 'Centrale Marseille N°1', 4, 21, 1, 'N°1', 0, 1, 169),
(756, 'Centrale Nantes N°1', 8, 21, 1, 'N°1', 0, 1, 227),
(757, 'Mines de Paris N°1', 118, 21, 1, 'N°1', 0, 1, 249),
(758, 'EPFL N°1', 143, 21, 1, 'N°1', 0, 1, 267),
(759, 'Chimie ParisTech N°1', 10, 21, 1, 'N°1', 0, 1, 295),
(760, 'Centrale Supelec N°1', 17, 21, 1, 'N°1', 0, 1, 315),
(761, 'ENTPE Lyon N°1', 32, 21, 1, 'N°1', 0, 1, 327),
(762, 'Mines de Nancy N°1', 93, 21, 1, 'N°1', 0, 1, 398),
(763, 'ENSEA N°1', 89, 21, 1, 'N°1', 0, 1, 417),
(764, 'Ecole Centrale de Lyon N°1', 131, 21, 1, 'N°1', 0, 1, 522),
(765, 'EM Lyon N°1', 244, 21, 1, 'N°1', 0, 1, 537),
(766, 'Centrale Casablanca N°1', 129, 21, 1, 'N°1', 0, 1, 553),
(767, 'EPFL N°1', 143, 22, 0, 'N°1', 0, 1, 42),
(768, 'ISAE Supaero N°1', 34, 22, 0, 'N°1', 0, 1, 89),
(769, 'Centrale Marseille N°1', 4, 22, 0, 'N°1', 0, 1, 160),
(770, 'ENSEA N°1', 89, 22, 0, 'N°1', 0, 1, 200),
(771, 'ENS Lyon N°1', 25, 22, 0, 'N°1', 0, 1, 210),
(772, 'Centrale Nantes N°1', 8, 22, 0, 'N°1', 0, 1, 231),
(773, 'Polytechnique N°1', 54, 22, 0, 'N°1', 0, 1, 236),
(774, 'ENTPE Lyon N°1', 32, 22, 0, 'N°1', 0, 1, 302),
(775, 'Centrale Supelec N°1', 17, 22, 0, 'N°1', 0, 1, 316),
(776, 'Centrale Lille N°1', 1, 22, 0, 'N°1', 0, 1, 332),
(777, 'Mines de Nancy N°1', 93, 22, 0, 'N°1', 0, 1, 397),
(778, 'Mines d\'Alès N°1', 48, 22, 0, 'N°1', 0, 1, 455),
(779, 'Ecole Centrale de Lyon N°1', 131, 22, 0, 'N°1', 0, 1, 523),
(780, 'Mines de Nancy N°1', 93, 24, 0, 'N°1', 0, 1, 6),
(781, 'ENSAM Cluny N°1', 87, 24, 0, 'N°1', 0, 1, 18),
(782, 'Mines d\'Alès N°1', 48, 24, 0, 'N°1', 0, 1, 29),
(783, 'EPFL N°1', 143, 24, 0, 'N°1', 0, 1, 40),
(784, 'Télécom INT N°1', 122, 24, 0, 'N°1', 0, 1, 47),
(785, 'Supoptique N°1', 95, 24, 0, 'N°1', 0, 1, 66),
(786, 'ISAE Supaero N°1', 34, 24, 0, 'N°1', 0, 1, 90),
(787, 'Centrale Lille N°1', 1, 24, 0, 'N°1', 0, 1, 99),
(788, 'Centrale Marseille N°1', 4, 24, 0, 'N°1', 0, 1, 151),
(789, 'ENSIIE N°1', 28, 24, 0, 'N°1', 0, 1, 188),
(790, 'ENSEA N°1', 89, 24, 0, 'N°1', 0, 1, 202),
(791, 'IMT Atlantique N°1', 91, 24, 0, 'N°1', 0, 1, 219),
(792, 'Mines de Paris N°1', 118, 24, 0, 'N°1', 0, 1, 257),
(793, 'Centrale Supelec N°1', 17, 24, 0, 'N°1', 0, 1, 261),
(794, 'Télecom ParisTech N°1', 100, 24, 0, 'N°1', 0, 1, 274),
(795, 'Chimie ParisTech N°1', 10, 24, 0, 'N°1', 0, 1, 296),
(796, 'EM Lyon N°1', 244, 24, 0, 'N°1', 0, 1, 309),
(797, 'Agro ParisTech N°1', 3, 24, 0, 'N°1', 0, 1, 334),
(798, 'ENSTA N°1', 30, 24, 0, 'N°1', 0, 1, 348),
(799, 'Mines de Saint-Etienne N°1', 51, 24, 0, 'N°1', 0, 1, 355),
(800, 'Polytechnique N°1', 54, 24, 0, 'N°1', 0, 1, 365),
(801, 'ENAC Toulouse N°1', 46, 24, 0, 'N°1', 0, 1, 378),
(802, 'Sigma Clermont N°1', 115, 24, 0, 'N°1', 0, 1, 421),
(803, 'ENS Lyon N°1', 25, 24, 0, 'N°1', 0, 1, 434),
(804, 'Ecole Centrale de Lyon N°1', 131, 24, 0, 'N°1', 0, 1, 525),
(805, 'Ecole Centrale de Lyon N°2', 131, 24, 0, 'N°2', 0, 1, 526),
(806, 'Ecole Centrale de Lyon N°3', 131, 24, 0, 'N°3', 0, 1, 527),
(807, 'Centrale Casablanca N°1', 129, 24, 0, 'N°1', 0, 1, 551),
(808, 'Mines de Nancy N°1', 93, 25, 0, 'N°1', 0, 1, 5),
(809, 'ENAC Toulouse N°1', 46, 25, 0, 'N°1', 0, 1, 20),
(810, 'Mines d\'Alès N°1', 48, 25, 0, 'N°1', 0, 1, 30),
(811, 'EPFL N°1', 143, 25, 0, 'N°1', 0, 1, 63),
(812, 'Supoptique N°1', 95, 25, 0, 'N°1', 0, 1, 105),
(813, 'ESPCI N°1', 20, 25, 0, 'N°1', 0, 1, 147),
(814, 'Centrale Marseille N°1', 4, 25, 0, 'N°1', 0, 1, 152),
(815, 'Agro ParisTech N°1', 3, 25, 0, 'N°1', 0, 1, 157),
(816, 'ENSTA N°1', 30, 25, 0, 'N°1', 0, 1, 182),
(817, 'Mines de Saint-Etienne N°1', 51, 25, 0, 'N°1', 0, 1, 207),
(818, 'ENS Lyon N°1', 25, 25, 0, 'N°1', 0, 1, 278),
(819, 'Centrale Lille N°1', 1, 25, 0, 'N°1', 0, 1, 321),
(820, 'Mines de Paris N°1', 118, 25, 0, 'N°1', 0, 1, 342),
(821, 'CPE Lyon N°1', 83, 25, 0, 'N°1', 0, 1, 368),
(822, 'Ecole Centrale de Lyon N°1', 131, 25, 0, 'N°1', 0, 1, 528),
(823, 'Ecole Centrale de Lyon N°2', 131, 25, 0, 'N°2', 0, 1, 534),
(824, 'Mines de Nancy N°1', 93, 27, 0, 'N°1', 0, 1, 12),
(825, 'ISAE Supaero N°1', 34, 27, 0, 'N°1', 0, 1, 125),
(826, 'Centrale Supelec N°1', 17, 27, 0, 'N°1', 0, 1, 214),
(827, 'Centrale Nantes N°1', 8, 27, 0, 'N°1', 0, 1, 230),
(828, 'Mines d\'Alès N°1', 48, 27, 0, 'N°1', 0, 1, 442),
(829, 'Ecole Centrale de Lyon N°1', 131, 27, 0, 'N°1', 0, 1, 524),
(830, 'ECAM N°1', 107, 28, 0, 'N°1', 0, 1, 4),
(831, 'Télécom INT N°1', 122, 28, 0, 'N°1', 0, 1, 73),
(832, 'Centrale Lille N°1', 1, 28, 0, 'N°1', 0, 1, 83),
(833, 'ISAE Supaero N°1', 34, 28, 0, 'N°1', 0, 1, 126),
(834, 'Centrale Marseille N°1', 4, 28, 0, 'N°1', 0, 1, 165),
(835, 'Agro ParisTech N°1', 3, 28, 0, 'N°1', 0, 1, 360),
(836, 'Supoptique N°1', 95, 28, 0, 'N°1', 0, 1, 369),
(837, 'SeaTech N°1', 44, 28, 0, 'N°1', 0, 1, 387),
(838, 'Mines de Nancy N°1', 93, 28, 0, 'N°1', 0, 1, 402),
(839, 'Itech N°1', 110, 28, 0, 'N°1', 0, 1, 403),
(840, 'ENSEA N°1', 89, 28, 0, 'N°1', 0, 1, 415),
(841, 'Mines d\'Alès N°1', 48, 28, 0, 'N°1', 0, 1, 454),
(842, 'Ecole Centrale de Lyon N°1', 131, 28, 0, 'N°1', 0, 1, 520),
(843, 'Ecole Centrale de Lyon N°2', 131, 28, 0, 'N°2', 0, 1, 560),
(844, 'Ecole Centrale de Lyon N°3', 131, 28, 0, 'N°3', 0, 1, 561),
(845, 'Ecole Centrale de Lyon N°4', 131, 28, 0, 'N°4', 0, 1, 562),
(846, 'Ecole Centrale de Lyon N°5', 131, 28, 0, 'N°5', 0, 1, 563),
(847, 'Ecole Centrale de Lyon N°6', 131, 28, 0, 'N°6', 0, 1, 564),
(848, 'Ecole Centrale de Lyon N°7', 131, 28, 0, 'N°7', 0, 1, 565),
(849, 'Ecole Centrale de Lyon N°8', 131, 28, 0, 'N°8', 0, 1, 566),
(850, 'ESPCI N°1', 20, 39, 1, 'N°1', 0, 1, 154),
(851, 'Centrale Marseille N°1', 4, 39, 1, 'N°1', 0, 1, 168),
(852, 'Supoptique N°1', 95, 39, 1, 'N°1', 0, 1, 329),
(853, 'ENAC Toulouse N°1', 46, 39, 1, 'N°1', 0, 1, 379),
(854, 'Mines d\'Alès N°1', 48, 39, 1, 'N°1', 0, 1, 453),
(855, 'Télecom ParisTech N°1', 100, 39, 1, 'N°1', 0, 1, 468),
(856, 'Ecole Centrale de Lyon N°1', 131, 39, 1, 'N°1', 0, 1, 496),
(857, 'ENTPE Lyon N°1', 32, 40, 1, 'N°1', 0, 1, 61),
(858, 'Centrale Marseille N°1', 4, 40, 1, 'N°1', 0, 1, 167),
(859, 'Supoptique N°1', 95, 40, 1, 'N°1', 0, 1, 176),
(860, 'EPFL N°1', 143, 40, 1, 'N°1', 0, 1, 317),
(861, 'Mines de Saint-Etienne N°1', 51, 40, 1, 'N°1', 0, 1, 358),
(862, 'ENSEA N°1', 89, 40, 1, 'N°1', 0, 1, 414),
(863, 'Ecole Centrale de Lyon N°1', 131, 40, 1, 'N°1', 0, 1, 497),
(864, 'Télécom INT N°1', 122, 42, 1, 'N°1', 0, 1, 119),
(865, 'ESPCI N°1', 20, 42, 1, 'N°1', 0, 1, 175),
(866, 'Supoptique N°1', 95, 42, 1, 'N°1', 0, 1, 276),
(867, 'IMT Atlantique N°1', 91, 42, 1, 'N°1', 0, 1, 406),
(868, 'Ecole Centrale de Lyon N°1', 131, 42, 1, 'N°1', 0, 1, 498),
(869, 'Télécom INT N°1', 122, 50, 0, 'N°1', 0, 1, 55),
(870, 'Télécom INT N°2', 122, 50, 0, 'N°2', 0, 1, 56),
(871, 'Agro ParisTech N°1', 3, 50, 0, 'N°1', 0, 1, 91),
(872, 'ISAE Supaero N°1', 34, 50, 0, 'N°1', 0, 1, 130),
(873, 'Centrale Marseille N°1', 4, 50, 0, 'N°1', 0, 1, 161),
(874, 'Polytechnique N°1', 54, 50, 0, 'N°1', 0, 1, 190),
(875, 'Centrale Supelec N°1', 17, 50, 0, 'N°1', 0, 1, 216),
(876, 'Centrale Nantes N°1', 8, 50, 0, 'N°1', 0, 1, 225),
(877, 'Mines de Paris N°1', 118, 50, 0, 'N°1', 0, 1, 246),
(878, 'IMT Atlantique N°1', 91, 50, 0, 'N°1', 0, 1, 266),
(879, 'ENS Lyon N°1', 25, 50, 0, 'N°1', 0, 1, 280),
(880, 'Centrale Nantes N°2', 8, 50, 0, 'N°2', 0, 1, 288),
(881, 'Chimie ParisTech N°1', 10, 50, 0, 'N°1', 0, 1, 290),
(882, 'EPFL N°1', 143, 50, 0, 'N°1', 0, 1, 307),
(883, 'ENSTA N°1', 30, 50, 0, 'N°1', 0, 1, 352),
(884, 'Centrale Lille N°1', 1, 50, 0, 'N°1', 0, 1, 371),
(885, 'Sigma Clermont N°1', 115, 50, 0, 'N°1', 0, 1, 390),
(886, 'Sigma Clermont N°3', 115, 50, 0, 'N°3', 0, 1, 426),
(887, 'Mines de Nancy équipe 1', 93, 50, 0, 'équipe 1', 0, 1, 431),
(888, 'Mines de Nancy équipe 2', 93, 50, 0, 'équipe 2', 0, 1, 432),
(889, 'Agro ParisTech N°2', 3, 50, 0, 'N°2', 0, 1, 433),
(890, 'Mines d\'Alès N°1', 48, 50, 0, 'N°1', 0, 1, 444),
(891, 'Mines d\'Alès N°2', 48, 50, 0, 'N°2', 0, 1, 445),
(892, 'Mines d\'Alès N°3', 48, 50, 0, 'N°3', 0, 1, 452),
(893, 'Ecole Centrale de Lyon N°1', 131, 50, 0, 'N°1', 0, 1, 478),
(894, 'Ecole Centrale de Lyon N°2', 131, 50, 0, 'N°2', 0, 1, 479),
(895, 'Ecole Centrale de Lyon N°3', 131, 50, 0, 'N°3', 0, 1, 480),
(896, 'Ecole Centrale de Lyon N°4', 131, 50, 0, 'N°4', 0, 1, 481),
(897, 'Ecole Centrale de Lyon N°5', 131, 50, 0, 'N°5', 0, 1, 482),
(898, 'Ecole Centrale de Lyon N°6', 131, 50, 0, 'N°6', 0, 1, 483),
(899, 'Ecole Centrale de Lyon N°7', 131, 50, 0, 'N°7', 0, 1, 484),
(900, 'Ecole Centrale de Lyon N°8', 131, 50, 0, 'N°8', 0, 1, 485);

-- --------------------------------------------------------

--
-- Structure de la table `equipesnavette`
--

CREATE TABLE `equipesnavette` (
  `id` int(11) NOT NULL,
  `id_navette` int(11) DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(500) DEFAULT NULL,
  `reponse` varchar(500) DEFAULT NULL,
  `titre` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `faq`
--

INSERT INTO `faq` (`id`, `question`, `reponse`, `titre`) VALUES
(2, 'Comment se rendre sur un site sportif ?', 'Si tu participes en tant que sportif, des navettes se chargent de t\'emmener sur le lieu de ton tournoi. Les participants des écoles lyonnaises doivent se rendre par leur propre moyen sur le site sportif.', 'Sport'),
(3, 'À quelle heure est ma navette ?', 'Les horaires des navettes sont transmises à ton capitaine et sont dans ton livret sportif.', 'Sport'),
(4, 'Comment connaître les horaires des matchs ?', 'Les horaires des matchs sont disponibles dans l\'onglet Sports, mais tu peux aussi demander à ton VP Tournoi.', 'Sport'),
(5, 'Comment savoir où se passent les matchs ?', 'Si tu souhaites assister à des matchs, les lieux se trouvent dans l\'onglet Sports et Plan.', 'Sport'),
(6, 'A quel moment se déroule la remise des prix ?', 'Les remises des prix des sports individuels ont lieu à la fin des finales de chaque sport. La remise des prix des sports collectifs se déroule le Dimanche à partir de 15h devant le foyer.', 'Sport'),
(7, 'Que faire si j\'ai perdu ma carte participant ?', 'Passe au point Info au M16.', 'Sport'),
(8, 'Que puis-je faire sur le Campus la journée avant la soirée ?', 'Samedi après-midi, des ostéopathes seront présents sur le campus de Centrale, n\'hésitez pas ! En soirée, venez encourager les finalistes au gymnase de Centrale. \n\nDimanche matin, participez aux nombreuses activités proposées : lasergame Forum Perspectives, baby-foot humain... Allez faire un tour sur le Village Challenge pour participer aux activités proposées par nos entreprises et associations partenaires !', 'Logistique'),
(9, 'Quelles sont les horaires d\'ouverture du Point Info ?', 'Le point Info ouvre le Vendredi de 21h à 1h, le Samedi à partir de 6h15, et le dimanche de 8h à 17h. Il se situe au M16.', 'Communication'),
(10, 'J\'ai des questions, à qui puis-je les poser ?', 'Si tu as des questions, passe au Point Info (qui se situe au M16).', 'Communication'),
(11, 'Comment joindre la Croix-Rouge ?', 'Tu peux les joindre via : au 04 82 53 91 15 ou au  06 52 47 53 57', 'Securite'),
(12, 'Comment me rendre à la Croix-Rouge ?', 'Pour trouver le point Croix-Rouge, regarde le plan du Campus dans l\'onglet Plan.', 'Securite'),
(13, 'Quel est le programme des soirées ?', 'Le programme complet de la soirée est donné dans ton livret participants. Jette aussi un œil à l\'onglet Calendrier.', 'Soiree'),
(14, 'Où peut-on recharger sa carte ?', 'Pour recharger ta carte, tu peux aller au point Info ou au stand de rechargement en face du foyer pendant la soirée.', 'Soiree'),
(15, 'Quand est-ce que se déroule le show pom-pom ?', 'Il se déroule le dimanche matin au gymnase de Centrale entre 11h30 et 13h30.', 'Sport'),
(16, 'Que faire si ma tente est endommagée ?', 'Passe au point Info, ils appelleront un Challenger en poste pour trouver une solution.', 'Logistique'),
(17, 'Quels sont les horaires et où se trouve la consigne ?', 'La consigne se situe dans le W1bis et est ouverte le vendredi de 20h à 1h, le samedi de 6h à 9h et de 17h à 22h et le dimanche de 9h à 18h.', 'Logistique'),
(18, 'Comment se déroule le tri des déchets ?', 'Des poubelles de tri sont disposées un peu partout sur le Campus : il y a à chaque fois un sac noir pour les déchets non recyclables, un sac blanc pour les recyclables et une poubelle à verre. Pense à trier tes déchets, et surtout les restes de ton pack-food ! Vas sur la page Développement Durable pour plus d’informations !', 'Logistique'),
(19, 'A quelle heure puis-je manger au RU ?', 'Samedi : de 6h à 8h30 puis de 18h30 à 22h. Dimanche : de 7h à 10h puis de 11h45 à 14h.', 'Repas'),
(20, ' Où puis-je récupérer le pack-food ?', 'Si tu es à Centrale, viens le chercher devant le foyer. Ailleurs, ton VP Tournoi te l\'apportera.', 'Repas'),
(21, 'Que faire si je n\'ai pas eu mon pack-food ?', 'Si tu es à Centrale, va devant le foyer au stand de distribution des packs-food. Ailleurs, demande à ton VP Tournoi d\'appeler un responsable.', 'Repas');

-- --------------------------------------------------------

--
-- Structure de la table `infos`
--

CREATE TABLE `infos` (
  `id_info` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_info` varchar(255) NOT NULL,
  `image_info` varchar(255) NOT NULL,
  `heure_info` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `infos`
--

INSERT INTO `infos` (`id_info`, `titre`, `contenu`, `date_info`, `image_info`, `heure_info`) VALUES
(1, 'HORAIRES du RU', 'Samedi : 6h-8h30 et 18h30-22h\r\nDimanche : 7h-10h et 11h45-14h', 'Jeudi 21 Mars', './Infos/20_02_51.png', '10:00'),
(2, 'Tri', 'Le Challenge est un événement éco-responsable : pensez à trier vos déchets et pack-foods pour laisser le campus et les sites sportifs propres.', 'Jeudi 21 Mars', './Infos/12_03_08.jpg', '10:00'),
(3, 'HORAIRES DE LA CONSIGNE', 'Située au bâtiment W1 bis. Pour laisser tes objets de valeur et recharger ton téléphone :\r\nVendredi : 20h-1h\r\nSamedi : 6h-9h et 17h-22h\r\nDimanche : 9h-18h \r\n', 'Jeudi 21 Mars', './Infos/20_03_51.jpg', '10:00'),
(4, 'Point info', 'Une question? Une urgence? Besoin de recharger ton téléphone? RDV au point info situé dans le hall du bâtiment M16. Il sera ouvert quasiment H24 tout le long de l\'événement', 'Jeudi 21 Mars', './Infos/21_21_17.png', '10:00'),
(5, 'PROGRAMME du CHALLENGE 2019', 'Retrouvez l\'intégralité du programme dans l\'onglet \"Programme\" de l\'application', 'Jeudi 21 Mars', './Infos/20_01_42.png', '10:00');

-- --------------------------------------------------------

--
-- Structure de la table `matchs`
--

CREATE TABLE `matchs` (
  `id_match` int(11) NOT NULL,
  `id_sport` int(11) DEFAULT NULL,
  `id_concurrent1` int(11) DEFAULT NULL,
  `id_concurrent2` int(11) DEFAULT NULL,
  `date_match` varchar(255) DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `score1` varchar(255) DEFAULT NULL,
  `score2` varchar(255) DEFAULT NULL,
  `id_phase` int(11) DEFAULT NULL,
  `forfait` int(11) DEFAULT NULL,
  `id_challenger` int(11) DEFAULT NULL,
  `phase` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matchs`
--

INSERT INTO `matchs` (`id_match`, `id_sport`, `id_concurrent1`, `id_concurrent2`, `date_match`, `lieu`, `score1`, `score2`, `id_phase`, `forfait`, `id_challenger`, `phase`) VALUES
(659, 1, 421, 422, '2019-03-23 09:00:00', '4', '', '', 15, 0, 478, 'Poule'),
(660, 1, 421, 423, '2019-03-23 10:00:00', '4', '', '', 15, 0, 479, 'Poule'),
(661, 1, 421, 424, '2019-03-23 11:00:00', '4', '', '', 15, 0, 480, 'Poule'),
(662, 1, 422, 423, '2019-03-23 10:40:00', '4', '', '', 15, 0, 481, 'Poule'),
(663, 1, 422, 424, '2019-03-23 09:40:00', '4', '', '', 15, 0, 482, 'Poule'),
(664, 1, 423, 424, '2019-03-23 08:40:00', '4', '', '', 15, 0, 483, 'Poule'),
(665, 1, 425, 426, '2019-03-23 08:00:00', '5', '', '', 15, 0, 484, 'Poule'),
(666, 1, 425, 427, '2019-03-23 09:00:00', '5', '', '', 15, 0, 485, 'Poule'),
(667, 1, 425, 428, '2019-03-23 10:00:00', '5', '', '', 15, 0, 486, 'Poule'),
(668, 1, 426, 427, '2019-03-23 10:20:00', '6', '', '', 15, 0, 487, 'Poule'),
(669, 1, 426, 428, '2019-03-23 09:00:00', '6', '', '', 15, 0, 488, 'Poule'),
(670, 1, 427, 428, '2019-03-23 08:00:00', '6', '', '', 15, 0, 489, 'Poule'),
(671, 1, 429, 430, '2019-03-23 08:40:00', '6', '', '', 15, 0, 490, 'Poule'),
(672, 1, 429, 431, '2019-03-23 11:00:00', '6', '', '', 15, 0, 491, 'Poule'),
(673, 1, 429, 432, '2019-03-23 10:00:00', '6', '', '', 15, 0, 492, 'Poule'),
(674, 1, 430, 431, '2019-03-23 09:40:00', '6', '', '', 15, 0, 493, 'Poule'),
(675, 1, 430, 432, '2019-03-23 10:40:00', '6', '', '', 15, 0, 494, 'Poule'),
(676, 1, 431, 432, '2019-03-23 08:20:00', '6', '', '', 15, 0, 495, 'Poule'),
(677, 1, 433, 434, '2019-03-23 10:20:00', '4', '', '', 15, 0, 496, 'Poule'),
(678, 1, 433, 435, '2019-03-23 09:20:00', '4', '', '', 15, 0, 497, 'Poule'),
(679, 1, 433, 436, '2019-03-23 08:20:00', '4', '', '', 15, 0, 498, 'Poule'),
(680, 1, 434, 435, '2019-03-23 08:00:00', '4', '', '', 15, 0, 499, 'Poule'),
(681, 1, 434, 436, '2019-03-23 09:20:00', '6', '', '', 15, 0, 500, 'Poule'),
(682, 1, 435, 436, '2019-03-23 10:20:00', '5', '', '', 15, 0, 501, 'Poule'),
(683, 1, 437, 438, '2019-03-23 08:40:00', '5', '', '', 15, 0, 502, 'Poule'),
(684, 1, 437, 439, '2019-03-23 09:20:00', '5', '', '', 15, 0, 503, 'Poule'),
(685, 1, 437, 440, '2019-03-23 10:40:00', '5', '', '', 15, 0, 504, 'Poule'),
(686, 1, 438, 439, '2019-03-23 11:00:00', '5', '', '', 15, 0, 505, 'Poule'),
(687, 1, 438, 440, '2019-03-23 09:40:00', '5', '', '', 15, 0, 506, 'Poule'),
(688, 1, 439, 440, '2019-03-23 08:20:00', '5', '', '', 15, 0, 507, 'Poule'),
(689, 1, 441, 442, '2019-03-23 08:17:00', '7', '', '', 15, 0, 508, 'Poule'),
(690, 1, 441, 443, '2019-03-23 09:31:00', '7', '', '', 15, 0, 509, 'Poule'),
(691, 1, 441, 444, '2019-03-23 10:45:00', '7', '', '', 15, 0, 510, 'Poule'),
(692, 1, 442, 443, '2019-03-23 11:22:00', '7', '', '', 15, 0, 511, 'Poule'),
(693, 1, 442, 444, '2019-03-23 10:08:00', '7', '', '', 15, 0, 512, 'Poule'),
(694, 1, 443, 444, '2019-03-23 08:54:00', '7', '', '', 15, 0, 513, 'Poule'),
(695, 1, 445, 446, '2019-03-23 08:37:00', '7', '', '', 15, 0, 514, 'Poule'),
(696, 3, 570, 572, '2019-03-23 10:40:00', '1', '', '', 151, 0, 625, 'Poule'),
(697, 3, 570, 573, '2019-03-23 09:20:00', '1', '', '', 151, 0, 626, 'Poule'),
(698, 3, 570, 587, '2019-03-23 11:20:00', '1', '', '', 151, 0, 627, 'Poule'),
(699, 3, 572, 573, '2019-03-23 10:00:00', '1', '', '', 151, 0, 628, 'Poule'),
(700, 3, 572, 587, '2019-03-23 12:20:00', '1', '', '', 151, 0, 629, 'Poule'),
(701, 3, 573, 587, '2019-03-23 12:00:00', '1', '', '', 151, 0, 630, 'Poule'),
(702, 3, 571, 578, '2019-03-23 09:00:00', '1', '', '', 151, 0, 631, 'Poule'),
(703, 3, 571, 582, '2019-03-23 10:20:00', '1', '', '', 151, 0, 632, 'Poule'),
(704, 3, 571, 584, '2019-03-23 11:40:00', '1', '', '', 151, 0, 633, 'Poule'),
(705, 3, 578, 582, '2019-03-23 12:00:00', '1', '', '', 151, 0, 634, 'Poule'),
(706, 3, 578, 584, '2019-03-23 11:00:00', '1', '', '', 151, 0, 635, 'Poule'),
(707, 3, 582, 584, '2019-03-23 09:40:00', '1', '', '', 151, 0, 636, 'Poule'),
(708, 3, 574, 580, '2019-03-23 09:00:00', '1', '', '', 151, 0, 637, 'Poule'),
(709, 3, 574, 586, '2019-03-23 10:00:00', '1', '', '', 151, 0, 638, 'Poule'),
(710, 3, 580, 586, '2019-03-23 11:00:00', '1', '', '', 151, 0, 639, 'Poule'),
(711, 3, 575, 581, '2019-03-23 11:20:00', '1', '', '', 151, 0, 640, 'Poule'),
(712, 3, 575, 588, '2019-03-23 10:20:00', '1', '', '', 151, 0, 641, 'Poule'),
(713, 3, 581, 588, '2019-03-23 09:20:00', '1', '', '', 151, 0, 642, 'Poule'),
(714, 3, 576, 579, '2019-03-23 11:40:00', '1', '', '', 151, 0, 643, 'Poule'),
(715, 3, 576, 583, '2019-03-23 09:40:00', '1', '', '', 151, 0, 644, 'Poule'),
(716, 3, 579, 583, '2019-03-23 10:40:00', '1', '', '', 151, 0, 645, 'Poule'),
(717, 4, 493, 508, '2019-03-23 10:40:00', '3', '', '', 132, 0, 515, 'Poule'),
(718, 4, 493, 519, '2019-03-23 09:40:00', '3', '', '', 132, 0, 516, 'Poule'),
(719, 4, 508, 519, '2019-03-23 11:40:00', '3', '', '', 132, 0, 517, 'Poule'),
(720, 4, 494, 495, '2019-03-23 12:00:00', '3', '', '', 132, 0, 518, 'Poule'),
(721, 4, 494, 500, '2019-03-23 10:20:00', '3', '', '', 132, 0, 519, 'Poule'),
(722, 4, 494, 516, '2019-03-23 11:20:00', '3', '', '', 132, 0, 520, 'Poule'),
(723, 4, 495, 500, '2019-03-23 12:20:00', '3', '', '', 132, 0, 521, 'Poule'),
(724, 4, 495, 516, '2019-03-23 09:20:00', '3', '', '', 132, 0, 522, 'Poule'),
(725, 4, 500, 516, '2019-03-23 12:00:00', '3', '', '', 132, 0, 523, 'Poule'),
(726, 4, 496, 502, '2019-03-23 12:20:00', '3', '', '', 132, 0, 524, 'Poule'),
(727, 4, 496, 510, '2019-03-23 09:40:00', '3', '', '', 132, 0, 525, 'Poule'),
(728, 4, 496, 521, '2019-03-23 11:00:00', '3', '', '', 132, 0, 526, 'Poule'),
(729, 4, 502, 510, '2019-03-23 12:00:00', '3', '', '', 132, 0, 527, 'Poule'),
(730, 4, 502, 521, '2019-03-23 10:40:00', '3', '', '', 132, 0, 528, 'Poule'),
(731, 4, 510, 521, '2019-03-23 11:40:00', '3', '', '', 132, 0, 529, 'Poule'),
(732, 4, 497, 501, '2019-03-23 10:20:00', '3', '', '', 132, 0, 530, 'Poule'),
(733, 4, 497, 504, '2019-03-23 09:20:00', '3', '', '', 132, 0, 531, 'Poule'),
(734, 4, 501, 504, '2019-03-23 11:20:00', '3', '', '', 132, 0, 532, 'Poule'),
(735, 4, 498, 505, '2019-03-23 10:00:00', '3', '', '', 132, 0, 533, 'Poule'),
(736, 4, 498, 513, '2019-03-23 11:00:00', '3', '', '', 132, 0, 534, 'Poule'),
(737, 4, 505, 513, '2019-03-23 09:00:00', '3', '', '', 132, 0, 535, 'Poule'),
(738, 4, 499, 506, '2019-03-23 10:00:00', '3', '', '', 132, 0, 536, 'Poule'),
(739, 4, 499, 517, '2019-03-23 09:00:00', '3', '', '', 132, 0, 537, 'Poule'),
(740, 4, 506, 517, '2019-03-23 11:00:00', '3', '', '', 132, 0, 538, 'Poule'),
(741, 4, 503, 509, '2019-03-23 11:20:00', '3', '', '', 132, 0, 539, 'Poule'),
(742, 4, 503, 511, '2019-03-23 09:20:00', '3', '', '', 132, 0, 540, 'Poule'),
(743, 4, 509, 511, '2019-03-23 10:20:00', '3', '', '', 132, 0, 541, 'Poule'),
(744, 4, 507, 514, '2019-03-23 09:00:00', '3', '', '', 132, 0, 542, 'Poule'),
(745, 4, 507, 520, '2019-03-23 10:00:00', '3', '', '', 132, 0, 543, 'Poule'),
(746, 4, 514, 520, '2019-03-23 12:20:00', '3', '', '', 132, 0, 544, 'Poule'),
(747, 4, 512, 515, '2019-03-23 09:40:00', '3', '', '', 132, 0, 545, 'Poule'),
(748, 4, 512, 518, '2019-03-23 11:40:00', '3', '', '', 132, 0, 546, 'Poule'),
(749, 4, 515, 518, '2019-03-23 10:40:00', '3', '', '', 132, 0, 547, 'Poule'),
(750, 6, 775, 778, '2019-03-23 11:21:00', '14', '', '', 255, 0, 893, 'Poule'),
(751, 6, 775, 787, '2019-03-23 09:51:00', '14', '', '', 255, 0, 894, 'Poule'),
(752, 6, 778, 787, '2019-03-23 10:45:00', '', '', '', 255, 0, 895, 'Poule'),
(753, 6, 776, 779, '2019-03-23 10:45:00', '', '', '', 255, 0, 896, 'Poule'),
(754, 6, 776, 780, '2019-03-23 09:15:00', '14', '', '', 255, 0, 897, 'Poule'),
(755, 6, 776, 785, '2019-03-23 11:03:00', '', '', '', 255, 0, 898, 'Poule'),
(756, 6, 779, 780, '2019-03-23 09:33:00', '14', '', '', 255, 0, 899, 'Poule'),
(757, 6, 779, 785, '2019-03-23 10:08:00', '14', '', '', 255, 0, 900, 'Poule'),
(758, 6, 780, 785, '2019-03-23 10:23:00', '', '', '', 255, 0, 901, 'Poule'),
(759, 6, 777, 782, '2019-03-23 09:51:00', '14', '', '', 255, 0, 902, 'Poule'),
(760, 6, 777, 788, '2019-03-23 10:08:00', '14', '', '', 255, 0, 903, 'Poule'),
(761, 6, 782, 788, '2019-03-23 11:03:00', '14', '', '', 255, 0, 904, 'Poule'),
(762, 6, 784, 786, '', '14', '', '', 255, 0, 905, 'Poule'),
(763, 6, 784, 789, '2019-03-23 09:33:00', '14', '', '', 255, 0, 906, 'Poule'),
(764, 6, 786, 789, '2019-03-23 10:23:00', '', '', '', 255, 0, 907, 'Poule'),
(765, 8, 143, 147, '', '', '', '', 21, 0, 396, 'Poule'),
(766, 8, 143, 149, '', '', '', '', 21, 0, 397, 'Poule'),
(767, 8, 143, 152, '', '', '', '', 21, 0, 398, 'Poule'),
(768, 8, 147, 149, '', '', '', '', 21, 0, 399, 'Poule'),
(769, 8, 147, 152, '', '', '', '', 21, 0, 400, 'Poule'),
(770, 8, 149, 152, '', '', '', '', 21, 0, 401, 'Poule'),
(771, 8, 144, 146, '', '', '', '', 21, 0, 402, 'Poule'),
(772, 8, 144, 148, '', '', '', '', 21, 0, 403, 'Poule'),
(773, 8, 144, 158, '', '', '', '', 21, 0, 404, 'Poule'),
(774, 8, 146, 148, '', '', '', '', 21, 0, 405, 'Poule'),
(775, 8, 146, 158, '', '', '', '', 21, 0, 406, 'Poule'),
(776, 8, 148, 158, '', '', '', '', 21, 0, 407, 'Poule'),
(777, 8, 145, 150, '', '', '', '', 21, 0, 408, 'Poule'),
(778, 8, 145, 153, '', '', '', '', 21, 0, 409, 'Poule'),
(779, 8, 150, 153, '', '', '', '', 21, 0, 410, 'Poule'),
(780, 8, 151, 155, '', '', '', '', 21, 0, 411, 'Poule'),
(781, 8, 151, 159, '', '', '', '', 21, 0, 412, 'Poule'),
(782, 8, 155, 159, '', '', '', '', 21, 0, 413, 'Poule'),
(783, 8, 154, 156, '', '', '', '', 21, 0, 414, 'Poule'),
(784, 8, 154, 157, '', '', '', '', 21, 0, 415, 'Poule'),
(785, 8, 156, 157, '', '', '', '', 21, 0, 416, 'Poule'),
(786, 12, 871, 881, '2019-03-23 10:30:00', '11', '1', '4', 317, 0, 1029, 'Poule'),
(787, 12, 871, 882, '2019-03-23 09:45:00', '11', '6', '4', 317, 0, 1030, 'Poule'),
(788, 12, 881, 882, '2019-03-23 09:00:00', '11', '7', '4', 317, 0, 1031, 'Poule'),
(789, 12, 872, 879, '2019-03-23 09:30:00', '11', '2', '7', 317, 0, 1032, 'Poule'),
(790, 12, 872, 889, '2019-03-23 10:15:00', '11', '6', '2', 317, 0, 1033, 'Poule'),
(791, 12, 872, 892, '2019-03-23 08:30:00', '11', '6', '4', 317, 0, 1034, 'Poule'),
(792, 12, 879, 889, '2019-03-23 08:45:00', '11', '10', '1', 317, 0, 1035, 'Poule'),
(793, 12, 892, 879, '2019-03-23 10:00:00', '11', '9', '6', 317, 0, 1036, 'Poule'),
(794, 12, 889, 892, '2019-03-23 09:15:00', '11', '7', '6', 317, 0, 1037, 'Poule'),
(795, 12, 873, 876, '2019-03-23 08:40:00', '2', '6', '7', 317, 0, 1038, 'Poule'),
(796, 12, 873, 880, '2019-03-23 10:10:00', '2', '4', '2', 317, 0, 1039, 'Poule'),
(797, 12, 891, 873, '2019-03-23 09:40:00', '2', '9', '7', 317, 0, 1040, 'Poule'),
(798, 12, 876, 880, '2019-03-23 09:10:00', '2', '8', '2', 317, 0, 1041, 'Poule'),
(799, 12, 876, 891, '2019-03-23 10:40:00', '2', '8', '5', 317, 0, 1042, 'Poule'),
(800, 12, 880, 891, '2019-03-23 08:10:00', '2', '5', '3', 317, 0, 1043, 'Poule'),
(801, 12, 874, 884, '2019-03-23 08:25:00', '2', '', '', 317, 1, 1044, 'Poule'),
(802, 12, 874, 885, '2019-03-23 09:25:00', '2', '9', '5', 317, 0, 1045, 'Poule'),
(803, 12, 874, 887, '2019-03-23 10:25:00', '2', '4', '7', 317, 0, 1046, 'Poule'),
(804, 12, 884, 885, '2019-03-23 10:55:00', '2', '', '', 317, 1, 1047, 'Poule'),
(805, 12, 887, 884, '2019-03-23 09:55:00', '2', '', '', 317, 1, 1048, 'Poule'),
(806, 12, 885, 887, '2019-03-23 08:55:00', '2', '3', '5', 317, 0, 1049, 'Poule'),
(807, 12, 878, 875, '2019-03-23 10:55:00', '17', '13', '1', 317, 0, 1050, 'Poule'),
(808, 12, 890, 875, '2019-03-23 08:55:00', '17', '7', '7', 317, 0, 1051, 'Poule'),
(809, 12, 875, 893, '2019-03-23 09:25:00', '17', '6', '5', 317, 0, 1052, 'Poule'),
(810, 12, 890, 878, '2019-03-23 09:55:00', '17', '0', '9', 317, 0, 1053, 'Poule'),
(811, 12, 878, 893, '2019-03-23 08:25:00', '17', '4', '7', 317, 0, 1054, 'Poule'),
(812, 12, 893, 890, '2019-03-23 10:25:00', '17', '5', '8', 317, 0, 1055, 'Poule'),
(813, 12, 877, 883, '2019-03-23 08:40:00', '17', '2', '8', 317, 0, 1056, 'Poule'),
(814, 12, 877, 886, '2019-03-23 10:10:00', '17', '1', '9', 317, 0, 1057, 'Poule'),
(815, 12, 888, 877, '2019-03-23 09:40:00', '17', '3', '5', 317, 0, 1058, 'Poule'),
(816, 12, 886, 883, '2019-03-23 09:10:00', '17', '2', '2', 317, 0, 1059, 'Poule'),
(817, 12, 888, 883, '2019-03-23 10:40:00', '17', '5', '4', 317, 0, 1060, 'Poule'),
(818, 12, 886, 888, '2019-03-23 08:10:00', '17', '4', '3', 317, 0, 1061, 'Poule'),
(819, 17, 926, 929, '2019-03-23 10:00:00', '14', '', '', 346, 0, 1160, 'Poule'),
(820, 17, 926, 933, '2019-03-23 11:00:00', '14', '', '', 346, 0, 1161, 'Poule'),
(821, 17, 926, 935, '2019-03-23 13:00:00', '14', '', '', 346, 0, 1162, 'Poule'),
(822, 17, 929, 933, '2019-03-23 12:30:00', '14', '', '', 346, 0, 1163, 'Poule'),
(823, 17, 929, 935, '2019-03-23 11:30:00', '14', '', '', 346, 0, 1164, 'Poule'),
(824, 17, 933, 935, '2019-03-23 09:00:00', '14', '', '', 346, 0, 1165, 'Poule'),
(825, 17, 927, 928, '2019-03-23 10:00:00', '3', '', '', 346, 0, 1166, 'Poule'),
(826, 17, 927, 932, '2019-03-23 12:30:00', '3', '', '', 346, 0, 1167, 'Poule'),
(827, 17, 927, 937, '2019-03-23 11:30:00', '3', '', '', 346, 0, 1168, 'Poule'),
(828, 17, 928, 932, '2019-03-23 11:00:00', '3', '', '', 346, 0, 1169, 'Poule'),
(829, 17, 928, 937, '2019-03-23 13:00:00', '3', '', '', 346, 0, 1170, 'Poule'),
(830, 17, 932, 937, '2019-03-23 09:00:00', '3', '', '', 346, 0, 1171, 'Poule'),
(831, 17, 930, 934, '2019-03-23 12:00:00', '14', '', '', 346, 0, 1172, 'Poule'),
(832, 17, 930, 940, '2019-03-23 10:30:00', '14', '', '', 346, 0, 1173, 'Poule'),
(833, 17, 934, 940, '2019-03-23 09:30:00', '14', '', '', 346, 0, 1174, 'Poule'),
(834, 17, 931, 936, '2019-03-23 10:30:00', '3', '', '', 346, 0, 1175, 'Poule'),
(835, 17, 931, 941, '2019-03-23 09:30:00', '3', '', '', 346, 0, 1176, 'Poule'),
(836, 17, 936, 941, '2019-03-23 12:00:00', '', '', '', 346, 0, 1177, 'Poule'),
(837, 18, 660, 703, '2019-03-23 10:00:00', '2', '', '', 202, 0, 772, 'Poule'),
(838, 18, 660, 708, '2019-03-23 09:00:00', '2', '', '', 202, 0, 773, 'Poule'),
(839, 18, 660, 709, '2019-03-23 10:40:00', '2', '', '', 202, 0, 774, 'Poule'),
(840, 18, 703, 708, '2019-03-23 10:20:00', '2', '', '', 202, 0, 775, 'Poule'),
(841, 18, 703, 709, '2019-03-23 09:20:00', '2', '', '', 202, 0, 776, 'Poule'),
(842, 18, 708, 709, '2019-03-23 09:40:00', '2', '', '', 202, 0, 777, 'Poule'),
(843, 18, 661, 702, '2019-03-23 12:00:00', '2', '', '', 202, 0, 778, 'Poule'),
(844, 18, 661, 707, '2019-03-23 11:30:00', '2', '', '', 202, 0, 779, 'Poule'),
(845, 18, 702, 707, '2019-03-23 11:00:00', '2', '', '', 202, 0, 780, 'Poule'),
(846, 18, 662, 701, '2019-03-23 12:30:00', '2', '', '', 202, 0, 781, 'Poule'),
(847, 18, 662, 704, '2019-03-23 13:30:00', '2', '', '', 202, 0, 782, 'Poule'),
(848, 18, 701, 704, '2019-03-23 13:00:00', '2', '', '', 202, 0, 783, 'Poule'),
(849, 22, 447, 452, '2019-03-23 09:45:00', '2', '3', '1', 127, 0, 439, 'Poule'),
(850, 22, 447, 458, '2019-03-23 11:25:00', '2', '6', '3', 127, 0, 440, 'Poule'),
(851, 22, 452, 458, '2019-03-23 12:55:00', '2', '2', '3', 127, 0, 441, 'Poule'),
(852, 22, 448, 454, '2019-03-23 09:10:00', '2', '6', '0', 127, 0, 442, 'Poule'),
(853, 22, 448, 455, '2019-03-23 11:00:00', '2', '4', '3', 127, 0, 443, 'Poule'),
(854, 22, 448, 457, '2019-03-23 12:45:00', '2', '4', '0', 127, 0, 444, 'Poule'),
(855, 22, 454, 455, '2019-03-23 12:30:00', '2', '0', '4', 127, 0, 445, 'Poule'),
(856, 22, 454, 457, '2019-03-23 10:45:00', '2', '1', '3', 127, 0, 446, 'Poule'),
(857, 22, 457, 455, '2019-03-23 09:27:00', '2', '3', '2', 127, 0, 447, 'Poule'),
(858, 22, 449, 453, '2019-03-23 11:45:00', '2', '5', '3', 127, 0, 448, 'Poule'),
(859, 22, 449, 459, '2019-03-23 13:18:00', '2', '5', '2', 127, 0, 449, 'Poule'),
(860, 22, 453, 459, '2019-03-23 10:05:00', '2', '4', '4', 127, 0, 450, 'Poule'),
(861, 22, 450, 451, '2019-03-23 12:10:00', '2', '7', '0', 127, 0, 451, 'Poule'),
(862, 22, 450, 456, '2019-03-23 13:37:00', '2', '11', '0', 127, 0, 452, 'Poule'),
(863, 22, 451, 456, '2019-03-23 10:25:00', '2', '4', '4', 127, 0, 453, 'Poule'),
(864, 24, 600, 603, '2019-03-23 09:25:00', '8', '25', '14', 157, 0, 824, 'Poule'),
(865, 24, 600, 622, '2019-03-23 10:15:00', '8', '25', '13', 157, 0, 825, 'Poule'),
(866, 24, 600, 623, '2019-03-23 11:05:00', '8', '25', '22', 157, 0, 826, 'Poule'),
(867, 24, 603, 622, '2019-03-23 09:50:00', '8', '25', '22', 157, 0, 827, 'Poule'),
(868, 24, 603, 623, '2019-03-23 10:40:00', '8', '16', '25', 157, 0, 828, 'Poule'),
(869, 24, 622, 623, '2019-03-23 09:00:00', '8', '11', '25', 157, 0, 829, 'Poule'),
(870, 24, 602, 605, '2019-03-23 11:05:00', '8', '25', '12', 157, 0, 831, 'Poule'),
(871, 24, 602, 612, '2019-03-23 09:25:00', '8', '25', '20', 157, 0, 832, 'Poule'),
(872, 24, 605, 612, '2019-03-23 10:15:00', '8', '17', '25', 157, 0, 833, 'Poule'),
(873, 24, 604, 619, '2019-03-23 09:25:00', '8', '20', '25', 157, 0, 834, 'Poule'),
(874, 24, 604, 642, '2019-03-23 11:05:00', '8', '25', '20', 157, 0, 835, 'Poule'),
(875, 24, 642, 619, '2019-03-23 10:15:00', '8', '7', '25', 157, 0, 836, 'Poule'),
(876, 24, 606, 609, '2019-03-23 09:00:00', '8', '9', '25', 157, 0, 837, 'Poule'),
(877, 24, 606, 617, '2019-03-23 09:50:00', '8', '15', '25', 157, 0, 838, 'Poule'),
(878, 24, 617, 609, '2019-03-23 10:40:00', '8', '7', '25', 157, 0, 839, 'Poule'),
(879, 24, 607, 618, '2019-03-23 09:50:00', '8', '14', '25', 157, 0, 840, 'Poule'),
(880, 24, 607, 640, '2019-03-23 09:00:00', '8', '5', '25', 157, 0, 841, 'Poule'),
(881, 24, 640, 618, '2019-03-23 10:40:00', '8', '25', '12', 157, 0, 842, 'Poule'),
(882, 24, 608, 624, '2019-03-23 11:05:00', '8', '14', '25', 157, 0, 843, 'Poule'),
(883, 24, 608, 641, '2019-03-23 10:15:00', '8', '10', '25', 157, 0, 844, 'Poule'),
(884, 24, 624, 641, '2019-03-23 09:25:00', '8', '24', '23', 157, 0, 845, 'Poule'),
(885, 24, 610, 614, '2019-03-23 09:25:00', '8', '25', '23', 157, 0, 846, 'Poule'),
(886, 24, 610, 639, '2019-03-23 11:05:00', '8', '25', '12', 157, 0, 847, 'Poule'),
(887, 24, 614, 639, '2019-03-23 10:15:00', '8', '25', '8', 157, 0, 848, 'Poule'),
(888, 24, 611, 616, '2019-03-23 09:50:00', '8', '25', '21', 157, 0, 849, 'Poule'),
(889, 24, 611, 620, '2019-03-23 10:40:00', '8', '23', '25', 157, 0, 850, 'Poule'),
(890, 24, 616, 620, '2019-03-23 09:00:00', '8', '25', '24', 157, 0, 851, 'Poule'),
(891, 24, 613, 615, '2019-03-23 09:00:00', '8', '25', '24', 157, 0, 852, 'Poule'),
(892, 24, 613, 621, '2019-03-23 10:40:00', '8', '25', '12', 157, 0, 853, 'Poule'),
(893, 24, 615, 621, '2019-03-23 09:50:00', '8', '25', '18', 157, 0, 854, 'Poule'),
(894, 39, 822, 824, '', '', '', '', 289, 0, 945, 'Poule'),
(895, 39, 822, 825, '', '', '', '', 289, 0, 946, 'Poule'),
(896, 39, 822, 826, '', '', '', '', 289, 0, 947, 'Poule'),
(897, 39, 822, 827, '', '', '', '', 289, 0, 948, 'Poule'),
(898, 39, 822, 828, '', '', '', '', 289, 0, 949, 'Poule'),
(899, 39, 822, 829, '', '', '', '', 289, 0, 950, 'Poule'),
(900, 39, 822, 830, '', '', '', '', 289, 0, 951, 'Poule'),
(901, 39, 824, 825, '', '', '', '', 289, 0, 952, 'Poule'),
(902, 39, 824, 826, '', '', '', '', 289, 0, 953, 'Poule'),
(903, 39, 824, 827, '', '', '', '', 289, 0, 954, 'Poule'),
(904, 39, 824, 828, '', '', '', '', 289, 0, 955, 'Poule'),
(905, 39, 824, 829, '', '', '', '', 289, 0, 956, 'Poule'),
(906, 39, 824, 830, '', '', '', '', 289, 0, 957, 'Poule'),
(907, 39, 825, 826, '', '', '', '', 289, 0, 958, 'Poule'),
(908, 39, 825, 827, '', '', '', '', 289, 0, 959, 'Poule'),
(909, 39, 825, 828, '', '', '', '', 289, 0, 960, 'Poule'),
(910, 39, 825, 829, '', '', '', '', 289, 0, 961, 'Poule'),
(911, 39, 825, 830, '', '', '', '', 289, 0, 962, 'Poule'),
(912, 39, 826, 827, '', '', '', '', 289, 0, 963, 'Poule'),
(913, 39, 826, 828, '', '', '', '', 289, 0, 964, 'Poule'),
(914, 39, 826, 829, '', '', '', '', 289, 0, 965, 'Poule'),
(915, 39, 826, 830, '', '', '', '', 289, 0, 966, 'Poule'),
(916, 39, 827, 828, '', '', '', '', 289, 0, 967, 'Poule'),
(917, 39, 827, 829, '', '', '', '', 289, 0, 968, 'Poule'),
(918, 39, 827, 830, '', '', '', '', 289, 0, 969, 'Poule'),
(919, 39, 828, 829, '', '', '', '', 289, 0, 970, 'Poule'),
(920, 39, 828, 830, '', '', '', '', 289, 0, 971, 'Poule'),
(921, 39, 829, 830, '', '', '', '', 289, 0, 972, 'Poule'),
(922, 40, 901, 902, '', '', '5', '4', 338, 0, 1107, 'Poule'),
(923, 40, 901, 904, '', '', '5', '0', 338, 0, 1108, 'Poule'),
(924, 40, 901, 909, '', '', '1', '5', 338, 0, 1109, 'Poule'),
(925, 40, 901, 911, '', '', '0', '5', 338, 0, 1110, 'Poule'),
(926, 40, 902, 904, '', '', '5', '0', 338, 0, 1111, 'Poule'),
(927, 40, 902, 909, '', '', '0', '5', 338, 0, 1112, 'Poule'),
(928, 40, 902, 911, '', '', '0', '5', 338, 0, 1113, 'Poule'),
(929, 40, 904, 909, '', '', '0', '5', 338, 0, 1114, 'Poule'),
(930, 40, 904, 911, '', '', '2', '5', 338, 0, 1115, 'Poule'),
(931, 40, 909, 911, '', '', '4', '5', 338, 0, 1116, 'Poule'),
(932, 40, 903, 905, '', '', '5', '2', 338, 0, 1117, 'Poule'),
(933, 40, 903, 906, '', '', '5', '4', 338, 0, 1118, 'Poule'),
(934, 40, 903, 907, '', '', '2', '5', 338, 0, 1119, 'Poule'),
(935, 40, 903, 908, '', '', '4', '5', 338, 0, 1120, 'Poule'),
(936, 40, 903, 910, '', '', '1', '5', 338, 0, 1121, 'Poule'),
(937, 40, 905, 906, '', '', '0', '5', 338, 0, 1122, 'Poule'),
(938, 40, 905, 907, '', '', '1', '5', 338, 0, 1123, 'Poule'),
(939, 40, 905, 908, '', '', '4', '5', 338, 0, 1124, 'Poule'),
(940, 40, 905, 910, '', '', '1', '5', 338, 0, 1125, 'Poule'),
(941, 40, 906, 907, '', '', '3', '5', 338, 0, 1126, 'Poule'),
(942, 40, 906, 908, '', '', '5', '3', 338, 0, 1127, 'Poule'),
(943, 40, 906, 910, '', '', '5', '0', 338, 0, 1128, 'Poule'),
(944, 40, 907, 908, '', '', '5', '3', 338, 0, 1129, 'Poule'),
(945, 40, 907, 910, '', '', '5', '2', 338, 0, 1130, 'Poule'),
(946, 40, 908, 910, '', '', '2', '5', 338, 0, 1131, 'Poule'),
(947, 42, 686, 688, '', '', '', '', 293, 1, 973, 'Poule'),
(948, 42, 686, 689, '', '', '', '', 293, 1, 974, 'Poule'),
(949, 42, 686, 690, '', '', '', '', 293, 1, 975, 'Poule'),
(950, 42, 688, 689, '', '', '3', '5', 293, 0, 976, 'Poule'),
(951, 42, 688, 690, '', '', '4', '5', 293, 0, 977, 'Poule'),
(952, 42, 689, 690, '', '', '5', '1', 293, 0, 978, 'Poule'),
(953, 13, 710, 712, '2019-03-23 10:20:00', '3', '', '', 241, 0, 1198, 'Poule'),
(954, 13, 710, 722, '2019-03-23 11:20:00', '3', '', '', 241, 0, 1199, 'Poule'),
(955, 13, 712, 722, '2019-03-23 09:20:00', '3', '', '', 241, 0, 1200, 'Poule'),
(956, 13, 711, 715, '2019-03-23 11:00:00', '3', '', '', 241, 0, 1201, 'Poule'),
(957, 13, 711, 724, '2019-03-23 09:00:00', '3', '', '', 241, 0, 1202, 'Poule'),
(958, 13, 715, 724, '2019-03-23 10:00:00', '3', '', '', 241, 0, 1203, 'Poule'),
(959, 13, 713, 716, '2019-03-23 09:40:00', '19', '', '', 241, 0, 1204, 'Poule'),
(960, 13, 713, 718, '2019-03-23 09:00:00', '19', '', '', 241, 0, 1205, 'Poule'),
(961, 13, 716, 718, '2019-03-23 10:20:00', '19', '', '', 241, 0, 1206, 'Poule'),
(962, 13, 714, 719, '2019-03-23 10:40:00', '3', '', '', 241, 0, 1207, 'Poule'),
(963, 13, 714, 721, '2019-03-23 09:40:00', '3', '', '', 241, 0, 1208, 'Poule'),
(964, 13, 719, 721, '2019-03-23 11:40:00', '3', '', '', 241, 0, 1209, 'Poule'),
(965, 13, 717, 720, '2019-03-23 09:20:00', '19', '', '', 241, 0, 1210, 'Poule'),
(966, 13, 717, 723, '2019-03-23 10:00:00', '19', '', '', 241, 0, 1211, 'Poule'),
(967, 13, 720, 723, '2019-03-23 10:40:00', '19', '', '', 241, 0, 1212, 'Poule'),
(968, 1, 992, 1002, '2019-03-23 09:14:00', '7', '', '', 368, 0, 1292, 'Poule'),
(969, 1, 992, 1013, '2019-03-23 08:00:00', '7', '', '', 368, 0, 1293, 'Poule'),
(970, 1, 1002, 1013, '2019-03-23 08:37:00', '7', '', '', 368, 0, 1294, 'Poule'),
(971, 1, 993, 999, '2019-03-23 10:20:00', '4', '0', '0', 368, 1, 1295, 'Poule'),
(972, 1, 993, 1004, '2019-03-23 09:20:00', '4', '1', '0', 368, 0, 1296, 'Poule'),
(973, 1, 993, 1019, '2019-03-23 08:20:00', '4', '0', '0', 368, 0, 1297, 'Poule'),
(974, 1, 999, 1004, '2019-03-23 08:00:00', '4', '1', '0', 368, 0, 1298, 'Poule'),
(975, 1, 999, 1019, '2019-03-23 09:20:00', '6', '1', '1', 368, 0, 1299, 'Poule'),
(976, 1, 1004, 1019, '2019-03-23 10:20:00', '5', '0', '2', 368, 0, 1300, 'Poule'),
(977, 1, 994, 1006, '2019-03-23 11:22:00', '7', '', '', 368, 0, 1301, 'Poule'),
(978, 1, 994, 1015, '2019-03-23 08:17:00', '7', '', '', 368, 0, 1302, 'Poule'),
(979, 1, 994, 1020, '2019-03-23 10:08:00', '7', '', '', 368, 0, 1303, 'Poule'),
(980, 1, 1006, 1015, '2019-03-23 09:31:00', '7', '', '', 368, 0, 1304, 'Poule'),
(981, 1, 1006, 1020, '2019-03-23 08:54:00', '7', '', '', 368, 0, 1305, 'Poule'),
(982, 1, 1015, 1020, '2019-03-23 10:45:00', '7', '', '', 368, 0, 1306, 'Poule'),
(983, 1, 995, 1001, '2019-03-23 10:00:00', '6', '3', '0', 368, 0, 1307, 'Poule'),
(984, 1, 995, 1011, '2019-03-23 08:20:00', '6', '1', '0', 368, 0, 1308, 'Poule'),
(985, 1, 995, 1012, '2019-03-23 10:40:00', '6', '1', '2', 368, 0, 1309, 'Poule'),
(986, 1, 1001, 1011, '2019-03-23 11:00:00', '6', '0', '2', 368, 0, 1310, 'Poule'),
(987, 1, 1001, 1012, '2019-03-23 08:40:00', '6', '0', '2', 368, 0, 1311, 'Poule'),
(988, 1, 1011, 1012, '2019-03-23 09:40:00', '6', '0', '4', 368, 0, 1312, 'Poule'),
(989, 1, 998, 1007, '2019-03-23 11:00:00', '4', '2', '0', 368, 0, 1313, 'Poule'),
(990, 1, 998, 1017, '2019-03-23 10:00:00', '4', '0', '0', 368, 0, 1314, 'Poule'),
(991, 1, 998, 1018, '2019-03-23 09:00:00', '4', '', '', 368, 0, 1315, 'Poule'),
(992, 1, 1007, 1017, '2019-03-23 08:40:00', '4', '0', '0', 368, 0, 1316, 'Poule'),
(993, 1, 1007, 1018, '2019-03-23 09:40:00', '4', '0', '1', 368, 0, 1317, 'Poule'),
(994, 1, 1017, 1018, '2019-03-23 10:40:00', '4', '0', '0', 368, 0, 1318, 'Poule'),
(995, 1, 1000, 1005, '2019-03-23 10:00:00', '5', '0', '1', 368, 0, 1319, 'Poule'),
(996, 1, 1000, 1009, '2019-03-23 09:00:00', '5', '0', '1', 368, 0, 1320, 'Poule'),
(997, 1, 1000, 1014, '2019-03-23 08:00:00', '5', '1', '1', 368, 0, 1321, 'Poule'),
(998, 1, 1005, 1009, '2019-03-23 08:00:00', '6', '0', '0', 368, 0, 1322, 'Poule'),
(999, 1, 1005, 1014, '2019-03-23 09:00:00', '6', '3', '0', 368, 0, 1323, 'Poule'),
(1000, 1, 1009, 1014, '2019-03-23 10:20:00', '6', '2', '0', 368, 0, 1324, 'Poule'),
(1001, 1, 1003, 1008, '2019-03-23 10:40:00', '5', '0', '2', 368, 0, 1325, 'Poule'),
(1002, 1, 1003, 1010, '2019-03-23 08:40:00', '5', '0', '0', 368, 0, 1326, 'Poule'),
(1003, 1, 1003, 1016, '2019-03-23 09:20:00', '5', '0', '1', 368, 0, 1327, 'Poule'),
(1004, 1, 1008, 1010, '2019-03-23 09:40:00', '5', '3', '0', 368, 0, 1328, 'Poule'),
(1005, 1, 1008, 1016, '2019-03-23 08:20:00', '5', '0', '0', 368, 0, 1329, 'Poule'),
(1006, 1, 1010, 1016, '2019-03-23 11:00:00', '5', '0', '0', 368, 0, 1330, 'Poule'),
(1007, 6, 1021, 1025, '2019-03-23 11:21:00', '', '4', '26', 371, 0, 1379, 'Poule'),
(1008, 6, 1021, 1031, '2019-03-23 09:51:00', '', '14', '5', 371, 0, 1380, 'Poule'),
(1009, 6, 1025, 1031, '2019-03-23 10:45:00', '', '25', '7', 371, 0, 1381, 'Poule'),
(1010, 6, 1022, 1024, '2019-03-23 10:45:00', '', '6', '8', 371, 0, 1382, 'Poule'),
(1011, 6, 1022, 1026, '2019-03-23 09:15:00', '', '0', '20', 371, 0, 1383, 'Poule'),
(1012, 6, 1022, 1030, '2019-03-23 11:03:00', '', '0', '22', 371, 0, 1384, 'Poule'),
(1013, 6, 1024, 1026, '2019-03-23 09:33:00', '', '14', '12', 371, 0, 1385, 'Poule'),
(1014, 6, 1024, 1030, '2019-03-23 10:23:00', '', '6', '21', 371, 0, 1386, 'Poule'),
(1015, 6, 1026, 1030, '2019-03-23 10:23:00', '', '2', '11', 371, 0, 1387, 'Poule'),
(1016, 6, 1023, 1027, '2019-03-23 09:51:00', '', '7', '4', 371, 0, 1388, 'Poule'),
(1017, 6, 1023, 1032, '2019-03-23 10:08:00', '', '4', '20', 371, 0, 1389, 'Poule'),
(1018, 6, 1027, 1032, '2019-03-23 11:03:00', '', '4', '28', 371, 0, 1390, 'Poule'),
(1019, 6, 1028, 1029, '2019-03-23 09:15:00', '', '22', '4', 371, 0, 1391, 'Poule'),
(1020, 6, 1028, 1033, '2019-03-23 09:33:00', '', '10', '11', 371, 0, 1392, 'Poule'),
(1021, 6, 1029, 1033, '2019-03-23 10:08:00', '', '11', '27', 371, 0, 1393, 'Poule'),
(1022, 8, 965, 968, '', '', '', '', 357, 0, 1265, 'Poule'),
(1023, 8, 965, 970, '', '', '', '', 357, 0, 1266, 'Poule'),
(1024, 8, 965, 984, '', '', '', '', 357, 0, 1267, 'Poule'),
(1025, 8, 968, 970, '', '', '', '', 357, 0, 1268, 'Poule'),
(1026, 8, 968, 984, '', '', '', '', 357, 0, 1269, 'Poule'),
(1027, 8, 970, 984, '', '', '', '', 357, 0, 1270, 'Poule'),
(1028, 8, 966, 969, '', '', '', '', 357, 0, 1271, 'Poule'),
(1029, 8, 966, 972, '', '', '', '', 357, 0, 1272, 'Poule'),
(1030, 8, 966, 978, '', '', '', '', 357, 0, 1273, 'Poule'),
(1031, 8, 969, 972, '', '', '', '', 357, 0, 1274, 'Poule'),
(1032, 8, 969, 978, '', '', '', '', 357, 0, 1275, 'Poule'),
(1033, 8, 972, 978, '', '', '', '', 357, 0, 1276, 'Poule'),
(1034, 8, 967, 973, '', '', '', '', 357, 0, 1277, 'Poule'),
(1035, 8, 967, 974, '', '', '', '', 357, 0, 1278, 'Poule'),
(1036, 8, 967, 980, '', '', '', '', 357, 0, 1279, 'Poule'),
(1037, 8, 973, 974, '', '', '', '', 357, 0, 1280, 'Poule'),
(1038, 8, 973, 980, '', '', '', '', 357, 0, 1281, 'Poule'),
(1039, 8, 974, 980, '', '', '', '', 357, 0, 1282, 'Poule'),
(1040, 8, 971, 979, '', '', '', '', 357, 0, 1283, 'Poule'),
(1041, 8, 971, 982, '', '', '', '', 357, 0, 1284, 'Poule'),
(1042, 8, 971, 983, '', '', '', '', 357, 0, 1285, 'Poule'),
(1043, 8, 979, 982, '', '', '', '', 357, 0, 1286, 'Poule'),
(1044, 8, 979, 983, '', '', '', '', 357, 0, 1287, 'Poule'),
(1045, 8, 982, 983, '', '', '', '', 357, 0, 1288, 'Poule'),
(1046, 8, 977, 981, '', '', '', '', 357, 0, 1289, 'Poule'),
(1047, 8, 977, 985, '', '', '', '', 357, 0, 1290, 'Poule'),
(1048, 8, 981, 985, '', '', '', '', 357, 0, 1291, 'Poule'),
(1049, 9, 1041, 1042, '2019-03-23 12:00:00', '17', '1', '0', 376, 0, 1496, 'Poule'),
(1050, 9, 1041, 1043, '', '', '1', '1', 376, 0, 1497, 'Poule'),
(1051, 9, 1041, 1046, '', '', '2', '0', 376, 0, 1498, 'Poule'),
(1052, 9, 1042, 1043, '', '', '1', '0', 376, 0, 1499, 'Poule'),
(1053, 9, 1042, 1046, '', '', '2', '0', 376, 0, 1500, 'Poule'),
(1054, 9, 1043, 1046, '', '', '2', '0', 376, 0, 1501, 'Poule'),
(1055, 9, 1047, 1048, '', '', '2', '0', 376, 0, 1502, 'Poule'),
(1056, 9, 1047, 1049, '', '', '2', '0', 376, 0, 1503, 'Poule'),
(1057, 9, 1047, 1050, '', '', '10', '2', 376, 0, 1504, 'Poule'),
(1058, 9, 1048, 1049, '', '', '2', '2', 376, 0, 1505, 'Poule'),
(1059, 9, 1048, 1050, '', '', '1', '0', 376, 0, 1506, 'Poule'),
(1060, 9, 1049, 1050, '', '', '1', '1', 376, 0, 1507, 'Poule'),
(1061, 27, 1034, 1036, '2019-03-23 15:15:00', '13', '', '', 373, 0, 1408, 'Poule'),
(1062, 27, 1034, 1039, '2019-03-23 14:30:00', '13', '', '', 373, 0, 1409, 'Poule'),
(1063, 27, 1036, 1039, '2019-03-23 15:45:00', '13', '', '', 373, 0, 1410, 'Poule'),
(1064, 27, 1035, 1037, '2019-03-23 15:30:00', '13', '', '', 373, 0, 1411, 'Poule'),
(1065, 27, 1035, 1038, '2019-03-23 14:45:00', '13', '', '', 373, 0, 1412, 'Poule'),
(1066, 27, 1037, 1038, '2019-03-23 16:00:00', '13', '', '', 373, 0, 1413, 'Poule'),
(1067, 28, 219, 217, '2019-03-23 10:00:00', '16', '', '', 281, 0, 1429, 'Poule'),
(1068, 28, 227, 217, '2019-03-23 11:00:00', '16', '', '', 281, 0, 1430, 'Poule'),
(1069, 28, 228, 217, '2019-03-23 00:00:00', '16', '', '', 281, 0, 1431, 'Poule'),
(1070, 28, 234, 217, '2019-03-23 10:30:00', '16', '', '', 281, 0, 1432, 'Poule'),
(1071, 28, 227, 219, '2019-03-23 10:30:00', '16', '', '', 281, 0, 1433, 'Poule'),
(1072, 28, 228, 219, '2019-03-23 11:30:00', '16', '', '', 281, 0, 1434, 'Poule'),
(1073, 28, 234, 219, '2019-03-23 00:00:00', '16', '', '', 281, 0, 1435, 'Poule'),
(1074, 28, 228, 227, '2019-03-23 10:00:00', '16', '', '', 281, 0, 1436, 'Poule'),
(1075, 28, 234, 227, '2019-03-23 11:30:00', '16', '', '', 281, 0, 1437, 'Poule'),
(1076, 28, 234, 228, '2019-03-23 11:00:00', '16', '', '', 281, 0, 1438, 'Poule'),
(1077, 28, 221, 218, '2019-03-23 10:00:00', '16', '', '', 281, 0, 1439, 'Poule'),
(1078, 28, 222, 218, '2019-03-23 11:00:00', '16', '', '', 281, 0, 1440, 'Poule'),
(1079, 28, 230, 218, '2019-03-23 00:00:00', '16', '', '', 281, 0, 1441, 'Poule'),
(1080, 28, 233, 218, '2019-03-23 10:30:00', '16', '', '', 281, 0, 1442, 'Poule'),
(1081, 28, 222, 221, '2019-03-23 10:30:00', '16', '', '', 281, 0, 1443, 'Poule'),
(1082, 28, 230, 221, '2019-03-23 11:30:00', '16', '', '', 281, 0, 1444, 'Poule'),
(1083, 28, 233, 221, '2019-03-23 00:00:00', '16', '', '', 281, 0, 1445, 'Poule'),
(1084, 28, 230, 222, '2019-03-23 10:00:00', '16', '', '', 281, 0, 1446, 'Poule'),
(1085, 28, 233, 222, '2019-03-23 11:30:00', '16', '', '', 281, 0, 1447, 'Poule'),
(1086, 28, 233, 230, '2019-03-23 11:00:00', '16', '', '', 281, 0, 1448, 'Poule'),
(1087, 28, 225, 220, '2019-03-23 10:00:00', '16', '', '', 281, 0, 1449, 'Poule'),
(1088, 28, 226, 220, '2019-03-23 11:00:00', '16', '', '', 281, 0, 1450, 'Poule'),
(1089, 28, 231, 220, '2019-03-23 00:00:00', '16', '', '', 281, 0, 1451, 'Poule'),
(1090, 28, 236, 220, '2019-03-23 10:30:00', '16', '', '', 281, 0, 1452, 'Poule'),
(1091, 28, 226, 225, '2019-03-23 10:30:00', '16', '', '', 281, 0, 1453, 'Poule'),
(1092, 28, 231, 225, '2019-03-23 11:30:00', '16', '', '', 281, 0, 1454, 'Poule'),
(1093, 28, 236, 225, '2019-03-23 00:00:00', '16', '', '', 281, 0, 1455, 'Poule'),
(1094, 28, 231, 226, '2019-03-23 10:00:00', '16', '', '', 281, 0, 1456, 'Poule'),
(1095, 28, 236, 226, '2019-03-23 11:30:00', '16', '', '', 281, 0, 1457, 'Poule'),
(1096, 28, 236, 231, '2019-03-23 11:00:00', '16', '', '', 281, 0, 1458, 'Poule'),
(1097, 28, 224, 223, '2019-03-23 10:00:00', '16', '', '', 281, 0, 1459, 'Poule'),
(1098, 28, 229, 223, '2019-03-23 11:00:00', '16', '', '', 281, 0, 1460, 'Poule'),
(1099, 28, 232, 223, '2019-03-23 00:00:00', '16', '', '', 281, 0, 1461, 'Poule'),
(1100, 28, 235, 223, '2019-03-23 10:30:00', '16', '', '', 281, 0, 1462, 'Poule'),
(1101, 28, 229, 224, '2019-03-23 10:30:00', '16', '', '', 281, 0, 1463, 'Poule'),
(1102, 28, 232, 224, '2019-03-23 11:30:00', '16', '', '', 281, 0, 1464, 'Poule'),
(1103, 28, 235, 224, '2019-03-23 00:00:00', '16', '', '', 281, 0, 1465, 'Poule'),
(1104, 28, 232, 229, '2019-03-23 10:00:00', '16', '', '', 281, 0, 1466, 'Poule'),
(1105, 28, 235, 229, '2019-03-23 11:30:00', '16', '', '', 281, 0, 1467, 'Poule'),
(1106, 28, 235, 232, '2019-03-23 11:00:00', '16', '', '', 281, 0, 1468, 'Poule'),
(1107, 50, 957, 961, '', '', '', '', 355, 0, 1253, 'Poule'),
(1108, 50, 957, 962, '', '', '', '', 355, 0, 1254, 'Poule'),
(1109, 50, 957, 963, '', '', '', '', 355, 0, 1255, 'Poule'),
(1110, 50, 961, 962, '', '', '', '', 355, 0, 1256, 'Poule'),
(1111, 50, 961, 963, '', '', '', '', 355, 0, 1257, 'Poule'),
(1112, 50, 962, 963, '', '', '', '', 355, 0, 1258, 'Poule'),
(1113, 50, 958, 959, '', '', '', '', 355, 0, 1259, 'Poule'),
(1114, 50, 958, 960, '', '', '', '', 355, 0, 1260, 'Poule'),
(1115, 50, 958, 964, '', '', '', '', 355, 0, 1261, 'Poule'),
(1116, 50, 959, 960, '', '', '', '', 355, 0, 1262, 'Poule'),
(1117, 50, 959, 964, '', '', '', '', 355, 0, 1263, 'Poule'),
(1118, 50, 960, 964, '', '', '', '', 355, 0, 1264, 'Poule'),
(1119, 25, 643, 644, '', '', '15', '4', 160, 0, 1540, 'Poule'),
(1120, 25, 643, 649, '', '', '15', '6', 160, 0, 1541, 'Poule'),
(1121, 25, 643, 655, '', '', '15', '4', 160, 0, 1542, 'Poule'),
(1122, 25, 649, 644, '', '', '15', '3', 160, 0, 1543, 'Poule'),
(1123, 25, 644, 655, '', '', '15', '10', 160, 0, 1544, 'Poule'),
(1124, 25, 655, 649, '', '', '1', '15', 160, 0, 1545, 'Poule'),
(1125, 25, 645, 650, '', '', '3', '15', 160, 0, 1546, 'Poule'),
(1126, 25, 645, 656, '', '', '6', '15', 160, 0, 1547, 'Poule'),
(1127, 25, 645, 658, '', '', '15', '8', 160, 0, 1548, 'Poule'),
(1128, 25, 656, 650, '', '', '13', '15', 160, 0, 1549, 'Poule'),
(1129, 25, 650, 658, '', '', '15', '7', 160, 0, 1550, 'Poule'),
(1130, 25, 656, 658, '', '', '15', '9', 160, 0, 1551, 'Poule'),
(1131, 25, 647, 646, '', '', '15', '6', 160, 0, 1552, 'Poule'),
(1132, 25, 652, 646, '', '', '15', '11', 160, 0, 1553, 'Poule'),
(1133, 25, 646, 657, '', '', '15', '6', 160, 0, 1554, 'Poule'),
(1134, 25, 647, 652, '', '', '6', '15', 160, 0, 1555, 'Poule'),
(1135, 25, 647, 657, '', '', '10', '15', 160, 0, 1556, 'Poule'),
(1136, 25, 652, 657, '', '', '15', '4', 160, 0, 1557, 'Poule'),
(1137, 25, 651, 648, '', '', '15', '8', 160, 0, 1558, 'Poule'),
(1138, 25, 648, 653, '', '', '7', '15', 160, 0, 1559, 'Poule'),
(1139, 25, 648, 654, '', '', '4', '15', 160, 0, 1560, 'Poule'),
(1140, 25, 651, 653, '', '', '15', '7', 160, 0, 1561, 'Poule'),
(1141, 25, 651, 654, '', '', '15', '13', 160, 0, 1562, 'Poule'),
(1142, 25, 653, 654, '', '', '5', '15', 160, 0, 1563, 'Poule'),
(1143, 6, 1028, 1030, '', '', '19', '20', 370, 0, 1736, 'Poule'),
(1144, 6, 1023, 1028, '', '', '6', '27', 370, 0, 1737, 'Poule'),
(1145, 6, 1023, 1030, '', '', '10', '23', 370, 0, 1738, 'Poule'),
(1146, 6, 1023, 1025, '', '', '5', '32', 370, 0, 1739, 'Poule'),
(1147, 6, 1025, 1028, '', '', '17', '22', 370, 0, 1740, 'Poule'),
(1148, 6, 1025, 1030, '', '', '18', '8', 370, 0, 1741, 'Poule'),
(1149, 6, 1024, 1033, '', '', '14', '17', 370, 0, 1742, 'Poule'),
(1150, 6, 1024, 1032, '', '', '11', '26', 370, 0, 1743, 'Poule'),
(1151, 6, 1032, 1033, '', '', '15', '14', 370, 0, 1744, 'Poule'),
(1152, 6, 1021, 1033, '', '', '7', '10', 370, 0, 1745, 'Poule'),
(1153, 6, 1021, 1024, '', '', '18', '7', 370, 0, 1746, 'Poule'),
(1154, 6, 1021, 1032, '', '', '9', '16', 370, 0, 1747, 'Poule'),
(1155, 40, 901, 909, '', '', '', '', 337, 0, 1807, 'Poule'),
(1156, 40, 901, 911, '', '', '', '', 337, 0, 1808, 'Poule'),
(1157, 40, 901, 906, '', '', '', '', 337, 0, 1809, 'Poule'),
(1158, 40, 901, 910, '', '', '', '', 337, 0, 1810, 'Poule'),
(1159, 40, 901, 907, '', '', '', '', 337, 0, 1811, 'Poule'),
(1160, 40, 909, 911, '', '', '', '', 337, 0, 1812, 'Poule'),
(1161, 40, 909, 910, '', '', '', '', 337, 0, 1813, 'Poule'),
(1162, 40, 906, 909, '', '', '', '', 337, 0, 1814, 'Poule'),
(1163, 40, 906, 911, '', '', '', '', 337, 0, 1815, 'Poule'),
(1164, 40, 906, 910, '', '', '', '', 337, 0, 1816, 'Poule'),
(1165, 40, 906, 907, '', '', '', '', 337, 0, 1817, 'Poule'),
(1166, 40, 910, 911, '', '', '', '', 337, 0, 1818, 'Poule'),
(1167, 40, 907, 909, '', '', '', '', 337, 0, 1819, 'Poule'),
(1168, 40, 907, 911, '', '', '', '', 337, 0, 1820, 'Poule'),
(1169, 40, 907, 910, '', '', '', '', 337, 0, 1821, 'Poule'),
(1170, 40, 904, 905, '', '', '', '', 337, 0, 1822, 'Poule'),
(1171, 40, 904, 908, '', '', '', '', 337, 0, 1823, 'Poule'),
(1172, 40, 903, 904, '', '', '', '', 337, 0, 1824, 'Poule'),
(1173, 40, 903, 905, '', '', '', '', 337, 0, 1825, 'Poule'),
(1174, 40, 903, 908, '', '', '', '', 337, 0, 1826, 'Poule'),
(1175, 40, 902, 904, '', '', '', '', 337, 0, 1827, 'Poule'),
(1176, 40, 902, 903, '', '', '', '', 337, 0, 1828, 'Poule'),
(1177, 40, 902, 905, '', '', '', '', 337, 0, 1829, 'Poule'),
(1178, 40, 902, 908, '', '', '', '', 337, 0, 1830, 'Poule'),
(1179, 40, 905, 908, '', '', '', '', 337, 0, 1831, 'Poule'),
(1180, 6, 1033, 1025, '', '', '18', '50', 369, 0, 1856, 'Demie'),
(1181, 6, 1032, 1028, '', '', '28', '32', 369, 0, 1859, 'Demie'),
(1182, 6, 1025, 1028, '', '', '', '', 369, 0, 1857, 'Finale'),
(1183, 6, 1033, 1032, '', '', '24', '20', 369, 0, 1858, 'Petite finale'),
(1184, 50, 1077, 1078, '', '', '', '', 393, 0, 1865, ''),
(1185, 50, 1079, 1080, '', '', '', '', 393, 0, 1866, ''),
(1186, 50, 1078, 1080, '', '', '', '', 393, 0, 1867, ''),
(1187, 50, 1077, 1079, '', '', '', '', 393, 0, 1868, '');

-- --------------------------------------------------------

--
-- Structure de la table `matchsspecial`
--

CREATE TABLE `matchsspecial` (
  `id_match_special` int(11) NOT NULL,
  `sport` varchar(255) NOT NULL,
  `equipe` varchar(255) NOT NULL,
  `classement_equipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `partenaires`
--

CREATE TABLE `partenaires` (
  `id_partenaire` int(11) DEFAULT NULL,
  `chemin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `partenaires`
--

INSERT INTO `partenaires` (`id_partenaire`, `chemin`) VALUES
(1, './Partenaires/Deloitte.png'),
(2, './Partenaires/SOPRASTERIA_RVB.jpg'),
(3, './Partenaires/Chorege.png'),
(4, './Partenaires/Smerra.png');

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `id_photo` int(11) NOT NULL,
  `nom_photo` varchar(255) NOT NULL,
  `chemin` varchar(255) NOT NULL,
  `date_photo` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photos`
--

INSERT INTO `photos` (`id_photo`, `nom_photo`, `chemin`, `date_photo`) VALUES
(7, '00_12_57Photo.jpg', './Photos/00_12_57Photo.jpg', '2018-03-17 00:12:57'),
(8, '00_13_28Photo.jpg', './Photos/00_13_28Photo.jpg', '2018-03-17 00:13:28'),
(11, '00_14_06Photo.jpg', './Photos/00_14_06Photo.jpg', '2018-03-17 00:14:06'),
(12, '00_14_15Photo.jpg', './Photos/00_14_15Photo.jpg', '2018-03-17 00:14:15'),
(15, '00_15_10Photo.jpg', './Photos/00_15_10Photo.jpg', '2018-03-17 00:15:10'),
(20, '10_25_42Photo.JPG', './Photos/10_25_42Photo.JPG', '2018-03-17 10:25:42'),
(22, '10_26_01Photo.JPG', './Photos/10_26_01Photo.JPG', '2018-03-17 10:26:01'),
(35, '12_01_52Photo.jpg', './Photos/12_01_52Photo.jpg', '2018-03-17 12:01:52'),
(43, '15_27_06Photo.jpg', './Photos/15_27_06Photo.jpg', '2018-03-17 15:27:06'),
(45, '15_27_27Photo.jpg', './Photos/15_27_27Photo.jpg', '2018-03-17 15:27:27'),
(46, '22_37_34Photo.jpg', './Photos/22_37_34Photo.jpg', '2018-03-17 22:37:34'),
(47, '22_37_58Photo.jpg', './Photos/22_37_58Photo.jpg', '2018-03-17 22:37:58');

-- --------------------------------------------------------

--
-- Structure de la table `plans`
--

CREATE TABLE `plans` (
  `id_plan` int(11) NOT NULL,
  `chemin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plans`
--

INSERT INTO `plans` (`id_plan`, `chemin`) VALUES
(12, './Plans/10_40_09.png'),
(13, './Plans/10_42_09.png'),
(14, './Plans/10_42_18.png');

-- --------------------------------------------------------

--
-- Structure de la table `podiums`
--

CREATE TABLE `podiums` (
  `id_podium` int(11) NOT NULL,
  `id_sport` int(11) DEFAULT NULL,
  `id_concurrent1` int(11) DEFAULT NULL,
  `id_concurrent2` int(11) DEFAULT NULL,
  `id_concurrent3` int(11) DEFAULT NULL,
  `id_concurrent3ex` int(11) DEFAULT NULL,
  `ex_12` varchar(255) DEFAULT NULL,
  `ex_23` varchar(255) DEFAULT NULL,
  `ex_3` varchar(255) DEFAULT NULL,
  `id_ecole1` int(11) DEFAULT NULL,
  `id_ecole2` int(11) DEFAULT NULL,
  `id_ecole3` int(11) DEFAULT NULL,
  `id_ecole3ex` int(11) DEFAULT NULL,
  `diminutif1` varchar(255) DEFAULT NULL,
  `diminutif2` varchar(255) DEFAULT NULL,
  `diminutif3` varchar(255) DEFAULT NULL,
  `diminutif3ex` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `podiums`
--

INSERT INTO `podiums` (`id_podium`, `id_sport`, `id_concurrent1`, `id_concurrent2`, `id_concurrent3`, `id_concurrent3ex`, `ex_12`, `ex_23`, `ex_3`, `id_ecole1`, `id_ecole2`, `id_ecole3`, `id_ecole3ex`, `diminutif1`, `diminutif2`, `diminutif3`, `diminutif3ex`) VALUES
(31, 40, 0, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, '', '', '', ''),
(32, 1, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(33, 3, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(34, 4, 503, 496, 513, 504, '0', '0', '1', 131, 4, 118, 87, '', '', '', ''),
(35, 5, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(36, 6, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(37, 8, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(38, 9, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(39, 11, 1108, 1107, 1110, 1109, '1', '0', '0', 34, 115, 8, 93, 'Clément P.', 'Mathilde L.', 'Marc D.', 'Patrice C.'),
(40, 12, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(41, 13, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(42, 14, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(43, 15, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(44, 16, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(45, 17, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(46, 18, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(47, 19, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(48, 20, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(49, 21, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(50, 22, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(51, 24, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(52, 25, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(53, 27, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(54, 28, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(55, 39, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(56, 42, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', ''),
(57, 50, 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `poules`
--

CREATE TABLE `poules` (
  `id` int(11) NOT NULL,
  `id_poule` int(11) DEFAULT NULL,
  `poule` varchar(255) DEFAULT NULL,
  `id_concurrent` int(11) DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL,
  `id_phase` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `poules`
--

INSERT INTO `poules` (`id`, `id_poule`, `poule`, `id_concurrent`, `id_equipe`, `id_phase`) VALUES
(214, 64, 'E', 439, 282, 15),
(215, 64, 'E', 440, 180, 15),
(216, 64, 'E', 438, 76, 15),
(217, 64, 'E', 437, 507, 15),
(218, 63, 'D', 436, 392, 15),
(219, 65, 'F', 441, 111, 15),
(220, 65, 'F', 442, 69, 15),
(221, 66, 'F', 446, 506, 15),
(222, 67, 'G', 420, 139, 15),
(223, 66, 'F', 445, 10, 15),
(224, 65, 'F', 444, 194, 15),
(225, 65, 'F', 443, 363, 15),
(226, 63, 'D', 435, 508, 15),
(227, 63, 'D', 434, 262, 15),
(228, 61, 'B', 425, 500, 15),
(229, 61, 'B', 426, 251, 15),
(230, 59, 'A', 424, 199, 15),
(231, 59, 'A', 423, 44, 15),
(232, 59, 'A', 422, 100, 15),
(233, 61, 'B', 427, 318, 15),
(234, 61, 'B', 428, 22, 15),
(235, 62, 'C', 432, 136, 15),
(236, 63, 'D', 433, 547, 15),
(237, 62, 'C', 431, 375, 15),
(238, 62, 'C', 430, 24, 15),
(239, 62, 'C', 429, 505, 15),
(240, 59, 'A', 421, 499, 15),
(241, 83, 'D', 584, 255, 151),
(242, 83, 'D', 582, 36, 151),
(243, 83, 'D', 578, 203, 151),
(244, 84, 'E', 573, 60, 151),
(245, 84, 'E', 587, 103, 151),
(246, 84, 'E', 572, 142, 151),
(247, 84, 'E', 570, 117, 151),
(248, 83, 'D', 571, 79, 151),
(249, 82, 'C', 586, 110, 151),
(250, 81, 'B', 576, 510, 151),
(251, 80, 'A', 575, 509, 151),
(252, 80, 'A', 581, 292, 151),
(253, 81, 'B', 583, 9, 151),
(254, 81, 'B', 579, 184, 151),
(255, 82, 'C', 580, 306, 151),
(256, 82, 'C', 574, 330, 151),
(257, 80, 'A', 588, 191, 151),
(258, 56, '7', 507, 464, 132),
(259, 57, '8', 494, 550, 132),
(260, 56, '7', 514, 23, 132),
(261, 52, '3', 518, 144, 132),
(262, 55, '6', 508, 420, 132),
(263, 55, '6', 493, 138, 132),
(264, 57, '8', 516, 396, 132),
(265, 57, '8', 500, 215, 132),
(266, 58, '9', 510, 279, 132),
(267, 58, '9', 521, 201, 132),
(268, 58, '9', 502, 487, 132),
(269, 58, '9', 496, 134, 132),
(270, 57, '8', 495, 87, 132),
(271, 55, '6', 519, 304, 132),
(272, 54, '5', 509, 377, 132),
(273, 51, '2', 504, 19, 132),
(274, 52, '3', 515, 77, 132),
(275, 51, '2', 501, 488, 132),
(276, 51, '2', 497, 120, 132),
(277, 50, '1', 517, 297, 132),
(278, 50, '1', 506, 424, 132),
(279, 52, '3', 512, 206, 132),
(280, 56, '7', 520, 208, 132),
(281, 54, '5', 503, 541, 132),
(282, 54, '5', 511, 273, 132),
(283, 53, '4', 498, 359, 132),
(284, 53, '4', 505, 65, 132),
(285, 53, '4', 513, 258, 132),
(286, 50, '1', 499, 486, 132),
(287, 132, 'D', 775, 156, 255),
(288, 131, 'C', 788, 8, 255),
(289, 132, 'D', 778, 314, 255),
(290, 132, 'D', 787, 33, 255),
(291, 127, 'A', 789, 353, 255),
(292, 131, 'C', 777, 34, 255),
(293, 131, 'C', 782, 490, 255),
(294, 130, 'B', 785, 294, 255),
(295, 127, 'A', 784, 211, 255),
(296, 130, 'B', 776, 473, 255),
(297, 130, 'B', 779, 57, 255),
(298, 130, 'B', 780, 489, 255),
(299, 127, 'A', 786, 350, 255),
(300, 22, '4', 157, 0, 21),
(301, 22, '4', 156, 0, 21),
(302, 21, '3', 153, 0, 21),
(303, 22, '4', 154, 0, 21),
(304, 23, '5', 151, 0, 21),
(305, 23, '5', 159, 0, 21),
(306, 23, '5', 155, 0, 21),
(307, 21, '3', 150, 0, 21),
(308, 20, '2', 146, 0, 21),
(309, 19, '1', 152, 0, 21),
(310, 19, '1', 147, 0, 21),
(311, 19, '1', 149, 0, 21),
(312, 20, '2', 144, 0, 21),
(313, 20, '2', 158, 0, 21),
(314, 21, '3', 145, 0, 21),
(315, 20, '2', 148, 0, 21),
(316, 19, '1', 143, 0, 21),
(317, 150, 'n', 890, 362, 317),
(318, 150, 'n', 875, 351, 317),
(319, 151, 'n', 892, 54, 317),
(320, 150, 'n', 878, 545, 317),
(321, 151, 'n', 872, 53, 317),
(322, 151, 'n', 889, 341, 317),
(323, 152, 'n', 871, 140, 317),
(324, 152, 'n', 882, 409, 317),
(325, 152, 'n', 881, 408, 317),
(326, 151, 'n', 879, 517, 317),
(327, 150, 'n', 893, 275, 317),
(328, 149, 'n', 877, 513, 317),
(329, 148, 'n', 874, 320, 317),
(330, 147, 'n', 873, 171, 317),
(331, 147, 'n', 876, 512, 317),
(332, 147, 'n', 891, 46, 317),
(333, 148, 'n', 884, 285, 317),
(334, 148, 'n', 885, 16, 317),
(335, 149, 'n', 883, 145, 317),
(336, 149, 'n', 888, 209, 317),
(337, 149, 'n', 886, 37, 317),
(338, 148, 'n', 887, 11, 317),
(339, 147, 'n', 880, 435, 317),
(340, 159, 's', 935, 179, 346),
(341, 159, 's', 926, 93, 346),
(342, 159, 's', 933, 370, 346),
(343, 160, 'a', 931, 438, 346),
(344, 160, 'a', 941, 7, 346),
(345, 160, 'a', 936, 124, 346),
(346, 159, 's', 929, 501, 346),
(347, 158, 'n', 932, 121, 346),
(348, 157, 'r', 934, 72, 346),
(349, 157, 'r', 940, 28, 346),
(350, 158, 'n', 928, 62, 346),
(351, 158, 'n', 927, 220, 346),
(352, 158, 'n', 937, 264, 346),
(353, 157, 'r', 930, 502, 346),
(354, 102, '2', 661, 150, 202),
(355, 104, '3', 662, 221, 202),
(356, 104, '3', 701, 155, 202),
(357, 104, '3', 704, 324, 202),
(358, 102, '2', 707, 113, 202),
(359, 102, '2', 702, 504, 202),
(360, 101, '1', 660, 106, 202),
(361, 101, '1', 703, 538, 202),
(362, 101, '1', 709, 129, 202),
(363, 101, '1', 708, 35, 202),
(364, 48, 'C', 449, 160, 127),
(365, 48, 'C', 453, 200, 127),
(366, 49, 'D', 456, 89, 127),
(367, 49, 'D', 451, 523, 127),
(368, 49, 'D', 450, 316, 127),
(369, 48, 'C', 459, 236, 127),
(370, 47, 'B', 458, 397, 127),
(371, 45, 'A', 457, 455, 127),
(372, 45, 'A', 448, 231, 127),
(373, 45, 'A', 455, 42, 127),
(374, 47, 'B', 452, 210, 127),
(375, 47, 'B', 447, 332, 127),
(376, 45, 'A', 454, 302, 127),
(377, 116, '7', 616, 274, 157),
(378, 116, '7', 611, 334, 157),
(379, 116, '7', 620, 29, 157),
(380, 115, '6', 619, 219, 157),
(381, 115, '6', 642, 527, 157),
(382, 115, '6', 604, 365, 157),
(383, 117, '8', 624, 378, 157),
(384, 117, '8', 641, 526, 157),
(385, 118, '9', 622, 47, 157),
(386, 118, '9', 623, 99, 157),
(387, 118, '9', 603, 66, 157),
(388, 118, '9', 600, 40, 157),
(389, 117, '8', 608, 257, 157),
(390, 114, '5', 621, 18, 157),
(391, 114, '5', 615, 348, 157),
(392, 111, '2', 612, 421, 157),
(393, 111, '2', 605, 151, 157),
(394, 111, '2', 602, 309, 157),
(395, 110, '1', 607, 296, 157),
(396, 110, '1', 618, 6, 157),
(397, 112, '3', 617, 188, 157),
(398, 112, '3', 606, 355, 157),
(399, 113, '4', 610, 90, 157),
(400, 114, '5', 613, 434, 157),
(401, 113, '4', 614, 202, 157),
(402, 113, '4', 639, 551, 157),
(403, 112, '3', 609, 261, 157),
(404, 110, '1', 640, 525, 157),
(405, 88, 'C', 653, 147, 160),
(406, 88, 'C', 654, 30, 160),
(407, 88, 'C', 648, 534, 160),
(408, 89, 'D', 645, 152, 160),
(409, 89, 'D', 650, 278, 160),
(410, 89, 'D', 658, 105, 160),
(411, 89, 'D', 656, 5, 160),
(412, 88, 'C', 651, 182, 160),
(413, 87, 'B', 655, 342, 160),
(414, 85, 'A', 652, 63, 160),
(415, 85, 'A', 657, 207, 160),
(416, 85, 'A', 646, 368, 160),
(417, 87, 'B', 643, 157, 160),
(418, 87, 'B', 644, 321, 160),
(419, 87, 'B', 649, 20, 160),
(420, 85, 'A', 647, 528, 160),
(421, 137, 'C', 226, 564, 281),
(422, 137, 'C', 231, 403, 281),
(423, 137, 'C', 236, 73, 281),
(424, 137, 'C', 225, 563, 281),
(425, 138, 'D', 217, 360, 281),
(426, 138, 'D', 227, 565, 281),
(427, 138, 'D', 228, 566, 281),
(428, 138, 'D', 219, 165, 281),
(429, 138, 'D', 234, 387, 281),
(430, 137, 'C', 220, 4, 281),
(431, 136, 'B', 224, 562, 281),
(432, 135, 'A', 218, 83, 281),
(433, 135, 'A', 233, 402, 281),
(434, 135, 'A', 221, 520, 281),
(435, 135, 'A', 222, 560, 281),
(436, 136, 'B', 235, 369, 281),
(437, 136, 'B', 232, 454, 281),
(438, 136, 'B', 229, 415, 281),
(439, 136, 'B', 223, 561, 281),
(440, 135, 'A', 230, 126, 281),
(441, 140, 'e', 828, 0, 289),
(442, 140, 'e', 829, 0, 289),
(443, 140, 'e', 830, 0, 289),
(444, 140, 'e', 827, 0, 289),
(445, 140, 'e', 826, 0, 289),
(446, 140, 'e', 824, 0, 289),
(447, 140, 'e', 825, 0, 289),
(448, 140, 'e', 822, 0, 289),
(449, 154, '2', 906, 0, 338),
(450, 154, '2', 910, 0, 338),
(451, 154, '2', 907, 0, 338),
(452, 154, '2', 908, 0, 338),
(453, 154, '2', 905, 0, 338),
(454, 153, '1', 902, 0, 338),
(455, 153, '1', 909, 0, 338),
(456, 153, '1', 911, 0, 338),
(457, 153, '1', 904, 0, 338),
(458, 154, '2', 903, 0, 338),
(459, 153, '1', 901, 0, 338),
(460, 141, '1', 690, 0, 293),
(461, 141, '1', 689, 0, 293),
(462, 141, '1', 688, 0, 293),
(463, 141, '1', 686, 0, 293);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_5h_6h`
--

CREATE TABLE `samedi_5h_6h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_5h_6h`
--

INSERT INTO `samedi_5h_6h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:10:00', '', '', '', NULL),
(2, 'VDP', '00:00:10', '', '', 'schodou', NULL),
(3, 'VDP', '00:00:10', '', '', 'slheug', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_6h_7h`
--

CREATE TABLE `samedi_6h_7h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_6h_7h`
--

INSERT INTO `samedi_6h_7h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:01:00', 'navettes', ' 3', NULL, ''),
(2, 'ecureuil', '00:01:00', 'image, stream, image', '', '', ''),
(3, 'navettes', '00:01:00', 'navettes', ' 3', NULL, ''),
(4, 'ecureuil', '00:01:00', '', '', NULL, NULL),
(5, 'navettes', '00:01:00', 'navettes', ' 3', NULL, ''),
(6, 'ecureuil', '00:01:00', 'image, stream, image', '', '', ''),
(7, 'navettes', '00:01:00', 'navettes', ' 3', NULL, ''),
(8, 'ecureuil', '00:01:00', '', '', NULL, NULL),
(9, 'VDP', '00:00:08', '', '', 'manah', NULL),
(10, 'VDP', '00:00:08', '', '', 'dahlgow', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_7h_8h`
--

CREATE TABLE `samedi_7h_8h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_7h_8h`
--

INSERT INTO `samedi_7h_8h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:02:00', '', '', NULL, ''),
(2, 'ecureuil', '00:02:00', '', '', '', ''),
(3, 'navettes', '00:02:00', '', '', NULL, ''),
(4, 'ecureuil', '00:02:00', '', '', '', ''),
(5, 'VDP', '00:00:08', '', '', 'haykix', NULL),
(6, 'VDP', '00:00:08', '', '', 'guyrek', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_8h_9h`
--

CREATE TABLE `samedi_8h_9h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_8h_9h`
--

INSERT INTO `samedi_8h_9h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:01:00', '', '', NULL, ''),
(2, 'ecureuil', '00:01:00', '', '', 'Badminton', ''),
(3, 'navettes', '00:01:00', '', '', NULL, ''),
(4, 'ecureuil', '00:01:00', '', '', 'FootF', ''),
(29, 'VDP', '00:00:08', '', '', 'yaroh', ''),
(30, 'VDP', '00:00:08', '', '', 'laikha', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_9h_10h`
--

CREATE TABLE `samedi_9h_10h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_9h_10h`
--

INSERT INTO `samedi_9h_10h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'navettes', '00:02:00', '', '', NULL, ''),
(2, 'scores', '00:02:00', '', '', 'BasketF', ''),
(3, 'navettes', '00:02:00', '', '', NULL, ''),
(4, 'scores', '00:02:00', '', '', 'BasketH', ''),
(5, 'navettes', '00:02:00', '', '', NULL, ''),
(6, 'navettes', '00:02:00', '', '', '', ''),
(7, 'scores', '00:02:00', '', '', 'HandH', ''),
(8, 'navettes', '00:02:00', '', '', NULL, ''),
(9, 'scores', '00:02:00', '', '', 'HandF', ''),
(10, 'navettes', '00:02:00', '', '', NULL, ''),
(11, 'navettes', '00:02:00', '', '', NULL, ''),
(12, 'scores', '00:02:00', '', '', 'RugbyH', ''),
(13, 'navettes', '00:02:00', '', '', NULL, ''),
(14, 'scores', '00:02:00', '', '', 'RugbyF', ''),
(15, 'navettes', '00:02:00', '', '', NULL, ''),
(16, 'navettes', '00:02:00', '', '', '', ''),
(17, 'scores', '00:02:00', '', '', 'VolleyH', ''),
(18, 'navettes', '00:02:00', '', '', NULL, ''),
(19, 'scores', '00:02:00', '', '', 'VolleyF', ''),
(20, 'navettes', '00:02:00', '', '', NULL, ''),
(21, 'navettes', '00:02:00', '', '', NULL, ''),
(22, 'scores', '00:02:00', '', '', 'Judo', ''),
(23, 'navettes', '00:02:00', '', '', NULL, ''),
(24, 'scores', '00:02:00', '', '', 'Tennis', ''),
(25, 'navettes', '00:02:00', '', '', NULL, ''),
(26, 'navettes', '00:02:00', '', '', '', ''),
(27, 'scores', '00:02:00', '', '', 'Tennis de Table', ''),
(28, 'navettes', '00:02:00', '', '', NULL, ''),
(29, 'VDP', '00:00:08', '', '', 'baullo', ''),
(30, 'VDP', '00:00:08', '', '', 'aukrom', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_10h_11h`
--

CREATE TABLE `samedi_10h_11h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_10h_11h`
--

INSERT INTO `samedi_10h_11h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:02:00', '', '', 'BasketF', ''),
(2, 'scores', '00:02:00', '', '', 'BasketH', ''),
(3, 'navettes', '00:02:00', '', '', '', ''),
(4, 'scores', '00:02:00', '', '', 'HandH', ''),
(5, 'scores', '00:02:00', '', '', 'HandF', ''),
(6, 'scores', '00:02:00', '', '', 'RugbyH', ''),
(7, 'scores', '00:02:00', '', '', 'RugbyF', ''),
(8, 'scores', '00:02:00', '', '', 'VolleyH', ''),
(9, 'scores', '00:02:00', '', '', 'VolleyF', ''),
(10, 'scores', '00:02:00', '', '', 'Judo', ''),
(11, 'scores', '00:02:00', '', '', 'Tennis', ''),
(12, 'scores', '00:02:00', '', '', 'Tennis de Table', ''),
(13, 'VDP', '00:00:08', '', '', 'rhycha', ''),
(14, 'VDP', '00:00:08', '', '', 'melynn', ''),
(15, 'mourai', '00:00:15', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `samedi_11h_12h`
--

CREATE TABLE `samedi_11h_12h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_11h_12h`
--

INSERT INTO `samedi_11h_12h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(9, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(10, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(11, 'village', '00:01:00', '', '', '', ''),
(12, 'VDP', '00:00:08', '', ' ', 'jezou', ''),
(13, 'VDP', '00:00:08', '', '', 'yzos', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_12h_13h`
--

CREATE TABLE `samedi_12h_13h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_12h_13h`
--

INSERT INTO `samedi_12h_13h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'village', '00:01:00', '', '', '', ''),
(16, 'VDP', '00:00:08', '', ' ', 'skyh', ''),
(17, 'VDP', '00:00:08', '', '', 'prom', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_13h_14h`
--

CREATE TABLE `samedi_13h_14h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_13h_14h`
--

INSERT INTO `samedi_13h_14h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'scores', '00:01:00', '', '', 'Badminton', ''),
(16, 'VDP', '00:00:08', '', ' ', 'slheug', ''),
(17, 'VDP', '00:00:08', '', '', 'dimmi', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_14h_15h`
--

CREATE TABLE `samedi_14h_15h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_14h_15h`
--

INSERT INTO `samedi_14h_15h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'village', '00:01:00', '', '', '', ''),
(16, 'VDP', '00:00:08', '', ' ', 'schodou', ''),
(17, 'VDP', '00:00:08', '', '', 'tchosen', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_15h_16h`
--

CREATE TABLE `samedi_15h_16h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_15h_16h`
--

INSERT INTO `samedi_15h_16h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'village', '00:01:00', '', '', '', ''),
(16, 'VDP', '00:00:08', '', ' ', 'haykix', ''),
(17, 'VDP', '00:00:08', '', '', 'guyrek', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_16h_17h`
--

CREATE TABLE `samedi_16h_17h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_16h_17h`
--

INSERT INTO `samedi_16h_17h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'scores', '00:01:00', '', ' ', 'BasketF', ''),
(2, 'scores', '00:01:00', '', '', 'BasketH', ''),
(3, 'scores', '00:01:00', '', ' ', 'RugbyF', ''),
(4, 'scores', '00:01:00', '', '', 'RugbyH', ''),
(5, 'scores', '00:01:00', '', ' ', 'HandF', ''),
(6, 'scores', '00:01:00', '', '', 'HandH', ''),
(7, 'scores', '00:01:00', '', ' ', 'VolleyF', ''),
(8, 'scores', '00:01:00', '', '', 'VolleyH', ''),
(10, 'scores', '00:01:00', '', '', 'Tennis de Table', ''),
(11, 'scores', '00:01:00', '', ' ', 'Tennis', ''),
(15, 'village', '00:01:00', '', '', '', ''),
(16, 'VDP', '00:00:08', '', ' ', 'baullo', ''),
(17, 'VDP', '00:00:08', '', '', 'aukrom', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_17h_18h`
--

CREATE TABLE `samedi_17h_18h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_17h_18h`
--

INSERT INTO `samedi_17h_18h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'BasketH', ''),
(3, 'stream', '00:10:00', '', ' ', 'RugbyF', ''),
(4, 'stream', '00:10:00', '', '', 'RugbyH', ''),
(5, 'stream', '00:10:00', '', ' ', 'HandF', ''),
(6, 'stream', '00:10:00', '', '', 'VolleyH', ''),
(7, 'stream', '00:10:00', '', ' ', 'VolleyF', ''),
(8, 'village', '00:01:00', '', '', '', ''),
(9, 'VDP', '00:00:08', '', ' ', 'yaroh', ''),
(10, 'VDP', '00:00:08', '', '', 'laikha', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_18h_19h`
--

CREATE TABLE `samedi_18h_19h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_18h_19h`
--

INSERT INTO `samedi_18h_19h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'HandH', ''),
(3, 'stream', '00:10:00', '', ' ', 'RugbyF', ''),
(4, 'stream', '00:10:00', '', '', 'RugbyH', ''),
(5, 'stream', '00:10:00', '', ' ', 'HandF', ''),
(6, 'stream', '00:10:00', '', '', 'VolleyH', ''),
(7, 'stream', '00:10:00', '', ' ', 'VolleyF', ''),
(8, 'village', '00:01:00', '', '', '', ''),
(9, 'VDP', '00:00:08', '', ' ', 'rhycha', ''),
(10, 'VDP', '00:00:08', '', '', 'melynn', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_19h_20h`
--

CREATE TABLE `samedi_19h_20h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_19h_20h`
--

INSERT INTO `samedi_19h_20h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'HandH', ''),
(3, 'stream', '00:10:00', '', ' ', 'RugbyF', ''),
(4, 'stream', '00:10:00', '', '', 'RugbyH', ''),
(5, 'stream', '00:10:00', '', ' ', 'HandF', ''),
(6, 'stream', '00:10:00', '', '', 'VolleyH', ''),
(7, 'stream', '00:10:00', '', ' ', 'VolleyF', ''),
(8, 'village', '00:01:00', '', '', '', ''),
(9, 'VDP', '00:00:08', '', ' ', 'slheug', ''),
(10, 'VDP', '00:00:08', '', '', 'prom', '');

-- --------------------------------------------------------

--
-- Structure de la table `samedi_20h_21h`
--

CREATE TABLE `samedi_20h_21h` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `types` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `urls` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `samedi_20h_21h`
--

INSERT INTO `samedi_20h_21h` (`id`, `nom`, `duree`, `types`, `modele`, `urls`, `titre`) VALUES
(1, 'stream', '00:10:00', '', ' ', 'BasketF', ''),
(2, 'stream', '00:10:00', '', '', 'BasketH', ''),
(3, 'stream', '00:10:00', '', ' ', 'RugbyF', ''),
(4, 'stream', '00:10:00', '', '', 'RugbyH', ''),
(5, 'stream', '00:10:00', '', ' ', 'HandF', ''),
(6, 'stream', '00:10:00', '', '', 'VolleyH', ''),
(7, 'fullscreen', '00:00:00', '', '', 'soireeH', NULL),
(8, 'RAVSS', '00:10:00', '', ' ', '', ''),
(9, 'fullscreen', '00:01:00', '', '', 'degrisement', ''),
(10, 'fullscreen', '00:01:00', '', '', 'changement', ''),
(11, 'VDP', '00:00:08', '', ' ', 'schodou', ''),
(12, 'VDP', '00:00:08', '', '', 'yzos', '');

--
-- Structure de la table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `id_challenger` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `id_challenger`, `nom`, `latitude`, `longitude`) VALUES
(1, 36, 'Perollier', '45.7907', '4.78178'),
(2, 39, 'Salle Louis Chirpaz', '45.7742', '4.7718'),
(3, 40, 'Ecully Cevert', '45.7835', '4.78804'),
(4, 41, 'ENTPE', '45.7784', '4.92416'),
(5, 42, 'Doua Est', '45.7847', '4.87695'),
(6, 43, 'Doua Ouest', '45.7821', '4.86491'),
(7, 44, 'CSI', '45.7281', '4.82284'),
(8, 45, 'Stade Gilbert Vignes', '45.7711', '4.79656'),
(9, 46, 'La Sarra', '45.7622', '4.81411'),
(10, 47, 'VétAgro Sup', '45.793', '4.71435'),
(11, 48, 'Lycée la Martinière Monplaisir', '45.7389', '4.87242'),
(12, 49, 'Lou Tennis Parc', '45.7194', '4.8241'),
(13, 50, 'Ecole Centrale Lyon', '45.7829', '4.76613'),
(14, 55, 'EM Lyon', '45.7829', '4.76613'),
(15, 67, 'Complexe d\'Ecully', '45.7811', '4.78612'),
(16, 1, 'Terrain d\'Ecully', '', ''),
(17, 2, 'Centrale', '', ''),
(18, 3, 'STAPS LA Doua', '', ''),
(19, 4, 'Gerland 1', '', ''),
(20, 5, 'Gerland 2', '', ''),
(21, 6, 'Gerland 3', '', ''),
(22, 7, 'Sarra', '', ''),
(23, 8, 'Lyon 2 Bron', '', ''),
(24, 9, 'Golf du Mionnay', '', ''),
(25, 10, 'Alpe d\'Huez', '', ''),
(26, 11, 'Ecully Cevert', '', ''),
(27, 12, 'Ecully Foot', '', ''),
(28, 13, 'ENTPE', '', ''),
(29, 14, 'INSA', '', ''),
(30, 15, 'Ecully tennis', '', ''),
(31, 16, 'ecully chirpaz', '', ''),
(32, 17, 'EM Lyon', '', ''),
(33, 18, 'EM Lyon', '', ''),
(34, 19, 'Sciences C', '', ''),
(35, 20, 'Sciences B', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `sports`
--

CREATE TABLE `sports` (
  `id_sport` int(11) NOT NULL,
  `nom_sport` varchar(255) DEFAULT NULL,
  `individuel` int(11) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `id_challenger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sports`
--

INSERT INTO `sports` (`id_sport`, `nom_sport`, `individuel`, `sexe`, `id_challenger`) VALUES
(31, 'Foot', 0, 'Homme', 1),
(32, 'Foot', 0, 'Femme', 3),
(33, 'Basket', 0, 'Homme', 4),
(34, 'Athlétisme', 1, 'Mixte', 5),
(35, 'Basket', 0, 'Femme', 6),
(36, 'ESport', 1, 'Mixte', 8),
(37, 'Escalade', 1, 'Mixte', 9),
(38, 'Golf', 1, 'Mixte', 11),
(39, 'Hand', 0, 'Homme', 12),
(40, 'Hand', 0, 'Femme', 13),
(41, 'Judo', 1, 'Mixte', 14),
(42, 'Natation', 1, 'Mixte', 15),
(43, 'Raid', 0, 'Mixte', 16),
(44, 'Rugby', 0, 'Homme', 17),
(45, 'Rugby', 0, 'Femme', 18),
(46, 'Ski', 1, 'Mixte', 19),
(47, 'Tennis', 1, 'Mixte', 20),
(48, 'Tennis de Table', 1, 'Mixte', 21),
(49, 'Ultimate', 0, 'Mixte', 22),
(50, 'Volley', 0, 'Homme', 24),
(51, 'Volley', 0, 'Femme', 25),
(52, 'Waterpolo', 0, 'Mixte', 27),
(53, 'Pétanque', 0, 'Mixte', 28),
(54, 'Escrime Epée', 1, 'Mixte', 39),
(55, 'Escrime Fleuret', 1, 'Mixte', 40),
(56, 'Escrime Sabre', 1, 'Mixte', 42),
(57, 'Badminton équipe', 0, 'Mixte', 50);

-- --------------------------------------------------------

--
-- Structure de la table `table_boucle_modele`
--

CREATE TABLE `table_boucle_modele` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `duree` time NOT NULL,
  `modele` varchar(100) NOT NULL,
  `url_image` varchar(100) DEFAULT NULL,
  `url_video` varchar(100) DEFAULT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `texte` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trajets`
--

CREATE TABLE `trajets` (
  `id` int(11) NOT NULL,
  `navette` int(11) DEFAULT NULL,
  `heure_depart` datetime DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `sports` varchar(255) DEFAULT NULL,
  `equipes` varchar(255) DEFAULT NULL,
  `heure_arrivee` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trajets`
--

INSERT INTO `trajets` (`id`, `navette`, `heure_depart`, `destination`, `sports`, `equipes`, `heure_arrivee`) VALUES
(1, 4, '2022-03-26 06:45:00', 'ENTPE', 'Hand F', 'Centrale Lille, Centrale Marseille, Centrale Nantes, IMT Atlantique, Mines d\'Alès, Polytechnique', '0000-00-00 00:00:00'),
(2, 7, '2022-03-26 06:45:00', 'ENTPE', 'Hand F, Natation', 'Centrale Supélec, ESPCI, , Toutes les écoles', '0000-00-00 00:00:00'),
(3, 5, '2022-03-26 06:40:00', 'Gerland', 'Foot M', 'Centrale Lille, Centrale Marseille, ENSEA', NULL),
(4, 3, '2022-03-26 06:40:00', 'Gerland', 'Foot M', 'IMT Atlantique, Mines d\'Alès, Mines Nancy, Mines Saint-Etienne', NULL),
(5, 6, '2022-03-26 06:50:00', 'Gerland', 'Foot M, Athlétisme', 'Ponts ParisTech, , Toutes les écoles', NULL),
(6, 1, '2022-03-26 07:15:00', 'Bron', 'Volley F', 'Centrale Lille, Chimie ParisTech, ENSAE, ENSAM Cluny, ENSTA, EPFL, Supaero, Polytechnique, Supoptique', NULL),
(7, 2, '2022-03-26 07:15:00', 'Bron', 'Volley F, Badminton', 'Agro ParisTech, Centrale Marseille, Centrale Nantes, IMT Atlantique, Mines d\'Alès, , Centrale Supélec, Supoptique, IMT Atlantique, Centrale Marseille, ENISE, Centrale Lille', NULL),
(8, 0, '2022-03-26 07:15:00', 'Bron', 'Badminton', 'Chimie ParisTech, ESPCI', NULL),
(9, 8, '2022-03-26 05:15:00', 'Alpe d\'Huez', 'Ski', 'Toutes les écoles', NULL),
(10, 2, '2022-03-26 06:05:00', 'Mont Thou', 'Raid', 'Toutes les écoles', NULL),
(11, 5, '2022-03-26 08:25:00', 'Gerland', 'Foot M', 'Centrale Supélec, ENISE, ENSTA, Polytechnique', NULL),
(12, 3, '2022-03-26 08:25:00', 'Gerland', 'Foot M, Badminton', 'Mines Paris, Supaero, Telecom ParisTech, , Mines ParisTech, ENSTA, EPFL, Chimie ParisTech, Agro ParisTech, Chimie Montpellier', NULL),
(13, 1, '2022-03-26 08:45:00', 'Ecully', 'Hand M, Foot F', 'Nantes, ENSEA, Polytechnique, , Supoptique', NULL),
(14, 8, '2022-03-26 08:45:00', 'Ecully', 'Foot F', 'Centrale Marseille, Centrale Nantes, Centrale Supélec,  Mines Nancy, Mines ParisTech', NULL),
(15, 1, '2022-03-26 09:35:00', 'Ecully', 'Foot F, Ultimate, Judo', 'Centrale Lille, Mines Saint-Etienne, ENSTA, , Centrale Supélec, ENSEA, , Toutes les écoles', NULL),
(16, 4, '2022-03-26 08:15:00', 'La Doua', 'Tennis, Basket M', 'Toutes les écoles, , ENSEA, ENSTA, ESPCI, Supaero, Mines ParisTech', NULL),
(17, 7, '2022-03-26 08:15:00', 'La Doua', 'Basket M', 'Agro ParisTech, Centrale Marseille, Centrale Nantes, EPFL, Mines d\'Alès, Sigma Clermont, Supoptique', NULL),
(18, 6, '2022-03-26 08:30:00', 'La Doua', 'Volley M, Basket F', 'Centrale Nantes, ESPCI, Mines ParisTech, Telecom ParisTech, , Agro ParisTech, Centrale Lille, EPFL, Mines Nancy', NULL),
(20, 0, '2022-03-26 08:45:00', 'La Doua', 'Volley M', 'ENSTA', NULL),
(21, 4, '2022-03-26 09:25:00', 'La Doua', 'Volley M', 'Centrale Lille, Centrale Supélec, ENSAM Cluny, Mines d\'Alès, Mines Saint-Etienne, Polytechnique', NULL),
(22, 7, '2022-03-26 09:25:00', 'La Doua', 'Volley M, Basket M', 'ENSAE, EPFL, IMT Atlantique, , Centrale Supélec, Mines Nancy, Mines Saint-Etienne, Ponts', NULL),
(23, 2, '2022-03-26 09:35:00', 'La Doua', 'Basket F, Basket M, Volley M', 'Centrale Marseille, Centrale Supelec, Supaero, , ENSAM Cluny, ,Agro ParisTech, Centrale Marseille, Chimie ParisTech, ENISE', NULL),
(24, 6, '2022-03-26 09:40:00', 'La Doua', 'Rugby M, Volley M', 'Centrale Nantes, Centrale Marseille, , Mines Nancy, Supoptique', NULL),
(25, 1, '2022-03-26 10:25:00', 'La Doua', 'Basket M, Escalade, Rugby M', 'Centrale Lille, , Toutes les écoles, , Centrale Lille', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `tweet` varchar(500) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `urgences`
--

CREATE TABLE `urgences` (
  `id_urgence` int(11) NOT NULL,
  `urgence` varchar(255) NOT NULL,
  `numeros_tel` varchar(255) NOT NULL,
  `detail_urgence` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `urgences`
--

INSERT INTO `urgences` (`id_urgence`, `urgence`, `numeros_tel`, `detail_urgence`) VALUES
(3, 'Croix-Rouge', '0482539115', 'Différents points Croix-Rouge sont répartis dans les alentours. Ils sont indiqués sur le plan du Campus dans l\'onglet Informations. Si le numéro ci-dessus n\'est pas joignable, appelle au 0652475357 en cas d\'extrême urgence.'),
(4, 'Extrême urgence', '0686541653', 'Ce numéro n\'est à utiliser qu\'en cas d\'extrême urgence.'),
(5, 'Point info', '0621665646', 'Une personne sera toujours présente pour répondre à tes questions.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `profil` varchar(255) DEFAULT NULL,
  `etat` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `id_ecole` int(11) DEFAULT NULL,
  `id_sport` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `mdp`, `mail`, `nom`, `profil`, `etat`, `credit`, `id_ecole`, `id_sport`) VALUES
(1, 'challenge', 'bb064b23223dff9b805313cdafc355acc64f1642', 'challenge@challenge.fr', 'challenge', 'Challenge', 1, 0, 35, 16),
(2, 'TER', '8727cf7d662c2ccb50fadd99a887dd0ee7eb1947', 'orelienvungoc@hotmail.fr', 'TER', 'VP Tournoi', 1, 0, 131, 18),
(212, 'Julien', '7a956774854b7eaf581c3fc750acc8ae025b0852', 'appli@challenge.com', 'Julien', 'Participant', 1, 0, 131, 14),
(213, 'Pystù', '65d0f74bf4e86747987eb7d8353e2423639501dc', 'appli@challenge.com', 'Pystù', 'Participant', 1, 0, 131, 50),
(214, 'gryffo', '2c6bdf6e11052146a2b09ea77a9f07d2cec6d97c', 'appli@challenge.com', 'gryffo', 'Participant', 1, 0, 131, 50),
(217, 'Vaïah', '1dcfb398e71a846e9daa00bdaa5c95535564b66b', 'appli@challenge.com', 'Vaïah', 'Participant', 1, 0, 131, 20),
(219, 'footm', '5db2ef4deeada4466bcb45c4abf35a02c9629356', 'appli@challenge.com', 'footm', 'VP Tournoi', 1, 0, 131, 1),
(220, 'footf', '2cc09a714274a48acc7803d6c5b4a3c7f0e207a6', 'appli@challenge.com', 'footf', 'VP Tournoi', 1, 0, 131, 3),
(221, 'basketm', 'ecdad613e3bc0da200977b0d2505d48874da7d0b', 'appli@challenge.com', 'basketm', 'VP Tournoi', 1, 0, 131, 4),
(223, 'athle', 'c27b227446b10afadd39c8cdf8df2843d446337a', 'appli@challenge.com', 'athle', 'VP Tournoi', 1, 0, 131, 5),
(224, 'bad', '987f88a15a4120d88345f79a7ade91c52aa2bcf1', 'appli@challenge.com', 'bad', 'VP Tournoi', 1, 0, 131, 50),
(225, 'basketf', 'c6019dc79f91e3a37f12c4da522cd13b89bd7d77', 'appli@challenge.com', 'basketf', 'VP Tournoi', 1, 0, 131, 6),
(226, 'escrimesabre', '89ac272157105c2e71bb2f9cf92ea8d558c1c29f', 'appli@challenge.com', 'escrimesabre', 'VP Tournoi', 1, 0, 131, 42),
(227, 'esport', '57ce41cdd972f36bd02df90cf8f1cd6aa515bfd2', 'appli@challenge.com', 'esport', 'VP Tournoi', 1, 0, 131, 8),
(228, 'escrimefleuret', '89ac272157105c2e71bb2f9cf92ea8d558c1c29f', 'appli@challenge.com', 'escrimefleuret', 'VP Tournoi', 1, 0, 131, 40),
(230, 'escrimeepee', '89ac272157105c2e71bb2f9cf92ea8d558c1c29f', 'appli@challenge.com', 'escrimeepee', 'VP Tournoi', 1, 0, 131, 39),
(231, 'petanque', 'f5feacbffb2eb1b75ad115d44359130cd3c30b66', 'appli@challenge.com', 'petanque', 'VP Tournoi', 1, 0, 131, 28),
(232, 'waterpolo', 'c440d4fa296301fe4f5441a7ade5888df61a1f62', 'appli@challenge.com', 'waterpolo', 'VP Tournoi', 1, 0, 131, 27),
(233, 'volleyf', 'dc0630af4040e879bb953f3074d098c322da7131', 'appli@challenge.com', 'volleyf', 'VP Tournoi', 1, 0, 131, 25),
(234, 'golf', '1854aa19195fd02673d112bfad4687caa081af60', 'appli@challenge.com', 'golf', 'VP Tournoi', 1, 0, 131, 11),
(235, 'volleym', '18327c7872028abbbf40968eb0b035d34f1ad8a9', 'appli@challenge.com', 'volleym', 'VP Tournoi', 1, 0, 131, 24),
(237, 'ultimate', '3f2dc061f72a9c76b3bba3cedb2c74b64b533af6', 'appli@challenge.com', 'ultimate', 'VP Tournoi', 1, 0, 131, 22),
(238, 'handf', 'b01437d9b2c028617d58e05f839ad6f4ca806258', 'appli@challenge.com', 'handf', 'VP Tournoi', 1, 0, 131, 13),
(240, 'tennis', 'db29b8f081675115b3e10a9d15a5b78900cbc044', 'appli@challenge.com', 'tennis', 'VP Tournoi', 1, 0, 131, 20),
(241, 'judo', '93a70f89cee760c9ec7730c75c0b927e49af469c', 'appli@challenge.com', 'judo', 'VP Tournoi', 1, 0, 131, 14),
(242, 'ski', '3970a719c49f1f2c818b5abd55e919ad6b483c5a', 'appli@challenge.com', 'ski', 'VP Tournoi', 1, 0, 131, 19),
(243, 'natation', 'c440d4fa296301fe4f5441a7ade5888df61a1f62', 'appli@challenge.com', 'natation', 'VP Tournoi', 1, 0, 131, 15),
(244, 'rugbyf', '1f27dcd95510c1ce74ee3203c937b77069a8158c', 'appli@challenge.com', 'rugbyf', 'VP Tournoi', 1, 0, 131, 18),
(245, 'raid', '3e18b105b84d3597a61deb0023653b56f6ff79dd', 'appli@challenge.com', 'raid', 'VP Tournoi', 1, 0, 131, 16),
(247, 'Twenty', 'a38b35db79e89a7cc60d98500981cf0e96580c48', 'appli@challenge.com', 'Twenty', 'Participant', 1, 0, 131, 4),
(248, 'Challenge2019', '8cb2237d0679ca88db6464eac60da96345513964', 'appli@challenge.com', 'Challenge2019', 'Participant', 1, 0, 3, 5),
(250, 'rugbym', 'bcdc78812f35bd987d9239c859241ed7ec632d2c', 'appli@challenge.com', 'rugbym', 'VP Tournoi', 1, 0, 131, 17),
(251, 'handm', '37cc56bf118ae9bff9338d691ac7e8aba13f1556', 'appli@challenge.com', 'handm', 'VP Tournoi', 1, 0, 131, 12),
(252, 'escalade', '6f3f2c72e4cf645b3e54a86812715251b10df78e', 'appli@challenge.com', 'escalade', 'VP Tournoi', 1, 0, 131, 9),
(253, 'tennisdetable', 'e4d5514d16b59bc7b66233e09de33c502338f27a', 'appli@challenge.com', 'tennisdetable', 'VP Tournoi', 1, 0, 131, 21),
(255, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'appli@challenge.com', 'admin', 'Participant', 1, 0, 131, 50),
(256, 'Whaty', 'fe3b72d0987f326431589b407b9c7798e4b6dba6', 'damien.calvet@ecl17.ec', 'Whaty', 'Participant', 1, 0, 0, 131),
(257, 'eauzias', 'a78181d8c03e671fe45db02d984117f226ef41f6', 'appli@challenge.com', 'eauzias', 'Participant', 1, 0, 131, 18),
(258, 'Jean Michu', '8cdf71aa6af97c5162636bea5282952c00c63a5d', 'appli@challenge.com', 'Jean Michu', 'Participant', 1, 0, 3, 5),
(259, 'SuperDodu', '570aae5abbcbf6524d3601e47a7fe88c0c5ef244', 'appli@challenge.com', 'SuperDodu', 'Participant', 1, 0, 131, 5),
(260, 'Maxhi', '16bf4a0631b0aa4fc3704a8448c13e393a1630fe', 'appli@challenge.com', 'Maxhi', 'Participant', 1, 0, 131, 28),
(261, 'Seyma', '3123a5e66b26127f697ca47913535ee2a8bced9d', 'appli@challenge.com', 'Seyma', 'Participant', 1, 0, 131, 18),
(262, 'JulienPellé', 'cfe37313ef6d9e92218d7d57821c0c81e0822d8f', 'appli@challenge.com', 'JulienPellé', 'Participant', 1, 0, 48, 17),
(263, 'Nohzz', 'e7ea4085c7e46bdc6b17bf8d1fe56e20e4a17210', 'appli@challenge.com', 'Nohzz', 'Participant', 1, 0, 131, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `boucles`
--
ALTER TABLE `boucles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD PRIMARY KEY (`id_calendrier`);

--
-- Index pour la table `classement`
--
ALTER TABLE `classement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_7h_8h`
--
ALTER TABLE `dimanche_7h_8h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_8h_9h`
--
ALTER TABLE `dimanche_8h_9h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_9h_10h`
--
ALTER TABLE `dimanche_9h_10h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_10h_11h`
--
ALTER TABLE `dimanche_10h_11h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_11h_12h`
--
ALTER TABLE `dimanche_11h_12h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_12h_13h`
--
ALTER TABLE `dimanche_12h_13h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_13h_14h`
--
ALTER TABLE `dimanche_13h_14h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_14h_15h`
--
ALTER TABLE `dimanche_14h_15h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_15h_16h`
--
ALTER TABLE `dimanche_15h_16h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimanche_16h_17h`
--
ALTER TABLE `dimanche_16h_17h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecoles`
--
ALTER TABLE `ecoles`
  ADD PRIMARY KEY (`id_ecole`);

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Index pour la table `equipesnavette`
--
ALTER TABLE `equipesnavette`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id_info`);

--
-- Index pour la table `matchs`
--
ALTER TABLE `matchs`
  ADD PRIMARY KEY (`id_match`);

--
-- Index pour la table `matchsspecial`
--
ALTER TABLE `matchsspecial`
  ADD PRIMARY KEY (`id_match_special`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id_photo`);

--
-- Index pour la table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id_plan`);

--
-- Index pour la table `podiums`
--
ALTER TABLE `podiums`
  ADD PRIMARY KEY (`id_podium`);

--
-- Index pour la table `poules`
--
ALTER TABLE `poules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_5h_6h`
--
ALTER TABLE `samedi_5h_6h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_6h_7h`
--
ALTER TABLE `samedi_6h_7h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_7h_8h`
--
ALTER TABLE `samedi_7h_8h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_8h_9h`
--
ALTER TABLE `samedi_8h_9h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_9h_10h`
--
ALTER TABLE `samedi_9h_10h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_10h_11h`
--
ALTER TABLE `samedi_10h_11h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_11h_12h`
--
ALTER TABLE `samedi_11h_12h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_12h_13h`
--
ALTER TABLE `samedi_12h_13h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_13h_14h`
--
ALTER TABLE `samedi_13h_14h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_14h_15h`
--
ALTER TABLE `samedi_14h_15h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_15h_16h`
--
ALTER TABLE `samedi_15h_16h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_16h_17h`
--
ALTER TABLE `samedi_16h_17h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_17h_18h`
--
ALTER TABLE `samedi_17h_18h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_18h_19h`
--
ALTER TABLE `samedi_18h_19h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_19h_20h`
--
ALTER TABLE `samedi_19h_20h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_20h_21h`
--
ALTER TABLE `samedi_20h_21h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_21h_22h`
--
ALTER TABLE `samedi_21h_22h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_22h_23h`
--
ALTER TABLE `samedi_22h_23h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `samedi_23h_00h`
--
ALTER TABLE `samedi_23h_00h`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id_sport`);

--
-- Index pour la table `table_boucle_modele`
--
ALTER TABLE `table_boucle_modele`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trajets`
--
ALTER TABLE `trajets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `urgences`
--
ALTER TABLE `urgences`
  ADD PRIMARY KEY (`id_urgence`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boucles`
--
ALTER TABLE `boucles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `calendrier`
--
ALTER TABLE `calendrier`
  MODIFY `id_calendrier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `classement`
--
ALTER TABLE `classement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `dimanche_7h_8h`
--
ALTER TABLE `dimanche_7h_8h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_8h_9h`
--
ALTER TABLE `dimanche_8h_9h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_9h_10h`
--
ALTER TABLE `dimanche_9h_10h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_10h_11h`
--
ALTER TABLE `dimanche_10h_11h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_11h_12h`
--
ALTER TABLE `dimanche_11h_12h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_12h_13h`
--
ALTER TABLE `dimanche_12h_13h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_13h_14h`
--
ALTER TABLE `dimanche_13h_14h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_14h_15h`
--
ALTER TABLE `dimanche_14h_15h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_15h_16h`
--
ALTER TABLE `dimanche_15h_16h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dimanche_16h_17h`
--
ALTER TABLE `dimanche_16h_17h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ecoles`
--
ALTER TABLE `ecoles`
  MODIFY `id_ecole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT pour la table `equipesnavette`
--
ALTER TABLE `equipesnavette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `infos`
--
ALTER TABLE `infos`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `matchs`
--
ALTER TABLE `matchs`
  MODIFY `id_match` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1188;

--
-- AUTO_INCREMENT pour la table `matchsspecial`
--
ALTER TABLE `matchsspecial`
  MODIFY `id_match_special` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `id_photo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `plans`
--
ALTER TABLE `plans`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `podiums`
--
ALTER TABLE `podiums`
  MODIFY `id_podium` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `poules`
--
ALTER TABLE `poules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT pour la table `samedi_5h_6h`
--
ALTER TABLE `samedi_5h_6h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `samedi_6h_7h`
--
ALTER TABLE `samedi_6h_7h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `samedi_7h_8h`
--
ALTER TABLE `samedi_7h_8h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `samedi_8h_9h`
--
ALTER TABLE `samedi_8h_9h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `samedi_9h_10h`
--
ALTER TABLE `samedi_9h_10h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `samedi_10h_11h`
--
ALTER TABLE `samedi_10h_11h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `samedi_11h_12h`
--
ALTER TABLE `samedi_11h_12h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_12h_13h`
--
ALTER TABLE `samedi_12h_13h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_13h_14h`
--
ALTER TABLE `samedi_13h_14h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_14h_15h`
--
ALTER TABLE `samedi_14h_15h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_15h_16h`
--
ALTER TABLE `samedi_15h_16h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_16h_17h`
--
ALTER TABLE `samedi_16h_17h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_17h_18h`
--
ALTER TABLE `samedi_17h_18h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_18h_19h`
--
ALTER TABLE `samedi_18h_19h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_19h_20h`
--
ALTER TABLE `samedi_19h_20h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `samedi_20h_21h`
--
ALTER TABLE `samedi_20h_21h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `samedi_21h_22h`
--
ALTER TABLE `samedi_21h_22h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `samedi_22h_23h`
--
ALTER TABLE `samedi_22h_23h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `samedi_23h_00h`
--
ALTER TABLE `samedi_23h_00h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `sports`
--
ALTER TABLE `sports`
  MODIFY `id_sport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `table_boucle_modele`
--
ALTER TABLE `table_boucle_modele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `trajets`
--
ALTER TABLE `trajets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `urgences`
--
ALTER TABLE `urgences`
  MODIFY `id_urgence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
