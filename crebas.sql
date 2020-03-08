-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 08 mars 2020 à 20:22
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `crebas`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `LOGIN` varchar(25) NOT NULL,
  `MDP_ADMIN` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`LOGIN`, `MDP_ADMIN`) VALUES
('Admin', 'Admin123');

-- --------------------------------------------------------

--
-- Structure de la table `itineraire`
--

CREATE TABLE `itineraire` (
  `ID_ITI` int(11) NOT NULL,
  `adresse_iti` varchar(25) DEFAULT NULL,
  `DISTANCE` decimal(8,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `itineraire`
--

INSERT INTO `itineraire` (`ID_ITI`, `adresse_iti`, `DISTANCE`) VALUES
(1, 'Casablanca Pizza Pino', NULL),
(2, 'rue abdellah', NULL),
(3, 'Marjan, casablanca', NULL),
(4, 'Faculte  de medcine', NULL),
(5, 'Mers sultan', NULL),
(6, 'Tiznit Lmassira', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `IDLIVRAISON` int(11) NOT NULL,
  `IDLIVREUR` int(11) NOT NULL,
  `LOGIN` varchar(25) NOT NULL,
  `DATE_LIVRAISON` date DEFAULT NULL,
  `STATUT` varchar(10) DEFAULT NULL,
  `adresse` varchar(50) NOT NULL,
  `commande` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`IDLIVRAISON`, `IDLIVREUR`, `LOGIN`, `DATE_LIVRAISON`, `STATUT`, `adresse`, `commande`) VALUES
(1, 2, 'Admin', '2020-02-20', NULL, 'Tiznit', 'Computer'),
(2, 1, 'Admin', '2020-02-05', NULL, 'CASA', 'Lampe'),
(9, 31, 'Admin', '2020-02-02', 'Livre', 'Hay el houda', 'Electromenager'),
(8, 30, 'Admin', '2020-03-16', 'Non Livre', 'Hay El Mohemmadi', 'Table'),
(10, 32, 'Admin', '2020-01-14', 'Non Livre', 'Derb mouna', 'Valise'),
(11, 33, 'Admin', '2020-03-01', 'Livre', 'Sidi moumen jdid', 'jeux'),
(12, 2, 'Admin', '2020-03-07', NULL, 'Bd Allal ben Abdelllah', 'Vetement'),
(13, 33, 'Admin', '2020-03-07', NULL, 'Hay salam', 'Pc');

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

CREATE TABLE `livreur` (
  `IDLIVREUR` int(11) NOT NULL,
  `LOGIN_LIVREUR` varchar(20) DEFAULT NULL,
  `MDP_LIVREUR` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livreur`
--

INSERT INTO `livreur` (`IDLIVREUR`, `LOGIN_LIVREUR`, `MDP_LIVREUR`) VALUES
(1, 'Ahmad', 'Ahmad123'),
(2, 'Youssef', 'Youssef123'),
(32, 'ilyas', 'ilyas123'),
(33, 'Hicham', 'Hicham123'),
(31, 'Anas', 'anas123'),
(30, 'Zakaria', 'zakaria123');

-- --------------------------------------------------------

--
-- Structure de la table `passer`
--

CREATE TABLE `passer` (
  `ID_POS` int(11) NOT NULL,
  `MATRICULE` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `passer`
--

INSERT INTO `passer` (`ID_POS`, `MATRICULE`) VALUES
(1, 'ABJJ8'),
(2, 'BES98'),
(3, 'R4986'),
(4, 'A6997'),
(5, 'L583'),
(6, 'C6987');

-- --------------------------------------------------------

--
-- Structure de la table `porte`
--

CREATE TABLE `porte` (
  `NUM` int(11) NOT NULL,
  `MATRICULE` varchar(10) NOT NULL,
  `ETAT` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `porte`
--

INSERT INTO `porte` (`NUM`, `MATRICULE`, `ETAT`) VALUES
(3, 'R4986', 'ferme'),
(1, 'ABJJ8', 'ouvert'),
(2, 'BES98', 'ferme'),
(4, 'A6997', 'ferme'),
(5, 'C6987', 'ferme'),
(6, 'L583', 'ferme');

-- --------------------------------------------------------

--
-- Structure de la table `position`
--

CREATE TABLE `position` (
  `ID_POS` int(11) NOT NULL,
  `ID_ITI` int(11) NOT NULL,
  `X` double DEFAULT NULL,
  `Y` double DEFAULT NULL,
  `DATE_POS` date DEFAULT NULL,
  `TEMPS` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `position`
--

INSERT INTO `position` (`ID_POS`, `ID_ITI`, `X`, `Y`, `DATE_POS`, `TEMPS`) VALUES
(1, 1, 33.5947373, -7.659843, '2020-02-11', NULL),
(2, 2, 33.5909793, -7.6563669, '2020-02-16', NULL),
(3, 3, 33.5947869, -7.659863, '2020-03-16', NULL),
(4, 5, 33.5602555, -7.5971153, '2020-03-16', '05:07:09'),
(5, 4, 33.5713979, -7.6194887, '2020-01-01', '07:09:21'),
(6, 6, 33.9602555, -7.9971153, '2020-03-10', '04:14:14');

-- --------------------------------------------------------

--
-- Structure de la table `traceur`
--

CREATE TABLE `traceur` (
  `ID_TRACEUR` int(11) NOT NULL,
  `LOGIN` varchar(25) NOT NULL,
  `IDLIVREUR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `traceur`
--

INSERT INTO `traceur` (`ID_TRACEUR`, `LOGIN`, `IDLIVREUR`) VALUES
(1, 'Admin', 1),
(2, 'Admin', 2),
(21, 'Admin', 32),
(20, 'Admin', 33),
(19, 'Admin', 31),
(18, 'Admin', 30),
(22, 'Admin', 34);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `MATRICULE` varchar(10) NOT NULL,
  `ID_TRACEUR` int(11) NOT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `CONSOMATION` decimal(8,0) DEFAULT NULL,
  `VITESSE` decimal(8,0) DEFAULT NULL,
  `KILOMETRAGE` decimal(8,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`MATRICULE`, `ID_TRACEUR`, `TYPE`, `CONSOMATION`, `VITESSE`, `KILOMETRAGE`) VALUES
('ABJJ8', 1, 'Motor', '50', '70', '43'),
('BES98', 2, 'Voiture', '40', '55', '35'),
('A6997', 18, 'voiture', '40', '60', '60'),
('R4986', 19, 'voiture', '30', '50', '35'),
('C6987', 20, 'voiture', '40', '60', '40'),
('L583', 21, 'voiture', '30', '50', '30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`LOGIN`);

--
-- Index pour la table `itineraire`
--
ALTER TABLE `itineraire`
  ADD PRIMARY KEY (`ID_ITI`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`IDLIVRAISON`),
  ADD KEY `FK_AFFECTER` (`LOGIN`),
  ADD KEY `FK_LISTER` (`IDLIVREUR`);

--
-- Index pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`IDLIVREUR`);

--
-- Index pour la table `passer`
--
ALTER TABLE `passer`
  ADD PRIMARY KEY (`ID_POS`,`MATRICULE`),
  ADD KEY `FK_PASSER` (`MATRICULE`);

--
-- Index pour la table `porte`
--
ALTER TABLE `porte`
  ADD PRIMARY KEY (`NUM`),
  ADD KEY `FK_POSSEDER` (`MATRICULE`);

--
-- Index pour la table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`ID_POS`),
  ADD KEY `FK_PRECISER` (`ID_ITI`);

--
-- Index pour la table `traceur`
--
ALTER TABLE `traceur`
  ADD PRIMARY KEY (`ID_TRACEUR`),
  ADD KEY `FK_ACCEDER` (`IDLIVREUR`),
  ADD KEY `FK_CONSULTER` (`LOGIN`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`MATRICULE`),
  ADD KEY `FK_IDENTIFIER` (`ID_TRACEUR`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `itineraire`
--
ALTER TABLE `itineraire`
  MODIFY `ID_ITI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `IDLIVRAISON` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `livreur`
--
ALTER TABLE `livreur`
  MODIFY `IDLIVREUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `position`
--
ALTER TABLE `position`
  MODIFY `ID_POS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `traceur`
--
ALTER TABLE `traceur`
  MODIFY `ID_TRACEUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
