-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 03 avr. 2023 à 14:03
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `booktime`
--

-- --------------------------------------------------------

--
-- Structure de la table `bibliothèques`
--

CREATE TABLE `bibliothèques` (
  `ID` int(11) NOT NULL,
  `utilisateurs_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bibliothèques`
--

INSERT INTO `bibliothèques` (`ID`, `utilisateurs_ID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `editeurs`
--

CREATE TABLE `editeurs` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `editeurs`
--

INSERT INTO `editeurs` (`ID`, `Nom`) VALUES
(1, 'Gallimard'),
(2, 'Hachette'),
(3, 'Folio'),
(4, 'Flammarion');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `ID` int(11) NOT NULL,
  `Titre` varchar(255) DEFAULT NULL,
  `Numero_de_tome` int(11) DEFAULT NULL,
  `Serie_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`ID`, `Titre`, `Numero_de_tome`, `Serie_ID`) VALUES
(1, 'Harry Potter à l\'école des sorciers', 1, 1),
(2, 'Harry Potter et la chambre des secrets', 2, 1),
(3, 'Le Seigneur des anneaux : La Communauté de l\'anneau', 1, 2),
(4, 'Le Seigneur des anneaux : Les Deux Tours', 2, 2),
(5, 'Le Seigneur des anneaux : Le Retour du Roi', 3, 2),
(6, 'L\'apprenti épouvanteur', 1, 3),
(9, 'Le destin de l épouvanteur', 8, 3),
(10, 'Le sang de l épouvanteur', 10, 3);

-- --------------------------------------------------------

--
-- Structure de la table `livre_bibliotheque`
--

CREATE TABLE `livre_bibliotheque` (
  `ID` int(11) NOT NULL,
  `bibliothèques_ID` int(11) NOT NULL,
  `livres_ID` int(11) NOT NULL,
  `etat` enum('lu','en cours') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livre_bibliotheque`
--

INSERT INTO `livre_bibliotheque` (`ID`, `bibliothèques_ID`, `livres_ID`, `etat`) VALUES
(1, 1, 1, 'en cours'),
(2, 1, 2, 'lu'),
(3, 2, 3, 'en cours'),
(4, 3, 4, 'lu'),
(5, 3, 5, 'en cours');

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

CREATE TABLE `series` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Editeur_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `series`
--

INSERT INTO `series` (`ID`, `Nom`, `Editeur_ID`) VALUES
(1, 'Harry Potter', 1),
(2, 'Le Seigneur des anneaux', 2),
(3, 'l\'epouventeur', 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `ID` int(11) NOT NULL,
  `Login` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Bibliothèques_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`ID`, `Login`, `Role`, `Bibliothèques_ID`) VALUES
(1, 'Alice', 'utilisateur', 1),
(2, 'Bob', 'utilisateur', 2),
(3, 'Charlie', 'administrateur', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bibliothèques`
--
ALTER TABLE `bibliothèques`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_utilisateurs_ID` (`utilisateurs_ID`);

--
-- Index pour la table `editeurs`
--
ALTER TABLE `editeurs`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Serie_ID` (`Serie_ID`);

--
-- Index pour la table `livre_bibliotheque`
--
ALTER TABLE `livre_bibliotheque`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `bibliothèques_ID` (`bibliothèques_ID`),
  ADD KEY `livres_ID` (`livres_ID`);

--
-- Index pour la table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Editeur_ID` (`Editeur_ID`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Bibliotheque_ID` (`Bibliothèques_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `livre_bibliotheque`
--
ALTER TABLE `livre_bibliotheque`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bibliothèques`
--
ALTER TABLE `bibliothèques`
  ADD CONSTRAINT `FK_utilisateurs_ID` FOREIGN KEY (`utilisateurs_ID`) REFERENCES `utilisateurs` (`ID`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `FK_Serie_ID` FOREIGN KEY (`Serie_ID`) REFERENCES `series` (`ID`);

--
-- Contraintes pour la table `livre_bibliotheque`
--
ALTER TABLE `livre_bibliotheque`
  ADD CONSTRAINT `livre_bibliotheque_ibfk_1` FOREIGN KEY (`bibliothèques_ID`) REFERENCES `bibliothèques` (`ID`),
  ADD CONSTRAINT `livre_bibliotheque_ibfk_2` FOREIGN KEY (`livres_ID`) REFERENCES `livres` (`ID`);

--
-- Contraintes pour la table `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `FK_Editeur_ID` FOREIGN KEY (`Editeur_ID`) REFERENCES `editeurs` (`ID`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `FK_Bibliotheque_ID` FOREIGN KEY (`Bibliothèques_ID`) REFERENCES `bibliothèques` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
