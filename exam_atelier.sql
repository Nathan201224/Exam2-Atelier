-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 02 juin 2022 à 03:04
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exam_atelier`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

DROP TABLE IF EXISTS `absence`;
CREATE TABLE IF NOT EXISTS `absence` (
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  PRIMARY KEY (`datedebut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`datedebut`, `datefin`) VALUES
('1952-05-07', '1952-05-15'),
('1991-02-06', '1991-02-12'),
('1991-04-02', '1991-04-29'),
('1991-06-10', '1991-06-17'),
('1991-07-10', '1991-07-16'),
('1991-08-07', '1991-08-14'),
('1992-08-23', '1992-08-24'),
('1992-12-05', '1992-12-06'),
('1993-02-12', '1993-02-16'),
('1993-06-10', '1993-06-30'),
('1993-11-28', '1993-12-03'),
('1994-07-29', '1994-08-16'),
('1995-03-02', '1995-03-14'),
('1995-03-16', '1995-03-23'),
('1995-04-03', '1995-04-15'),
('1995-06-17', '1995-06-28'),
('1995-08-03', '1995-08-30'),
('1995-10-25', '1995-10-25'),
('1996-02-17', '1996-02-23'),
('1996-02-18', '1996-02-26'),
('1996-07-20', '1996-07-24'),
('1997-03-09', '1997-03-10'),
('1997-09-07', '1997-09-21'),
('1997-12-28', '1997-12-30'),
('1999-02-13', '1999-02-23'),
('2001-01-01', '2001-01-14'),
('2002-08-01', '2002-08-24'),
('2004-02-01', '2004-02-25'),
('2007-01-07', '2007-01-14'),
('2009-09-06', '2009-09-26'),
('2010-05-24', '2010-05-30'),
('2011-07-16', '2011-07-27'),
('2012-01-04', '2012-01-30'),
('2012-08-27', '2012-08-29'),
('2012-09-15', '2012-09-25'),
('2014-08-20', '2014-08-28'),
('2015-09-04', '2015-09-24'),
('2016-02-15', '2016-02-17'),
('2016-07-08', '2016-07-21'),
('2016-12-04', '2016-12-29'),
('2016-12-24', '2016-12-26'),
('2017-08-01', '2017-08-13'),
('2018-04-02', '2018-04-30'),
('2018-05-14', '2018-05-28'),
('2018-05-24', '2018-05-30'),
('2018-12-29', '2018-12-30'),
('2019-11-29', '2019-12-26'),
('2019-12-12', '2019-12-26'),
('2020-08-20', '2020-08-30'),
('2021-06-08', '2021-06-27');

-- --------------------------------------------------------

--
-- Structure de la table `motif`
--

DROP TABLE IF EXISTS `motif`;
CREATE TABLE IF NOT EXISTS `motif` (
  `idmotif` int(255) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`idmotif`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `motif`
--

INSERT INTO `motif` (`idmotif`, `libelle`) VALUES
(10, 'vacances'),
(11, 'maladie'),
(12, 'motif familial'),
(13, 'congé parental');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `idpersonnel` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  PRIMARY KEY (`idpersonnel`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`idpersonnel`, `nom`, `prenom`, `tel`, `mail`) VALUES
(1, 'Dias', 'Françoise', '08 44 28 12 22', 'sociis.natoque@hotmail.com'),
(2, 'Rocher', 'Auguste', '05 50 16 50 69', 'nec.enim@protonmail.edu'),
(3, 'Pereira', 'Monique', '07 75 02 48 87', 'nisi.nibh@yahoo.org'),
(4, 'Lesage', 'Richard', '08 43 39 51 88', 'suspendisse.eleifend.cras@icloud.edu'),
(5, 'Prevost', 'Rémy', '05 28 13 82 25', 'id.mollis.nec@hotmail.ca'),
(6, 'Bonnet', 'Antoine', '08 86 73 95 27', 'nisi.dictum.augue@aol.couk'),
(7, 'Silva', 'Anne', '07 25 86 29 16', 'auctor.non@protonmail.net'),
(8, 'Leclerc', 'Théophile', '08 34 74 20 87', 'lectus@yahoo.couk'),
(9, 'Besnard', 'Antoine', '05 96 64 74 42', 'gravida.molestie@protonmail.com'),
(10, 'Barbe', 'Léon', '03 64 20 08 47', 'lorem.luctus@google.edu');

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

DROP TABLE IF EXISTS `responsable`;
CREATE TABLE IF NOT EXISTS `responsable` (
  `login` varchar(64) NOT NULL,
  `pwd` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `responsable`
--

INSERT INTO `responsable` (`login`, `pwd`) VALUES
('responsable', 'spqT09Q9bZZ7');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `idservice` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`idservice`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`idservice`, `nom`) VALUES
(1, 'administratif'),
(2, 'médiation culturelle'),
(3, 'prêt');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
