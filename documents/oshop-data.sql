-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 21 Décembre 2018 à 21:25
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.12-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `oshop`
--
USE `oshop`;

--
-- Contenu de la table `brand`
--

INSERT INTO `brand` (`id`, `name`, `description`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'oCirage', 'Sed facilisis, nisl ac iaculis sodales, sem mauris vehicula magna, eu dignissim justo orci pulvinar massa. Suspendisse finibus, lacus quis rhoncus dapibus, ex lectus auctor massa, vehicula consectetur ante urna ut velit. In sit amet euismod mi. Curabitur eget ipsum nec felis tincidunt congue nullam.', 'assets/images/brand/logo1.png', NULL, '2018-12-21 20:49:25', NULL),
(2, 'BOOTstrap', 'Pellentesque augue elit, vestibulum vel ullamcorper nec, convallis vitae ligula. Nullam eget pharetra mauris. Sed a fermentum lorem, eget dignissim augue. Maecenas sapien neque, faucibus sed lectus quis, venenatis lacinia diam. Maecenas a tortor cursus, viverra libero sed, placerat diam. Mauris sed.', 'assets/images/brand/logo2.png', NULL, '2018-12-21 20:49:25', NULL),
(3, 'Talonette', 'Cras placerat posuere mollis. Suspendisse ut erat quam. Aliquam erat volutpat. Nam tincidunt non turpis ut ultricies. Suspendisse potenti. Suspendisse potenti. Ut a nisl in dolor sollicitudin accumsan at nec lectus. Quisque feugiat fermentum urna. Sed dictum lectus nec nisi consequat tincidunt amet.', 'assets/images/brand/logo3.png', NULL, '2018-12-21 20:49:25', NULL),
(4, 'Shossures', 'Curabitur ipsum dui, vulputate vel dapibus ut, accumsan a massa. Fusce pharetra lacus ipsum, quis facilisis nisl blandit nec. Curabitur metus sapien, auctor nec dapibus vel, scelerisque at nibh. Nam neque mi, feugiat sed risus in, efficitur vehicula tellus. Phasellus eros velit, lobortis massa nunc.', 'assets/images/brand/logo4.png', NULL, '2018-12-21 20:49:25', NULL),
(5, 'O\'shoes', 'Pellentesque lobortis orci vel dui faucibus condimentum. Vivamus id massa vitae sapien porttitor aliquam quis ac neque. Duis accumsan feugiat orci ut rutrum. Integer interdum metus ac nisl tincidunt convallis. Curabitur ultricies turpis quis ligula imperdiet ullamcorper. Curabitur sit amet volutpat.', 'assets/images/brand/logo5.png', NULL, '2018-12-21 20:49:25', NULL),
(6, 'Pattes d\'eph', 'Nam sed molestie tortor, eget laoreet nisl. Maecenas feugiat odio nec gravida placerat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer eu tincidunt eros. Aenean eleifend sapien orci, a fringilla augue auctor vitae. Nulla elementum viverra fusce.', 'assets/images/brand/logo6.png', NULL, '2018-12-21 20:49:25', NULL),
(7, 'PHPieds', 'Morbi nisi nisi, pellentesque non ante sed, aliquet auctor purus. Donec laoreet tincidunt augue sed rhoncus. Cras orci libero, egestas eget est a, blandit ultrices sapien. Phasellus tristique leo et libero tincidunt, eu mattis dui hendrerit. Suspendisse tortor lacus, pellentesque a purus ac posuere.', 'assets/images/brand/logo7.png', NULL, '2018-12-21 20:49:25', NULL),
(8, 'oPompes', 'Nullam gravida mauris ipsum, non consequat tortor faucibus a. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer rutrum mi id lectus varius commodo. Nunc magna dui, venenatis a turpis quis, euismod eleifend enim. Nam facilisis, nisl id finibus nullam.', 'assets/images/brand/logo8.png', NULL, '2018-12-21 20:49:25', NULL);

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Détente', 'Se faire plaisir', 'assets/images/categ1.jpeg', 4, '2018-12-21 20:51:51', NULL),
(2, 'Au travail', 'C\'est parti', 'assets/images/categ2.jpeg', 2, '2018-12-21 20:51:51', NULL),
(3, 'Cérémonie', 'Bien choisir', 'assets/images/categ3.jpeg', 5, '2018-12-21 20:51:51', NULL),
(4, 'Sortir', 'Faire un tour', 'assets/images/categ4.jpeg', 3, '2018-12-21 20:51:51', NULL),
(5, 'Vintage', 'Découvrir', 'assets/images/categ5.jpeg', 1, '2018-12-21 20:51:51', NULL),
(6, 'Piscine et bains', NULL, NULL, 0, '2018-12-21 20:51:51', NULL),
(7, 'Sport', NULL, NULL, 0, '2018-12-21 20:51:51', NULL);

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id`, `name`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Chaussures de ville', 'Vivamus id pellentesque sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi finibus convallis urna sed scelerisque. Etiam auctor et ex quis commodo. Nullam ultricies erat id ante pharetra, quis vestibulum purus vehicula. Integer a convallis massa, nec fringilla sapien. Orci metus.', 1, '2018-12-21 20:55:07', NULL),
(2, 'Chaussures de sport', 'Quisque mauris purus, scelerisque in porta non, tincidunt eu sem. Sed at consectetur magna. Integer ultrices nisi ut lacus venenatis, ut bibendum mauris convallis. Suspendisse venenatis turpis purus, sed pellentesque purus laoreet vel. Aliquam fermentum neque vel magna iaculis convallis. Nulla amet.', 2, '2018-12-21 20:55:07', NULL),
(3, 'Tongs', 'In volutpat imperdiet mauris eu mattis. Quisque ac blandit nisl, vel ultrices diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam volutpat, odio ac sagittis lacinia, erat dolor iaculis felis, ut commodo urna risus ac nulla. Curabitur elementum sed.', 4, '2018-12-21 20:55:07', NULL),
(4, 'Chaussures ouvertes', 'Donec consequat dapibus sapien. Sed congue tellus in bibendum iaculis. Fusce sollicitudin elit ligula, eget finibus leo eleifend a. Suspendisse at posuere tellus, at mattis tortor. Donec aliquet eleifend erat in rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per nullam.', 0, '2018-12-21 20:55:07', NULL),
(5, 'Talons aiguilles', 'Sed rhoncus nibh at suscipit hendrerit. Duis justo dolor, pellentesque nec odio in, viverra tincidunt nisi. Vestibulum nibh metus, finibus sed suscipit id, egestas et nisl. Suspendisse vel massa orci. Sed at velit laoreet, commodo ligula at, sollicitudin eros. Fusce quis aliquam ligula. Nam posuere.', 0, '2018-12-21 20:55:07', NULL),
(6, 'Talons', 'Nulla facilisi. Integer mattis ultrices neque, quis fringilla felis vehicula eu. In efficitur ullamcorper nulla, id venenatis quam placerat ut. Suspendisse eget magna finibus, sodales leo ut, finibus velit. Sed lectus tellus, porttitor id bibendum sit amet, viverra sit amet dui. Phasellus vel metus.', 0, '2018-12-21 20:55:07', NULL),
(7, 'Pantoufles', 'Mauris sed leo non neque bibendum laoreet. In hendrerit lectus in odio bibendum, sagittis blandit nulla egestas. Integer viverra ante at massa pulvinar semper. Nullam aliquet ut mi sit amet rutrum. Etiam egestas ipsum a est ultrices hendrerit eu eget tortor. In urna magna, blandit id nullam sodales.', 3, '2018-12-21 20:55:07', NULL),
(8, 'Chaussons', 'Mauris pretium nunc sit amet nisl semper, a posuere nulla fermentum. Donec efficitur finibus augue in efficitur. Maecenas consectetur, erat quis aliquet pharetra, dui lectus pellentesque est, non porttitor turpis felis feugiat risus. Nulla nec elementum arcu. Cras ultricies, dui sit amet massa nunc.', 5, '2018-12-21 20:55:07', NULL);

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `image`, `price`, `rate`, `status`, `created_at`, `updated_at`, `category_id`, `type_id`, `brand_id`) VALUES
(1, 'Kissing', 'Proinde concepta rabie saeviore, quam desperatio incendebat et fames, amplificatis viribus ardore incohibili in excidium urbium matris Seleuciae efferebantur, quam comes tuebatur Castricius tresque legiones bellicis sudoribus induratae.', 'assets/images/produits/1-kiss.jpg', 40, 4, 1, '2018-10-17 11:00:00', NULL, 1, 7, 2),
(2, 'Pink Lady', 'Nunc vero inanes flatus quorundam vile esse quicquid extra urbis pomerium nascitur aestimant praeter orbos et caelibes, nec credi potest qua obsequiorum diversitate coluntur homines sine liberis Romae.', 'assets/images/produits/2-rose.jpg', 20, 2, 1, '2018-10-17 11:00:00', NULL, 6, 2, 4),
(3, 'Panda', 'Homines enim eruditos et sobrios ut infaustos et inutiles vitant, eo quoque accedente quod et nomenclatores adsueti haec et talia venditare, mercede accepta lucris quosdam et prandiis inserunt subditicios ignobiles et obscuros.', 'assets/images/produits/3-panda.jpg', 50, 5, 1, '2018-10-17 11:00:00', NULL, 1, 7, 5),
(4, 'Zombie', 'Sed si ille hac tam eximia fortuna propter utilitatem rei publicae frui non properat, ut omnia illa conficiat, quid ego, senator, facere debeo, quem, etiamsi ille aliud vellet, rei publicae consulere oporteret?', 'assets/images/produits/4-zombie.jpg', 40, 2, 1, '2018-10-17 11:00:00', NULL, 1, 7, 7),
(5, 'Minion', 'Ut enim benefici liberalesque sumus, non ut exigamus gratiam (neque enim beneficium faeneramur sed natura propensi ad liberalitatem sumus), sic amicitiam non spe mercedis adducti sed quod omnis eius fructus in ipso amore inest, expetendam putamus.', 'assets/images/produits/5-minion.jpg', 44, 3, 1, '2018-10-17 11:00:00', NULL, 1, 7, 6),
(6, 'Père Noël', 'Tempore quo primis auspiciis in mundanum fulgorem surgeret victura dum erunt homines Roma, ut augeretur sublimibus incrementis, foedere pacis aeternae Virtus convenit atque Fortuna plerumque dissidentes, quarum si altera defuisset, ad perfectam non venerat summitatem.', 'assets/images/produits/6-pernoel.jpg', 36, 2, 2, '2018-10-17 11:00:00', NULL, 1, 7, 8),
(7, 'Sleepy', 'Vita est illis semper in fuga uxoresque mercenariae conductae ad tempus ex pacto atque, ut sit species matrimonii, dotis nomine futura coniunx hastam et tabernaculum offert marito, post statum diem si id elegerit discessura, et incredibile est quo ardore apud eos in venerem uterque solvitur sexus.', 'assets/images/produits/7-sleepy.jpg', 40, 3, 1, '2018-10-17 11:00:00', NULL, 1, 7, 4),
(8, 'Bear', 'Fieri, inquam, Triari, nullo pacto potest, ut non dicas, quid non probes eius, a quo dissentias. quid enim me prohiberet Epicureum esse, si probarem, quae ille diceret? cum praesertim illa perdiscere ludus esset.', 'assets/images/produits/8-bear.jpg', 46, 4, 1, '2018-10-17 11:00:00', NULL, 1, 7, 5),
(9, 'Pantufa', 'Quam ob rem dissentientium inter se reprehensiones non sunt vituperandae, maledicta, contumeliae, tum iracundiae, contentiones concertationesque in disputando pertinaces indignae philosophia mihi videri solent.', 'assets/images/produits/9-pantufa.jpg', 48, 4, 1, '2018-10-17 11:00:00', NULL, 1, 7, 6),
(10, 'Jack', 'Quam ob rem id primum videamus, si placet, quatenus amor in amicitia progredi debeat. Numne, si Coriolanus habuit amicos, ferre contra patriam arma illi cum Coriolano debuerunt? num Vecellinum amici regnum adpetentem, num Maelium debuerunt iuvare?', 'assets/images/produits/10-jack.jpg', 50, 3, 1, '2018-10-17 11:00:00', NULL, 1, 7, 8),
(11, 'Teeturtle', 'Nec minus feminae quoque calamitatum participes fuere similium. nam ex hoc quoque sexu peremptae sunt originis altae conplures, adulteriorum flagitiis obnoxiae vel stuprorum. inter quas notiores fuere Claritas et Flaviana, quarum altera cum duceretur ad mortem.', 'assets/images/produits/11-teeturtle.jpg', 50, 3, 1, '2018-10-17 11:00:00', NULL, 1, 7, 7),
(12, 'Pikachu', 'Claritas et Flaviana, quarum altera cum duceretur ad mortem, indumento, quo vestita erat, abrepto, ne velemen quidem secreto membrorum sufficiens retinere permissa est. ideoque carnifex nefas admisisse convictus inmane, vivus exustus est.', 'assets/images/produits/12-pika.jpg', 50, 4, 1, '2018-10-17 11:00:00', NULL, 1, 7, 2),
(13, 'Unicorn', 'Haec igitur Epicuri non probo, inquam. De cetero vellem equidem aut ipse doctrinis fuisset instructior est enim, quod tibi ita videri necesse est, non satis politus iis artibus, quas qui tenent, eruditi appellantur aut ne deterruisset alios a studiis. quamquam te quidem video minime esse deterritum.', 'assets/images/produits/13-unicorn.jpg', 50, 4, 1, '2018-10-17 11:00:00', NULL, 1, 7, 5),
(14, 'Shark', 'Intellectum est enim mihi quidem in multis, et maxime in me ipso, sed paulo ante in omnibus, cum M. Marcellum senatui reique publicae concessisti, commemoratis praesertim offensionibus, te auctoritatem huius ordinis dignitatemque rei publicae tuis vel doloribus vel suspicionibus anteferre', 'assets/images/produits/14-shark.jpg', 40, 3, 1, '2018-10-17 11:00:00', NULL, 1, 7, 7),
(15, 'Eagles', 'Ille quidem fructum omnis ante actae vitae hodierno die maximum cepit, cum summo consensu senatus, tum iudicio tuo gravissimo et maximo. Ex quo profecto intellegis quanta in dato beneficio sit laus, cum in accepto sit tanta gloria.', 'assets/images/produits/15-eagle.jpg', 34, 2, 1, '2018-10-17 11:00:00', NULL, 1, 7, 2),
(18, 'Pokeball', 'Sed ut tum ad senem senex de senectute, sic hoc libro ad amicum amicissimus scripsi de amicitia. Tum est Cato locutus, quo erat nemo fere senior temporibus illis, nemo prudentior; nunc Laelius et sapiens (sic enim est habitus) et amicitiae gloria excellens de amicitia loquetur.', 'assets/images/produits/18-pokeball.jpg', 46, 3, 2, '2018-10-17 11:00:00', NULL, 1, 7, 8),
(19, 'Hobbit', 'Tu velim a me animum parumper avertas, Laelium loqui ipsum putes. C. Fannius et Q. Mucius ad socerum veniunt post mortem Africani; ab his sermo oritur, respondet Laelius, cuius tota disputatio est de amicitia, quam legens te ipse cognosces.', 'assets/images/produits/19-hobbit.jpg', 46, 3, 1, '2018-10-17 11:00:00', NULL, 1, 7, 6),
(20, 'Deadpool', 'Pandente itaque viam fatorum sorte tristissima, qua praestitutum erat eum vita et imperio spoliari, itineribus interiectis permutatione iumentorum emensis venit Petobionem oppidum Noricorum, ubi reseratae sunt insidiarum latebrae omnes, et Barbatio repente apparuit comes.', 'assets/images/produits/20-deadpool.jpg', 36, 4, 1, '2018-10-17 11:00:00', NULL, 1, 7, 2),
(21, 'Convrese', 'Sed ut tum ad senem senex de senectute, sic hoc libro ad amicum amicissimus scripsi de amicitia. Tum est Cato locutus, quo erat nemo fere senior temporibus illis, nemo prudentior; nunc Laelius et sapiens (sic enim est habitus) et amicitiae gloria excellens de amicitia loquetur.', 'assets/images/produits/21-converse.jpg', 60, 3, 1, '2018-10-17 11:00:00', NULL, 5, 1, 5),
(22, 'Mike', 'Tu velim a me animum parumper avertas, Laelium loqui ipsum putes. C. Fannius et Q. Mucius ad socerum veniunt post mortem Africani; ab his sermo oritur, respondet Laelius, cuius tota disputatio est de amicitia, quam legens te ipse cognosces.', 'assets/images/produits/22-nike.jpg', 68, 3, 1, '2018-10-17 11:00:00', NULL, 4, 1, 5),
(23, 'Jardon', 'Fieri, inquam, Triari, nullo pacto potest, ut non dicas, quid non probes eius, a quo dissentias. quid enim me prohiberet Epicureum esse, si probarem, quae ille diceret? cum praesertim illa perdiscere ludus esset.', 'assets/images/produits/23-jordan.jpg', 120, 4, 2, '2018-10-17 11:00:00', NULL, 7, 2, 7),
(24, 'Running', 'Fieri, inquam, Triari, nullo pacto potest, ut non dicas, quid non probes eius, a quo dissentias. quid enim me prohiberet Epicureum esse, si probarem, quae ille diceret? cum praesertim illa perdiscere ludus esset.', 'assets/images/produits/24-running-nike.jpg', 80, 3, 1, '2018-10-17 11:00:00', NULL, 7, 2, 5),
(25, 'Sans dale', 'Nunc vero inanes flatus quorundam vile esse quicquid extra urbis pomerium nascitur aestimant praeter orbos et caelibes, nec credi potest qua obsequiorum diversitate coluntur homines sine liberis Romae.', 'assets/images/produits/25-100dales.jpg', 23, 2, 1, '2018-10-17 11:00:00', NULL, 4, 4, 7),
(26, 'Talon aibrille', 'Proinde concepta rabie saeviore, quam desperatio incendebat et fames, amplificatis viribus ardore incohibili in excidium urbium matris Seleuciae efferebantur, quam comes tuebatur Castricius tresque legiones bellicis sudoribus induratae.', 'assets/images/produits/26-oCirage.jpg', 240, 5, 1, '2018-10-17 11:00:00', NULL, 3, 5, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
