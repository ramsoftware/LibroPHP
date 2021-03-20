/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.7.11 : Database - ejemplo1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ejemplo1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ejemplo1`;

/*Table structure for table `ciudad` */

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Table structure for table `colorojos` */

DROP TABLE IF EXISTS `colorojos`;

CREATE TABLE `colorojos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `division` */

DROP TABLE IF EXISTS `division`;

CREATE TABLE `division` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Table structure for table `eps` */

DROP TABLE IF EXISTS `eps`;

CREATE TABLE `eps` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Table structure for table `estadocivil` */

DROP TABLE IF EXISTS `estadocivil`;

CREATE TABLE `estadocivil` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `fondopension` */

DROP TABLE IF EXISTS `fondopension`;

CREATE TABLE `fondopension` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Table structure for table `nomina` */

DROP TABLE IF EXISTS `nomina`;

CREATE TABLE `nomina` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre1` varchar(255) DEFAULT NULL,
  `Nombre2` varchar(255) DEFAULT NULL,
  `Apellido1` varchar(255) DEFAULT NULL,
  `Apellido2` varchar(255) DEFAULT NULL,
  `TipoSangre` varchar(255) DEFAULT NULL,
  `EstadoCivil` int(11) DEFAULT '0',
  `Ciudad` int(11) DEFAULT '0',
  `Altura` int(11) DEFAULT NULL,
  `Peso` int(11) DEFAULT NULL,
  `FechaNace` date DEFAULT NULL,
  `NumeroCalzado` int(11) DEFAULT NULL,
  `ColorOjos` int(11) DEFAULT '0',
  `ZurdoDiestro` varchar(255) DEFAULT NULL,
  `EPS` int(11) DEFAULT '0',
  `FondoPensiones` int(11) DEFAULT '0',
  `Profesion` int(11) DEFAULT '0',
  `Division` int(11) DEFAULT '0',
  PRIMARY KEY (`Codigo`),
  KEY `ref1` (`EstadoCivil`),
  KEY `ref2` (`Ciudad`),
  KEY `ref3` (`ColorOjos`),
  KEY `ref4` (`EPS`),
  KEY `ref5` (`FondoPensiones`),
  KEY `ref6` (`Profesion`),
  KEY `ref7` (`Division`),
  CONSTRAINT `ref1` FOREIGN KEY (`EstadoCivil`) REFERENCES `estadocivil` (`codigo`),
  CONSTRAINT `ref2` FOREIGN KEY (`Ciudad`) REFERENCES `ciudad` (`codigo`),
  CONSTRAINT `ref3` FOREIGN KEY (`ColorOjos`) REFERENCES `colorojos` (`codigo`),
  CONSTRAINT `ref4` FOREIGN KEY (`EPS`) REFERENCES `eps` (`codigo`),
  CONSTRAINT `ref5` FOREIGN KEY (`FondoPensiones`) REFERENCES `fondopension` (`codigo`),
  CONSTRAINT `ref6` FOREIGN KEY (`Profesion`) REFERENCES `profesion` (`codigo`),
  CONSTRAINT `ref7` FOREIGN KEY (`Division`) REFERENCES `division` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5338 DEFAULT CHARSET=utf8;

/*Table structure for table `profesion` */

DROP TABLE IF EXISTS `profesion`;

CREATE TABLE `profesion` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` varchar(20) NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
