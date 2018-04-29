-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 29 Avril 2018 à 23:17
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tp_planning`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `ID_CLASSE` char(3) NOT NULL,
  `ID_NIVEAU` char(4) NOT NULL,
  `NOM_CLASSE` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `classe`
--

INSERT INTO `classe` (`ID_CLASSE`, `ID_NIVEAU`, `NOM_CLASSE`) VALUES
('F11', 'F', 'Foundation 1-1'),
('F12', 'F', 'Foundation 1-2'),
('F13', 'F', 'Foundation 1-3'),
('F14', 'F', 'Foundation 1-4'),
('F2', 'F', 'Foundation 2'),
('M1', 'M', 'Master 1'),
('M2', 'M', 'Master 2'),
('B1', 'B', 'Bachelor 1-1'),
('B2', 'B', 'Bachelor 1-2');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `ID_COURS` char(5) NOT NULL,
  `ID_CLASSE` char(4) NOT NULL,
  `ID_SALLE` char(4) NOT NULL,
  `ID_JOUR` char(4) NOT NULL,
  `ID_TRANCHE_HORAIRE` char(5) NOT NULL,
  `ID_MATIERE` char(4) NOT NULL,
  `NOM_COURS` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`ID_COURS`, `ID_CLASSE`, `ID_SALLE`, `ID_JOUR`, `ID_TRANCHE_HORAIRE`, `ID_MATIERE`, `NOM_COURS`) VALUES
('C1', 'F2', 'So', 'Jeu', 'Mat1', 'Algo', 'C');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `ID_ELEVE` char(4) NOT NULL,
  `ID_CLASSE` char(3) NOT NULL,
  `NOM_ELEVE` char(20) NOT NULL,
  `PRENOM_ELEVE` char(20) NOT NULL,
  `MAIL_ELEVE` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `eleve`
--

INSERT INTO `eleve` (`ID_ELEVE`, `ID_CLASSE`, `NOM_ELEVE`, `PRENOM_ELEVE`, `MAIL_ELEVE`) VALUES
('59', 'F13', 'ZIMMER', 'Noe', 'n.zimmer@ludus-academie.com'),
('58', 'F14', 'WILHELM', 'Stephane', 's.wilhelm@ludus-academie.com'),
('57', 'F13', 'WERLY', 'Tomeline', 't.werly@ludus-academie.com'),
('56', 'F13', 'WALLISCH', 'Alexis', 'a.wallisch@ludus-academie.com'),
('55', 'F11', 'VIRION', 'Louis', 'l.virion@ludus-academie.com'),
('54', 'F14', 'VINDIGNI', 'Fabio', 'f.vindigni@ludus-academie.com'),
('53', 'F13', 'VIE', 'Loic', 'l.vie@ludus-academie.com'),
('52', 'F14', 'VELTZ', 'Quentin', 'q.veltz@ludus-academie.com'),
('51', 'F11', 'UBRIG', 'Joric', 'j.ubrig@ludus-academie.com'),
('50', 'F13', 'SIMON', 'Pierre-Andre', 'p.simon@ludus-academie.com'),
('49', 'F14', 'SCHNEE', 'Louis', 'l.schnee@ludus-academie.com'),
('48', 'F13', 'SCHEER-ALM', 'Benjamin Claude', 'b.scheer-alm@ludus-academie.co'),
('47', 'F12', 'SAINT JULIEN', 'Joffrey', 'j.saint julien@ludus-academie.'),
('46', 'F12', 'ROUX', 'Anthony', 'a.roux@ludus-academie.com'),
('45', 'F13', 'ROCHAS', 'Valentin', 'v.rochas@ludus-academie.com'),
('44', 'F14', 'QUENET', 'Raphael', 'r.quenet@ludus-academie.com'),
('43', 'F11', 'PROB', 'Bastien', 'b.prob@ludus-academie.com'),
('42', 'F11', 'NOYON', 'Nathan', 'n.noyon@ludus-academie.com'),
('41', 'F12', 'NOIRET-LEMAIRE', 'Lenny', 'l.noiret-lemaire@ludus-academi'),
('40', 'F12', 'MOCK', 'Romain', 'r.mock@ludus-academie.com'),
('39', 'F12', 'MATHIEU', 'Tristan', 't.mathieu@ludus-academie.com'),
('38', 'F13', 'MAGGAY', 'Cedric', 'c.maggay@ludus-academie.com'),
('37', 'F12', 'MADER', 'Maxime', 'm.mader@ludus-academie.com'),
('36', 'F12', 'LORANGE', 'Pauline', 'p.lorange@ludus-academie.com'),
('35', 'F11', 'LASKOWSKI', 'Axel', 'a.laskowski@ludus-academie.com'),
('34', 'F14', 'LAMARRE', 'Benoit', 'b.lamarre@ludus-academie.com'),
('33', 'F13', 'KAYSER', 'Matthieu', 'm.kayser@ludus-academie.com'),
('32', 'F13', 'ISS', 'Fiona', 'f.iss@ludus-academie.com'),
('31', 'F14', 'HOSSANN', 'Vincent', 'v.hossann@ludus-academie.com'),
('30', 'F11', 'HOEL', 'Julien', 'j.hoel@ludus-academie.com'),
('29', 'F14', 'HELFER', 'Antoine', 'a.helfer@ludus-academie.com'),
('28', 'F13', 'HAJNAL', 'Florian', 'f.hajnal@ludus-academie.com'),
('27', 'F12', 'HAAS', 'Mathieu', 'm.haas@ludus-academie.com'),
('26', 'F12', 'GRIMAZ', 'Jeremie', 'j.grimaz@ludus-academie.com'),
('25', 'F14', 'GOETZ', 'Thibaud', 't.goetz@ludus-academie.com'),
('24', 'F12', 'GERGES', 'Celine', 'c.gerges@ludus-academie.com'),
('23', 'F14', 'GAWLIK', 'Alexis', 'a.gawlik@ludus-academie.com'),
('22', 'F14', 'GAU', 'Pierre-Alain', 'p.gau@ludus-academie.com'),
('21', 'F13', 'GALATI', 'Gaetan', 'g.galati@ludus-academie.com'),
('20', 'F13', 'FUCHS', 'Emilien', 'e.fuchs@ludus-academie.com'),
('19', 'F11', 'FREYMANN', 'Ludwig', 'l.freymann@ludus-academie.com'),
('18', 'F11', 'FERNANDES', 'Yoann', 'y.fernandes@ludus-academie.com'),
('17', 'F14', 'FACHE', 'Bruno', 'b.fache@ludus-academie.com'),
('16', 'F11', 'ESCHKE', 'Thomas', 't.eschke@ludus-academie.com'),
('15', 'F12', 'DIETSCHIN', 'Valentin', 'v.dietschin@ludus-academie.com'),
('14', 'F12', 'DEVEZE', 'Killian', 'k.deveze@ludus-academie.com'),
('13', 'F14', 'DE CHENERILLES', 'Pablo', 'p.de chenerilles@ludus-academi'),
('12', 'F11', 'CRAGNOLINI', 'Julien', 'j.cragnolini@ludus-academie.co'),
('11', 'F14', 'CLAUDE', 'Leo', 'l.claude@ludus-academie.com'),
('10', 'F12', 'BUTTANI', 'Justine', 'j.buttani@ludus-academie.com'),
('9', 'F13', 'BOULAAJOUL', 'Badr', 'b.boulaajoul@ludus-academie.co'),
('8', 'F14', 'BORGONDO', 'David', 'd.borgondo@ludus-academie.com'),
('7', 'F11', 'BITON', 'Jocelyn', 'j.biton@ludus-academie.com'),
('6', 'F11', 'BALSON', 'Yann', 'y.balson@ludus-academie.com'),
('5', 'F11', 'AYDIN', 'Kadir', 'k.aydin@ludus-academie.com'),
('4', 'F12', 'AULEN', 'Lucas', 'l.aulen@ludus-academie.com'),
('3', 'F11', 'ANDRIOLO', 'Caroline', 'c.andriolo@ludus-academie.com'),
('2', 'F12', 'ANDRIAMIANDRARIVO', 'Hubert Brayan', 'h.andriamiandrarivo@ludus-acad'),
('1', 'F11', 'ACKER', 'Arnaud', 'a.acker@ludus-academie.com'),
('60', 'F2', 'ALVES', 'Guillaume', 'g.alves@ludus-academie.com'),
('61', 'F2', 'BARTHLEN', 'Arthur', 'a.barthlen@ludus-academie.com'),
('62', 'F2', 'BAZIN', 'Maxime', 'm.bazin@ludus-academie.com'),
('63', 'F2', 'DENNY', 'Thibaut', 't.denny@ludus-academie.com'),
('64', 'F2', 'ELBERTSE', 'Alexy', 'a.elbertse@ludus-academie.com'),
('65', 'F2', 'GIOVINAZZO', 'Alexis', 'a.giovinazzo@ludus-academie.co'),
('66', 'F2', 'GUERRERO', 'Maxime', 'm.guerrero@ludus-academie.com'),
('67', 'F2', 'HERNANDEZ', 'Alexis', 'a.hernandez@ludus-academie.com'),
('68', 'F2', 'HERRMANN', 'Florian', 'f.herrmann@ludus-academie.com'),
('69', 'F2', 'KERGROHEN', 'Pierre-Yves', 'p.kergrohen@ludus-academie.com'),
('70', 'F2', 'LAMOUR', 'Anthony', 'a.lamour@ludus-academie.com'),
('71', 'F2', 'MARTIN', 'Alexandre', 'a.martin@ludus-academie.com'),
('72', 'F2', 'MONNIER', 'Laetitia', 'l.monnier@ludus-academie.com'),
('73', 'F2', 'MORICONI', 'Lenny', 'l.moriconi@ludus-academie.com'),
('74', 'F2', 'PIN', 'Killian', 'k.pin@ludus-academie.com'),
('75', 'F2', 'RINCK', 'Adrien', 'a.rinck@ludus-academie.com'),
('76', 'F2', 'ROCHE', 'Charles', 'c.roche@ludus-academie.com'),
('77', 'F2', 'TRICHET', 'Florentin', 'f.trichet@ludus-academie.com'),
('78', 'F2', 'UNALAN', 'Gokhan', 'g.unalan@ludus-academie.com'),
('79', 'F2', 'WAHLER', 'Adrian', 'a.wahler@ludus-academie.com'),
('80', 'F2', 'WEILER', 'William', 'w.weiler@ludus-academie.com'),
('81', 'F2', 'WENDLING', 'Bruno', 'b.wendling@ludus-academie.com'),
('82', 'B1', 'ACKERMANN', 'Pierre', 'p.ackermann@ludus-academie.com'),
('83', 'B2', 'BALTA', 'Cindy', 'c.balta@ludus-academie.com'),
('84', 'B1', 'BOURGUIGNON', 'Kevin', 'k.bourguignon@ludus-academie.c'),
('85', 'B1', 'BRIOT', 'Anthony', 'a.briot@ludus-academie.com'),
('86', 'B1', 'BRIOTTET', 'Antoine', 'a.briottet@ludus-academie.com'),
('87', 'B2', 'CAILLAUD', 'Jean-Baptiste', 'j.caillaud@ludus-academie.com'),
('88', 'B1', 'CHEUNG', 'Teva', 't.cheung@ludus-academie.com'),
('89', 'B1', 'CHOUFFERT', 'Tristan', 't.chouffert@ludus-academie.com'),
('90', 'B1', 'FELLRATH', 'Jonathan', 'j.fellrath@ludus-academie.com'),
('91', 'B1', 'FOUBERT', 'Guillaume', 'g.foubert@ludus-academie.com'),
('92', 'B1', 'JUNG', 'Lucas', 'l.jung@ludus-academie.com'),
('93', 'B2', 'KLEINCLAUS', 'Florent', 'f.kleinclaus@ludus-academie.co'),
('94', 'B1', 'KRETZ', 'Teo', 't.kretz@ludus-academie.com'),
('95', 'B2', 'MURE', 'Lucas', 'l.mure@ludus-academie.com'),
('96', 'B2', 'RENCUREL', 'Pierre', 'p.rencurel@ludus-academie.com'),
('97', 'B1', 'RENNER', 'Julien', 'j.renner@ludus-academie.com'),
('98', 'B2', 'RIETSCH', 'Virgile', 'v.rietsch@ludus-academie.com'),
('99', 'B2', 'SCHMIDT', 'Arnaud', 'a.schmidt@ludus-academie.com'),
('100', 'B1', 'STADELMANN', 'Louis', 'l.stadelmann@ludus-academie.co'),
('101', 'B2', 'SUTTERLIN', 'Sebastien', 's.sutterlin@ludus-academie.com'),
('102', 'B2', 'TAUPENOT', 'Flavien', 'f.taupenot@ludus-academie.com'),
('103', 'B2', 'WEBER', 'Max', 'm.weber@ludus-academie.com'),
('104', 'M1', 'DOMINGO', 'Alice', 'a.domingo@ludus-academie.com'),
('105', 'M1', 'GAMPER', 'Rebecca', 'r.gamper@ludus-academie.com'),
('106', 'M2', 'GRASSET', 'Jordan', 'j.grasset@ludus-academie.com'),
('107', 'M2', 'HAEHNEL', 'Valentin', 'v.haehnel@ludus-academie.com'),
('108', 'M2', 'JEHL', 'Regis', 'r.jehl@ludus-academie.com'),
('109', 'M2', 'PALMITESSA', 'Lucas', 'l.palmitessa@ludus-academie.co'),
('110', 'M2', 'SANCHEZ', 'Ines', 'i.sanchez@ludus-academie.com'),
('111', 'M2', 'STEPHAN', 'Paul', 'p.stephan@ludus-academie.com');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `ID_ENSEIGNANT` char(5) NOT NULL,
  `NOM_ENSEIGNANT` char(20) NOT NULL,
  `PRENOM_ENSEIGNANT` char(20) NOT NULL,
  `MAIL_ENSEIGNANT` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignant`
--

INSERT INTO `enseignant` (`ID_ENSEIGNANT`, `NOM_ENSEIGNANT`, `PRENOM_ENSEIGNANT`, `MAIL_ENSEIGNANT`) VALUES
('MaB', 'Besmond', 'Marine', 'm.besmond@ludus-academie.com'),
('NiLo', 'Loth', 'Nicolas', 'n.loth@ludus-academie.com'),
('NiLe', 'Lehmann', 'Nicolas', 'n.lehmann@ludus-academie.com'),
('GrM', 'Madembo', 'Grâce', 'm.madembo@ludus-academie.com'),
('ChM', 'Muller', 'Charley', 'm.muller@ludus-academie.com'),
('JeH', 'Hatton', 'Jerome', 'j.hatton@ludus-academie.com'),
('ThI', 'Iwaszko', 'Thomas', 't.iwaszko@ludus-academie.com'),
('PeS', 'Soumois', 'Pierre-Emmanuel', 'pe.soumois@ludus-academie.com'),
('EmF', 'Fujita', 'Emiko', 'e.fujita@ludus-academie.com'),
('NiDe', 'De Mets', 'Nicolas', 'n.demets@ludus-academie.com'),
('GiQ', 'Gille', 'Quentin', 'q.gille@ludus-academie.com'),
('RaG', 'Ghassempouri', 'Rashid', 'r.ghassempouri@ludus-academie.');

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

CREATE TABLE `enseignement` (
  `ID_ENSEIGNANT` char(5) NOT NULL,
  `ID_MATIERE` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignement`
--

INSERT INTO `enseignement` (`ID_ENSEIGNANT`, `ID_MATIERE`) VALUES
('ChM', 'Ang'),
('ChM', 'Euro'),
('EmF', 'Jap'),
('GrM', 'BDD'),
('GrM', 'W'),
('MaB', 'Jap'),
('NiLe', 'Algo'),
('NiLo', 'GD'),
('ThI', 'IA');

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

CREATE TABLE `jour` (
  `ID_JOUR` char(4) NOT NULL,
  `NOM_JOUR` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jour`
--

INSERT INTO `jour` (`ID_JOUR`, `NOM_JOUR`) VALUES
('Lun', 'Lundi'),
('Mar', 'Mardi'),
('Mer', 'Mercredi'),
('Jeu', 'Jeudi'),
('Ven', 'Vendredi');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `ID_MATIERE` char(4) NOT NULL,
  `NOM_MATIERE` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`ID_MATIERE`, `NOM_MATIERE`) VALUES
('Ang', 'Anglais'),
('Jap', 'Japonais'),
('Algo', 'Algorithmie'),
('IA', 'Intelligence Arti.'),
('W', 'Web'),
('BDD', 'Base de données'),
('C#', 'C Sharp'),
('GD', 'Game Design'),
('Euro', 'Europe');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `ID_NIVEAU` char(3) NOT NULL,
  `NOM_NIVEAU` char(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`ID_NIVEAU`, `NOM_NIVEAU`) VALUES
('F', 'Foundation Degree'),
('B', 'Bachelor'),
('M', 'Mastère'),
('D', 'Doctorat');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `ID_SALLE` char(4) NOT NULL,
  `NOM_SALLE` char(20) NOT NULL,
  `LOGO_SALLE` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`ID_SALLE`, `NOM_SALLE`, `LOGO_SALLE`) VALUES
('Ki', 'Kirby', 'imgKirby'),
('LaCo', 'Lara Croft', 'imgLaraCroft'),
('So', 'Sonic', 'imgSonic'),
('Pac', 'Pacman', 'imgPacman'),
('Poke', 'Pokemon', 'imgPokemon'),
('Ze', 'Zelda', 'imgZelda');

-- --------------------------------------------------------

--
-- Structure de la table `table_de_matiere`
--

CREATE TABLE `table_de_matiere` (
  `ID_MATIERE` char(4) NOT NULL,
  `ID_TYPE` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_de_matiere`
--

INSERT INTO `table_de_matiere` (`ID_MATIERE`, `ID_TYPE`) VALUES
('Algo', 'CM'),
('Algo', 'TP'),
('Ang', 'CM'),
('BDD', 'CM'),
('BDD', 'TP'),
('Euro', 'CM'),
('GD', 'CM'),
('GD', 'TP'),
('IA', 'CM'),
('IA', 'TP'),
('Jap', 'CM'),
('W', 'CM'),
('W', 'TP');

-- --------------------------------------------------------

--
-- Structure de la table `tranche_horaire`
--

CREATE TABLE `tranche_horaire` (
  `ID_TRANCHE_HORAIRE` char(5) NOT NULL,
  `HORAIRE_DEBUT` int(11) NOT NULL,
  `HORAIRE_FIN` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tranche_horaire`
--

INSERT INTO `tranche_horaire` (`ID_TRANCHE_HORAIRE`, `HORAIRE_DEBUT`, `HORAIRE_FIN`) VALUES
('Mat1', 9, 11),
('Mat2', 11, 13),
('Ap1', 14, 16),
('Ap2', 16, 18),
('Soir', 18, 20);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `ID_TYPE` char(4) NOT NULL,
  `NOM_TYPE` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`ID_TYPE`, `NOM_TYPE`) VALUES
('CM', 'Cours Magistraux'),
('TP', 'Travaux pratiques'),
('TD', 'Travaux dirigés');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`ID_CLASSE`),
  ADD KEY `ID_NIVEAU` (`ID_NIVEAU`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`ID_COURS`),
  ADD KEY `ID_CLASSE` (`ID_CLASSE`),
  ADD KEY `ID_SALLE` (`ID_SALLE`),
  ADD KEY `ID_JOUR` (`ID_JOUR`),
  ADD KEY `ID_TRANCHE_HORAIRE` (`ID_TRANCHE_HORAIRE`),
  ADD KEY `ID_MATIERE` (`ID_MATIERE`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`ID_ELEVE`),
  ADD KEY `ID_CLASSE` (`ID_CLASSE`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`ID_ENSEIGNANT`);

--
-- Index pour la table `enseignement`
--
ALTER TABLE `enseignement`
  ADD PRIMARY KEY (`ID_ENSEIGNANT`,`ID_MATIERE`),
  ADD KEY `ID_MATIERE` (`ID_MATIERE`);

--
-- Index pour la table `jour`
--
ALTER TABLE `jour`
  ADD PRIMARY KEY (`ID_JOUR`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`ID_MATIERE`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`ID_NIVEAU`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`ID_SALLE`);

--
-- Index pour la table `table_de_matiere`
--
ALTER TABLE `table_de_matiere`
  ADD PRIMARY KEY (`ID_MATIERE`,`ID_TYPE`),
  ADD KEY `ID_TYPE` (`ID_TYPE`);

--
-- Index pour la table `tranche_horaire`
--
ALTER TABLE `tranche_horaire`
  ADD PRIMARY KEY (`ID_TRANCHE_HORAIRE`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID_TYPE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
