/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - distribuidora_mayorista
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`distribuidora_mayorista` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `distribuidora_mayorista`;

/*Table structure for table `ciudad_sucursales` */

DROP TABLE IF EXISTS `ciudad_sucursales`;

CREATE TABLE `ciudad_sucursales` (
  `id_ciudad_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `id_departamento` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`id_ciudad_sucursal`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `ciudad_sucursales_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `ciudad_sucursales` */

insert  into `ciudad_sucursales`(`id_ciudad_sucursal`,`id_departamento`,`descripcion`) values 
(1,1,'Villeta'),
(2,2,'Rego'),
(3,3,'La Agustina'),
(4,4,'Volovets'),
(5,5,'Prakhon Chai'),
(6,6,'Vargem Grande Paulista'),
(7,7,'Agrela'),
(8,8,'Taouloukoult'),
(9,9,'Kaiyuan'),
(10,10,'Apt'),
(11,11,'Sukasenang'),
(12,12,'Estrada'),
(13,13,'Mujiangping'),
(14,14,'Oebai'),
(15,15,'Menol'),
(16,16,'Cam Lộ'),
(17,17,'Ponggok'),
(18,18,'Banzão'),
(19,19,'Wadungasri'),
(20,20,'Serzedo'),
(21,21,'Geoktschai'),
(22,22,'La Unión'),
(23,23,'Kulykiv'),
(24,24,'Guanghou'),
(25,25,'Hatsukaichi'),
(26,26,'Tilburg'),
(27,27,'Pilaya'),
(28,28,'Tarnowskie Góry'),
(29,29,'Xianyan'),
(30,30,'Suodenniemi'),
(31,31,'Loúros'),
(32,32,'Calango'),
(33,33,'Xiexiong'),
(34,34,'Zagórze'),
(35,35,'Pameungpeuk'),
(36,36,'Queluz'),
(37,37,'Mananum'),
(38,38,'Yur’yevets'),
(39,39,'Oroin Xibe'),
(40,40,'San Diego'),
(41,41,'Mantes-la-Jolie'),
(42,42,'Novoaleksandrovsk'),
(43,43,'Tanabe'),
(44,44,'Ta‘izz'),
(45,45,'Duhu'),
(46,46,'Sinisian'),
(47,47,'Muleng'),
(48,48,'Kebonagung'),
(49,49,'Balzers'),
(50,50,'Merritt'),
(51,51,'Hobo'),
(52,52,'Kota Bharu'),
(53,53,'Ndjolé'),
(54,54,'Stykkishólmur'),
(55,55,'Corpus'),
(56,56,'Santa Eulalia'),
(57,57,'Morcellemont Saint André'),
(58,58,'Dairiti'),
(59,59,'Medellin'),
(60,60,'Mozi'),
(61,61,'Fort Wayne'),
(62,62,'Jiangnan'),
(63,63,'Sabirabad'),
(64,64,'Guajiasi'),
(65,65,'Větřní'),
(66,66,'Candelaria'),
(67,67,'Zarichchya'),
(68,68,'Naran-mandokhu Somon'),
(69,69,'Lombo Meão'),
(70,70,'Parigi'),
(71,71,'Shibi'),
(72,72,'Piraju'),
(73,73,'Kalandagan'),
(74,74,'Watodei'),
(75,75,'Nanterre'),
(76,76,'Ta’erqi'),
(77,77,'Kathu'),
(78,78,'Cihaur'),
(79,79,'Sembabule'),
(80,80,'Kananya'),
(81,81,'Aviúges'),
(82,82,'Hispania'),
(83,83,'Tawangrejo'),
(84,84,'Huangbei'),
(85,85,'São Gabriel da Cachoeira'),
(86,86,'Xincheng Chengguanzhen'),
(87,87,'Annau'),
(88,88,'Três Pontas'),
(89,89,'Weizheng'),
(90,90,'Sukawening'),
(91,91,'Bangkok'),
(92,92,'Zhuangta'),
(93,93,'Stockholm'),
(94,94,'Bobonan'),
(95,95,'Yujing'),
(96,96,'Monkstown'),
(97,97,'Pudoc'),
(98,98,'Plessisville'),
(99,99,'Saguenay'),
(100,100,'Quisqueya');

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_identificacion` int(11) NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `numero_contacto_principal` varchar(50) NOT NULL,
  `numero_identificacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_tipo_identificacion` (`id_tipo_identificacion`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_tipo_identificacion`) REFERENCES `tipo_identificacion` (`id_tipo_identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

/*Data for the table `clientes` */

insert  into `clientes`(`id_cliente`,`id_tipo_identificacion`,`primer_nombre`,`segundo_nombre`,`primer_apellido`,`segundo_apellido`,`numero_contacto_principal`,`numero_identificacion`) values 
(1,1,'Leslie','Terrel','Trevear','McKitterick','416-138-8164','79.518151'),
(2,2,'Bern','Nehemiah','Morrott','McFadden','700-874-6176','74.775783'),
(3,3,'Reg','Tracie','Attwill','Brockherst','829-319-1712','99.984840'),
(4,4,'Camila','Penny','Huetson','Goudman','542-517-9754','91.570858'),
(5,5,'Wilbert','Torin','Brabham','Sarle','298-525-8550','65.952569'),
(6,6,'Yasmin','Mariska','Benallack','Chastanet','659-140-3917','68.949865'),
(7,7,'Delcina','Milzie','O\'Duggan','Cussen','987-130-1499','23.113835'),
(8,8,'Garner','Russell','Viste','Kurdani','433-236-4322','41.809813'),
(9,9,'Louella','Kendell','Sends','Baggs','579-298-4680','33.635459'),
(10,10,'Frants','Ania','Riggs','Camelia','712-630-4640','30.537434'),
(11,11,'Issi','Rossie','Stirland','Noury','811-728-5980','73.553734'),
(12,12,'Cazzie','Sawyer','Ganing','Heijne','667-110-4121','14.348600'),
(13,13,'Charissa','Darci','Stenett','Scarce','391-230-2002','62.460710'),
(14,14,'Giselle','Briana','O\'Tierney','Langfield','540-538-6806','69.279936'),
(15,15,'Cherianne','Ralf','Rupp','Simacek','935-378-2371','79.855012'),
(16,16,'Bradly','Davina','Gawkes','Mc Comb','604-782-0089','7.683807'),
(17,17,'Stephannie','Dorri','Hapgood','Donnett','300-578-3796','61.348074'),
(18,18,'Winston','Fowler','Hardie','Drillingcourt','810-362-4881','8.685834'),
(19,19,'Carrie','Gray','Paskin','Priddey','750-869-5137','33.233349'),
(20,20,'Faun','Rob','Blomefield','Mcettrick','225-268-6309','14.235660'),
(21,21,'Darsie','Melli','Raff','Potbury','794-382-4677','55.547577'),
(22,22,'Fransisco','Gordan','Mawd','Wiffen','225-552-4921','81.066010'),
(23,23,'Shina','Inness','Cometson','Rubes','735-714-6476','38.356015'),
(24,24,'Dominic','Elsa','Chinery','Sprey','802-676-5974','21.268714'),
(25,25,'Pieter','Trix','Mellsop','Millhouse','113-254-5268','47.497122'),
(26,26,'Gerianne','Kipp','Tugwell','Grabert','334-285-8739','46.357778'),
(27,27,'Deloris','Nathaniel','Joao','McRobert','852-109-1678','25.474532'),
(28,28,'Wrennie','Seline','Rafter','Eastby','604-885-8668','46.887480'),
(29,29,'Jeannie','Fianna','Dyke','Kenworthy','369-557-2938','31.051679'),
(30,30,'Gwen','Duky','Masedon','Lamas','878-730-7632','50.657592'),
(31,31,'Johnette','Ashely','Antonognoli','Blueman','515-834-5383','94.281687'),
(32,32,'Nicol','Brendis','Breeton','McQuin','957-940-1053','70.237900'),
(33,33,'Waverly','Osborn','Batthew','Habbon','337-164-4563','17.770207'),
(34,34,'Ambur','Shelby','Langeley','Waszkiewicz','633-139-7559','18.406826'),
(35,35,'Patsy','Dayna','Shea','Gisbourn','296-479-8239','60.405627'),
(36,36,'Johnette','Alonzo','Packington','Sloey','624-778-2369','54.430727'),
(37,37,'Elton','Adolphe','Talby','Loffhead','305-125-8329','9.668281'),
(38,38,'Guinevere','Prentice','Shawl','Marr','147-550-3436','61.308588'),
(39,39,'Rich','Berni','Elgram','Craske','800-497-7131','66.510571'),
(40,40,'Melisandra','Blondie','Lorne','MacAlister','980-570-5925','79.363170'),
(41,41,'Kassey','Constanta','Reinhart','Doone','796-229-0112','50.598829'),
(42,42,'Alfons','Nigel','Ianelli','Berford','471-230-2864','57.609898'),
(43,43,'Thomasa','Percival','Stelljes','Silburn','153-740-3886','38.786668'),
(44,44,'Wheeler','Lynnet','Hasell','Larwood','969-957-7704','40.473231'),
(45,45,'Marijo','Meade','Beauchop','St Quenin','906-724-6732','58.744928'),
(46,46,'Ralina','Adrien','Smitton','Kyrkeman','458-422-9799','25.295388'),
(47,47,'Luci','Allianora','Oakenfull','Trousdale','634-430-6343','88.216471'),
(48,48,'Godard','Elisha','Crut','Walsh','781-164-8833','99.091224'),
(49,49,'Vi','Royal','Holleran','Axcel','811-430-5696','67.832904'),
(50,50,'Aristotle','Arie','Paunsford','Sumers','741-250-0492','85.112119'),
(51,51,'Burty','Tally','Hooks','Dominicacci','533-723-9018','89.653502'),
(52,52,'Star','Darsey','Pettendrich','Heggs','261-797-4224','96.546263'),
(53,53,'Annmarie','Leopold','Browning','Haton','128-440-6318','95.668161'),
(54,54,'Armand','Burlie','Hucker','Davitt','722-417-3378','47.398782'),
(55,55,'Nerta','Marieann','Jermyn','Alessandretti','787-347-9056','37.681578'),
(56,56,'Vaughn','Hildegarde','Bohan','Follit','582-509-2863','57.385095'),
(57,57,'Zak','Ernesto','Ewells','Cooling','470-847-7545','9.825969'),
(58,58,'Mary','Zsazsa','Vanini','Pischof','537-480-8253','42.574993'),
(59,59,'Abraham','Cullen','Seggie','Binnie','518-544-7014','40.240190'),
(60,60,'Emerson','Penny','Garmey','Addenbrooke','633-942-7440','46.176493'),
(61,61,'Kitty','Suzanna','Biddleston','Nolan','678-547-2464','13.642955'),
(62,62,'Everett','Mina','Forsard','Negal','740-525-4166','59.566892'),
(63,63,'Eloise','Arlen','Mariette','Maywood','525-483-4055','81.094720'),
(64,64,'Barrie','Shanie','Jozefczak','Tomasian','992-415-3014','25.333502'),
(65,65,'Holly','Whitney','Tallman','O\'Crowley','969-678-1840','87.017395'),
(66,66,'Marlo','Zak','Roget','Corrao','245-189-3953','97.307070'),
(67,67,'Cordie','Welsh','Canceller','Cavozzi','926-535-4485','72.380022'),
(68,68,'Aldis','Shani','Brafferton','Lafoy','650-183-5933','92.447294'),
(69,69,'Benito','Georgie','Winkworth','Plampin','155-153-8032','8.226085'),
(70,70,'Nanice','Gertie','Blackhurst','Bigly','608-853-9200','35.212593'),
(71,71,'Jeffry','Tomaso','Jouannin','McDuffie','890-215-7997','79.667468'),
(72,72,'Denis','Darya','Shillinglaw','Fullerton','179-488-3025','98.006715'),
(73,73,'Jacky','Gerek','Duer','Stucksbury','754-165-2575','55.038386'),
(74,74,'Tally','Merle','Laffin','Fagg','483-429-3512','8.232404'),
(75,75,'Mercedes','Dorie','Pankhurst.','Wiszniewski','671-937-7072','88.337742'),
(76,76,'Dalli','Alana','Inggall','McMenamin','617-662-1876','18.789575'),
(77,77,'Merola','Mabelle','Arnot','Werlock','218-504-7656','71.490134'),
(78,78,'Saree','Charisse','Axup','Teggart','889-265-3698','47.945264'),
(79,79,'Chiquita','Sauveur','Jauncey','Anten','951-370-4026','34.888190'),
(80,80,'Elwira','Yorker','Hutley','Clendening','613-216-2938','13.589511'),
(81,81,'Rogerio','Stepha','Pellew','Birch','231-730-7977','43.702152'),
(82,82,'Bald','Merrile','Dennes','Libbey','484-318-5994','58.358130'),
(83,83,'Horace','Hastie','Vokes','Bigrigg','964-842-7337','31.783709'),
(84,84,'Vinnie','Yance','Cunniam','Boullen','666-659-7427','79.494471'),
(85,85,'Sophey','Chrysa','Miettinen','Sizland','438-646-6928','86.610802'),
(86,86,'Nerti','Chrisy','Parish','Willshere','214-361-6774','10.936938'),
(87,87,'Kinny','June','Fitzsimon','Keigher','467-694-0663','21.731118'),
(88,88,'Basile','Nikolia','Spraggon','Klessmann','667-263-4184','2.105171'),
(89,89,'Tamarra','Minor','Keuneke','Quinsee','943-387-5866','52.256866'),
(90,90,'Flossy','Lemar','Austins','Cumpton','660-839-6518','44.772067'),
(91,91,'Perla','Therese','Longfoot','Cattanach','461-814-1238','33.538806'),
(92,92,'Abba','Ursuline','Orritt','Saul','920-132-5381','75.419598'),
(93,93,'Hube','Rena','O\'Fihily','Scotson','774-375-0859','54.046039'),
(94,94,'Niki','Rockwell','Rominov','Martyntsev','435-324-7965','62.790565'),
(95,95,'Cherie','Alethea','Wagon','Wilfinger','263-681-0542','47.181337'),
(96,96,'Morgan','Nicola','Paolino','Corday','287-167-7158','68.549652'),
(97,97,'Temple','Babs','Bredee','Hallsworth','589-221-8886','48.873842'),
(98,98,'Agnesse','Rochella','Paliser','Buckenham','394-377-6626','80.814628'),
(99,99,'Mike','Helene','Chandlar','Posnette','851-634-2171','42.892469'),
(100,100,'Boyce','Melva','Domerc','Westfalen','818-512-1736','24.204782');

/*Table structure for table `departamentos` */

DROP TABLE IF EXISTS `departamentos`;

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) NOT NULL,
  `departamento` varchar(500) NOT NULL,
  PRIMARY KEY (`id_departamento`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

/*Data for the table `departamentos` */

insert  into `departamentos`(`id_departamento`,`id_pais`,`departamento`) values 
(1,1,'Antioquía'),
(2,1,'Amazonas'),
(3,1,'Arauca'),
(4,1,'Atlántico'),
(5,1,'Bolívar'),
(6,1,'Boyacá'),
(7,1,'Caldas'),
(8,1,'Caquetá'),
(9,1,'Casanare'),
(10,1,'Cauca'),
(11,1,'Cesar'),
(12,1,'Chocó'),
(13,1,'Córdoba'),
(14,1,'Cundinamarca'),
(15,1,'Guainía'),
(16,1,'Guaviare'),
(17,1,'Huila'),
(18,1,'La Guajira'),
(19,1,'Magdalena'),
(20,1,'Meta'),
(21,1,'Nariño'),
(22,1,'Norte de Santander'),
(23,1,'Putumayo'),
(24,1,'Quindío'),
(25,1,'Risaralda'),
(26,2,'Ciudad Autónoma de Buenos Aires'),
(27,2,'Buenos Aires'),
(28,2,'Catamarca'),
(29,2,'Chaco'),
(30,2,'Chubut'),
(31,2,'Córdoba'),
(32,2,'Corrientes'),
(33,2,'Entre Ríos'),
(34,2,'Formosa'),
(35,2,'Jujuy'),
(36,2,'La Pampa'),
(37,2,'La Rioja'),
(38,2,'Mendoza'),
(39,2,'Misiones'),
(40,2,'Neuquén'),
(41,2,'Río Negro'),
(42,2,'Salta'),
(43,2,'San Juan'),
(44,2,'San Luis'),
(45,2,'Santa Cruz'),
(46,2,'Santa Fe'),
(47,2,'Santiago del Estero'),
(48,2,'Tierra del Fuego'),
(49,2,'Tucumán'),
(50,3,'São Paulo'),
(51,3,'Río de Janeiro'),
(52,3,'Brasilia'),
(53,3,'Salvador de Bahía'),
(54,3,'Fortaleza'),
(55,4,'Amazonas'),
(56,4,'Áncash'),
(57,4,'Apurímac'),
(58,4,'Arequipa'),
(59,4,'Ayacucho'),
(60,4,'Cajamarca'),
(61,4,'Callao'),
(62,4,'Cusco'),
(63,4,'Huancavelica'),
(64,4,'Huánuco'),
(65,4,'Ica'),
(66,4,'Junín'),
(67,4,'La Libertad'),
(68,4,'Lambayeque'),
(69,5,'Artigas'),
(70,5,'Bella Unión'),
(71,5,'Baltasar Brum'),
(72,5,'Bernabé Rivera'),
(73,5,'Colonia Palma'),
(74,5,'Montes Quintela'),
(75,5,'Paso Campamento'),
(76,5,'Sequeira'),
(77,5,'Tomás Gomensoro'),
(78,5,'Atlántida'),
(79,5,'Barra de Carrasco'),
(80,5,'Canelones'),
(81,5,'Ciudad de la Costa'),
(82,5,'Colonia Nicolich'),
(83,5,'La Paz'),
(84,5,'Las Piedras'),
(85,5,'Pando'),
(86,5,'Paso Carrasco'),
(87,5,'Santa Lucía'),
(163,0,''),
(164,0,''),
(165,0,''),
(166,0,''),
(167,0,''),
(168,0,''),
(169,0,''),
(170,0,''),
(171,0,''),
(172,0,''),
(173,0,''),
(174,0,''),
(175,0,''),
(176,0,''),
(177,0,''),
(178,0,''),
(179,0,''),
(180,0,''),
(181,0,''),
(182,0,''),
(183,0,''),
(184,0,''),
(185,0,''),
(186,0,''),
(187,0,''),
(188,0,''),
(189,0,''),
(190,0,''),
(191,0,''),
(192,0,''),
(193,0,'');

/*Table structure for table `paises` */

DROP TABLE IF EXISTS `paises`;

CREATE TABLE `paises` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

/*Data for the table `paises` */

insert  into `paises`(`id_pais`,`descripcion`) values 
(1,'Colombia'),
(2,'Argentina'),
(3,'Brazil'),
(4,'Peru'),
(5,'Uruguay');

/*Table structure for table `personal` */

DROP TABLE IF EXISTS `personal`;

CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

/*Data for the table `personal` */

insert  into `personal`(`id_personal`,`nombre`) values 
(1,'Anissa'),
(2,'Sigrid'),
(3,'Naoma'),
(4,'Rosalind'),
(5,'Rosabelle'),
(6,'Gale'),
(7,'Sebastiano'),
(8,'Normand'),
(9,'Germaine'),
(10,'Demetris'),
(11,'Irina'),
(12,'Dorine'),
(13,'Emelia'),
(14,'Beau'),
(15,'Junina'),
(16,'Noland'),
(17,'Shaylynn'),
(18,'Alfie'),
(19,'Patty'),
(20,'Patrice'),
(21,'Davide'),
(22,'Pippo'),
(23,'Edwina'),
(24,'Ronalda'),
(25,'Claiborne'),
(26,'Charlot'),
(27,'Marylinda'),
(28,'Arthur'),
(29,'Madel'),
(30,'Ambrosio'),
(31,'Fidel'),
(32,'Ranice'),
(33,'Kassie'),
(34,'Harlan'),
(35,'Pris'),
(36,'Lilias'),
(37,'Fawnia'),
(38,'Frederick'),
(39,'Philbert'),
(40,'Florette'),
(41,'Ediva'),
(42,'Vasili'),
(43,'Pammi'),
(44,'Felita'),
(45,'Tish'),
(46,'Giorgio'),
(47,'Kenton'),
(48,'Millie'),
(49,'Issie'),
(50,'Linn'),
(51,'Forest'),
(52,'Kendal'),
(53,'Wiatt'),
(54,'Dew'),
(55,'Christan'),
(56,'Archaimbaud'),
(57,'Inesita'),
(58,'Benoit'),
(59,'Jeanna'),
(60,'Klarika'),
(61,'Bartolemo'),
(62,'Casper'),
(63,'Lorilee'),
(64,'Lyndel'),
(65,'Belle'),
(66,'Wendel'),
(67,'Jan'),
(68,'Stacee'),
(69,'Teodoro'),
(70,'Maryjo'),
(71,'Kain'),
(72,'Moore'),
(73,'Hetti'),
(74,'Giffer'),
(75,'Stearn'),
(76,'Gerry'),
(77,'Collin'),
(78,'Camel'),
(79,'Dyna'),
(80,'Osmond'),
(81,'Belia'),
(82,'Emmi'),
(83,'Brandie'),
(84,'Frederick'),
(85,'Sibylla'),
(86,'Olivie'),
(87,'Timothy'),
(88,'Baillie'),
(89,'Angelia'),
(90,'Jedidiah'),
(91,'Muffin'),
(92,'Shaine'),
(93,'Seumas'),
(94,'Derril'),
(95,'Wrennie'),
(96,'Blinnie'),
(97,'Annabell'),
(98,'Yank'),
(99,'Lothaire'),
(100,'Reuven');

/*Table structure for table `personal_departamentos` */

DROP TABLE IF EXISTS `personal_departamentos`;

CREATE TABLE `personal_departamentos` (
  `id_personal_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_departamento` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  PRIMARY KEY (`id_personal_departamento`),
  KEY `id_personal` (`id_personal`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `personal_departamentos_ibfk_1` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id_personal`),
  CONSTRAINT `personal_departamentos_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

/*Data for the table `personal_departamentos` */

insert  into `personal_departamentos`(`id_personal_departamento`,`id_departamento`,`id_personal`) values 
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10),
(11,11,11),
(12,12,12),
(13,13,13),
(14,14,14),
(15,15,15),
(16,16,16),
(17,17,17),
(18,18,18),
(19,19,19),
(20,20,20),
(21,21,21),
(22,22,22),
(23,23,23),
(24,24,24),
(25,25,25),
(26,26,26),
(27,27,27),
(28,28,28),
(29,29,29),
(30,30,30),
(31,31,31),
(32,32,32),
(33,33,33),
(34,34,34),
(35,35,35),
(36,36,36),
(37,37,37),
(38,38,38),
(39,39,39),
(40,40,40),
(41,41,41),
(42,42,42),
(43,43,43),
(44,44,44),
(45,45,45),
(46,46,46),
(47,47,47),
(48,48,48),
(49,49,49),
(50,50,50),
(51,51,51),
(52,52,52),
(53,53,53),
(54,54,54),
(55,55,55),
(56,56,56),
(57,57,57),
(58,58,58),
(59,59,59),
(60,60,60),
(61,61,61),
(62,62,62),
(63,63,63),
(64,64,64),
(65,65,65),
(66,66,66),
(67,67,67),
(68,68,68),
(69,69,69),
(70,70,70),
(71,71,71),
(72,72,72),
(73,73,73),
(74,74,74),
(75,75,75),
(76,76,76),
(77,77,77),
(78,78,78),
(79,79,79),
(80,80,80),
(81,81,81),
(82,82,82),
(83,83,83),
(84,84,84),
(85,85,85),
(86,86,86),
(87,87,87),
(88,88,88),
(89,89,89),
(90,90,90),
(91,91,91),
(92,92,92),
(93,93,93),
(94,94,94),
(95,95,95),
(96,96,96),
(97,97,97),
(98,98,98),
(99,99,99),
(100,100,100);

/*Table structure for table `sucursales` */

DROP TABLE IF EXISTS `sucursales`;

CREATE TABLE `sucursales` (
  `id_sucursales` int(11) DEFAULT NULL,
  `id_ciudad_sucursal` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `nombre_encargado` varchar(255) DEFAULT NULL,
  `numero_contacto` double DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  KEY `id_ciudad_sucursal` (`id_ciudad_sucursal`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `sucursales_ibfk_1` FOREIGN KEY (`id_ciudad_sucursal`) REFERENCES `ciudad_sucursales` (`id_ciudad_sucursal`),
  CONSTRAINT `sucursales_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sucursales` */

insert  into `sucursales`(`id_sucursales`,`id_ciudad_sucursal`,`id_cliente`,`nombre_encargado`,`numero_contacto`,`direccion`) values 
(1,1,1,'Aurora',212,'56 Ilene Street'),
(2,2,2,'Lucian',101,'21 Forest Avenue'),
(3,3,3,'Mina',214,'19966 Hanover Crossing'),
(4,4,4,'Augustus',588,'05 Esch Junction'),
(5,5,5,'Cecilius',153,'2166 Reindahl Trail'),
(6,6,6,'Shelba',879,'97 Old Gate Terrace'),
(7,7,7,'Eugene',416,'83 Annamark Parkway'),
(8,8,8,'Gordy',452,'200 Ryan Circle'),
(9,9,9,'Sancho',892,'967 Onsgard Plaza'),
(10,10,10,'Anatol',186,'73852 David Court'),
(11,11,11,'Graig',153,'068 Merry Park'),
(12,12,12,'Neile',176,'7 Sunnyside Hill'),
(13,13,13,'Dorelle',462,'2574 Maple Court'),
(14,14,14,'Marylin',113,'8287 Jenna Crossing'),
(15,15,15,'Britt',337,'417 Dennis Terrace'),
(16,16,16,'Kristien',766,'299 La Follette Way'),
(17,17,17,'Madelaine',940,'105 7th Road'),
(18,18,18,'Nerty',286,'27130 Prentice Alley'),
(19,19,19,'Loise',202,'9 Jana Plaza'),
(20,20,20,'Keenan',953,'465 Banding Lane'),
(21,21,21,'Nanni',941,'70 Harper Trail'),
(22,22,22,'Bryant',930,'8 Kings Trail'),
(23,23,23,'Wendye',106,'0 Fisk Alley'),
(24,24,24,'Georgianna',754,'9311 Farragut Park'),
(25,25,25,'Willamina',955,'42706 Kinsman Point'),
(26,26,26,'Dolores',776,'423 Crowley Drive'),
(27,27,27,'Randa',356,'5 Manitowish Parkway'),
(28,28,28,'Georges',452,'26369 Holy Cross Park'),
(29,29,29,'Stevie',434,'07302 Crownhardt Way'),
(30,30,30,'Lexine',190,'317 Browning Trail'),
(31,31,31,'Christian',271,'5 Dakota Circle'),
(32,32,32,'Ardith',130,'00 Truax Court'),
(33,33,33,'Joellen',765,'80434 Bluejay Pass'),
(34,34,34,'Ruthann',813,'3240 Moland Park'),
(35,35,35,'Filippo',873,'88011 Sundown Crossing'),
(36,36,36,'Anatola',988,'8500 Erie Pass'),
(37,37,37,'Haskell',137,'01 Chive Drive'),
(38,38,38,'Theodosia',153,'3 Pleasure Junction'),
(39,39,39,'Jaquenetta',544,'249 Pierstorff Crossing'),
(40,40,40,'Lenora',272,'74 Spenser Place'),
(41,41,41,'Emelen',535,'58 Parkside Way'),
(42,42,42,'Nowell',119,'08516 Bluestem Junction'),
(43,43,43,'Teresa',651,'85617 Waubesa Lane'),
(44,44,44,'Virgil',875,'8107 Continental Junction'),
(45,45,45,'Jarid',218,'2332 Mockingbird Junction'),
(46,46,46,'Cecily',507,'33999 Gale Junction'),
(47,47,47,'Evan',657,'862 Forest Dale Circle'),
(48,48,48,'Hanson',592,'20 Morningstar Plaza'),
(49,49,49,'Cristobal',947,'691 Burning Wood Lane'),
(50,50,50,'Renato',444,'77621 Tennessee Avenue'),
(51,51,51,'Ollie',905,'4570 Elgar Terrace'),
(52,52,52,'Yardley',675,'30 Forest Run Place'),
(53,53,53,'Garrett',366,'9 Shasta Court'),
(54,54,54,'Kerianne',206,'7839 Sauthoff Center'),
(55,55,55,'Albert',903,'4328 Dahle Parkway'),
(56,56,56,'Adolf',955,'36999 Killdeer Drive'),
(57,57,57,'Demetria',638,'73698 Huxley Circle'),
(58,58,58,'Chrysa',292,'779 Southridge Drive'),
(59,59,59,'Isaiah',500,'162 Rowland Place'),
(60,60,60,'Ki',741,'41575 Judy Circle'),
(61,61,61,'Fayette',234,'6 Del Sol Pass'),
(62,62,62,'Saunderson',515,'858 Eggendart Trail'),
(63,63,63,'Shannen',736,'8948 Brown Park'),
(64,64,64,'Pip',107,'7213 Fieldstone Way'),
(65,65,65,'Ertha',424,'1500 Annamark Terrace'),
(66,66,66,'Ingaborg',559,'6926 Prairie Rose Hill'),
(67,67,67,'Linnell',310,'2 Westerfield Way'),
(68,68,68,'Eran',965,'61377 Lake View Parkway'),
(69,69,69,'Cedric',691,'3 Charing Cross Park'),
(70,70,70,'Raimondo',686,'0 Basil Junction'),
(71,71,71,'Archy',274,'388 Gerald Avenue'),
(72,72,72,'Lemar',107,'71954 American Ash Court'),
(73,73,73,'Ingamar',615,'932 6th Way'),
(74,74,74,'Felisha',669,'5097 Gale Park'),
(75,75,75,'Lilith',331,'9 Grasskamp Point'),
(76,76,76,'Roi',232,'336 Green Street'),
(77,77,77,'Muffin',828,'29 Pierstorff Parkway'),
(78,78,78,'Jeanelle',685,'101 Muir Terrace'),
(79,79,79,'Zorina',774,'975 Debs Circle'),
(80,80,80,'Orren',990,'703 Mallard Terrace'),
(81,81,81,'Jarred',458,'80401 Eastlawn Street'),
(82,82,82,'Paulita',464,'420 Bunker Hill Alley'),
(83,83,83,'Emmett',116,'2 Carey Terrace'),
(84,84,84,'Lodovico',543,'1957 Muir Place'),
(85,85,85,'Neel',706,'68401 Amoth Road'),
(86,86,86,'Carolyne',230,'149 Anderson Crossing'),
(87,87,87,'Delia',888,'13860 Tennyson Trail'),
(88,88,88,'Thomasina',226,'8710 Crowley Hill'),
(89,89,89,'Ali',612,'7 Pine View Plaza'),
(90,90,90,'Cheslie',223,'3 Tennyson Point'),
(91,91,91,'April',737,'436 Schiller Hill'),
(92,92,92,'Silvio',616,'19984 Lerdahl Center'),
(93,93,93,'Ailyn',360,'74390 Milwaukee Parkway'),
(94,94,94,'Pascal',905,'03151 Kipling Court'),
(95,95,95,'Hillyer',108,'00169 Rockefeller Lane'),
(96,96,96,'Corrina',684,'673 Elka Park'),
(97,97,97,'Ilsa',179,'812 Kedzie Way'),
(98,98,98,'Sly',386,'734 Emmet Lane'),
(99,99,99,'Merrile',664,'803 Miller Way'),
(100,100,100,'Blanch',144,'161 Hoard Plaza');

/*Table structure for table `tipo_identificacion` */

DROP TABLE IF EXISTS `tipo_identificacion`;

CREATE TABLE `tipo_identificacion` (
  `id_tipo_identificacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_identificacion` */

insert  into `tipo_identificacion`(`id_tipo_identificacion`,`descripcion`) values 
(1,'nit'),
(2,'cedula');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
