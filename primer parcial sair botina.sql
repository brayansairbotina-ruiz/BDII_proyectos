/*
SQLyog Enterprise v13.1.1 (32 bit)
MySQL - 10.4.21-MariaDB : Database - primer_parcial
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`primer_parcial` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `primer_parcial`;

/*Table structure for table `academicperiodgroups` */

DROP TABLE IF EXISTS `academicperiodgroups`;

CREATE TABLE `academicperiodgroups` (
  `journeyId` int(20) DEFAULT NULL,
  `degreeId` int(20) DEFAULT NULL,
  `groupId` int(20) DEFAULT NULL,
  `quota` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `academicperiodgroups` */

/*Table structure for table `degree` */

DROP TABLE IF EXISTS `degree`;

CREATE TABLE `degree` (
  `levelId` int(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  `id` int(20) DEFAULT NULL,
  `abbreviation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `degree` */

/*Table structure for table `group` */

DROP TABLE IF EXISTS `group`;

CREATE TABLE `group` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` varchar(500) DEFAULT NULL,
  `id` int(50) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `abbreviation` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group` */

insert  into `group`(`createdAt`,`updatedAt`,`id`,`name`,`abbreviation`) values 
('2021-11-19 19:44:22',NULL,NULL,NULL,NULL),
('2021-11-19 19:44:22',NULL,10,'Sección A','A'),
('2021-11-19 19:44:22',NULL,10,'Sección A','A'),
('2021-11-19 19:44:22',NULL,10,'Sección A','A'),
('2021-11-19 19:44:22',NULL,10,'Sección A','A'),
('2021-11-19 19:44:22',NULL,10,'Sección A','A'),
('2021-11-19 19:44:22',NULL,10,'Sección A','A'),
('2021-11-19 19:44:22',NULL,10,'Sección A','A');

/*Table structure for table `matriculates` */

DROP TABLE IF EXISTS `matriculates`;

CREATE TABLE `matriculates` (
  `academicPeriodGroupId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `matriculates` */

insert  into `matriculates`(`academicPeriodGroupId`) values 
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(71);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
