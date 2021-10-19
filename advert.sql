-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 oct. 2021 à 11:02
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_bon_coin`
--

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `postal_code` int(5) NOT NULL,
  `city` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `reservation_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(24, 'Maison 90 m²', 'lorem ipsum', 77777, 'Melun', 'vente', 500000, ''),
(25, 'Appartement Ubsalon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer enim tellus, condimentum non hendrerit non, semper nec leo. Nulla et lacinia sapien. Aliquam bibendum egestas quam. In a leo lorem. Curabitur volutpat elementum tincidunt. Fusce est felis, lobortis in consectetur vel, molestie quis felis. Phasellus at consequat sem, eu porttitor ante. Curabitur bibendum libero vel nibh ullamcorper varius. Donec eu nulla ligula. Fusce blandit et nisl ut scelerisque.', 89100, 'Sens', 'location', 450, ''),
(26, 'Terrain constructible à vendre à Sainte-marie-aux-chenes', 'A SAISIR SUR SAINTE MARIE AUX CHENES.\r\nMagnifique terrain en impasse dans quartier calme, terrain de 6 ares 72 qui ne demande qu\'à accueillir votre future maison.\r\nTERRAIN DEJA CLOTURE ET ARBORE ET VIABILISE.\r\nTous les raccordements sont faits.\r\nIl y a également un garage construit sur cette parcelle.\r\nLe terrain est impeccable, plat, propre, très bien entretenu.\r\nQuartier très calme.', 45646, 'Auxerre', 'vente', 149000, ''),
(27, 'Maison à vendre F5 à Moutiers', 'Laissez parler votre imagination pour transformer cette maison de cité mitoyenne afin que celle-ci devienne le nid douillet que vous n\'aurez plus envie de quitter.\r\n\r\nÉnorme potentiel pour cette charmante maison.\r\n\r\nSituée sur la commune de MOUTIERS\r\n\r\nCette maison de 97,7m² à rénover se compose :\r\n\r\nAu rez-de-chaussée : cuisine, séjour et une salle d\'eau\r\n\r\nÀ l\'étage : deux chambres ainsi que des combles pouvant être aménagés pour créer deux chambres supplémentaires.\r\n\r\nUn jardin de 2 ares 91 avec une remise et un garage.\r\nDeux caves attenantes pouvant être agrandies complètent ce bien.\r\n\r\nToiture neuve.', 12354, 'Moutiers', 'vente', 69500, ''),
(28, 'Appartement à louer F5 à Joeuf', 'Agréable appartement F5, composé d\'une entrée, cuisine aménagée, salon-séjour, 3 chambres, salle de bains et WC.\r\n2 caves et 1 grand garage complètent ce bien.\r\n\r\nCopropriété de 12 lots principaux.\r\nGérée par un syndic professionnel.\r\nCharges annuelles: 695 \'', 25658, 'Jouef', 'location', 1000, ''),
(29, 'Immeuble de rapport à vendre à Jarny', 'JARNY Bel immeuble en copropriété, comprenant au RDC un local commercial, au 1er étage : 2 appartements F3 et au 2ème étage : deux appartements F3, cave\r\nLoyer annuel : 32144 \'\r\nTF : 3 254 \'\r\nNbre de lots principaux : 11\r\nCharges mensuelles : 20 \'', 45648, 'Jarny', 'location', 32568, ''),
(30, 'Maison à vendre F4 à Neufchef', 'Belle maison mitoyenne de 90m2 habitable située en milieu rural. Se composant d\'une entrée, une cuisine, une belle pièce à vivre, une salle de bain, deux chambres et un grenier aménageable d\'environ 60m2.\r\nUn sous-sol complet composé d\'un garage, d\'une buanderie, une chaufferie.\r\nUn jardin piscinable de 8 ares complète cette maison !\r\nVenez découvrir ce produit rapidement !', 63958, 'Neufchef', 'vente', 569854, ''),
(31, 'Maison à vendre F4 à Nilvange', 'Vous avez coché la case \" sans travaux \" dans vos critères de recherche \' Si oui, cette maison est faite pour vous ! Coup de coeur assuré pour cette superbe maison de cité entièrement rénovée située à Nilvange !\r\n\r\nAu rez-de-chaussée, vous débuterez la visite par une cuisine équipée spacieuse et moderne ouverte sur le séjour.\r\n\r\nAu premier étage, vous trouverez un couloir desservant une grande chambre, une salle de bain avec douche et baignoire ainsi qu\'un wc séparé.\r\n\r\nAu deuxième et dernier étage, vous terminerez la visite de la partie habitable par deux lumineuses chambres sous les combles.\r\n\r\nÀ l\'extérieur, un garage et une remise entièrement rénovés complètent le bien.\r\n\r\nInformations complémentaires : Pas de jardin, menuiseries neuves (6 mois), volets électriques solaires, alarme, chaudière gaz, sous-sol complet.', 12121, 'Nilvange', 'vente', 169000, ''),
(32, 'Immeuble de rapport à vendre à Thionville', 'SPECIAL INVESTISSEUR\r\nDans la commune d\'Algrange, bel immeuble comprenant sept appartements de type F3 et un appartement de type F2, caves et cour\r\n', 55888, 'Thionville', 'location', 685250, ''),
(33, 'Appartement à louer F3 à Boulange', 'Bon\'Appart vous propose ce bel appartement type F3 en duplex au c\'ur de BOULANGE à moins de 20 km du Luxembourg.\r\n\r\nAu 2ème étage d\'un petit immeuble de ville, il se compose d\'une cuisine équipée (four, plaque, hotte, éléments de rangement), d\'un salon/séjour, de deux chambres, d\'une salle de bains, d\'un WC séparé, d\'une mezzanine et d\'un cagibi.\r\n\r\nSurface Carrez : 55,33 m²\r\nSurface au sol : 75,82 m²\r\nCharges 30 \' : Entretien chaudière, TOM.\r\nChauffage individuel au gaz.\r\nDouble vitrage PVC.', 89140, 'Boulange', 'location', 699, ''),
(34, 'Terrain constructible à vendre à Sainte-marie-aux-chenes', 'A SAISIR SUR SAINTE MARIE AUX CHENES.\r\nMagnifique terrain en impasse dans quartier calme, terrain de 6 ares 72 qui ne demande qu\'à accueillir votre future maison.\r\nTERRAIN DEJA CLOTURE ET ARBORE ET VIABILISE.\r\nTous les raccordements sont faits.\r\nIl y a également un garage construit sur cette parcelle.\r\nLe terrain est impeccable, plat, propre, très bien entretenu.\r\nQuartier très calme.', 21315, 'Sainte-marie-aux-chenes', 'vente', 175000, ''),
(35, 'Appartement à louer F3 à Joeuf', 'Bon\'Appart vous propose cet appartement type F3 situé au Quartier Mermoz à JOEUF.\r\n\r\nSitué au 4ème étage, il se compose d\'une cuisine simple, d\'un salon séjour, de deux chambres, d\'un espace dressing, d\'une salle de bains avec loggia et d\'un WC séparé.\r\nIl y a également un balcon et une cave.\r\n\r\nCharges 50 euros : charges de copropriété, TOM, entretien chaudière.\r\nDouble vitrage PVC et volets électriques.\r\nChauffage individuel au gaz.', 46578, 'Joeuf', 'location', 568, ''),
(36, 'Appartement à louer F3 à Boulange', 'Bon\'Appart vous propose ce bel appartement type F3 en duplex au c\'ur de BOULANGE à moins de 20 km du Luxembourg.\r\n\r\nAu 2ème étage d\'un petit immeuble de ville, il se compose d\'une cuisine équipée (four, plaque, hotte, éléments de rangement), d\'un salon/séjour, de deux chambres, d\'une salle de bains, d\'un WC séparé, d\'une mezzanine et d\'un cagibi.\r\n\r\nSurface Carrez : 55,33 m²\r\nSurface au sol : 75,82 m²\r\nCharges 30 \' : Entretien chaudière, TOM.\r\nChauffage individuel au gaz.\r\nDouble vitrage PVC.', 89140, 'Boulange', 'location', 699, ''),
(37, 'Appartement Ubsalon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer enim tellus, condimentum non hendrerit non, semper nec leo. Nulla et lacinia sapien. Aliquam bibendum egestas quam. In a leo lorem. Curabitur volutpat elementum tincidunt. Fusce est felis, lobortis in consectetur vel, molestie quis felis. Phasellus at consequat sem, eu porttitor ante. Curabitur bibendum libero vel nibh ullamcorper varius. Donec eu nulla ligula. Fusce blandit et nisl ut scelerisque.', 89100, 'Sens', 'location', 450, ''),
(38, 'Terrain constructible à vendre à Sainte-marie-aux-chenes', 'A SAISIR SUR SAINTE MARIE AUX CHENES.\r\nMagnifique terrain en impasse dans quartier calme, terrain de 6 ares 72 qui ne demande qu\'à accueillir votre future maison.\r\nTERRAIN DEJA CLOTURE ET ARBORE ET VIABILISE.\r\nTous les raccordements sont faits.\r\nIl y a également un garage construit sur cette parcelle.\r\nLe terrain est impeccable, plat, propre, très bien entretenu.\r\nQuartier très calme.', 45646, 'Auxerre', 'vente', 149000, ''),
(39, 'Maison à vendre F5 à Moutiers', 'Laissez parler votre imagination pour transformer cette maison de cité mitoyenne afin que celle-ci devienne le nid douillet que vous n\'aurez plus envie de quitter.\r\n\r\nÉnorme potentiel pour cette charmante maison.\r\n\r\nSituée sur la commune de MOUTIERS\r\n\r\nCette maison de 97,7m² à rénover se compose :\r\n\r\nAu rez-de-chaussée : cuisine, séjour et une salle d\'eau\r\n\r\nÀ l\'étage : deux chambres ainsi que des combles pouvant être aménagés pour créer deux chambres supplémentaires.\r\n\r\nUn jardin de 2 ares 91 avec une remise et un garage.\r\nDeux caves attenantes pouvant être agrandies complètent ce bien.\r\n\r\nToiture neuve.', 12354, 'Moutiers', 'vente', 69500, ''),
(40, 'Appartement à louer F5 à Joeuf', 'Agréable appartement F5, composé d\'une entrée, cuisine aménagée, salon-séjour, 3 chambres, salle de bains et WC.\r\n2 caves et 1 grand garage complètent ce bien.\r\n\r\nCopropriété de 12 lots principaux.\r\nGérée par un syndic professionnel.\r\nCharges annuelles: 695 \'', 25658, 'Jouef', 'location', 1000, ''),
(41, 'Immeuble de rapport à vendre à Jarny', 'JARNY Bel immeuble en copropriété, comprenant au RDC un local commercial, au 1er étage : 2 appartements F3 et au 2ème étage : deux appartements F3, cave\r\nLoyer annuel : 32144 \'\r\nTF : 3 254 \'\r\nNbre de lots principaux : 11\r\nCharges mensuelles : 20 \'', 45648, 'Jarny', 'location', 32568, ''),
(42, 'Maison à vendre F4 à Neufchef', 'Belle maison mitoyenne de 90m2 habitable située en milieu rural. Se composant d\'une entrée, une cuisine, une belle pièce à vivre, une salle de bain, deux chambres et un grenier aménageable d\'environ 60m2.\r\nUn sous-sol complet composé d\'un garage, d\'une buanderie, une chaufferie.\r\nUn jardin piscinable de 8 ares complète cette maison !\r\nVenez découvrir ce produit rapidement !', 63958, 'Neufchef', 'vente', 569854, ''),
(43, 'Maison à vendre F4 à Nilvange', 'Vous avez coché la case \" sans travaux \" dans vos critères de recherche \' Si oui, cette maison est faite pour vous ! Coup de coeur assuré pour cette superbe maison de cité entièrement rénovée située à Nilvange !\r\n\r\nAu rez-de-chaussée, vous débuterez la visite par une cuisine équipée spacieuse et moderne ouverte sur le séjour.\r\n\r\nAu premier étage, vous trouverez un couloir desservant une grande chambre, une salle de bain avec douche et baignoire ainsi qu\'un wc séparé.\r\n\r\nAu deuxième et dernier étage, vous terminerez la visite de la partie habitable par deux lumineuses chambres sous les combles.\r\n\r\nÀ l\'extérieur, un garage et une remise entièrement rénovés complètent le bien.\r\n\r\nInformations complémentaires : Pas de jardin, menuiseries neuves (6 mois), volets électriques solaires, alarme, chaudière gaz, sous-sol complet.', 12121, 'Nilvange', 'vente', 169000, ''),
(44, 'Immeuble de rapport à vendre à Thionville', 'SPECIAL INVESTISSEUR\r\nDans la commune d\'Algrange, bel immeuble comprenant sept appartements de type F3 et un appartement de type F2, caves et cour\r\n', 55888, 'Thionville', 'location', 685250, ''),
(45, 'Immeuble de rapport à vendre à Jarny', 'JARNY Bel immeuble en copropriété, comprenant au RDC un local commercial, au 1er étage : 2 appartements F3 et au 2ème étage : deux appartements F3, cave\r\nLoyer annuel : 32144 \'\r\nTF : 3 254 \'\r\nNbre de lots principaux : 11\r\nCharges mensuelles : 20 \'', 45648, 'Jarny', 'location', 32568, ''),
(46, 'Maison à vendre F4 à Neufchef', 'Belle maison mitoyenne de 90m2 habitable située en milieu rural. Se composant d\'une entrée, une cuisine, une belle pièce à vivre, une salle de bain, deux chambres et un grenier aménageable d\'environ 60m2.\r\nUn sous-sol complet composé d\'un garage, d\'une buanderie, une chaufferie.\r\nUn jardin piscinable de 8 ares complète cette maison !\r\nVenez découvrir ce produit rapidement !', 63958, 'Neufchef', 'vente', 569854, ''),
(47, 'Maison à vendre F4 à Nilvange', 'Vous avez coché la case \" sans travaux \" dans vos critères de recherche \' Si oui, cette maison est faite pour vous ! Coup de coeur assuré pour cette superbe maison de cité entièrement rénovée située à Nilvange !\r\n\r\nAu rez-de-chaussée, vous débuterez la visite par une cuisine équipée spacieuse et moderne ouverte sur le séjour.\r\n\r\nAu premier étage, vous trouverez un couloir desservant une grande chambre, une salle de bain avec douche et baignoire ainsi qu\'un wc séparé.\r\n\r\nAu deuxième et dernier étage, vous terminerez la visite de la partie habitable par deux lumineuses chambres sous les combles.\r\n\r\nÀ l\'extérieur, un garage et une remise entièrement rénovés complètent le bien.\r\n\r\nInformations complémentaires : Pas de jardin, menuiseries neuves (6 mois), volets électriques solaires, alarme, chaudière gaz, sous-sol complet.', 12121, 'Nilvange', 'vente', 169000, ''),
(48, 'Immeuble de rapport à vendre à Thionville', 'SPECIAL INVESTISSEUR\r\nDans la commune d\'Algrange, bel immeuble comprenant sept appartements de type F3 et un appartement de type F2, caves et cour\r\n', 55888, 'Thionville', 'location', 685250, ''),
(49, 'Appartement Ubsalon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer enim tellus, condimentum non hendrerit non, semper nec leo. Nulla et lacinia sapien. Aliquam bibendum egestas quam. In a leo lorem. Curabitur volutpat elementum tincidunt. Fusce est felis, lobortis in consectetur vel, molestie quis felis. Phasellus at consequat sem, eu porttitor ante. Curabitur bibendum libero vel nibh ullamcorper varius. Donec eu nulla ligula. Fusce blandit et nisl ut scelerisque.', 89100, 'Sens', 'location', 450, ''),
(50, 'Terrain constructible à vendre à Sainte-marie-aux-chenes', 'A SAISIR SUR SAINTE MARIE AUX CHENES.\r\nMagnifique terrain en impasse dans quartier calme, terrain de 6 ares 72 qui ne demande qu\'à accueillir votre future maison.\r\nTERRAIN DEJA CLOTURE ET ARBORE ET VIABILISE.\r\nTous les raccordements sont faits.\r\nIl y a également un garage construit sur cette parcelle.\r\nLe terrain est impeccable, plat, propre, très bien entretenu.\r\nQuartier très calme.', 45646, 'Auxerre', 'vente', 149000, ''),
(51, 'Maison à vendre F5 à Moutiers', 'Laissez parler votre imagination pour transformer cette maison de cité mitoyenne afin que celle-ci devienne le nid douillet que vous n\'aurez plus envie de quitter.\r\n\r\nÉnorme potentiel pour cette charmante maison.\r\n\r\nSituée sur la commune de MOUTIERS\r\n\r\nCette maison de 97,7m² à rénover se compose :\r\n\r\nAu rez-de-chaussée : cuisine, séjour et une salle d\'eau\r\n\r\nÀ l\'étage : deux chambres ainsi que des combles pouvant être aménagés pour créer deux chambres supplémentaires.\r\n\r\nUn jardin de 2 ares 91 avec une remise et un garage.\r\nDeux caves attenantes pouvant être agrandies complètent ce bien.\r\n\r\nToiture neuve.', 12354, 'Moutiers', 'vente', 69500, ''),
(52, 'Immeuble de rapport à vendre à Jarny', 'JARNY Bel immeuble en copropriété, comprenant au RDC un local commercial, au 1er étage : 2 appartements F3 et au 2ème étage : deux appartements F3, cave\r\nLoyer annuel : 32144 \'\r\nTF : 3 254 \'\r\nNbre de lots principaux : 11\r\nCharges mensuelles : 20 \'', 45648, 'Jarny', 'location', 32568, 'Annonce'),
(53, 'Maison à vendre F4 à Nilvange', 'Vous avez coché la case \" sans travaux \" dans vos critères de recherche \' Si oui, cette maison est faite pour vous ! Coup de coeur assuré pour cette superbe maison de cité entièrement rénovée située à Nilvange !\r\n\r\nAu rez-de-chaussée, vous débuterez la visite par une cuisine équipée spacieuse et moderne ouverte sur le séjour.\r\n\r\nAu premier étage, vous trouverez un couloir desservant une grande chambre, une salle de bain avec douche et baignoire ainsi qu\'un wc séparé.\r\n\r\nAu deuxième et dernier étage, vous terminerez la visite de la partie habitable par deux lumineuses chambres sous les combles.\r\n\r\nÀ l\'extérieur, un garage et une remise entièrement rénovés complètent le bien.\r\n\r\nInformations complémentaires : Pas de jardin, menuiseries neuves (6 mois), volets électriques solaires, alarme, chaudière gaz, sous-sol complet.', 12121, 'Nilvange', 'vente', 169000, 'Cette annonce est réservé'),
(54, 'qsdqsdqsds', 'qsdqsdqsd', 89140, 'qdqsdqsd', 'location', 40540450, 'wx<c');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
