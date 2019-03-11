/*
SQLyog Ultimate v11.21 (64 bit)
MySQL - 10.1.31-MariaDB : Database - extreme_darvis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`extreme_darvis` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `extreme_darvis`;

/*Table structure for table `consecutivos` */

DROP TABLE IF EXISTS `consecutivos`;

CREATE TABLE `consecutivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consfact` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `consecutivos` */

insert  into `consecutivos`(`id`,`consfact`) values (1,5);

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT '',
  `nombre` varchar(70) DEFAULT '',
  `cantidad` int(11) DEFAULT '0',
  `precio` decimal(12,2) DEFAULT '0.00',
  `poriva` decimal(6,2) DEFAULT '0.00',
  `stockmax` int(11) DEFAULT '0',
  `stockmin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `productos` */

insert  into `productos`(`id`,`codigo`,`nombre`,`cantidad`,`precio`,`poriva`,`stockmax`,`stockmin`) values (1,'0000000001','GPS New Day',40,'500000.00','19.00',38,5),(2,'5656565','Codigo Nuevo',50,'20000.00','8.00',2,5);

/*Table structure for table `ventas_detalle` */

DROP TABLE IF EXISTS `ventas_detalle`;

CREATE TABLE `ventas_detalle` (
  `numfac` varchar(8) DEFAULT '',
  `codigo` varchar(10) DEFAULT '',
  `cant` int(11) DEFAULT '0',
  `valor` decimal(12,2) DEFAULT '0.00',
  `poriva` decimal(6,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ventas_detalle` */

insert  into `ventas_detalle`(`numfac`,`codigo`,`cant`,`valor`,`poriva`) values ('5','1',2,'500000.00','19.00');

/*Table structure for table `ventas_encabezado` */

DROP TABLE IF EXISTS `ventas_encabezado`;

CREATE TABLE `ventas_encabezado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numfac` varchar(8) DEFAULT '',
  `valor` decimal(12,2) DEFAULT '0.00',
  `iva` decimal(10,2) DEFAULT '0.00',
  `cliente` varchar(16) DEFAULT '',
  `fecha` date DEFAULT '0000-00-00',
  `fecsys` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ventas_encabezado` */

insert  into `ventas_encabezado`(`id`,`numfac`,`valor`,`iva`,`cliente`,`fecha`,`fecsys`) values (1,'4','1190000.00','190000.00','A1','2019-03-11','2019-03-11 07:26:58'),(2,'5','1190000.00','190000.00','A1','2019-03-11','2019-03-11 08:50:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
