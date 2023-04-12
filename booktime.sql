-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 12 avr. 2023 à 12:06
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
(3, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(10, 8),
(11, 9),
(9, 10);

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
  `Serie_ID` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`ID`, `Titre`, `Numero_de_tome`, `Serie_ID`, `images`, `description`) VALUES
(1, 'Harry Potter à l\'école des sorciers', 1, 1, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/516qWQcG3FL.jpg', 'Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l\'emmener à Poudlard, une école de sorcellerie ! Voler en balai, jeter des sorts, combattre les trolls : Harry se révèle un sorcier doué. Mais un mystère entoure sa naissance et l\'effroyable V., le mage dont personne n\'ose prononcer le nom.'),
(2, 'Harry Potter et la chambre des secrets', 2, 1, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/51zWuPtihpL.jpg', 'Une rentrée fracassante en voiture volante, une étrange malédiction quis\'abat sur les élèves, cette deuxième année à l\'école des sorciers ne s\'annonce pas de tout repos ! Entre les cours de potions magiques, les matchs de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?'),
(3, 'Le Seigneur des anneaux : La Communauté de l\'anneau', 1, 2, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/51VPYs+65XL._SX303_BO1,204,203,200_.jpg', 'Dans un paisible village du Comté, le jeune Frodo est sur le point de recevoir un cadeau qui changera sa vie à jamais : l’Anneau de Pouvoir. Forgé par Sauron au cœur de la Montagne du Feu, on croyait l’Anneau perdu depuis qu’un homme l’avait arraché au Seigneur des Ténèbres avant de le chasser hors du monde. À présent, de noirs présages s’étendent à nouveau sur la Terre du Milieu, les créatures maléfiques se multiplient et, dans les Montagnes de Brume, les Orques traquent les Nains. L’ennemi veut récupérer son bien afin de dominer le monde ; l’Œil de Sauron est désormais pointé sur le Comté. Heureusement Gandalf les a devancés. S’ils font vite, Frodo et lui parviendront peut-être à détruire l’Anneau à temps.'),
(4, 'Le Seigneur des anneaux : Les Deux Tours', 2, 2, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61HMVL08idL._AC_UY327_FMwebp_QL65_.jpg', 'La Fraternité de l’Anneau poursuit son voyage vers la Montagne du Feu où l’Anneau Unique fut forgé, et où Frodo a pour mission de le détruire. Cette quête terrible est parsemée d’embûches : Gandalf a disparu dans les Mines de la Moria et Boromir a succombé au pouvoir de l’Anneau. Frodo et Sam se sont échappés afin de poursuivre leur voyage jusqu’au cœur du Mordor. À présent, ils cheminent seuls dans la désolation qui entoure le pays de Sauron – mais c’est sans compter la mystérieuse silhouette qui les suit partout où ils vont.'),
(5, 'Le Seigneur des anneaux : Le Retour du Roi', 3, 2, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/51aGUodxeOL._SY291_BO1,204,203,200_QL40_ML2_.jpg', 'Le retour du roi, dernière partie du Seigneur des anneaux voit s\'achever la quête de Frodo. Toujours accompagné de Sam et Gollum, sa traversée du Mordor pour atteindre la montagne du destin est plus périlleuse que jamais. Tandis que Gandalf affronte Sauron dans une lutte sans merci, c\'est une guerre dévastatrice qui a lieu au pied de Minas Tirith, assiégée par des armées d\'orques et de trolls. Aragorn, Gimli, Legolas, Merry et Pippin combattent avec l\'énergie du désespoir pour défendre la cité blanche, et avec elle la Terre du milieu toute entière, face à l\'invasion des forces des ténèbres.'),
(6, 'L\'apprenti épouvanteur', 1, 3, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81P8I-Ds4EL._AC_UY327_FMwebp_QL65_.jpg', 'Thomas Ward est le \"septième fils d\'un septième fils \". Il possède un don particulier pour voir et entendre ce que le commun des mortels ne voit ni n\'entend. Il entame donc son apprentissage auprès de l\'Épouvanteur John Gregory. Tom doit apprendre à tenir les spectres à distance, entraver les gobelins, empêcher les sorcières de nuire... Cependant, il libère involontairement Mère Malkin, une sorcière maléfique que l\'Épouvanteur gardait enfermée depuis treize ans au fond d\'un puits, et l\'horreur commence...'),
(9, 'Le destin de l épouvanteur', 8, 3, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81-5H0kArBL._AC_UY327_FMwebp_QL65_.jpg', 'John Gregory, Tom Ward et son amie Alice, fuyant la guerre qui fait rage dans le Comté, accostent en Irlande. Là, ils vont affronter des mages particulièrement malfaisants, prêts à tout pour accroître leurs pouvoirs maléfiques et se débarrasser de l\'Épouvanteur comme de son apprenti. Au cours d\'une dangereuse mission, Tom se voit remettre la Lame du Destin, une épée venue de l\'Autre Monde. Cette arme puissante lui permettra-t-elle de vaincre le Malin ? Mais s\'il veut survivre, il doit encore s\'entraîner... Et la seule personne capable de l\'aider n\'est autre que Grimalkin, la sorcière tueuse...'),
(10, 'Le sang de l épouvanteur', 10, 3, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81YPqSzvjIL._AC_UY327_FMwebp_QL65_.jpg', 'Depuis que Tom Ward et l\'Épouvanteur ont réussi à décapiter le Malin et à enfermer son corps dans une fosse, celui-ci est plus ou moins hors d\'état de nuire. Quant à la sorcière Grimalkin, elle garde la tête du démon hors de portée des serviteurs de l\'obscur en attendant que Tom trouve le moyen de le détruire définitivement. Or, le Malin cherche à lancer contre lui l\'un de ses puissants serviteurs, Siscoi, un ancien dieu, l\'être le plus féroce qu\'on puisse imaginer. Kidnappé avec son maître par une jeune sorcière roumaine, Tom est menacé d\'être jeté en pâture à ce terrible vampire. Même s\'il peut compter sur l\'aide de Judd, un ancien apprenti de John Gregory, devenu épouvanteur à son tour, Tom se sent bien démuni car son maître vieillissant n\'a plus sa vigueur d\'autrefois. C\'est à lui seul de risquer sa vie pour empêcher Siscoi d\'entrer dans notre monde. Pourtant, là n\'est pas le pire ! Sa mère - la première des lamias - lui est apparue, et elle lui a indiqué le rituel qui lui permettra de détruire le Malin. Le garçon est profondément révolté : comment ferait-il une chose pareille ? Surtout que, pour cela, il devrait, sacrifier celle qu\'il aime le plus au monde : son amie Alice...'),
(11, 'Le labyrinthe', 1, 4, 'https://cdn1.booknode.com/book_cover/491/lepreuve_tome_1_le_labyrinthe-491190-264-432.jpg', 'Enfermés tels des rats de laboratoire, des ados doivent trouver l\'issue d\'un labyrinthe peuplé de monstres... Quand Thomas reprend connaissance, sa mémoire est vide, seul son nom lui est familier... Il se retrouve entouré d\'adolescents dans un lieu étrange, à l\'ombre de murs infranchissables. Quatre portes gigantesques, qui se referment le soir, ouvrent sur un labyrinthe peuplé de monstres d\'acier. Chaque nuit, le plan en est modifié. Thomas comprend qu\'une terrible épreuve les attend tous. Comment s\'échapper par le labyrinthe maudit sans risquer sa vie ? Si seulement il parvenait à exhumer les sombres secrets enfouis au plus profond de sa mémoire...'),
(12, 'La terre brulée', 2, 4, 'https://cdn1.booknode.com/book_cover/513/lepreuve_tome_2_la_terre_brulee-513087-264-432.jpg', 'Pour Thomas, la sortie du Labyrinthe devait être comme une renaissance. Mais aucun des survivants n\'imaginait quel genre de vie les attendait dehors. Thomas en était sûr, la sortie du labyrinthe marquerait la fin de l\'épreuve. Mais, à l\'extérieur, il découvre un monde ravagé. La terre est dépeuplée, brûlée par un climat ardent. Plus de gouvernement, plus d\'ordre... Et des hordes de gens infectés, en proie à une folie meurtrière, errent dans les villes en ruines. Au lieu de la liberté espérée, Thomas se trouve confronté à un nouveau défi démoniaque. Au coeur de cette terre brûlée, parviendra-t-il à trouver la paix... et un peu d\'amour ?'),
(13, 'Le Remède mortel', 3, 4, 'https://cdn1.booknode.com/book_cover/619/lepreuve_tome_25_le_reve_de_thomas-619416-264-432.jpg', 'Thomas sait désormais qu\'il ne peut pas faire confiance à Wicked. Armé de ses souvenirs, il s\'élève contre les créateurs de la Cure, à la recherche d\'une vérité potentiellement mortelle... Le WICKED a tout volé à Thomas : sa vie, sa mémoire et maintenant ses seuls amis. Mais l\'épreuve touche à sa fin. Ne reste qu\'un dernier test... Terrifiant. Cependant Thomas a retrouvé assez de souvenirs pour ne plus faire confiance à l\'Organisation. Il a triomphé du labyrinthe. Il a survécu sur la terre brûlée. Il fera tout pour sauver ses amis, même si la vérité risque de provoquer la fin de tout.'),
(14, 'Hunger Games', 1, 5, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61i8nC90deL.jpg', 'Peeta et Katniss sont tirés au sort pour participer aux Hunger Games. La règle est simple : 24 candidats pour un seul survivant, le tout sous le feu des caméras...  Dans un futur sombre, sur les ruines des États-Unis, un jeu télévisé est créé pour contrôler le peuple par la terreur. Douze garçons et douze filles tirés au sort participent à cette sinistre téléréalité, que tout le monde est forcé de regarder en direct. Une seule règle dans l\'arène : survivre, à tout prix. Quand sa petite sœur est appelée pour participer aux Hunger Games, Katniss n\'hésite pas une seconde. Elle prend sa place, consciente du danger. À seize ans, Katniss a déjà été confrontée plusieurs fois à la mort. Chez elle, survivre est comme une seconde nature...'),
(15, 'L\'embrasement', 2, 5, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61fVX6sjycL.jpg', 'À la fois symbole de la rébellion et marionnette d\'une dictature sanglante, Katniss a le pouvoir entre ses mains... liées.  Après le succès des derniers Hunger Games, le peuple de Panem est impatient de retrouver Katniss et Peeta pour la Tournée de la victoire. Mais pour Katniss, il s\'agit surtout d\'une tournée de la dernière chance. Celle qui a osé défier le Capitole est devenue le symbole d\'une rébellion qui pourrait bien embraser Panem. Si elle échoue à ramener le calme dans les districts, le président Snow n\'hésitera pas à noyer dans le sang le feu de la révolte. À l\'aube des Jeux de l\'Expiation, le piège du Capitole se referme sur Katniss...'),
(16, 'La révolte', 3, 5, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41w+KB2xZLL._SX301_BO1,204,203,200_.jpg', 'Contre toute attente, Katniss a survécu une seconde fois aux Hunger Games. Mais le Capitole crie vengeance. Katniss doit payer les humiliations qu\'elle lui a fait subir. Et le président Snow a été très clair : Katniss n\'est pas la seule à risquer sa vie. Sa famille, ses amis et tous les anciens habitants du district Douze sont visés par la colère sanglante du pouvoir. Pour sauver les siens, Katniss doit redevenir le geai moqueur, le symbole de la rébellion. Quel que soit le prix à payer.'),
(17, 'Le Trône de fer', 1, 6, 'https://cdn1.booknode.com/book_cover/997/mod11/le_trone_de_fer_tome_1_le_trone_de_fer-997177-264-432.jpg', 'Après avoir tué le monarque dément Aerys II Targaryen, Robert Baratheon est devenu le nouveau souverain du royaume des Sept Couronnes. Tandis qu\'en son domaine de Winterfell, son fidèle ami le duc Eddard Stark rend paisiblement la justice. Mais un jour, le roi Robert lui rend visite, porteur de sombres nouvelles : le trône est en péril. Stark, qui s\'est toujours tenu éloigné des affaires du pouvoir, doit alors abandonner les terres du Nord pour rejoindre la cour et ses intrigues. L\'heure est grave, d\'autant qu\'au-delà du mur qui protège le royaume depuis des siècles, d\'étranges créatures rôdent...'),
(18, 'Le Donjon rouge', 2, 6, 'https://cdn1.booknode.com/book_cover/997/mod11/le_trone_de_fer_tome_2_le_donjon_rouge-997178-264-432.jpg', 'Comment Lord Eddard Stark, seigneur de Winterfell, Main du Roi, gravement blessé par traîtrise, et par la même plus que jamais à la merci de la perfide reine Cersei ou des imprévisibles caprices du despotique roi Robert, aurait-il une chance déchapper à la nasse tissée dans lombre pour labattre ? Comment, armé de sa seule et inébranlable loyauté, cerné de toutes parts par dabominables intrigues, pourrait-il à la fois survivre, sauvegarder les siens et assurer la pérennité du royaume ? Comment ne serait-il pas voué à être finalement broyé dans un engrenage infernal, alors que Catelyn, son épouse, a mis le feu aux poudres en semparant du diabolique nain Tyrion, le frère de la reine ? Ce modèle est livré par le fabricant sous forme d\'un assortiment aléatoire de plusieurs modèles et/ou coloris. Il nous est donc impossible de vous proposer un modèle et/ou un coloris en particulier. En validant votre commande, vous recevrez donc un des modèles figurant sur l\'image en fonction du stock disponible. Nous vous remercions pour votre compréhension.'),
(19, 'La Bataille des rois', 3, 6, 'https://cdn1.booknode.com/book_cover/967/mod11/le_trone_de_fer_tome_3_la_bataille_des_rois-966965-264-432.jpg', 'Le roi Robert Baratheon est mort, son ami Eddard Stark a été exécuté. La dynastie Baratheon n\'aura duré qu\'une génération, et la paix plusieurs fois centenaire qui régissait le Royaume des Sept Couronnes a volé en éclats. Joffrey, le bâtard illégitime, se terre dans sa capitale, les frères de Robert rallient des troupes à leurs bannières, le fils de Ned a levé son armée et crie vengeance, des pirates razzient les côtes et des brigands pillent les campagnes. Il y a quatre rois désormais, et chacun forge des alliances pour entraîner le royaume dans la tourmente de la guerre. Maintenant c\'est l\'acier qui va hurler son chant de mort.'),
(20, 'L Ombre maléfique', 4, 6, 'https://cdn1.booknode.com/book_cover/969/mod11/le_trone_de_fer_tome_4_lombre_malefique-969491-264-432.jpg', 'Plongé dans le chaos, le royaume des Sept couronnes est en proie à une formidable pandémie de violence, les héritiers du souverain défunt se disputent le trône dans d\'âpres et sanglants combats. Et les puissants seigneurs, ralliés aux diverses causes, négligent tout égard pour le peuple, qui supporte souffrances et famine. Les ennemis jurés Catelyn et Tyrion fourbissent chacun leurs armes, Catelyn Stark rejoint Renly Baratheon, à la tête des forces de Hautjardin et accalmie, tandis que Tyrion Lannister durdit de nouvelles alliances et prépare Port-Réal à repousser le futur siège, mais un nouveau péril se profile : une ombre qui plane, frappe les rois et renverse les citadelles...'),
(21, 'L Invincible forteresse', 5, 6, 'https://cdn1.booknode.com/book_cover/977/mod11/le_trone_de_fer_tome_5_linvincible_forteresse-976687-264-432.jpg', 'Le dénouement est proche. Car il ne reste que deux prétendants au trône des Sept Couronnes : Joffrey, le héraut du clan des Lannister, retranché à Port-Réal, et Stannis Baratheon, qui a masse ses navires aux abords de la capitale en vue de l\'assaut final. Celui qui s\'en rendra maître deviendra le véritable souverain du royaume. Il revient à Tyrion Lannister, le \" Lutin \" Haï de tous - aussi bien de ses ennemis que de ses allies - de préparer activement la défense de l\'invincible forteresse. Pour cela, il a élabore un plan machiavélique afin de défaire le seigneur de Peyredragon et ses troupes. Un plan que seul son cerveau démoniaque et sa volonté de fer peuvent mettre en uvre.. Ce modèle est livré par le fabricant sous forme d\'un assortiment aléatoire de plusieurs modèles et/ou coloris. Il nous est donc impossible de vous proposer un modèle et/ou un coloris en particulier. En validant votre commande, vous recevrez donc un des modèles figurant sur l\'image en fonction du stock disponible. Nous vous remercions pour votre compréhension.'),
(22, 'Intrigues à Port-Réal', 6, 6, 'https://cdn1.booknode.com/book_cover/997/mod11/le_trone_de_fer_tome_6_intrigues_a_port_real-997179-264-432.jpg', 'Le jeune et inconséquent roi Joffrey semble bien installé sur le trône de fer. L\'usurpateur Baratheon est mort, l\'armée de son frère Stannis a été défaite devant Port-Réal et le souverain Robb se retrouve dépossédé de ses propres terres. Joffrey n\'a pourtant participé à aucune bataille. Il doit ces succès au courage de son oncle Tyrion et à la ruse de son grand-père Tywin. C\'est un roi velléitaire, lâche et cruel qui s\'apprête donc à régner sur les Sept Couronnes. Toutes les forces en présence n\'ont cependant pas dit leur dernier mot. Là où les épées n\'ont pu l\'emporter, la puissance de la magie réussira-t-elle ?'),
(23, 'L Épée de feu', 7, 6, 'https://cdn1.booknode.com/book_cover/1058/mod11/le_trone_de_fer_tome_7_lepee_de_feu-1057804-264-432.jpg', 'Les sept couronnes sont exsangues. Le royaume panse ses plaies. Les guerres ont vidé les campagnes, les épidémies ont ruiné les récoltes et les pillards écument les terres dévastées. Pourtant il y a toujours autant de prétendants qui briguent la couronne : chacun dans son repaire échafaude des stratégies. Les Lannister multiplient les alliances fragiles, Stannis Baratheon se réfugie toujours davantage dans le culte de R\'hllor, le maître de la lumière, et Robb Stark soupire après son fief en lambeaux. Mais d\'autres ennemis se massent aux frontières, loin dans le nord. Et, pendant que les puissants avancent leurs pions, les faibles tentent de survivre...'),
(24, 'Les Noces pourpres', 8, 6, 'https://cdn1.booknode.com/book_cover/1038/mod11/le_trone_de_fer_tome_8_les_noces_pourpres-1037687-264-432.jpg', 'Le temps des batailles est révolu. Le fier royaume des Sept Couronnes n\'est plus qu\'un champ de ruines. Les quelques prétendants qui s\'opposent encore nouent alliances et accords par des mariages arrangés et sans amour. Seuls les plus subtils, les plus retors - et parfois les plus lâches -l\'emporteront... Et pendant ce temps, par-delà les mers, loin dans les Terres brûlées, Daenerys, dernière descendante des Targaryen, conquiert un gigantesque empire dans l\'espoir de restaurer l\'antique puissance de Valyria et de ses dragons.'),
(25, 'The Promised Neverland', 1, 8, 'https://m.media-amazon.com/images/I/91Av5fsl6mL.jpg', 'Dans un orphelinat de Grace Field House, Emma et ses amis découvrent un terrible secret qui les oblige à s’échapper pour sauver leur vie.'),
(26, 'The Promised Neverland', 2, 8, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91g+7DH3dIL.jpg', 'Emma, Norman et Ray tentent de s’échapper de l’orphelinat, mais ils sont poursuivis par Sœur Krone.'),
(27, 'The Promised Neverland', 3, 8, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91ls78YxcuL.jpg', 'Emma, Ray et les autres orphelins arrivent dans un nouveau refuge, mais ils découvrent bientôt que leur situation est loin d’être idéale.'),
(28, 'The Promised Neverland', 4, 8, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81Jw366dfcL.jpg', 'Emma et les autres s’efforcent de trouver un moyen de sauver les enfants laissés derrière eux à Grace Field House.'),
(29, 'The Promised Neverland', 5, 8, 'https://m.media-amazon.com/images/I/814RLbeHcpL.jpg', 'Emma et ses amis se rapprochent de la vérité sur les démons et leur monde, mais cela pourrait mettre leur vie en danger.'),
(30, 'Naruto', 1, 9, 'https://m.media-amazon.com/images/I/71gwzyXnaNL.jpg', 'Naruto Uzumaki, un jeune ninja rêve de devenir Hokage, le chef de son village.'),
(31, 'Naruto', 2, 9, 'https://m.media-amazon.com/images/I/81W0jEvdO9L.jpg', 'Naruto et ses coéquipiers, Sasuke et Sakura, poursuivent leur entraînement et leur apprentissage des techniques ninjas.'),
(32, 'Naruto', 3, 9, 'https://m.media-amazon.com/images/I/81IRXboBsKL.jpg', 'Naruto et son équipe font face à des ennemis puissants, y compris Zabuza, un ninja légendaire de l’eau.'),
(33, 'Naruto', 4, 9, 'https://m.media-amazon.com/images/I/814RzYeH3ML.jpg', 'Naruto participe à un examen pour devenir ninja de rang supérieur, mais il doit faire face à des adversaires redoutables, y compris Orochimaru.'),
(34, 'Naruto', 5, 9, 'https://m.media-amazon.com/images/I/818RM6H2oHL.jpg', 'Naruto et ses amis font face à des ennemis encore plus puissants lors de la deuxième épreuve de l’examen Chunin.'),
(35, 'Mushoku Tensei', 1, 10, 'https://static.fnac-static.com/multimedia/Images/FR/NR/aa/f1/81/8516010/1505-1/tsp20170316181325/Mushoku-Tensei.jpg', 'Un homme de 34 ans se réincarne dans un monde fantastique avec tous ses souvenirs de sa vie antérieure, et décide de profiter de cette chance pour vivre pleinement sa nouvelle vie.'),
(36, 'Mushoku Tensei', 2, 10, 'https://m.media-amazon.com/images/I/71e2bWPsABL.jpg', 'Rudeus Greyrat, l’ancien NEET, commence à s’adapter à son nouveau monde et à faire des progrès dans la magie et l’épée.'),
(37, 'Mushoku Tensei', 3, 10, 'https://m.media-amazon.com/images/I/61oC0tc4C2L.jpg', 'Rudeus est engagé comme tuteur par la fille d’un seigneur, et doit aider la jeune Eris à se préparer à une vie de noblesse.'),
(38, 'Mushoku Tensei', 4, 10, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91IUkSxZhtL.jpg', 'Rudeus et Eris se lancent dans une aventure dangereuse pour sauver la sœur d’Eris, qui a été kidnappée par des bandits.'),
(39, 'Mushoku Tensei', 5, 10, 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91Vm-cJbY2L.jpg', 'Rudeus et Eris sont recrutés par un groupe de mercenaires pour aider à combattre une armée de démons qui envahit un village voisin.');

-- --------------------------------------------------------

--
-- Structure de la table `livre_bibliotheque`
--

CREATE TABLE `livre_bibliotheque` (
  `ID` int(11) NOT NULL,
  `bibliothèques_ID` int(11) NOT NULL,
  `livres_ID` int(11) NOT NULL,
  `etat` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livre_bibliotheque`
--

INSERT INTO `livre_bibliotheque` (`ID`, `bibliothèques_ID`, `livres_ID`, `etat`) VALUES
(1, 1, 1, 'en cours'),
(2, 1, 2, 'lu'),
(3, 2, 3, 'pas lu'),
(4, 3, 4, 'en cours'),
(5, 3, 5, 'pas lu'),
(7, 6, 17, 'lu'),
(8, 7, 11, 'en cours'),
(9, 5, 6, 'en cours'),
(10, 5, 3, 'lu'),
(11, 6, 1, 'lu'),
(12, 6, 2, 'en cours');

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
(3, 'L\'épouventeur', 3),
(4, 'Le labyrinthe', 1),
(5, 'Hunger Games', 2),
(6, 'Games of Thrones', 1),
(7, 'U4', 3),
(8, 'The Promised Neverland', 1),
(9, 'Naruto', 3),
(10, 'Mushoku Tensei', 4);

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
(3, 'Charlie', 'administrateur', 3),
(4, 'Pierre', 'utilisateur', 5),
(5, 'Florian', 'utilisateur', 6),
(6, 'Paul', 'utilisateur', 7),
(7, 'Jean', 'utilisateur', 8),
(8, 'Michel', 'utilisateur', 9),
(9, 'Jacque', 'utilisateur', 10),
(10, 'Romain', 'utilisateur', 11);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
