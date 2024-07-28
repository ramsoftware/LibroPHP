/*
SQLyog Community v12.4.0 (64 bit)
MySQL - 5.7.14 : Database - prueba
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`prueba` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ejemplo1`;

/*Table structure for table `ciudad` */

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `ciudad` */

insert  into `ciudad`(`codigo`,`nombre`) values 
(1,'Alcalá'),
(2,'Andalucía'),
(3,'Ansermanuevo'),
(4,'Argelia'),
(5,'Bolívar'),
(6,'Buenaventura'),
(7,'Buga'),
(8,'Bugalagrande'),
(9,'Caicedonia'),
(10,'Cali'),
(11,'Calima - El Darién'),
(12,'Candelaria'),
(13,'Cartago'),
(14,'Dagua'),
(15,'El Águila'),
(16,'El Cairo'),
(17,'El Cerrito'),
(18,'El Dovio'),
(19,'Florida'),
(20,'Ginebra'),
(21,'Guacarí'),
(22,'Jamundí'),
(23,'La Cumbre'),
(24,'La Unión'),
(25,'La Victoria'),
(26,'Obando'),
(27,'Palmira'),
(28,'Pradera'),
(29,'Restrepo'),
(30,'Riofrío'),
(31,'Roldanillo'),
(32,'San Pedro'),
(33,'Sevilla'),
(34,'Toro'),
(35,'Trujillo'),
(36,'Tuluá'),
(37,'Ulloa'),
(38,'Versalles'),
(39,'Vijes'),
(40,'Yotoco'),
(41,'Yumbo'),
(42,'Zarzal');

/*Table structure for table `colorojos` */

DROP TABLE IF EXISTS `colorojos`;

CREATE TABLE `colorojos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `colorojos` */

insert  into `colorojos`(`codigo`,`nombre`) values 
(1,'Azules'),
(2,'Cafes'),
(3,'Marrones'),
(4,'Verdes');

/*Table structure for table `division` */

DROP TABLE IF EXISTS `division`;

CREATE TABLE `division` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `division` */

insert  into `division`(`codigo`,`nombre`) values 
(1,'Contable'),
(2,'Desarrollo'),
(3,'Despachos'),
(4,'Investigación'),
(5,'Mercadeo'),
(6,'Recursos Humanos'),
(7,'Servicio al Cliente'),
(8,'Soporte');

/*Table structure for table `eps` */

DROP TABLE IF EXISTS `eps`;

CREATE TABLE `eps` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `eps` */

insert  into `eps`(`codigo`,`nombre`) values 
(1,'Cafesalud'),
(2,'Calisalud'),
(3,'Caprecom'),
(4,'Capresoca'),
(5,'Colmédica'),
(6,'Comfenalco Antioquia'),
(7,'Comfenalco Valle'),
(8,'Compensar'),
(9,'Convida ARS'),
(10,'Coomeva EPS'),
(11,'Cruz Blanca'),
(12,'Famisanar'),
(13,'Humana Vivir'),
(14,'Instituto de los Seguros Sociales'),
(15,'S.O.S EPS'),
(16,'Salud Colmena'),
(17,'Salud Colpatria'),
(18,'Salud Total'),
(19,'Saludcolombia EPS S.A.'),
(20,'SaludCoop'),
(21,'Saludvida'),
(22,'Sanitas'),
(23,'Selvasalud'),
(24,'Solsalud'),
(25,'Susalud ');

/*Table structure for table `estadocivil` */

DROP TABLE IF EXISTS `estadocivil`;

CREATE TABLE `estadocivil` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `estadocivil` */

insert  into `estadocivil`(`codigo`,`nombre`) values 
(1,'Matrimonio'),
(2,'Separación'),
(3,'Soltería'),
(4,'Viudez');

/*Table structure for table `fondopension` */

DROP TABLE IF EXISTS `fondopension`;

CREATE TABLE `fondopension` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `fondopension` */

insert  into `fondopension`(`codigo`,`nombre`) values 
(1,'Capital S.A.'),
(2,'Cuprum S.A.'),
(3,'Habitat S.A.'),
(4,'Modelo S.A.'),
(5,'PlanVital S.A.'),
(6,'Porvenir'),
(7,'Protección');

/*Table structure for table `nomina` */

DROP TABLE IF EXISTS `nomina`;

CREATE TABLE `nomina` (
  `Codigo` int(11) NOT NULL,
  `Nombre1` varchar(255) DEFAULT NULL,
  `Nombre2` varchar(255) DEFAULT NULL,
  `Apellido1` varchar(255) DEFAULT NULL,
  `Apellido2` varchar(255) DEFAULT NULL,
  `TipoSangre` varchar(255) DEFAULT NULL,
  `EstadoCivil` int(11) DEFAULT '0',
  `Ciudad` int(11) DEFAULT '0',
  `Altura` int(11) DEFAULT NULL,
  `Peso` int(11) DEFAULT NULL,
  `FechaNace` datetime DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nomina` */

insert  into `nomina`(`Codigo`,`Nombre1`,`Nombre2`,`Apellido1`,`Apellido2`,`TipoSangre`,`EstadoCivil`,`Ciudad`,`Altura`,`Peso`,`FechaNace`,`NumeroCalzado`,`ColorOjos`,`ZurdoDiestro`,`EPS`,`FondoPensiones`,`Profesion`,`Division`) values 
(4001,'Asael','Asael','Peña','Velasquez','B+',3,15,167,60,'1977-08-20 00:00:00',41,3,'Z',3,5,16,3),
(4002,'Carol','Blasco','Suarez','Barcenas','A-',2,24,187,73,'1972-09-04 00:00:00',36,1,'Z',12,3,2,4),
(4003,'Asael','Angela','Zambrano','Mina','B-',4,20,182,53,'1984-04-23 00:00:00',43,1,'Z',7,6,4,1),
(4004,'Florinda','Adolfo','Velasquez','Peña','O-',2,15,173,69,'1996-08-05 00:00:00',39,1,'Z',18,4,7,2),
(4005,'Adelio','Armando','Caicedo','Escarria','B-',1,10,177,89,'1989-03-07 00:00:00',38,3,'D',19,3,11,5),
(4006,'Elea','Clara','Cortes','Millan','B+',1,27,187,67,'1961-01-16 00:00:00',38,3,'D',9,3,10,4),
(4007,'Florinda','Benicio','Alomia','Arenas','O+',2,25,178,59,'1995-12-31 00:00:00',43,3,'D',8,4,2,6),
(4008,'Adolfo','Audrey','Uribe','Millan','O-',2,2,179,68,'1988-12-07 00:00:00',40,4,'D',1,4,12,8),
(4009,'Amadeo','Custodio','Zuluaga','Rivera','B-',2,29,190,80,'1987-06-26 00:00:00',36,3,'D',4,1,17,4),
(4010,'Atilano','Erina','Fuerte','Rengifo','A-',1,17,180,54,'1993-01-23 00:00:00',36,3,'D',9,2,1,8),
(4011,'Francisca','Cipriano','Pazos','Micolta','B+',3,7,187,57,'1990-12-13 00:00:00',40,2,'D',5,3,8,3),
(4012,'Graciela','Gema','Barrera','Melo','A+',1,16,163,79,'1982-10-18 00:00:00',42,4,'D',12,2,16,6),
(4013,'Alfonso','Angela','Cotazo','Ramirez','A-',1,4,168,78,'1972-07-25 00:00:00',37,3,'Z',1,6,12,3),
(4014,'Berta','Azanias','Jimenez','Cadena','A-',1,24,175,83,'1991-02-01 00:00:00',43,2,'Z',6,2,17,5),
(4015,'Amaya','Amadeo','Fuerte','Arce','A-',4,5,174,89,'1975-10-05 00:00:00',38,4,'D',17,3,2,6),
(4016,'Ambrosio','Alfonso','Escarria','Zapata','A-',1,23,173,59,'1994-02-24 00:00:00',39,4,'Z',19,2,5,8),
(4017,'Basilio','Cloe','Zambrano','Mina','AB+',4,10,190,57,'1978-05-18 00:00:00',37,3,'Z',20,5,6,6),
(4018,'Baldomero','Bartolomé','Arce','Vidal','AB-',2,21,181,80,'1993-01-28 00:00:00',39,4,'D',6,3,7,7),
(4019,'Aquilino','Avelina','Noriega','Cifuentes','O+',4,30,168,73,'1963-07-21 00:00:00',41,2,'Z',8,4,11,6),
(4020,'Cleto','Elisenda','Hoyos','Gutierrez','A-',1,28,172,68,'1975-11-08 00:00:00',41,2,'D',20,1,9,6),
(4021,'Erina','Elisenda','Zapata','Fuerte','B+',4,13,172,67,'1962-05-13 00:00:00',40,1,'Z',12,7,11,7),
(4022,'Azanias','Baldomero','Uribe','Vidal','A-',4,24,163,88,'1965-11-12 00:00:00',36,1,'D',18,4,9,2),
(4023,'Erina','Bartolomé','Micolta','Tobar','O-',2,32,183,74,'1967-12-01 00:00:00',37,3,'D',11,7,14,6),
(4024,'Elea','Alfredo','Peña','Serrato','B+',3,4,187,72,'1982-01-16 00:00:00',36,3,'D',9,3,7,1),
(4025,'Alexis','Custodio','Torres','Perea','B+',2,21,186,89,'1991-04-14 00:00:00',39,2,'D',4,5,14,4),
(4026,'Berta','Graciela','Castillo','Robles','B+',4,32,160,90,'1987-04-16 00:00:00',36,3,'Z',24,7,11,1),
(4027,'Blasco','Graciela','Cotazo','Cadena','AB+',4,30,182,88,'1984-02-21 00:00:00',40,3,'Z',20,6,15,7),
(4028,'Bruna','Benicio','Gutierrez','Serrato','AB-',3,25,179,63,'1964-05-12 00:00:00',39,2,'Z',15,5,14,6),
(4029,'Delma','Anacleto','Jimenez','Serrato','A+',1,36,169,84,'1986-09-22 00:00:00',38,2,'D',17,3,11,6),
(4030,'Clara','Graciela','Ordoñez','Ocampo','A+',4,8,185,72,'1987-08-31 00:00:00',42,3,'D',1,5,7,4),
(4031,'Atilano','Custodio','Riascos','Mina','B-',3,36,168,51,'1988-01-15 00:00:00',37,4,'Z',20,2,7,2),
(4032,'Bartolomé','Arcadia','Melo','Hoyos','AB+',3,42,184,62,'1983-08-16 00:00:00',36,2,'D',3,5,11,4),
(4033,'Carmelo','Agata','Zambrano','Barrera','A-',3,13,182,60,'1980-09-26 00:00:00',39,2,'Z',22,6,16,2),
(4034,'Erina','Armando','Soto','Perea','O+',1,24,160,56,'1981-06-29 00:00:00',42,3,'D',5,7,5,6),
(4035,'Alfonso','Evelina','Zuñiga','Rueda','A+',3,22,185,69,'1960-05-27 00:00:00',39,4,'D',6,2,10,3),
(4036,'Florinda','Anibal','Alomia','Garces','A-',4,14,165,72,'1992-04-13 00:00:00',41,1,'D',7,3,3,4),
(4037,'Clara','Baldomero','Riascos','Riascos','AB-',4,15,162,76,'1964-11-11 00:00:00',36,3,'Z',17,5,16,4),
(4038,'Belisa','Erina','Cortes','Cortes','B-',1,37,180,67,'1990-09-12 00:00:00',42,1,'Z',21,1,1,2),
(4039,'Eunice','Alfredo','Narvaez','Rueda','A+',2,18,185,88,'1970-05-24 00:00:00',38,4,'Z',13,7,6,2),
(4040,'Blasco','Asael','Ojeda','Cifuentes','A+',1,24,180,90,'1965-09-20 00:00:00',40,3,'Z',24,7,6,2),
(4041,'Elea','Amadeo','Fuerte','Rueda','AB-',3,10,173,84,'1983-10-11 00:00:00',43,2,'D',11,7,17,6),
(4042,'Emily','Agata','Soto','Soto','A-',2,39,164,73,'1980-08-22 00:00:00',38,1,'D',7,1,4,1),
(4043,'Anacleto','Atilano','Serrato','Saucedo','A-',3,39,160,73,'1989-07-28 00:00:00',38,1,'D',9,1,4,4),
(4044,'Gema','Cloe','Tobar','Suarez','AB+',4,24,185,59,'1991-03-07 00:00:00',38,3,'D',6,4,4,7),
(4045,'Amadeo','Alexis','Tobon','Escarria','AB-',2,8,168,83,'1990-05-21 00:00:00',36,1,'D',20,3,12,8),
(4046,'Antonio','Antonio','Castaño','Narvaez','B+',1,40,166,61,'1981-01-20 00:00:00',43,1,'D',1,4,1,4),
(4047,'Felisa','Armando','Suarez','Zambrano','B-',3,40,167,78,'1991-10-01 00:00:00',41,2,'Z',23,1,8,5),
(4048,'Alexis','Borja','Micolta','Noriega','O-',4,24,171,58,'1987-04-28 00:00:00',37,4,'D',13,3,8,7),
(4049,'Avelina','Alexis','Robles','Arenas','O-',2,28,160,75,'1965-05-31 00:00:00',37,4,'Z',3,1,9,1),
(4050,'Arnulfo','Angela','Murillo','Melo','A+',4,29,186,81,'1964-01-10 00:00:00',38,1,'D',9,1,10,6),
(4051,'Erina','Avelina','Barrera','Rengifo','AB+',1,4,163,68,'1972-01-04 00:00:00',36,1,'Z',1,2,1,1),
(4052,'Carmelo','Dulcinea','Ryes','Vidal','B-',2,9,162,89,'1963-05-31 00:00:00',37,3,'D',3,1,16,3),
(4053,'Clara','Alison','Garces','Pazos','AB-',3,38,177,90,'1978-08-10 00:00:00',43,4,'D',5,5,17,3),
(4054,'Benito','Agata','Giraldo','Ramirez','O+',1,36,165,52,'1968-07-27 00:00:00',40,1,'Z',6,2,8,4),
(4055,'Ambrosio','Evelina','Galindo','Cadena','A+',4,41,165,52,'1968-07-16 00:00:00',37,4,'D',3,7,11,3),
(4056,'Dalma','Ambrosio','Velasquez','Loaiza','AB-',3,34,161,83,'1989-11-22 00:00:00',38,1,'D',21,6,3,1),
(4057,'Azanias','Francisca','Cotazo','Libreros','B-',3,34,163,89,'1995-08-13 00:00:00',39,1,'Z',13,3,5,6),
(4058,'Graciela','Evelina','Serrato','Burbano','B+',3,8,187,70,'1962-03-29 00:00:00',38,3,'Z',20,3,4,1),
(4059,'Adelaida','Dalma','Tobon','Cuevas','O-',1,30,162,58,'1994-08-14 00:00:00',40,2,'D',4,5,17,8),
(4060,'Dalma','Avelina','Tobon','Ocampo','A-',3,26,170,51,'1973-12-08 00:00:00',39,4,'Z',7,7,9,2),
(4061,'Blasco','Carmelo','Giraldo','Vidal','B+',1,39,182,82,'1985-07-04 00:00:00',39,3,'Z',1,6,17,7),
(4062,'Alison','Cloe','Barcenas','Melo','AB+',2,29,187,55,'1960-02-03 00:00:00',36,2,'D',14,2,17,8),
(4063,'Basilio','Dulcinea','Cifuentes','Torres','AB-',4,10,172,71,'1987-01-04 00:00:00',39,3,'Z',10,6,11,6),
(4064,'Boleslao','Elea','Saucedo','Estrada','O+',2,6,189,74,'1987-07-17 00:00:00',36,2,'Z',24,6,2,3),
(4065,'Catón','Catón','Jimenez','Narvaez','B-',2,37,180,73,'1985-10-02 00:00:00',41,2,'Z',6,7,5,3),
(4066,'Anacleto','Basilio','Astudillo','Caicedo','AB-',1,20,181,69,'1995-06-01 00:00:00',40,2,'D',20,5,1,1),
(4067,'Dalma','Graciela','Cortes','Jimenez','AB+',1,37,190,89,'1992-06-13 00:00:00',36,1,'Z',6,4,17,6),
(4068,'Bruno','Eunice','Astudillo','Rengifo','B-',3,40,165,77,'1978-11-06 00:00:00',40,1,'Z',3,1,6,5),
(4069,'Clara','Baldomero','Ramirez','Tobar','A+',3,5,162,64,'1962-09-10 00:00:00',42,4,'Z',1,1,8,2),
(4070,'Adolfo','Emily','Ryes','Diaz','O+',3,13,180,62,'1962-06-08 00:00:00',41,4,'Z',7,2,8,5),
(4071,'Antonio','Dalma','Peña','Tobar','O+',1,33,181,83,'1998-02-13 00:00:00',38,1,'D',15,1,6,1),
(4072,'Anacleto','Arnulfo','Hoyos','Uribe','B+',2,1,177,89,'1991-04-22 00:00:00',40,3,'D',21,3,13,8),
(4073,'Avelina','Alcira','Murillo','Burbano','A-',2,7,189,52,'1983-11-22 00:00:00',37,3,'Z',8,5,2,8),
(4074,'Dolores','Azanias','Uribe','Ordoñez','AB+',1,36,185,81,'1978-03-11 00:00:00',37,1,'Z',17,6,4,4),
(4075,'Arcadia','Benito','Riascos','Rueda','O+',2,15,177,90,'1993-02-02 00:00:00',42,4,'Z',14,4,15,6),
(4076,'Boleslao','Eunice','Ryes','Serrato','B-',2,42,165,63,'1989-05-12 00:00:00',43,4,'D',24,5,16,7),
(4077,'Alfonso','Aquilino','Pazos','Agudelo','B+',1,12,171,64,'1971-03-04 00:00:00',42,3,'D',22,6,3,1),
(4078,'Erina','Adelaida','Loaiza','Hincapie','A+',4,4,165,85,'1987-08-27 00:00:00',41,4,'D',5,5,15,1),
(4079,'Arnulfo','Berta','Mina','Serrato','AB+',3,18,163,70,'1990-02-28 00:00:00',36,1,'Z',25,1,9,7),
(4080,'Asael','Emily','Tobar','Rengifo','O+',4,38,190,53,'1964-05-25 00:00:00',42,3,'Z',12,5,9,8),
(4081,'Erina','Elisenda','Tobar','Soto','B+',4,35,178,85,'1990-02-17 00:00:00',42,1,'D',19,1,14,3),
(4082,'Berta','Catón','Uribe','Agudelo','A+',4,14,164,76,'1970-12-20 00:00:00',38,3,'D',13,3,16,3),
(4083,'Arcadia','Dalma','Rengifo','Millan','A-',1,8,160,56,'1990-04-02 00:00:00',41,2,'Z',1,1,12,8),
(4084,'Dalma','Eunice','Ordoñez','Soto','O-',2,20,181,76,'1974-01-30 00:00:00',38,1,'Z',25,2,12,7),
(4085,'Clara','Felisa','Ryes','Zapata','AB+',3,38,162,53,'1973-05-15 00:00:00',40,2,'Z',25,2,3,6),
(4086,'Audrey','Graciela','Estrada','Arce','A-',4,10,186,62,'1989-08-18 00:00:00',37,3,'Z',15,4,3,1),
(4087,'Carol','Basilio','Suarez','Jimenez','A-',1,20,166,52,'1981-03-30 00:00:00',39,1,'D',10,4,6,4),
(4088,'Ambrosio','Berta','Pazos','Arce','B+',1,28,186,51,'1963-10-18 00:00:00',38,2,'D',9,4,13,3),
(4089,'Azanias','Alexis','Barcenas','Melo','O-',4,24,184,68,'1960-02-11 00:00:00',42,4,'D',6,6,4,1),
(4090,'Bruna','Adelio','Tobar','Loaiza','O+',3,13,174,55,'1981-09-29 00:00:00',39,3,'D',2,1,4,7),
(4091,'Atilano','Anibal','Millan','Escarria','A+',4,17,180,51,'1987-02-20 00:00:00',39,4,'Z',20,1,6,5),
(4092,'Crisanto','Florinda','Zapata','Jimenez','O-',3,21,180,76,'1981-09-04 00:00:00',36,1,'Z',13,6,15,7),
(4093,'Bruno','Alcira','Alomia','Peña','O+',3,15,181,89,'1973-02-15 00:00:00',43,1,'D',4,3,1,6),
(4094,'Angela','Alfredo','Tobon','Vidal','O+',4,7,162,77,'1986-10-04 00:00:00',39,2,'D',15,2,14,7),
(4095,'Catón','Francisca','Rueda','Mina','B-',4,4,187,80,'1976-10-22 00:00:00',39,4,'Z',22,5,16,2),
(4096,'Anacleto','Amaya','Ryes','Burbano','O+',2,39,175,50,'1980-02-12 00:00:00',41,4,'Z',8,7,17,8),
(4097,'Amaya','Cleto','Murillo','Loaiza','AB+',4,3,185,67,'1960-05-14 00:00:00',42,2,'D',10,1,13,7),
(4098,'Gema','Audrey','Alomia','Vidal','O+',3,15,189,54,'1989-03-05 00:00:00',39,1,'Z',23,2,17,6),
(4099,'Dalma','Cloe','Cuevas','Loaiza','A+',4,10,163,60,'1991-06-28 00:00:00',38,3,'Z',17,1,14,2),
(4100,'Cancio','Agustín','Perea','Rengifo','O-',1,40,190,53,'1966-01-04 00:00:00',41,2,'Z',17,2,7,2),
(4101,'Eunice','Alfonso','Escarria','Rengifo','O-',2,16,181,60,'1982-07-27 00:00:00',42,3,'Z',2,5,4,2),
(4102,'Bruna','Alcira','Castaño','Ramirez','A-',1,19,189,60,'1994-05-24 00:00:00',42,2,'D',9,4,9,3),
(4103,'Antonio','Dulcinea','Peña','Ocampo','A-',4,33,182,62,'1980-08-09 00:00:00',41,2,'D',5,3,4,4),
(4104,'Bartolomé','Amadis','Burbano','Barrera','O+',3,42,172,70,'1969-04-02 00:00:00',42,4,'D',12,5,8,8),
(4105,'Arnulfo','Elisenda','Arenas','Mina','AB+',2,40,176,61,'1962-04-05 00:00:00',36,2,'Z',9,4,1,6),
(4106,'Felisa','Blanca','Loaiza','Rivera','B-',3,28,189,90,'1998-08-22 00:00:00',41,2,'Z',18,5,8,8),
(4107,'Anibal','Aquilino','Ramirez','Soto','A+',3,10,180,90,'1989-12-09 00:00:00',43,4,'Z',1,3,17,4),
(4108,'Aquilino','Carmelo','Ojeda','Suarez','AB+',2,2,175,58,'1963-03-03 00:00:00',41,4,'D',3,7,5,4),
(4109,'Agata','Avelina','Vidal','Caicedo','AB-',3,42,177,62,'1995-03-24 00:00:00',36,2,'Z',7,3,13,3),
(4110,'Azanias','Dulcinea','Tobon','Caicedo','B-',3,27,184,55,'1982-11-02 00:00:00',38,3,'Z',16,6,13,1),
(4111,'Arcadia','Armando','Agudelo','Caicedo','A-',1,1,170,52,'1976-12-07 00:00:00',43,4,'D',5,6,11,3),
(4112,'Catón','Bruna','Zuñiga','Fuerte','A+',4,36,167,88,'1961-01-25 00:00:00',41,1,'D',7,5,2,1),
(4113,'Armando','Elea','Arenas','Diaz','O+',3,14,172,78,'1975-10-17 00:00:00',37,1,'Z',24,7,7,7),
(4114,'Benicio','Adelaida','Barrera','Perea','O+',2,2,164,73,'1963-04-20 00:00:00',42,3,'D',7,6,5,6),
(4115,'Alexis','Avelina','Tobon','Serrato','AB-',1,11,190,51,'1967-05-13 00:00:00',38,2,'D',1,7,3,1),
(4116,'Angela','Bruna','Castaño','Barcenas','A-',4,24,175,71,'1981-06-25 00:00:00',41,1,'Z',24,5,6,1),
(4117,'Anibal','Agustín','Zambrano','Vidal','O-',3,33,166,55,'1994-09-29 00:00:00',39,3,'Z',23,3,9,2),
(4118,'Custodio','Cipriano','Torres','Diaz','AB-',2,17,177,80,'1965-12-07 00:00:00',40,4,'D',20,4,13,8),
(4119,'Bartolomé','Angela','Caicedo','Mina','AB-',1,28,189,82,'1977-10-23 00:00:00',39,4,'D',22,3,6,7),
(4120,'Bruna','Adolfo','Estrada','Cortes','A-',1,4,187,77,'1989-10-18 00:00:00',40,1,'D',6,7,9,7),
(4121,'Blanca','Dulcinea','Agudelo','Zambrano','A-',4,6,168,81,'1991-03-09 00:00:00',36,4,'Z',17,5,6,7),
(4122,'Avelina','Clara','Libreros','Bermudez','AB-',3,34,182,90,'1984-03-17 00:00:00',41,3,'D',6,5,14,5),
(4123,'Casiano','Alcira','Jimenez','Tobon','AB+',4,6,160,76,'1960-09-04 00:00:00',37,1,'Z',4,3,15,1),
(4124,'Ambrosio','Cloe','Rengifo','Burbano','AB-',3,38,173,86,'1988-05-27 00:00:00',43,3,'D',17,6,15,2),
(4125,'Bruno','Alison','Fuerte','Gutierrez','A-',4,12,171,86,'1961-06-09 00:00:00',40,2,'D',15,7,16,1),
(4126,'Aquilino','Aquilino','Suarez','Astudillo','O+',2,10,168,75,'1965-08-23 00:00:00',39,1,'D',4,2,13,2),
(4127,'Adelaida','Azanias','Barcenas','Guevara','O+',1,36,166,74,'1982-02-12 00:00:00',43,4,'D',16,3,14,6),
(4128,'Antonio','Boleslao','Jimenez','Ocampo','O+',3,36,182,83,'1978-09-28 00:00:00',40,1,'D',21,2,16,7),
(4129,'Belisario','Agustín','Lopez','Castillo','O+',3,3,171,87,'1997-05-16 00:00:00',41,2,'Z',10,1,2,7),
(4130,'Bartolomé','Benito','Narvaez','Burbano','A-',4,7,166,64,'1996-07-05 00:00:00',38,3,'D',21,6,1,6),
(4131,'Blanca','Avelina','Castillo','Caicedo','AB+',4,19,177,74,'1996-04-28 00:00:00',38,2,'Z',17,3,4,6),
(4132,'Florinda','Ambrosio','Arce','Castillo','O+',1,24,166,60,'1979-08-27 00:00:00',37,4,'D',24,6,17,1),
(4133,'Alfredo','Aquilino','Cifuentes','Hoyos','B+',4,9,180,55,'1972-09-03 00:00:00',39,3,'Z',5,7,15,3),
(4134,'Erina','Atilano','Delgado','Noriega','B+',1,25,161,89,'1984-01-06 00:00:00',43,4,'D',22,3,3,6),
(4135,'Boleslao','Arcadia','Alomia','Zambrano','B-',2,31,183,70,'1976-09-28 00:00:00',37,2,'D',23,6,10,7),
(4136,'Armando','Amaya','Gutierrez','Pazos','B+',3,33,188,69,'1998-11-02 00:00:00',40,1,'D',4,5,12,8),
(4137,'Carmelo','Arcadia','Riascos','Cadena','O+',1,27,189,69,'1983-07-03 00:00:00',39,1,'Z',8,7,6,7),
(4138,'Florinda','Graciela','Cuevas','Barcenas','AB-',1,6,161,69,'1984-10-22 00:00:00',43,2,'D',18,3,2,5),
(4139,'Agustín','Alcira','Micolta','Rueda','A+',4,22,164,74,'1981-02-13 00:00:00',40,4,'D',7,5,6,2),
(4140,'Bruna','Cancio','Zambrano','Guevara','B-',2,34,178,65,'1986-09-04 00:00:00',38,3,'Z',12,2,2,2),
(4141,'Francisca','Custodio','Noriega','Velasquez','AB-',3,6,169,51,'1960-01-27 00:00:00',42,3,'Z',19,2,7,1),
(4142,'Alison','Bartolomé','Cadena','Velasquez','O-',2,12,189,76,'1970-09-19 00:00:00',38,2,'Z',13,7,2,3),
(4143,'Cipriano','Belisa','Arce','Ojeda','O+',3,25,177,54,'1983-01-29 00:00:00',40,3,'D',6,3,17,7),
(4144,'Erina','Benito','Rueda','Saucedo','A+',4,28,182,51,'1970-01-03 00:00:00',38,2,'Z',19,4,13,4),
(4145,'Antonio','Alarico','Escarria','Bermudez','B-',3,25,185,90,'1991-11-08 00:00:00',38,3,'Z',1,6,17,1),
(4146,'Arnulfo','Amadeo','Tobon','Bermudez','O-',2,11,175,74,'1990-07-26 00:00:00',43,1,'D',1,1,10,1),
(4147,'Clara','Erina','Diaz','Libreros','O+',3,3,172,54,'1971-02-07 00:00:00',38,1,'D',24,7,5,7),
(4148,'Belisario','Anibal','Garces','Saucedo','A-',2,10,183,76,'1969-07-02 00:00:00',39,2,'D',7,6,8,3),
(4149,'Blasco','Arnulfo','Fuerte','Agudelo','AB+',1,40,179,83,'1963-07-23 00:00:00',38,3,'D',21,5,12,5),
(4150,'Alcira','Ambrosio','Zuluaga','Castillo','B+',3,29,189,76,'1987-08-27 00:00:00',37,4,'D',18,5,2,1),
(4151,'Agata','Belisa','Jimenez','Alomia','O+',4,28,171,68,'1963-09-28 00:00:00',40,1,'Z',22,4,5,5),
(4152,'Anibal','Blasco','Rivera','Zuluaga','A-',1,24,182,63,'1986-06-25 00:00:00',42,4,'Z',5,7,7,3),
(4153,'Alexis','Bartolomé','Agudelo','Cuevas','O+',4,8,187,89,'1983-06-08 00:00:00',38,4,'D',7,7,1,7),
(4154,'Anacleto','Dalma','Narvaez','Cortes','AB-',1,42,181,55,'1992-04-22 00:00:00',40,4,'Z',11,4,12,1),
(4155,'Adelaida','Cleto','Delgado','Saucedo','B-',1,15,188,54,'1968-09-20 00:00:00',40,1,'Z',19,1,8,3),
(4156,'Amadeo','Evelina','Serrato','Barcenas','B+',2,30,169,77,'1997-05-20 00:00:00',38,3,'D',10,7,13,6),
(4157,'Avelina','Catón','Caicedo','Serrato','B+',2,26,166,62,'1974-05-26 00:00:00',38,3,'Z',23,4,14,4),
(4158,'Aquilino','Crisanto','Astudillo','Cotazo','B+',2,11,176,84,'1969-12-28 00:00:00',39,3,'D',19,3,12,7),
(4159,'Blasco','Clara','Guevara','Escarria','AB+',1,10,168,62,'1979-12-02 00:00:00',43,4,'D',7,7,14,5),
(4160,'Erina','Elisenda','Alomia','Polanco','O-',1,20,166,73,'1972-01-06 00:00:00',39,3,'D',5,1,9,4),
(4161,'Audrey','Gema','Tobar','Ramirez','O+',2,13,161,79,'1991-10-01 00:00:00',41,2,'Z',3,5,16,6),
(4162,'Cancio','Dulcinea','Zuñiga','Noriega','AB+',1,3,164,82,'1981-06-09 00:00:00',40,1,'Z',15,2,10,4),
(4163,'Agata','Casiano','Lopez','Ordoñez','O+',2,12,190,50,'1991-12-24 00:00:00',40,1,'D',2,2,15,1),
(4164,'Anacleto','Alfonso','Bermudez','Agudelo','B+',3,31,178,75,'1998-11-20 00:00:00',36,2,'Z',22,1,10,3),
(4165,'Amadis','Bruna','Astudillo','Robles','O-',4,4,178,81,'1995-08-04 00:00:00',42,4,'D',11,7,15,6),
(4166,'Francisca','Anacleto','Estrada','Ojeda','B+',2,8,178,67,'1968-06-08 00:00:00',43,1,'Z',20,5,10,8),
(4167,'Blasco','Cipriano','Pazos','Uribe','A+',4,32,190,50,'1979-09-03 00:00:00',43,1,'Z',11,1,1,3),
(4168,'Benito','Carmelo','Zuñiga','Hincapie','AB-',4,26,167,51,'1985-11-17 00:00:00',43,2,'D',19,6,8,6),
(4169,'Belisario','Elisenda','Burbano','Loaiza','O+',4,24,171,83,'1961-02-11 00:00:00',43,2,'Z',8,6,8,1),
(4170,'Asael','Graciela','Jimenez','Diaz','AB+',2,1,168,78,'1998-04-12 00:00:00',42,4,'D',5,1,9,8),
(4171,'Delma','Atilano','Galindo','Riascos','AB+',3,22,180,63,'1992-10-23 00:00:00',43,4,'Z',11,1,8,6),
(4172,'Elea','Gema','Estrada','Zuluaga','AB+',4,4,174,90,'1971-06-22 00:00:00',36,1,'Z',15,2,4,3),
(4173,'Cleto','Amadeo','Murillo','Millan','AB+',4,18,180,81,'1974-03-01 00:00:00',39,1,'Z',1,1,4,8),
(4174,'Alfredo','Aquilino','Barrera','Cuevas','O-',3,19,163,53,'1992-03-30 00:00:00',36,1,'Z',3,1,3,6),
(4175,'Florinda','Crisanto','Robles','Zuñiga','A+',1,19,189,69,'1967-01-07 00:00:00',39,1,'D',4,7,2,3),
(4176,'Catón','Aquilino','Mina','Riascos','B+',3,23,160,83,'1972-10-14 00:00:00',40,4,'D',9,5,9,6),
(4177,'Elea','Cipriano','Perea','Delgado','O+',2,33,180,84,'1967-07-25 00:00:00',43,4,'Z',5,4,11,2),
(4178,'Bartolomé','Benito','Zambrano','Ordoñez','O-',1,24,167,61,'1981-11-20 00:00:00',39,2,'D',23,4,13,8),
(4179,'Alfredo','Borja','Rueda','Giraldo','B+',4,9,188,69,'1977-08-30 00:00:00',40,1,'Z',16,2,1,3),
(4180,'Erina','Alison','Fuerte','Soto','A-',4,36,173,89,'1969-04-05 00:00:00',43,2,'Z',19,3,16,8),
(4181,'Casiano','Amadeo','Delgado','Tobar','B-',1,33,163,71,'1968-06-30 00:00:00',42,4,'Z',15,2,5,1),
(4182,'Evelina','Bruna','Arce','Peña','B+',4,18,175,54,'1966-12-18 00:00:00',39,2,'D',23,5,16,7),
(4183,'Bruna','Francisca','Guevara','Uribe','B-',2,28,181,73,'1967-11-28 00:00:00',36,3,'D',20,2,12,2),
(4184,'Avelina','Atilano','Burbano','Zambrano','A+',3,12,173,53,'1963-07-25 00:00:00',42,1,'D',12,2,2,8),
(4185,'Angela','Angela','Saucedo','Ryes','AB+',2,24,164,68,'1992-02-05 00:00:00',39,1,'Z',21,6,13,8),
(4186,'Benito','Dulcinea','Cifuentes','Uribe','O-',2,15,167,68,'1991-01-28 00:00:00',43,1,'Z',13,4,13,5),
(4187,'Erina','Benito','Robles','Jimenez','AB+',4,39,181,68,'1969-10-21 00:00:00',43,2,'Z',5,3,4,4),
(4188,'Avelina','Alfonso','Barcenas','Micolta','O-',4,7,160,83,'1984-11-05 00:00:00',41,1,'Z',4,5,4,7),
(4189,'Eunice','Benicio','Zuluaga','Torres','AB+',1,33,161,80,'1971-03-26 00:00:00',36,1,'D',22,4,11,1),
(4190,'Adelio','Alexis','Uribe','Tobar','A+',1,21,182,62,'1987-09-23 00:00:00',37,2,'Z',22,3,2,1),
(4191,'Blanca','Custodio','Velasquez','Micolta','A-',2,35,182,57,'1992-10-07 00:00:00',42,3,'Z',15,1,10,7),
(4192,'Catón','Arcadia','Galindo','Burbano','A-',1,17,181,62,'1997-04-08 00:00:00',38,4,'Z',4,6,6,7),
(4193,'Adelio','Belisario','Perea','Jimenez','O+',3,19,181,90,'1963-01-08 00:00:00',42,2,'Z',19,7,10,8),
(4194,'Alfonso','Anacleto','Agudelo','Soto','AB+',2,35,160,74,'1992-10-17 00:00:00',42,1,'D',9,7,14,4),
(4195,'Custodio','Arnulfo','Hincapie','Ocampo','O-',2,26,182,79,'1966-03-23 00:00:00',40,3,'Z',20,7,15,5),
(4196,'Benito','Arnulfo','Pazos','Micolta','B-',4,21,179,57,'1998-02-13 00:00:00',41,3,'Z',6,3,5,8),
(4197,'Dalma','Armando','Perea','Barcenas','O-',3,15,163,82,'1981-11-16 00:00:00',43,3,'Z',17,6,3,1),
(4198,'Benicio','Borja','Cuevas','Serrato','O-',4,37,184,66,'1976-12-30 00:00:00',36,1,'D',20,3,5,2),
(4199,'Dalma','Anibal','Polanco','Tobon','B+',4,40,181,72,'1969-04-30 00:00:00',39,3,'D',15,3,3,6),
(4200,'Adolfo','Alcira','Escarria','Pazos','A-',4,36,184,70,'1967-07-20 00:00:00',37,3,'Z',19,7,4,3),
(4201,'Anacleto','Agata','Vidal','Alomia','AB+',2,41,161,59,'1962-06-06 00:00:00',38,4,'D',14,3,8,6),
(4202,'Amadeo','Amadeo','Barrera','Zuluaga','A-',2,4,169,89,'1975-07-19 00:00:00',43,1,'D',15,3,15,4),
(4203,'Baldomero','Clara','Uribe','Lopez','AB-',3,42,172,83,'1980-10-11 00:00:00',37,2,'Z',15,1,9,1),
(4204,'Felisa','Alcira','Murillo','Rengifo','O+',4,23,179,86,'1981-06-28 00:00:00',41,3,'Z',16,2,2,3),
(4205,'Emily','Alcira','Delgado','Rengifo','A-',3,12,189,71,'1982-10-24 00:00:00',36,2,'D',4,5,14,3),
(4206,'Catón','Delma','Zambrano','Loaiza','B-',4,32,177,87,'1962-06-08 00:00:00',38,2,'Z',22,2,11,5),
(4207,'Elea','Alexis','Hoyos','Vidal','O-',3,20,175,69,'1995-10-18 00:00:00',37,3,'D',10,2,17,7),
(4208,'Arnulfo','Felisa','Garces','Hoyos','AB-',1,22,167,74,'1969-04-08 00:00:00',42,4,'D',2,3,2,4),
(4209,'Belisa','Carmelo','Perea','Rivera','A-',2,6,183,81,'1961-06-15 00:00:00',42,1,'Z',13,2,4,5),
(4210,'Alison','Berta','Serrato','Barcenas','O+',1,33,168,64,'1989-11-30 00:00:00',41,4,'D',2,3,12,7),
(4211,'Clara','Asael','Suarez','Estrada','O+',1,21,165,52,'1980-10-13 00:00:00',39,2,'D',25,7,2,7),
(4212,'Amadeo','Boleslao','Giraldo','Perea','B+',1,39,174,77,'1986-11-30 00:00:00',41,3,'D',3,6,2,8),
(4213,'Gema','Arnulfo','Cadena','Tobar','AB+',2,16,185,77,'1987-02-03 00:00:00',42,3,'D',5,2,1,3),
(4214,'Evelina','Alexis','Rueda','Cuevas','O-',2,12,163,53,'1993-07-21 00:00:00',38,3,'Z',7,6,2,7),
(4215,'Catón','Agata','Hincapie','Tobar','O+',4,39,165,54,'1964-12-06 00:00:00',41,4,'D',6,3,14,6),
(4216,'Alexis','Alarico','Tobon','Narvaez','B+',1,29,162,88,'1967-01-03 00:00:00',43,4,'Z',11,1,15,2),
(4217,'Arnulfo','Alfredo','Velasquez','Cortes','A+',3,22,188,76,'1987-06-30 00:00:00',39,1,'Z',17,1,8,5),
(4218,'Antonio','Benicio','Galindo','Barcenas','O-',1,28,172,88,'1990-06-29 00:00:00',40,4,'Z',16,5,5,2),
(4219,'Cipriano','Bruno','Tobon','Zuñiga','AB+',4,2,176,73,'1985-02-25 00:00:00',37,3,'D',21,7,17,6),
(4220,'Armando','Cancio','Millan','Riascos','O+',1,20,163,60,'1993-09-02 00:00:00',39,1,'D',16,4,17,4),
(4221,'Crisanto','Amadis','Cotazo','Gutierrez','O+',3,32,175,65,'1966-10-04 00:00:00',36,4,'D',1,2,5,2),
(4222,'Angela','Blasco','Escarria','Zuñiga','O+',3,16,182,60,'1971-11-29 00:00:00',38,3,'Z',5,6,5,8),
(4223,'Francisca','Alcira','Arce','Burbano','B+',4,27,184,66,'1964-08-07 00:00:00',36,2,'D',15,1,3,8),
(4224,'Adelio','Berta','Estrada','Delgado','O+',2,29,175,80,'1995-08-22 00:00:00',40,4,'D',12,1,6,6),
(4225,'Bruno','Bruno','Loaiza','Narvaez','B-',1,5,167,57,'1998-08-16 00:00:00',38,2,'D',6,7,4,3),
(4226,'Bruna','Berta','Mina','Zuluaga','A-',1,7,161,64,'1967-04-14 00:00:00',39,3,'Z',21,5,5,1),
(4227,'Florinda','Catón','Arce','Loaiza','B-',3,8,166,71,'1994-09-08 00:00:00',42,4,'D',20,1,15,4),
(4228,'Bruna','Dulcinea','Suarez','Noriega','AB-',1,40,187,69,'1969-11-22 00:00:00',41,2,'D',18,5,1,5),
(4229,'Evelina','Basilio','Gutierrez','Burbano','A+',4,39,169,85,'1986-10-30 00:00:00',36,2,'D',15,2,10,6),
(4230,'Baldomero','Avelina','Barrera','Melo','AB-',4,11,164,51,'1987-02-14 00:00:00',38,3,'D',2,7,2,1),
(4231,'Bartolomé','Alison','Garces','Rengifo','O-',2,2,180,87,'1965-03-28 00:00:00',37,1,'D',23,4,11,1),
(4232,'Agata','Arnulfo','Castillo','Hoyos','B+',3,7,184,55,'1989-03-29 00:00:00',40,4,'D',18,5,7,6),
(4233,'Dulcinea','Borja','Melo','Robles','AB+',1,33,162,55,'1960-12-30 00:00:00',42,2,'Z',4,4,16,8),
(4234,'Agustín','Dalma','Zuñiga','Delgado','O-',2,8,181,86,'1962-09-30 00:00:00',40,3,'D',13,2,7,3),
(4235,'Benito','Arcadia','Bermudez','Cifuentes','O+',4,42,188,74,'1982-10-20 00:00:00',40,4,'D',12,4,9,5),
(4236,'Amadis','Armando','Alomia','Robles','A+',4,10,168,81,'1973-07-18 00:00:00',41,1,'D',20,3,4,1),
(4237,'Belisa','Custodio','Cadena','Ojeda','A+',2,15,177,68,'1978-01-08 00:00:00',41,3,'Z',2,6,11,7),
(4238,'Amaya','Custodio','Tobon','Rivera','O+',4,6,190,58,'1994-08-16 00:00:00',39,4,'D',2,6,6,2),
(4239,'Blanca','Eunice','Arce','Vidal','O+',3,14,176,51,'1998-04-04 00:00:00',42,1,'D',10,1,14,5),
(4240,'Belisario','Gema','Narvaez','Cotazo','B-',4,27,170,88,'1980-10-18 00:00:00',42,1,'D',20,7,1,4),
(4241,'Blanca','Casiano','Giraldo','Guevara','B+',3,32,168,81,'1960-06-24 00:00:00',42,1,'D',24,3,5,1),
(4242,'Bartolomé','Alfredo','Cadena','Lopez','B-',2,11,160,90,'1986-09-09 00:00:00',42,2,'Z',7,4,3,6),
(4243,'Bartolomé','Erina','Ocampo','Melo','A-',1,39,172,90,'1984-04-13 00:00:00',37,1,'D',9,2,16,1),
(4244,'Ambrosio','Delma','Libreros','Giraldo','O-',1,11,179,63,'1967-04-02 00:00:00',37,4,'Z',8,7,16,6),
(4245,'Blanca','Alison','Fuerte','Torres','B+',1,12,186,50,'1988-12-30 00:00:00',43,1,'D',7,3,16,3),
(4246,'Berta','Anibal','Cotazo','Guevara','A-',4,7,186,89,'1989-09-04 00:00:00',36,1,'D',9,4,5,4),
(4247,'Amaya','Erina','Noriega','Ordoñez','AB-',1,22,166,85,'1997-07-19 00:00:00',40,3,'Z',1,6,16,7),
(4248,'Dalma','Bartolomé','Robles','Narvaez','A-',3,40,168,52,'1967-12-25 00:00:00',38,4,'D',8,2,14,8),
(4249,'Alexis','Dalma','Barcenas','Escarria','AB+',4,15,171,82,'1986-08-03 00:00:00',42,4,'D',19,7,8,7),
(4250,'Anibal','Alison','Vidal','Loaiza','B-',1,20,175,62,'1977-07-20 00:00:00',38,3,'Z',25,3,12,1),
(4251,'Erina','Bartolomé','Ramirez','Bermudez','AB-',1,2,189,79,'1975-01-03 00:00:00',42,1,'D',6,6,16,3),
(4252,'Bartolomé','Dolores','Ryes','Ocampo','O+',1,19,164,76,'1966-10-29 00:00:00',42,2,'Z',17,7,7,5),
(4253,'Benito','Carol','Zuñiga','Cuevas','B+',3,23,172,56,'1979-01-30 00:00:00',40,1,'Z',13,1,7,8),
(4254,'Alfredo','Cleto','Escarria','Castaño','O-',4,26,184,56,'1969-11-05 00:00:00',41,4,'Z',22,7,2,1),
(4255,'Carmelo','Alfonso','Alomia','Escarria','B-',4,34,176,74,'1972-05-03 00:00:00',36,1,'Z',13,4,5,3),
(4256,'Dolores','Anacleto','Tobon','Hoyos','A+',3,33,164,64,'1982-03-11 00:00:00',39,4,'Z',6,4,3,7),
(4257,'Angela','Cancio','Alomia','Agudelo','AB-',3,41,163,88,'1995-06-27 00:00:00',37,2,'Z',18,1,17,5),
(4258,'Erina','Amadis','Mina','Hincapie','AB+',4,20,162,82,'1979-04-01 00:00:00',42,4,'D',15,5,9,6),
(4259,'Arnulfo','Alarico','Narvaez','Saucedo','B-',4,33,167,73,'1976-05-16 00:00:00',38,1,'Z',17,7,5,8),
(4260,'Anacleto','Dulcinea','Barrera','Ryes','A-',1,21,176,52,'1975-09-21 00:00:00',39,3,'Z',16,7,13,4),
(4261,'Carmelo','Belisario','Polanco','Narvaez','B-',2,20,165,66,'1972-02-02 00:00:00',36,1,'D',6,1,9,2),
(4262,'Cloe','Anacleto','Ojeda','Barcenas','A+',3,18,188,64,'1962-09-19 00:00:00',36,3,'D',14,1,16,5),
(4263,'Atilano','Boleslao','Peña','Arce','AB+',3,14,178,61,'1977-09-17 00:00:00',43,2,'D',5,2,15,2),
(4264,'Baldomero','Dolores','Noriega','Diaz','O+',1,22,186,58,'1993-12-20 00:00:00',42,1,'D',22,7,1,3),
(4265,'Blanca','Alison','Hincapie','Noriega','O+',2,16,163,87,'1961-03-18 00:00:00',36,3,'Z',15,7,6,1),
(4266,'Ambrosio','Armando','Narvaez','Hincapie','AB-',4,13,190,80,'1972-05-06 00:00:00',43,3,'D',9,1,7,2),
(4267,'Antonio','Amadeo','Castillo','Cifuentes','B+',4,11,163,88,'1967-06-04 00:00:00',39,1,'Z',3,7,6,7),
(4268,'Alfredo','Alfredo','Tobar','Cortes','AB-',2,21,160,54,'1988-10-03 00:00:00',38,3,'D',20,3,8,3),
(4269,'Boleslao','Amadeo','Suarez','Rueda','B-',2,21,173,58,'1975-01-11 00:00:00',41,1,'Z',24,7,17,2),
(4270,'Florinda','Audrey','Micolta','Vidal','B-',1,6,177,71,'1976-12-24 00:00:00',37,3,'Z',17,6,1,5),
(4271,'Francisca','Angela','Lopez','Giraldo','A-',4,9,165,70,'1986-10-13 00:00:00',37,2,'Z',8,2,3,5),
(4272,'Alfredo','Amaya','Barcenas','Astudillo','O-',4,6,174,55,'1968-05-10 00:00:00',37,3,'Z',18,2,11,2),
(4273,'Alfonso','Cloe','Torres','Zuñiga','O-',4,42,169,90,'1986-02-16 00:00:00',40,3,'D',2,3,1,5),
(4274,'Eunice','Delma','Zuñiga','Cortes','AB+',3,6,174,85,'1981-04-30 00:00:00',37,2,'Z',19,5,5,8),
(4275,'Evelina','Dulcinea','Gutierrez','Narvaez','A-',4,29,179,73,'1998-07-03 00:00:00',42,2,'D',8,4,15,4),
(4276,'Boleslao','Elea','Bermudez','Castaño','AB-',3,5,185,71,'1971-07-10 00:00:00',41,3,'Z',2,7,4,3),
(4277,'Angela','Belisa','Mina','Fuerte','AB+',4,4,178,61,'1996-07-02 00:00:00',36,3,'Z',17,7,4,3),
(4278,'Bartolomé','Catón','Narvaez','Zuñiga','B-',2,27,186,67,'1963-05-26 00:00:00',41,4,'Z',6,2,2,2),
(4279,'Gema','Adelaida','Escarria','Peña','AB+',3,20,177,64,'1971-05-25 00:00:00',36,4,'Z',12,3,11,6),
(4280,'Carol','Amaya','Astudillo','Estrada','O+',4,40,167,53,'1962-02-08 00:00:00',39,1,'Z',4,2,6,3),
(4281,'Agata','Cleto','Cortes','Jimenez','A+',2,15,184,84,'1994-05-23 00:00:00',38,2,'Z',22,2,15,8),
(4282,'Arnulfo','Angela','Mina','Estrada','A-',3,22,175,63,'1996-09-02 00:00:00',40,3,'Z',8,5,7,7),
(4283,'Aquilino','Bruna','Pazos','Saucedo','AB-',2,22,165,78,'1981-11-09 00:00:00',38,3,'D',3,4,11,8),
(4284,'Bartolomé','Basilio','Castillo','Ordoñez','B+',2,15,175,84,'1970-08-03 00:00:00',42,3,'Z',22,4,17,2),
(4285,'Borja','Audrey','Castillo','Melo','AB+',4,25,168,84,'1984-07-06 00:00:00',43,1,'D',24,4,11,5),
(4286,'Blasco','Anibal','Tobar','Ryes','B+',4,2,165,79,'1994-04-05 00:00:00',40,2,'D',4,5,4,8),
(4287,'Amadis','Blasco','Perea','Castillo','A+',2,36,170,75,'1973-11-04 00:00:00',42,4,'Z',22,1,3,6),
(4288,'Alarico','Cancio','Caicedo','Gutierrez','O+',2,32,173,87,'1978-11-17 00:00:00',41,2,'Z',24,6,6,2),
(4289,'Francisca','Aquilino','Barcenas','Jimenez','B-',2,22,177,50,'1988-05-05 00:00:00',41,1,'D',2,7,15,2),
(4290,'Amadeo','Elisenda','Tobar','Velasquez','B-',4,38,183,56,'1982-11-25 00:00:00',36,4,'Z',21,3,16,4),
(4291,'Blanca','Baldomero','Castillo','Zapata','O-',2,7,189,63,'1960-07-05 00:00:00',41,2,'D',3,2,1,8),
(4292,'Felisa','Aquilino','Tobon','Millan','AB+',3,16,190,81,'1969-02-16 00:00:00',37,1,'Z',19,7,11,4),
(4293,'Benicio','Elea','Zapata','Perea','A+',3,8,163,56,'1998-04-29 00:00:00',37,2,'D',17,2,8,5),
(4294,'Amadis','Emily','Soto','Arce','B-',1,30,184,56,'1997-07-02 00:00:00',42,2,'D',12,7,11,4),
(4295,'Angela','Benito','Bermudez','Loaiza','O-',1,27,183,75,'1983-01-01 00:00:00',40,4,'D',9,4,12,5),
(4296,'Agata','Adolfo','Estrada','Millan','AB+',1,42,181,89,'1984-02-24 00:00:00',39,2,'D',9,7,16,4),
(4297,'Amaya','Adelaida','Rueda','Vidal','A-',1,8,175,82,'1995-10-20 00:00:00',38,3,'D',12,6,8,2),
(4298,'Bartolomé','Atilano','Burbano','Gutierrez','O-',4,38,186,51,'1995-06-28 00:00:00',43,3,'D',18,6,6,3),
(4299,'Carol','Bartolomé','Agudelo','Ramirez','AB+',1,19,160,54,'1964-08-18 00:00:00',38,4,'Z',11,1,2,6),
(4300,'Amaya','Francisca','Barcenas','Narvaez','AB+',4,33,175,61,'1981-07-21 00:00:00',38,4,'Z',20,6,11,2),
(4301,'Blanca','Cancio','Arenas','Tobar','O-',2,13,164,85,'1998-06-21 00:00:00',39,4,'D',20,2,11,4),
(4302,'Borja','Blanca','Cuevas','Barcenas','B+',3,31,181,85,'1975-04-17 00:00:00',41,1,'D',9,5,10,8),
(4303,'Elisenda','Custodio','Peña','Astudillo','O-',3,9,181,89,'1982-08-11 00:00:00',42,2,'D',2,5,3,3),
(4304,'Cipriano','Adolfo','Cadena','Mina','AB+',2,34,165,65,'1981-04-11 00:00:00',36,3,'Z',16,3,4,5),
(4305,'Azanias','Catón','Astudillo','Hoyos','A+',4,6,183,50,'1998-12-23 00:00:00',38,2,'D',2,4,4,5),
(4306,'Carol','Catón','Zambrano','Fuerte','O+',4,39,170,75,'1984-10-13 00:00:00',38,3,'Z',2,6,17,8),
(4307,'Benito','Adelaida','Torres','Suarez','B+',2,18,165,73,'1989-12-06 00:00:00',42,3,'Z',2,4,16,4),
(4308,'Francisca','Azanias','Melo','Fuerte','A-',4,8,180,70,'1961-03-20 00:00:00',37,3,'Z',25,3,13,3),
(4309,'Alfredo','Borja','Riascos','Alomia','AB+',4,9,190,90,'1965-07-14 00:00:00',38,2,'Z',3,2,12,6),
(4310,'Felisa','Clara','Arce','Noriega','O-',1,21,167,60,'1987-07-22 00:00:00',41,1,'D',22,7,9,2),
(4311,'Arnulfo','Blasco','Galindo','Perea','A-',4,17,169,71,'1982-06-12 00:00:00',39,2,'D',9,7,3,4),
(4312,'Anibal','Agata','Vidal','Zapata','AB+',4,29,161,84,'1968-07-27 00:00:00',38,3,'D',6,2,14,1),
(4313,'Audrey','Arnulfo','Rivera','Arce','B-',2,27,166,74,'1990-07-09 00:00:00',41,2,'D',14,4,10,7),
(4314,'Delma','Elisenda','Barcenas','Arenas','B+',2,36,178,76,'1995-12-04 00:00:00',42,4,'D',18,5,12,7),
(4315,'Arnulfo','Benito','Murillo','Perea','O+',4,26,175,64,'1982-04-12 00:00:00',42,4,'Z',24,5,6,3),
(4316,'Eunice','Aquilino','Ocampo','Peña','AB+',4,30,173,87,'1997-07-26 00:00:00',37,3,'D',16,7,4,8),
(4317,'Antonio','Crisanto','Arenas','Zuluaga','B-',2,8,164,90,'1960-10-31 00:00:00',43,4,'Z',4,6,6,1),
(4318,'Borja','Alfonso','Arce','Estrada','A+',3,5,187,81,'1962-03-02 00:00:00',39,2,'D',13,2,16,6),
(4319,'Clara','Ambrosio','Suarez','Suarez','B+',1,1,188,76,'1989-09-20 00:00:00',43,1,'Z',2,4,1,6),
(4320,'Felisa','Alarico','Cuevas','Murillo','B-',3,28,189,83,'1966-06-06 00:00:00',40,1,'Z',12,2,5,4),
(4321,'Borja','Dulcinea','Hoyos','Rueda','A-',3,12,162,61,'1976-08-10 00:00:00',40,4,'D',16,3,8,4),
(4322,'Elisenda','Basilio','Uribe','Burbano','O+',2,11,183,50,'1977-05-24 00:00:00',37,4,'D',8,2,7,4),
(4323,'Ambrosio','Blasco','Ojeda','Rengifo','A+',2,35,161,74,'1968-10-22 00:00:00',38,4,'Z',23,4,14,8),
(4324,'Francisca','Anacleto','Zuñiga','Pazos','A-',4,19,160,76,'1977-09-18 00:00:00',43,2,'Z',4,1,7,5),
(4325,'Borja','Cancio','Galindo','Cotazo','O+',4,8,160,64,'1962-02-13 00:00:00',40,2,'Z',23,4,16,4),
(4326,'Alcira','Bartolomé','Hincapie','Arce','A-',1,10,163,83,'1996-01-22 00:00:00',40,2,'D',14,4,12,1),
(4327,'Arcadia','Alarico','Castaño','Giraldo','B-',3,31,175,53,'1997-08-30 00:00:00',37,1,'D',11,1,4,3),
(4328,'Amadeo','Borja','Rueda','Melo','A+',3,3,175,60,'1991-10-24 00:00:00',39,2,'Z',22,2,15,4),
(4329,'Basilio','Arcadia','Cortes','Cuevas','O+',1,23,162,67,'1965-08-07 00:00:00',40,3,'Z',21,4,9,2),
(4330,'Gema','Alarico','Zuluaga','Cotazo','B-',4,2,174,82,'1981-09-02 00:00:00',41,1,'Z',24,1,3,4),
(4331,'Carol','Anacleto','Arce','Gutierrez','A+',1,24,176,88,'1975-04-02 00:00:00',42,3,'D',12,7,7,8),
(4332,'Alison','Dalma','Millan','Millan','A+',4,1,165,76,'1968-12-13 00:00:00',38,3,'Z',12,1,13,6),
(4333,'Eunice','Arcadia','Ramirez','Delgado','B-',1,9,188,84,'1990-11-14 00:00:00',37,1,'D',24,2,8,1),
(4334,'Francisca','Alfredo','Burbano','Cifuentes','AB+',1,17,181,73,'1990-02-02 00:00:00',39,2,'Z',11,5,6,5),
(4335,'Blasco','Cipriano','Torres','Giraldo','AB+',2,10,174,65,'1997-01-18 00:00:00',39,4,'Z',6,4,14,4),
(4336,'Gema','Belisario','Ramirez','Micolta','O-',2,9,160,77,'1985-06-24 00:00:00',42,3,'D',21,5,16,4),
(4337,'Cleto','Cancio','Caicedo','Riascos','O-',2,31,181,54,'1978-02-16 00:00:00',43,1,'D',9,4,8,5),
(4338,'Arnulfo','Felisa','Castillo','Vidal','AB-',4,19,188,62,'1970-03-06 00:00:00',37,2,'D',15,5,7,1),
(4339,'Adelaida','Benito','Millan','Tobar','B+',1,27,189,84,'1965-10-27 00:00:00',43,1,'D',1,6,9,8),
(4340,'Blasco','Cloe','Fuerte','Gutierrez','A-',4,36,188,70,'1960-07-22 00:00:00',36,1,'Z',24,2,4,4),
(4341,'Felisa','Bruna','Giraldo','Delgado','O-',1,26,181,50,'1982-02-11 00:00:00',39,4,'Z',7,6,14,4),
(4342,'Bruna','Antonio','Fuerte','Murillo','A-',2,29,165,59,'1998-10-29 00:00:00',41,3,'D',5,6,6,4),
(4343,'Benicio','Delma','Fuerte','Mina','AB-',1,6,178,57,'1998-08-14 00:00:00',38,2,'D',6,7,8,5),
(4344,'Amaya','Belisa','Polanco','Riascos','B-',3,1,181,66,'1984-02-22 00:00:00',40,4,'Z',18,1,1,3),
(4345,'Atilano','Alexis','Astudillo','Vidal','O+',1,2,184,80,'1989-12-21 00:00:00',39,2,'Z',25,4,14,5),
(4346,'Bartolomé','Belisario','Narvaez','Micolta','O-',1,31,163,59,'1989-12-16 00:00:00',42,1,'D',17,5,7,4),
(4347,'Adolfo','Crisanto','Ordoñez','Vidal','O-',3,3,189,87,'1982-05-13 00:00:00',40,1,'D',16,7,3,4),
(4348,'Alison','Florinda','Velasquez','Jimenez','AB+',4,14,188,60,'1969-04-11 00:00:00',40,1,'Z',10,7,12,8),
(4349,'Bruna','Emily','Castaño','Noriega','AB+',1,26,160,65,'1992-06-18 00:00:00',42,2,'Z',6,3,14,7),
(4350,'Audrey','Aquilino','Cotazo','Zuluaga','B-',3,7,182,81,'1984-05-30 00:00:00',42,4,'D',10,5,4,3),
(4351,'Blasco','Atilano','Libreros','Delgado','A-',2,30,169,80,'1989-05-23 00:00:00',39,4,'D',13,1,8,1),
(4352,'Custodio','Boleslao','Zapata','Garces','B-',2,14,179,78,'1970-02-16 00:00:00',36,4,'D',11,3,7,7),
(4353,'Eunice','Antonio','Micolta','Escarria','A+',4,30,161,59,'1975-10-14 00:00:00',42,1,'D',16,2,16,3),
(4354,'Arcadia','Gema','Soto','Cortes','A+',3,26,164,57,'1975-05-03 00:00:00',41,4,'Z',14,2,8,2),
(4355,'Angela','Cloe','Caicedo','Cotazo','B+',2,13,176,62,'1997-02-15 00:00:00',38,1,'D',1,6,17,7),
(4356,'Dolores','Graciela','Escarria','Rueda','AB+',2,22,186,60,'1987-03-30 00:00:00',43,1,'D',20,2,4,7),
(4357,'Alfonso','Adolfo','Agudelo','Noriega','O-',4,16,174,73,'1988-01-24 00:00:00',40,1,'D',17,4,8,5),
(4358,'Alcira','Azanias','Bermudez','Rengifo','AB-',2,30,169,69,'1997-06-17 00:00:00',41,4,'Z',8,7,10,4),
(4359,'Alison','Benicio','Zuluaga','Bermudez','O-',4,9,163,79,'1987-07-04 00:00:00',38,3,'D',19,3,8,1),
(4360,'Bartolomé','Audrey','Tobon','Suarez','B+',2,37,183,62,'1986-01-15 00:00:00',39,3,'Z',6,1,2,7),
(4361,'Eunice','Custodio','Tobar','Cuevas','B-',1,20,181,84,'1962-09-21 00:00:00',42,3,'Z',24,6,10,5),
(4362,'Avelina','Blanca','Giraldo','Micolta','B+',2,40,175,85,'1973-01-17 00:00:00',38,4,'D',12,1,15,1),
(4363,'Avelina','Audrey','Hincapie','Perea','B+',3,36,174,87,'1967-01-03 00:00:00',39,2,'D',10,3,1,1),
(4364,'Alison','Adelaida','Castillo','Murillo','AB-',2,12,183,51,'1964-04-09 00:00:00',40,1,'Z',16,1,10,1),
(4365,'Bruna','Benito','Barrera','Noriega','AB-',1,21,161,87,'1984-08-26 00:00:00',39,4,'D',23,5,12,3),
(4366,'Alfredo','Arcadia','Ordoñez','Uribe','O-',4,40,167,56,'1963-11-28 00:00:00',38,2,'D',1,4,13,5),
(4367,'Dolores','Casiano','Lopez','Burbano','AB+',1,28,162,72,'1975-06-10 00:00:00',39,4,'D',15,1,7,5),
(4368,'Cancio','Agustín','Robles','Cortes','A-',1,26,180,67,'1989-11-16 00:00:00',41,4,'D',9,4,10,7),
(4369,'Delma','Eunice','Hincapie','Garces','A-',3,29,171,76,'1969-03-31 00:00:00',37,4,'Z',25,4,3,3),
(4370,'Graciela','Casiano','Jimenez','Tobon','AB-',1,29,169,66,'1970-05-12 00:00:00',37,4,'D',25,1,17,1),
(4371,'Carmelo','Benicio','Polanco','Millan','A+',4,15,179,80,'1961-07-10 00:00:00',43,4,'D',3,6,4,3),
(4372,'Blanca','Audrey','Garces','Ojeda','A+',3,27,182,86,'1969-02-15 00:00:00',40,4,'D',5,5,11,3),
(4373,'Borja','Avelina','Ryes','Micolta','A+',2,25,188,88,'1986-04-22 00:00:00',36,1,'D',7,7,8,7),
(4374,'Adelaida','Basilio','Zuñiga','Millan','A-',1,19,174,85,'1987-04-11 00:00:00',38,4,'D',5,4,12,7),
(4375,'Belisa','Erina','Burbano','Burbano','A-',2,22,185,55,'1994-04-01 00:00:00',42,3,'Z',7,1,2,8),
(4376,'Agustín','Asael','Millan','Astudillo','B-',4,42,183,53,'1978-02-27 00:00:00',38,4,'Z',10,6,3,1),
(4377,'Erina','Alfonso','Estrada','Peña','O+',2,17,187,61,'1981-10-16 00:00:00',43,3,'D',21,2,13,1),
(4378,'Atilano','Francisca','Alomia','Guevara','A-',4,12,181,87,'1978-03-10 00:00:00',43,4,'D',14,5,12,1),
(4379,'Audrey','Agata','Ryes','Mina','A-',4,25,189,85,'1982-10-09 00:00:00',38,3,'D',20,5,10,7),
(4380,'Dulcinea','Cleto','Loaiza','Arce','B-',1,27,161,69,'1962-11-28 00:00:00',36,2,'Z',14,7,14,8),
(4381,'Florinda','Audrey','Caicedo','Uribe','A+',1,5,185,72,'1983-04-16 00:00:00',39,4,'Z',7,6,1,5),
(4382,'Baldomero','Adelio','Barcenas','Giraldo','O+',2,41,187,61,'1983-10-15 00:00:00',36,1,'Z',5,7,1,2),
(4383,'Custodio','Graciela','Barcenas','Alomia','AB+',1,33,171,68,'1988-08-07 00:00:00',41,1,'Z',4,1,14,1),
(4384,'Eunice','Belisario','Polanco','Melo','A-',4,18,169,52,'1985-02-25 00:00:00',37,3,'Z',19,7,12,6),
(4385,'Emily','Cancio','Cadena','Castillo','AB-',2,11,173,85,'1993-05-13 00:00:00',39,1,'Z',23,4,3,6),
(4386,'Alexis','Aquilino','Robles','Alomia','B-',3,37,173,54,'1966-01-31 00:00:00',39,2,'Z',5,4,7,6),
(4387,'Agustín','Cloe','Barrera','Arenas','B+',1,14,185,65,'1984-05-31 00:00:00',37,1,'D',20,6,12,6),
(4388,'Delma','Benicio','Lopez','Ramirez','AB+',2,3,188,52,'1983-07-11 00:00:00',38,4,'Z',16,1,16,5),
(4389,'Anacleto','Blanca','Castaño','Cortes','AB-',2,37,187,50,'1971-01-11 00:00:00',36,1,'Z',25,3,9,1),
(4390,'Dalma','Atilano','Lopez','Ordoñez','B+',1,22,162,68,'1971-09-04 00:00:00',39,2,'Z',13,4,7,4),
(4391,'Erina','Agata','Mina','Estrada','AB-',1,15,175,66,'1991-12-25 00:00:00',43,4,'D',16,7,3,7),
(4392,'Arcadia','Adelaida','Castillo','Estrada','B+',4,20,163,80,'1998-03-23 00:00:00',39,1,'D',20,1,2,4),
(4393,'Crisanto','Dulcinea','Perea','Ryes','AB+',3,23,175,68,'1981-09-12 00:00:00',42,4,'D',16,6,15,8),
(4394,'Antonio','Cancio','Giraldo','Rueda','B-',4,18,180,56,'1963-07-11 00:00:00',41,3,'D',14,2,6,5),
(4395,'Adelio','Evelina','Riascos','Torres','AB-',2,20,165,79,'1990-11-24 00:00:00',40,1,'D',2,1,8,8),
(4396,'Erina','Alcira','Narvaez','Hoyos','O+',4,22,164,51,'1998-12-07 00:00:00',40,3,'Z',10,6,5,7),
(4397,'Dolores','Alison','Zapata','Fuerte','B+',1,10,187,76,'1965-06-03 00:00:00',39,1,'D',17,6,13,1),
(4398,'Adelio','Adolfo','Burbano','Hoyos','A-',1,10,178,81,'1974-03-24 00:00:00',38,1,'D',21,4,13,6),
(4399,'Asael','Amaya','Hincapie','Cadena','A+',3,34,173,56,'1982-02-15 00:00:00',38,4,'Z',16,4,15,5),
(4400,'Cloe','Antonio','Robles','Ocampo','A-',4,13,160,51,'1966-12-26 00:00:00',42,4,'D',4,1,3,1),
(4401,'Alfonso','Bartolomé','Torres','Vidal','A+',3,4,173,71,'1962-12-17 00:00:00',42,3,'Z',6,4,2,8),
(4402,'Armando','Gema','Hincapie','Galindo','B+',3,23,179,73,'1972-11-24 00:00:00',38,2,'D',1,6,13,6),
(4403,'Cancio','Berta','Ordoñez','Vidal','AB-',1,14,178,83,'1969-10-05 00:00:00',36,1,'Z',17,7,10,1),
(4404,'Boleslao','Bruna','Astudillo','Mina','A-',4,29,160,65,'1981-08-21 00:00:00',38,1,'D',11,2,2,3),
(4405,'Bruno','Adelaida','Torres','Cortes','B-',3,33,163,75,'1990-12-06 00:00:00',42,1,'D',6,3,7,2),
(4406,'Audrey','Azanias','Rivera','Estrada','AB-',4,12,173,68,'1997-02-24 00:00:00',39,1,'D',22,2,16,2),
(4407,'Florinda','Custodio','Narvaez','Narvaez','A-',2,4,187,78,'1977-06-13 00:00:00',39,1,'D',15,5,5,3),
(4408,'Carmelo','Anibal','Soto','Cifuentes','O+',1,10,185,76,'1961-12-26 00:00:00',38,3,'D',25,7,14,2),
(4409,'Atilano','Emily','Peña','Mina','B-',2,1,165,89,'1988-04-07 00:00:00',41,3,'D',21,5,13,7),
(4410,'Casiano','Amaya','Loaiza','Libreros','B+',4,36,182,90,'1981-09-24 00:00:00',37,1,'Z',3,1,15,8),
(4411,'Agustín','Azanias','Pazos','Fuerte','O-',3,5,167,77,'1977-05-19 00:00:00',42,4,'D',20,7,16,5),
(4412,'Basilio','Amadeo','Caicedo','Cadena','B+',2,1,161,73,'1980-02-07 00:00:00',38,2,'Z',5,3,7,8),
(4413,'Gema','Atilano','Zuluaga','Castaño','O-',4,9,188,64,'1989-02-28 00:00:00',39,2,'D',20,7,2,5),
(4414,'Anibal','Alcira','Cortes','Pazos','B-',3,23,176,70,'1979-11-24 00:00:00',42,1,'Z',1,3,2,4),
(4415,'Borja','Azanias','Micolta','Escarria','O+',2,10,169,77,'1990-11-21 00:00:00',37,3,'Z',25,7,5,6),
(4416,'Belisario','Anibal','Ojeda','Perea','AB+',4,7,160,73,'1977-07-30 00:00:00',40,2,'D',13,4,3,2),
(4417,'Benito','Alcira','Agudelo','Vidal','O+',3,40,188,86,'1983-02-03 00:00:00',38,2,'Z',3,1,11,4),
(4418,'Alfredo','Berta','Loaiza','Rengifo','O-',4,30,181,51,'1985-06-01 00:00:00',41,3,'D',12,4,10,8),
(4419,'Amaya','Anibal','Zambrano','Perea','O-',3,3,160,71,'1998-07-06 00:00:00',42,4,'D',18,1,2,3),
(4420,'Alfredo','Emily','Barrera','Uribe','AB+',4,40,190,52,'1988-08-02 00:00:00',39,4,'D',10,4,4,1),
(4421,'Alarico','Blanca','Cifuentes','Tobar','A-',4,14,178,74,'1960-11-04 00:00:00',37,2,'Z',22,2,17,2),
(4422,'Alfonso','Cancio','Ramirez','Ryes','B+',2,23,185,66,'1977-09-14 00:00:00',36,3,'D',18,6,10,5),
(4423,'Asael','Custodio','Zuñiga','Lopez','O-',4,17,166,54,'1994-03-10 00:00:00',39,1,'D',12,4,5,7),
(4424,'Amaya','Adelio','Astudillo','Cortes','B-',2,7,170,85,'1973-03-14 00:00:00',40,2,'Z',13,3,6,8),
(4425,'Arcadia','Baldomero','Astudillo','Zapata','O+',3,35,185,78,'1996-10-07 00:00:00',42,3,'D',22,3,15,3),
(4426,'Avelina','Amadis','Noriega','Lopez','B+',3,26,183,88,'1978-06-09 00:00:00',37,3,'Z',15,3,16,5),
(4427,'Adelaida','Emily','Cortes','Torres','O-',4,18,161,64,'1972-01-27 00:00:00',37,1,'D',4,5,5,8),
(4428,'Armando','Catón','Diaz','Zuluaga','AB+',3,1,181,75,'1966-10-31 00:00:00',39,4,'D',21,3,6,6),
(4429,'Alcira','Eunice','Arenas','Uribe','B+',3,22,184,61,'1977-01-02 00:00:00',43,3,'D',4,1,13,2),
(4430,'Azanias','Casiano','Giraldo','Zuñiga','B-',2,25,182,74,'1970-09-03 00:00:00',43,3,'D',15,3,9,6),
(4431,'Blasco','Cloe','Libreros','Vidal','A+',4,28,169,78,'1964-03-03 00:00:00',36,2,'Z',25,1,14,5),
(4432,'Amaya','Belisario','Noriega','Rueda','B+',1,25,175,84,'1988-12-08 00:00:00',43,1,'D',1,5,10,6),
(4433,'Cancio','Crisanto','Pazos','Ramirez','A+',3,13,186,50,'1978-11-01 00:00:00',39,1,'Z',4,2,3,4),
(4434,'Amadis','Erina','Cadena','Agudelo','A-',4,33,170,77,'1971-09-15 00:00:00',38,2,'Z',6,1,1,7),
(4435,'Casiano','Azanias','Robles','Astudillo','O+',4,30,173,56,'1994-05-19 00:00:00',42,1,'Z',1,6,11,2),
(4436,'Bartolomé','Atilano','Estrada','Hincapie','B-',3,2,190,75,'1969-07-03 00:00:00',38,2,'Z',9,4,2,2),
(4437,'Carmelo','Alexis','Rueda','Rengifo','B+',2,31,181,60,'1998-05-26 00:00:00',37,2,'D',20,6,2,8),
(4438,'Elea','Anacleto','Libreros','Soto','AB+',2,14,186,87,'1984-07-26 00:00:00',41,3,'D',21,2,8,3),
(4439,'Arnulfo','Agustín','Ryes','Murillo','AB-',2,2,168,88,'1963-09-18 00:00:00',39,1,'Z',8,2,10,8),
(4440,'Angela','Ambrosio','Saucedo','Millan','B-',2,31,188,87,'1969-09-17 00:00:00',43,4,'Z',6,3,1,5),
(4441,'Crisanto','Angela','Murillo','Millan','B-',1,10,173,70,'1995-11-26 00:00:00',40,1,'Z',24,1,12,4),
(4442,'Evelina','Armando','Castillo','Narvaez','A+',2,5,178,73,'1972-03-06 00:00:00',43,2,'D',10,2,11,6),
(4443,'Elisenda','Atilano','Ramirez','Robles','A+',1,22,176,56,'1970-02-12 00:00:00',42,1,'D',2,6,2,6),
(4444,'Casiano','Casiano','Uribe','Serrato','B+',1,7,182,54,'1969-05-26 00:00:00',38,1,'D',19,7,9,1),
(4445,'Gema','Delma','Barrera','Cotazo','A+',4,23,176,80,'1967-01-14 00:00:00',37,4,'D',15,2,4,7),
(4446,'Benito','Avelina','Micolta','Bermudez','B+',3,4,175,55,'1976-02-13 00:00:00',43,1,'D',6,3,7,2),
(4447,'Baldomero','Elea','Riascos','Delgado','A-',1,32,178,61,'1993-06-20 00:00:00',36,4,'Z',19,2,16,7),
(4448,'Crisanto','Audrey','Bermudez','Cifuentes','A-',4,33,165,83,'1977-12-19 00:00:00',42,2,'D',4,5,14,6),
(4449,'Elisenda','Casiano','Cortes','Serrato','A-',3,26,188,83,'1976-10-07 00:00:00',36,3,'Z',15,4,16,3),
(4450,'Berta','Blanca','Hincapie','Burbano','AB+',3,22,187,84,'1980-06-11 00:00:00',36,4,'Z',12,1,16,7),
(4451,'Alexis','Benicio','Melo','Gutierrez','B+',4,1,170,66,'1974-03-30 00:00:00',39,1,'D',19,6,15,8),
(4452,'Custodio','Clara','Ramirez','Serrato','AB+',4,21,173,90,'1994-03-12 00:00:00',36,2,'Z',8,7,2,3),
(4453,'Arcadia','Delma','Arce','Pazos','O+',2,13,182,64,'1982-05-10 00:00:00',43,4,'D',22,4,5,2),
(4454,'Adolfo','Azanias','Ryes','Jimenez','O+',2,41,182,62,'1995-01-04 00:00:00',41,3,'Z',11,3,16,6),
(4455,'Basilio','Benito','Gutierrez','Vidal','AB+',2,8,171,50,'1973-10-17 00:00:00',38,1,'D',5,4,17,3),
(4456,'Adolfo','Dolores','Burbano','Velasquez','B+',2,1,182,85,'1990-08-14 00:00:00',43,1,'Z',3,1,15,6),
(4457,'Carol','Antonio','Rivera','Hoyos','O+',1,5,187,83,'1982-02-16 00:00:00',41,1,'Z',20,3,11,6),
(4458,'Clara','Baldomero','Garces','Ordoñez','AB+',1,36,177,65,'1970-07-03 00:00:00',38,4,'D',12,5,3,6),
(4459,'Azanias','Elea','Melo','Torres','A+',1,23,171,54,'1994-10-14 00:00:00',36,1,'D',4,6,17,8),
(4460,'Bruno','Alfredo','Ramirez','Loaiza','A+',2,14,160,89,'1984-07-08 00:00:00',39,4,'Z',11,7,15,4),
(4461,'Agustín','Benicio','Jimenez','Millan','A+',4,21,171,85,'1989-05-15 00:00:00',41,4,'Z',19,3,4,8),
(4462,'Felisa','Agata','Lopez','Vidal','O-',4,20,169,87,'1968-10-27 00:00:00',42,4,'D',12,6,14,3),
(4463,'Aquilino','Adolfo','Peña','Rueda','O-',4,21,181,64,'1981-10-18 00:00:00',40,3,'D',2,6,2,8),
(4464,'Evelina','Borja','Tobar','Guevara','A+',1,23,182,84,'1983-08-25 00:00:00',40,4,'Z',23,6,11,6),
(4465,'Alfredo','Benicio','Riascos','Millan','B-',4,11,170,65,'1969-08-17 00:00:00',41,3,'Z',1,6,11,3),
(4466,'Adolfo','Alarico','Hoyos','Arenas','A+',4,23,171,64,'1965-05-29 00:00:00',41,1,'Z',12,1,3,6),
(4467,'Borja','Alexis','Mina','Barrera','O-',2,2,183,86,'1997-07-16 00:00:00',40,3,'D',22,3,11,8),
(4468,'Adelaida','Atilano','Saucedo','Narvaez','A+',2,29,186,88,'1989-03-18 00:00:00',37,2,'D',19,7,3,3),
(4469,'Evelina','Elisenda','Ordoñez','Zambrano','O-',4,12,161,85,'1988-05-09 00:00:00',39,2,'Z',25,1,3,3),
(4470,'Angela','Emily','Loaiza','Mina','O+',3,20,188,51,'1992-11-01 00:00:00',40,3,'Z',13,1,5,4),
(4471,'Elisenda','Carol','Cadena','Rivera','AB-',2,24,187,84,'1982-04-20 00:00:00',38,3,'Z',4,2,16,2),
(4472,'Berta','Benicio','Fuerte','Castaño','A-',4,7,167,77,'1966-03-10 00:00:00',40,1,'Z',20,4,12,1),
(4473,'Cleto','Adelio','Micolta','Cotazo','B+',4,31,184,90,'1991-12-12 00:00:00',37,3,'D',19,3,12,5),
(4474,'Audrey','Amaya','Garces','Ojeda','O+',3,35,190,51,'1961-05-25 00:00:00',40,2,'Z',14,1,12,4),
(4475,'Evelina','Blanca','Narvaez','Melo','A-',2,13,189,64,'1970-09-12 00:00:00',37,4,'D',6,4,14,2),
(4476,'Bartolomé','Catón','Serrato','Jimenez','O+',3,6,173,67,'1968-07-24 00:00:00',43,2,'Z',5,3,7,5),
(4477,'Anibal','Dulcinea','Hoyos','Micolta','A-',1,15,177,62,'1996-08-23 00:00:00',40,3,'Z',13,5,8,1),
(4478,'Clara','Adelaida','Rivera','Ordoñez','B+',2,41,189,71,'1971-11-21 00:00:00',42,3,'Z',14,1,16,8),
(4479,'Belisario','Alfonso','Torres','Estrada','AB+',1,1,184,53,'1967-03-12 00:00:00',38,2,'D',1,6,14,7),
(4480,'Bruno','Alfredo','Ryes','Gutierrez','B-',1,5,162,76,'1982-04-30 00:00:00',40,2,'Z',13,2,3,4),
(4481,'Felisa','Anacleto','Jimenez','Soto','O+',3,35,186,76,'1960-07-11 00:00:00',42,4,'D',16,3,10,5),
(4482,'Gema','Benito','Mina','Ramirez','B-',4,42,160,60,'1971-10-02 00:00:00',43,4,'D',16,5,17,2),
(4483,'Benicio','Cloe','Velasquez','Millan','AB+',3,6,167,52,'1987-04-28 00:00:00',38,4,'D',22,3,4,6),
(4484,'Baldomero','Elea','Murillo','Galindo','A-',1,27,171,76,'1973-12-03 00:00:00',43,3,'D',10,6,2,5),
(4485,'Alarico','Dulcinea','Pazos','Hincapie','O+',4,23,183,80,'1970-08-30 00:00:00',39,1,'Z',12,1,5,1),
(4486,'Alarico','Berta','Vidal','Libreros','A+',3,40,171,50,'1976-02-01 00:00:00',41,2,'D',10,1,12,7),
(4487,'Armando','Angela','Giraldo','Torres','AB-',3,4,184,65,'1988-10-19 00:00:00',43,4,'Z',1,4,13,1),
(4488,'Agata','Crisanto','Suarez','Libreros','A+',2,32,181,82,'1963-05-08 00:00:00',41,3,'Z',21,7,14,3),
(4489,'Bruno','Alarico','Guevara','Murillo','O+',1,25,181,61,'1993-12-02 00:00:00',39,4,'Z',8,7,16,8),
(4490,'Belisa','Angela','Noriega','Fuerte','O-',3,13,169,82,'1982-10-22 00:00:00',36,3,'Z',3,1,12,8),
(4491,'Alfredo','Angela','Ordoñez','Barrera','AB-',3,7,165,72,'1990-08-19 00:00:00',37,4,'Z',4,3,17,1),
(4492,'Alexis','Elea','Lopez','Saucedo','A-',1,27,172,79,'1987-08-21 00:00:00',37,4,'Z',1,3,6,5),
(4493,'Anacleto','Graciela','Ryes','Suarez','AB+',1,20,186,86,'1979-12-05 00:00:00',43,4,'D',16,3,4,7),
(4494,'Angela','Angela','Peña','Polanco','B-',2,36,163,53,'1982-03-13 00:00:00',37,4,'D',7,1,12,7),
(4495,'Armando','Angela','Agudelo','Bermudez','O-',4,7,185,73,'1981-05-13 00:00:00',42,3,'Z',6,4,10,5),
(4496,'Blasco','Dulcinea','Zambrano','Narvaez','B-',1,27,173,87,'1984-05-22 00:00:00',40,3,'D',13,6,10,4),
(4497,'Adelaida','Dulcinea','Diaz','Suarez','B-',1,3,183,58,'1975-09-10 00:00:00',42,1,'Z',10,2,15,8),
(4498,'Alarico','Amaya','Serrato','Guevara','O-',4,42,173,84,'1970-08-23 00:00:00',37,1,'D',21,2,13,7),
(4499,'Erina','Delma','Lopez','Diaz','A-',4,41,168,74,'1965-12-07 00:00:00',37,2,'Z',1,4,1,8),
(4500,'Alfredo','Antonio','Melo','Tobon','B-',3,15,190,65,'1965-10-14 00:00:00',36,2,'Z',8,3,4,8),
(4501,'Alfredo','Eunice','Caicedo','Libreros','A-',3,19,160,74,'1971-07-04 00:00:00',36,2,'D',17,7,15,4),
(4502,'Amadis','Amadis','Garces','Castillo','O+',3,37,190,60,'1994-08-26 00:00:00',38,4,'Z',22,6,4,4),
(4503,'Alexis','Borja','Narvaez','Tobon','B+',4,18,169,57,'1985-07-09 00:00:00',39,4,'Z',25,3,14,2),
(4504,'Alfonso','Eunice','Delgado','Cotazo','A+',2,42,166,60,'1968-06-26 00:00:00',39,2,'D',9,2,15,2),
(4505,'Gema','Belisario','Guevara','Velasquez','A-',2,2,169,79,'1991-04-26 00:00:00',41,1,'D',18,1,16,8),
(4506,'Alfonso','Evelina','Alomia','Robles','AB+',2,11,167,81,'1984-10-28 00:00:00',40,3,'D',11,3,7,3),
(4507,'Cloe','Benicio','Zuñiga','Zambrano','B-',1,24,162,90,'1971-11-17 00:00:00',36,1,'Z',24,3,2,4),
(4508,'Armando','Anibal','Hoyos','Escarria','A-',4,27,169,61,'1972-07-18 00:00:00',36,1,'Z',22,3,4,6),
(4509,'Anacleto','Evelina','Tobon','Ryes','A+',4,1,162,77,'1972-10-08 00:00:00',40,4,'D',24,6,9,8),
(4510,'Benicio','Crisanto','Polanco','Millan','A+',2,14,168,63,'1994-01-27 00:00:00',43,4,'Z',24,1,3,5),
(4511,'Florinda','Anibal','Burbano','Gutierrez','A-',1,40,171,52,'1960-12-22 00:00:00',37,1,'Z',17,5,8,5),
(4512,'Elisenda','Armando','Cifuentes','Micolta','B-',2,11,183,81,'1965-12-13 00:00:00',38,4,'Z',3,2,10,8),
(4513,'Carol','Catón','Micolta','Tobon','AB-',2,16,177,77,'1998-02-10 00:00:00',43,2,'D',12,4,7,2),
(4514,'Amadeo','Blasco','Tobar','Galindo','O-',1,20,164,60,'1997-05-12 00:00:00',42,4,'D',7,2,9,1),
(4515,'Alfredo','Ambrosio','Hoyos','Rivera','O+',2,7,187,55,'1974-08-15 00:00:00',43,4,'D',17,3,3,2),
(4516,'Dalma','Evelina','Murillo','Ryes','A-',2,28,177,82,'1978-04-16 00:00:00',40,2,'Z',18,1,1,3),
(4517,'Cleto','Elea','Cotazo','Ojeda','AB-',1,35,176,74,'1989-06-07 00:00:00',36,1,'Z',12,1,3,5),
(4518,'Blanca','Armando','Ocampo','Vidal','AB+',1,16,182,74,'1986-07-21 00:00:00',41,1,'D',2,4,16,3),
(4519,'Avelina','Bartolomé','Zapata','Guevara','B+',4,36,188,50,'1970-08-07 00:00:00',40,3,'D',3,7,9,2),
(4520,'Atilano','Borja','Libreros','Millan','B+',4,42,163,84,'1989-12-30 00:00:00',37,3,'D',6,2,11,3),
(4521,'Aquilino','Aquilino','Mina','Perea','O-',4,19,190,50,'1988-12-28 00:00:00',39,1,'Z',6,3,3,8),
(4522,'Emily','Carmelo','Arce','Arce','B+',4,42,175,88,'1993-02-28 00:00:00',42,1,'Z',3,4,8,6),
(4523,'Bruno','Bruno','Micolta','Zambrano','O+',3,38,183,63,'1994-11-05 00:00:00',36,4,'Z',10,7,2,7),
(4524,'Francisca','Arcadia','Rivera','Suarez','O+',2,37,185,77,'1973-03-13 00:00:00',42,1,'Z',4,7,15,8),
(4525,'Alexis','Delma','Ryes','Estrada','B+',1,3,185,74,'1990-04-08 00:00:00',43,2,'D',13,3,16,6),
(4526,'Adelio','Graciela','Agudelo','Zuñiga','O+',2,11,180,82,'1989-06-07 00:00:00',37,2,'Z',19,3,15,3),
(4527,'Arcadia','Atilano','Ordoñez','Tobon','B+',2,23,167,82,'1994-02-28 00:00:00',36,1,'Z',12,6,16,1),
(4528,'Amaya','Alarico','Fuerte','Robles','O+',3,39,189,81,'1986-12-01 00:00:00',36,2,'D',11,5,16,7),
(4529,'Carol','Amaya','Hincapie','Hoyos','O-',3,36,183,69,'1987-08-25 00:00:00',43,4,'D',8,6,11,3),
(4530,'Carol','Alarico','Zuluaga','Cadena','O+',1,13,170,87,'1997-11-20 00:00:00',43,2,'Z',11,2,9,8),
(4531,'Cleto','Cipriano','Cortes','Lopez','O+',2,14,179,78,'1960-06-25 00:00:00',39,2,'D',8,4,14,8),
(4532,'Bruna','Emily','Hincapie','Garces','AB-',4,28,164,86,'1998-11-07 00:00:00',41,2,'Z',5,6,12,7),
(4533,'Antonio','Azanias','Ocampo','Murillo','A+',3,20,165,85,'1998-10-01 00:00:00',40,2,'D',9,5,14,8),
(4534,'Cloe','Cloe','Diaz','Robles','O+',3,1,182,59,'1982-10-06 00:00:00',37,1,'D',20,6,14,4),
(4535,'Adelio','Amadeo','Ryes','Galindo','B-',2,20,163,86,'1962-03-09 00:00:00',38,2,'D',10,3,8,7),
(4536,'Elea','Agustín','Saucedo','Zambrano','O+',4,23,164,75,'1985-03-28 00:00:00',41,4,'D',8,1,12,5),
(4537,'Elea','Benicio','Soto','Micolta','A-',4,12,180,65,'1968-04-12 00:00:00',42,4,'D',13,4,17,3),
(4538,'Adelio','Baldomero','Noriega','Astudillo','B+',1,15,186,52,'1970-03-22 00:00:00',37,3,'Z',6,2,14,7),
(4539,'Ambrosio','Agustín','Loaiza','Delgado','O+',1,18,185,50,'1965-03-02 00:00:00',43,4,'D',25,5,11,6),
(4540,'Asael','Benicio','Diaz','Cortes','O-',3,6,162,56,'1997-05-26 00:00:00',36,2,'D',16,7,4,4),
(4541,'Carol','Elea','Cadena','Noriega','B-',3,36,171,81,'1977-09-18 00:00:00',39,2,'D',6,2,6,1),
(4542,'Graciela','Felisa','Millan','Burbano','AB+',3,21,179,69,'1978-09-22 00:00:00',40,2,'Z',12,5,6,6),
(4543,'Felisa','Dulcinea','Ryes','Narvaez','O+',1,3,183,59,'1972-03-25 00:00:00',43,3,'Z',8,3,13,1),
(4544,'Amaya','Basilio','Galindo','Micolta','A+',2,25,179,75,'1971-11-05 00:00:00',38,2,'D',25,5,16,8),
(4545,'Elea','Felisa','Castaño','Castaño','AB+',2,7,188,61,'1996-12-03 00:00:00',36,1,'D',18,4,6,7),
(4546,'Alexis','Borja','Pazos','Ocampo','B+',1,4,179,70,'1995-09-14 00:00:00',36,4,'Z',1,5,11,7),
(4547,'Amadis','Amaya','Ojeda','Zuñiga','B+',4,39,162,89,'1967-08-02 00:00:00',39,1,'Z',17,3,16,4),
(4548,'Bruna','Florinda','Peña','Cadena','B+',2,8,177,85,'1965-08-26 00:00:00',41,1,'D',17,5,4,2),
(4549,'Alfredo','Graciela','Zambrano','Arce','O-',3,21,164,80,'1961-09-12 00:00:00',40,4,'D',16,2,11,4),
(4550,'Bruno','Graciela','Mina','Ocampo','O+',1,17,170,90,'1967-12-08 00:00:00',43,4,'Z',16,7,6,7),
(4551,'Eunice','Eunice','Barcenas','Uribe','A-',1,39,170,50,'1974-03-17 00:00:00',43,3,'D',6,4,3,6),
(4552,'Dalma','Adolfo','Millan','Astudillo','O-',3,8,162,56,'1973-07-20 00:00:00',36,4,'D',6,4,10,2),
(4553,'Aquilino','Catón','Zuñiga','Galindo','AB-',1,32,175,61,'1980-11-07 00:00:00',41,4,'D',4,1,16,4),
(4554,'Elea','Alfredo','Ryes','Tobon','A+',1,26,182,56,'1970-11-07 00:00:00',38,4,'Z',1,1,9,2),
(4555,'Arcadia','Carol','Velasquez','Gutierrez','AB-',3,1,167,85,'1970-03-23 00:00:00',41,4,'D',20,1,16,1),
(4556,'Alarico','Bartolomé','Murillo','Tobar','A-',2,26,170,70,'1995-12-10 00:00:00',40,3,'D',11,3,17,3),
(4557,'Alfredo','Alcira','Fuerte','Loaiza','O+',1,11,172,65,'1977-04-06 00:00:00',41,3,'Z',20,5,10,6),
(4558,'Cipriano','Arnulfo','Robles','Noriega','O-',3,24,161,66,'1978-01-05 00:00:00',39,4,'D',18,1,3,7),
(4559,'Alcira','Alfonso','Peña','Loaiza','A+',3,38,188,83,'1973-08-16 00:00:00',36,2,'Z',4,4,5,2),
(4560,'Erina','Felisa','Mina','Torres','O-',1,27,176,61,'1984-02-23 00:00:00',43,2,'D',19,3,16,7),
(4561,'Alcira','Anacleto','Cifuentes','Bermudez','AB-',3,7,177,54,'1982-11-22 00:00:00',37,4,'Z',13,1,17,6),
(4562,'Cloe','Alcira','Libreros','Castillo','O-',2,31,176,55,'1993-04-26 00:00:00',42,4,'D',10,5,13,8),
(4563,'Armando','Amadeo','Pazos','Loaiza','B-',4,13,160,53,'1975-06-26 00:00:00',41,2,'Z',2,2,10,6),
(4564,'Casiano','Francisca','Rengifo','Micolta','A+',3,16,179,81,'1986-03-22 00:00:00',38,2,'D',21,7,3,3),
(4565,'Custodio','Gema','Guevara','Hoyos','AB+',2,14,189,72,'1990-02-26 00:00:00',36,1,'Z',21,7,1,2),
(4566,'Blanca','Amaya','Soto','Zapata','AB+',1,16,175,82,'1995-04-17 00:00:00',37,4,'D',6,7,7,8),
(4567,'Adelaida','Agustín','Peña','Tobon','O-',3,1,181,59,'1966-12-29 00:00:00',42,3,'D',13,3,15,6),
(4568,'Catón','Elisenda','Libreros','Ryes','A+',3,1,189,67,'1971-11-10 00:00:00',39,4,'D',16,5,13,2),
(4569,'Borja','Amadeo','Hoyos','Galindo','O+',4,22,160,70,'1983-10-07 00:00:00',42,2,'D',12,1,9,7),
(4570,'Gema','Belisario','Uribe','Galindo','AB-',4,14,171,62,'1971-02-15 00:00:00',41,4,'Z',10,1,5,3),
(4571,'Carol','Alexis','Zapata','Estrada','AB+',1,41,186,51,'1963-10-25 00:00:00',37,1,'Z',6,3,17,1),
(4572,'Agata','Blanca','Garces','Robles','O+',3,38,167,74,'1992-09-06 00:00:00',37,2,'D',8,3,17,7),
(4573,'Asael','Arcadia','Astudillo','Garces','B-',3,37,181,85,'1979-03-14 00:00:00',38,3,'Z',20,4,7,1),
(4574,'Alarico','Alexis','Soto','Zambrano','O-',4,39,181,56,'1991-02-13 00:00:00',39,3,'Z',21,7,13,1),
(4575,'Arnulfo','Emily','Garces','Bermudez','O-',4,7,166,58,'1991-07-26 00:00:00',41,3,'Z',11,2,2,5),
(4576,'Dolores','Dolores','Suarez','Diaz','AB-',2,11,174,74,'1996-04-18 00:00:00',40,2,'Z',18,6,13,7),
(4577,'Blasco','Amadis','Burbano','Micolta','O+',4,20,183,77,'1977-08-12 00:00:00',38,4,'Z',4,2,11,4),
(4578,'Graciela','Graciela','Lopez','Saucedo','O-',3,31,171,65,'1960-04-14 00:00:00',36,1,'Z',5,6,14,3),
(4579,'Crisanto','Blasco','Zapata','Tobon','AB+',1,41,177,73,'1990-10-18 00:00:00',41,2,'Z',16,6,13,1),
(4580,'Adelio','Emily','Garces','Saucedo','AB-',3,17,177,81,'1964-10-28 00:00:00',36,1,'D',23,3,15,8),
(4581,'Anacleto','Elisenda','Robles','Mina','O-',4,42,179,84,'1967-01-20 00:00:00',39,3,'D',23,2,3,1),
(4582,'Felisa','Baldomero','Torres','Uribe','B+',1,36,162,79,'1961-05-28 00:00:00',41,4,'Z',21,3,9,5),
(4583,'Amadis','Catón','Cifuentes','Cortes','AB+',3,1,189,59,'1998-09-01 00:00:00',40,2,'Z',3,2,16,6),
(4584,'Evelina','Clara','Uribe','Barrera','A+',4,35,170,86,'1969-09-13 00:00:00',42,1,'D',18,2,3,1),
(4585,'Armando','Baldomero','Tobon','Cadena','A-',1,36,182,78,'1987-07-28 00:00:00',37,1,'Z',24,2,7,8),
(4586,'Crisanto','Aquilino','Cadena','Astudillo','O-',4,5,178,78,'1989-01-15 00:00:00',43,4,'D',11,7,6,8),
(4587,'Berta','Bruna','Cifuentes','Giraldo','B-',1,4,181,79,'1981-02-14 00:00:00',41,3,'Z',17,7,2,8),
(4588,'Adelio','Belisario','Castaño','Hoyos','AB+',2,14,183,61,'1976-03-03 00:00:00',38,2,'D',5,1,11,3),
(4589,'Atilano','Adolfo','Hincapie','Tobar','A+',2,8,171,53,'1963-07-17 00:00:00',39,1,'D',21,3,15,7),
(4590,'Benicio','Cancio','Diaz','Ocampo','AB-',4,21,166,76,'1973-12-12 00:00:00',42,4,'Z',5,5,8,7),
(4591,'Francisca','Alfonso','Barcenas','Hincapie','O-',1,9,187,50,'1986-02-11 00:00:00',37,1,'Z',25,1,2,3),
(4592,'Benito','Borja','Giraldo','Guevara','AB+',3,4,184,53,'1985-09-13 00:00:00',41,2,'Z',23,2,4,4),
(4593,'Emily','Dulcinea','Soto','Zambrano','B+',1,38,161,83,'1981-07-22 00:00:00',38,2,'Z',13,1,11,5),
(4594,'Arnulfo','Boleslao','Mina','Peña','B-',3,22,161,66,'1985-03-14 00:00:00',37,1,'Z',8,3,15,7),
(4595,'Florinda','Benito','Pazos','Escarria','AB+',3,42,170,79,'1973-08-06 00:00:00',41,1,'Z',13,6,1,6),
(4596,'Alfonso','Alfredo','Zambrano','Mina','AB-',4,13,188,71,'1971-09-05 00:00:00',39,3,'D',23,2,14,6),
(4597,'Dulcinea','Blanca','Burbano','Gutierrez','AB+',2,29,182,77,'1980-05-02 00:00:00',42,4,'Z',7,6,17,3),
(4598,'Adelaida','Azanias','Barrera','Zapata','AB+',3,28,190,66,'1985-05-06 00:00:00',43,1,'D',19,3,7,6),
(4599,'Blasco','Alarico','Barrera','Zuluaga','AB-',4,31,186,87,'1965-03-25 00:00:00',37,4,'Z',22,5,15,7),
(4600,'Alison','Benicio','Arce','Hincapie','AB+',3,33,190,54,'1962-06-28 00:00:00',37,4,'D',7,5,12,2),
(4601,'Benicio','Berta','Zuluaga','Saucedo','A+',2,40,180,53,'1968-02-06 00:00:00',40,4,'Z',1,3,10,8),
(4602,'Amadis','Cleto','Gutierrez','Fuerte','AB+',1,4,187,61,'1986-04-20 00:00:00',37,1,'Z',10,1,3,2),
(4603,'Dulcinea','Avelina','Bermudez','Cortes','A-',4,7,176,74,'1989-11-24 00:00:00',40,3,'Z',21,5,16,7),
(4604,'Alison','Dulcinea','Soto','Giraldo','O+',2,40,176,61,'1962-03-27 00:00:00',43,3,'Z',12,5,4,4),
(4605,'Cloe','Alexis','Zuluaga','Arenas','A+',2,16,167,57,'1960-02-17 00:00:00',40,2,'Z',23,7,6,7),
(4606,'Armando','Catón','Melo','Garces','B-',2,14,163,60,'1994-06-08 00:00:00',43,1,'Z',23,2,8,5),
(4607,'Aquilino','Florinda','Ojeda','Rueda','B+',4,29,184,54,'1993-05-31 00:00:00',38,4,'Z',13,3,16,6),
(4608,'Azanias','Belisario','Soto','Melo','A-',2,1,190,87,'1984-01-01 00:00:00',41,4,'D',15,5,4,3),
(4609,'Anibal','Gema','Cortes','Astudillo','AB+',2,4,181,65,'1988-09-22 00:00:00',37,1,'D',20,1,15,5),
(4610,'Arcadia','Amaya','Torres','Galindo','AB+',4,2,163,87,'1969-07-11 00:00:00',38,1,'D',13,4,10,4),
(4611,'Audrey','Atilano','Uribe','Murillo','A+',4,10,165,76,'1966-05-27 00:00:00',39,2,'Z',22,4,3,1),
(4612,'Basilio','Catón','Garces','Ocampo','AB+',4,19,163,61,'1968-01-23 00:00:00',39,1,'D',20,1,9,5),
(4613,'Crisanto','Crisanto','Ocampo','Ocampo','O-',2,14,164,56,'1962-05-31 00:00:00',38,2,'D',13,1,6,3),
(4614,'Aquilino','Carmelo','Burbano','Serrato','B+',3,36,167,65,'1989-06-26 00:00:00',37,1,'Z',24,3,12,7),
(4615,'Clara','Agata','Ramirez','Astudillo','O-',2,38,177,54,'1992-11-03 00:00:00',36,4,'D',3,3,4,4),
(4616,'Dolores','Dalma','Ocampo','Loaiza','AB-',4,1,179,52,'1992-05-11 00:00:00',36,2,'Z',23,3,7,3),
(4617,'Adelio','Arcadia','Ryes','Barrera','O+',2,22,182,76,'1974-01-04 00:00:00',39,4,'Z',18,3,14,3),
(4618,'Avelina','Ambrosio','Zuñiga','Ojeda','AB+',4,40,171,87,'1969-04-04 00:00:00',42,2,'Z',17,6,7,8),
(4619,'Bartolomé','Berta','Velasquez','Riascos','AB+',2,37,179,70,'1994-10-17 00:00:00',37,1,'D',13,1,6,4),
(4620,'Alarico','Emily','Cotazo','Arce','O+',1,34,165,53,'1991-04-18 00:00:00',43,4,'Z',2,2,1,4),
(4621,'Amaya','Erina','Lopez','Caicedo','A-',1,13,177,68,'1960-10-15 00:00:00',41,1,'D',6,5,11,6),
(4622,'Alison','Emily','Cuevas','Rengifo','AB+',2,5,176,83,'1998-07-28 00:00:00',40,3,'Z',21,5,12,8),
(4623,'Amadeo','Dalma','Zapata','Cifuentes','AB-',4,32,163,56,'1997-12-03 00:00:00',38,3,'Z',1,5,11,5),
(4624,'Audrey','Alarico','Galindo','Arenas','AB+',1,8,178,76,'1976-06-09 00:00:00',39,4,'D',1,4,1,6),
(4625,'Audrey','Dalma','Libreros','Noriega','AB+',2,3,170,52,'1973-11-28 00:00:00',36,1,'D',6,2,14,5),
(4626,'Anibal','Alcira','Libreros','Soto','AB-',4,14,176,69,'1960-12-03 00:00:00',42,1,'D',15,5,8,3),
(4627,'Dolores','Blasco','Estrada','Ramirez','O+',4,13,161,68,'1982-12-06 00:00:00',36,1,'Z',13,4,7,8),
(4628,'Delma','Felisa','Rivera','Perea','O-',2,9,173,56,'1983-09-20 00:00:00',40,4,'Z',11,2,16,5),
(4629,'Boleslao','Amadis','Zambrano','Uribe','A-',1,4,175,61,'1991-02-18 00:00:00',38,4,'Z',21,6,17,2),
(4630,'Agustín','Basilio','Noriega','Guevara','O+',3,6,170,53,'1963-02-11 00:00:00',41,2,'Z',8,4,4,5),
(4631,'Audrey','Anibal','Garces','Fuerte','A-',4,20,178,77,'1973-09-16 00:00:00',40,1,'Z',23,3,6,1),
(4632,'Belisario','Delma','Cifuentes','Uribe','AB-',3,24,175,67,'1971-01-26 00:00:00',42,4,'Z',17,6,11,4),
(4633,'Dulcinea','Benito','Cifuentes','Riascos','A-',1,2,188,63,'1989-07-27 00:00:00',38,2,'Z',13,1,3,2),
(4634,'Anacleto','Dolores','Cadena','Cifuentes','AB+',3,11,170,61,'1981-07-10 00:00:00',43,1,'Z',7,7,17,4),
(4635,'Crisanto','Belisa','Lopez','Hincapie','B+',4,5,187,73,'1981-04-17 00:00:00',40,3,'Z',14,2,9,7),
(4636,'Amaya','Adelio','Castaño','Jimenez','O+',4,37,175,89,'1986-07-10 00:00:00',40,1,'Z',12,4,11,7),
(4637,'Florinda','Belisario','Cortes','Hoyos','A-',2,37,164,87,'1961-07-25 00:00:00',41,4,'Z',13,3,14,6),
(4638,'Adolfo','Ambrosio','Guevara','Hoyos','O+',1,39,174,71,'1972-05-27 00:00:00',36,4,'D',2,6,9,7),
(4639,'Blasco','Benito','Alomia','Escarria','O-',2,40,173,73,'1996-07-14 00:00:00',40,1,'D',17,5,14,5),
(4640,'Dulcinea','Felisa','Barrera','Gutierrez','AB+',3,36,162,66,'1992-10-01 00:00:00',41,1,'Z',23,5,13,4),
(4641,'Benito','Baldomero','Rueda','Caicedo','A+',4,36,190,78,'1985-10-07 00:00:00',36,2,'D',1,5,4,8),
(4642,'Casiano','Amadis','Ordoñez','Riascos','O+',1,21,171,61,'1960-12-05 00:00:00',43,4,'Z',15,6,6,1),
(4643,'Anacleto','Carol','Ryes','Millan','O+',4,41,163,52,'1966-11-27 00:00:00',36,1,'Z',1,5,9,8),
(4644,'Crisanto','Crisanto','Robles','Galindo','A-',2,24,164,73,'1974-01-05 00:00:00',38,3,'D',14,3,7,6),
(4645,'Adelio','Alfonso','Galindo','Cotazo','AB-',4,6,160,68,'1997-09-06 00:00:00',37,4,'D',16,7,1,5),
(4646,'Adolfo','Cloe','Rengifo','Polanco','A+',3,26,188,72,'1972-10-09 00:00:00',41,3,'D',23,5,12,4),
(4647,'Borja','Blanca','Castillo','Vidal','B+',1,18,176,68,'1980-06-30 00:00:00',37,2,'Z',22,4,3,4),
(4648,'Evelina','Berta','Barcenas','Cuevas','O+',1,30,175,58,'1982-11-02 00:00:00',37,2,'D',4,3,14,6),
(4649,'Ambrosio','Anibal','Ocampo','Ocampo','A+',1,19,185,53,'1964-10-10 00:00:00',41,1,'Z',7,4,17,2),
(4650,'Erina','Armando','Caicedo','Ordoñez','AB-',4,29,187,74,'1985-10-09 00:00:00',40,4,'D',15,4,17,7),
(4651,'Bruno','Anibal','Melo','Bermudez','AB-',1,38,177,87,'1987-06-08 00:00:00',38,4,'Z',20,4,13,3),
(4652,'Audrey','Cleto','Zambrano','Pazos','B-',3,8,177,79,'1969-05-08 00:00:00',42,4,'Z',20,6,12,7),
(4653,'Borja','Baldomero','Barrera','Rivera','B-',3,26,164,83,'1961-01-13 00:00:00',38,4,'Z',14,3,2,5),
(4654,'Anibal','Cloe','Rengifo','Estrada','A+',3,32,178,82,'1960-07-12 00:00:00',38,2,'Z',12,6,3,1),
(4655,'Agustín','Crisanto','Astudillo','Rueda','A+',1,21,168,88,'1964-12-22 00:00:00',37,3,'D',5,6,1,1),
(4656,'Bruno','Atilano','Alomia','Alomia','A+',2,26,169,67,'1968-07-05 00:00:00',37,2,'D',12,7,9,5),
(4657,'Alexis','Borja','Cotazo','Riascos','B-',3,14,179,59,'1984-08-06 00:00:00',38,3,'D',16,3,5,6),
(4658,'Alexis','Arnulfo','Soto','Astudillo','AB-',1,31,162,65,'1993-05-09 00:00:00',39,2,'Z',14,6,10,2),
(4659,'Avelina','Alfonso','Agudelo','Loaiza','AB+',3,42,178,57,'1960-03-21 00:00:00',42,2,'D',9,7,11,3),
(4660,'Blasco','Anibal','Libreros','Cuevas','O+',4,7,182,83,'1989-08-25 00:00:00',41,4,'Z',2,2,9,8),
(4661,'Catón','Casiano','Ordoñez','Giraldo','A+',2,12,166,52,'1962-08-21 00:00:00',42,3,'D',5,4,5,2),
(4662,'Carol','Carmelo','Peña','Guevara','B+',4,10,175,73,'1960-06-28 00:00:00',41,3,'D',24,1,7,3),
(4663,'Casiano','Alfredo','Narvaez','Libreros','O-',3,15,182,61,'1968-10-25 00:00:00',42,2,'D',21,1,12,8),
(4664,'Casiano','Emily','Castillo','Tobon','B+',3,38,183,66,'1990-12-23 00:00:00',43,3,'D',25,6,3,3),
(4665,'Amaya','Elea','Fuerte','Hoyos','AB+',3,31,166,82,'1987-06-11 00:00:00',38,4,'D',12,5,1,3),
(4666,'Arcadia','Bartolomé','Castaño','Zuluaga','A+',2,9,170,84,'1974-10-31 00:00:00',41,2,'Z',21,5,6,6),
(4667,'Arnulfo','Belisa','Hincapie','Bermudez','A-',4,20,185,75,'1960-05-05 00:00:00',37,3,'D',2,4,3,5),
(4668,'Alfredo','Erina','Garces','Gutierrez','AB+',1,7,190,64,'1996-11-06 00:00:00',36,3,'D',4,2,12,2),
(4669,'Audrey','Erina','Estrada','Velasquez','B+',3,24,177,71,'1997-09-10 00:00:00',38,4,'Z',3,3,14,3),
(4670,'Aquilino','Cancio','Castaño','Uribe','O+',3,36,160,72,'1998-10-16 00:00:00',40,2,'D',21,3,10,6),
(4671,'Amadis','Agata','Arenas','Estrada','A+',4,11,166,69,'1989-09-04 00:00:00',39,3,'Z',9,7,8,4),
(4672,'Angela','Avelina','Alomia','Gutierrez','O-',1,6,168,83,'1969-05-25 00:00:00',41,3,'Z',5,6,2,4),
(4673,'Florinda','Adolfo','Ojeda','Cifuentes','O-',2,36,168,73,'1965-05-18 00:00:00',40,3,'D',16,4,12,2),
(4674,'Adolfo','Alexis','Arce','Arenas','AB-',3,11,162,78,'1991-01-13 00:00:00',41,2,'D',25,5,2,7),
(4675,'Amadeo','Crisanto','Zambrano','Millan','AB-',2,31,181,90,'1996-09-15 00:00:00',37,1,'D',20,5,4,5),
(4676,'Francisca','Florinda','Peña','Astudillo','O-',1,2,166,56,'1965-08-06 00:00:00',38,2,'D',20,7,15,4),
(4677,'Carmelo','Cloe','Micolta','Escarria','AB-',3,25,168,84,'1977-01-09 00:00:00',42,4,'Z',13,6,6,6),
(4678,'Francisca','Bruna','Zapata','Tobon','AB-',4,16,160,71,'1989-06-12 00:00:00',42,2,'D',17,6,4,3),
(4679,'Borja','Azanias','Soto','Pazos','A-',4,1,182,73,'1983-10-17 00:00:00',36,4,'D',6,5,9,8),
(4680,'Amadeo','Cipriano','Diaz','Murillo','AB+',2,19,178,56,'1967-09-15 00:00:00',42,4,'Z',16,5,7,4),
(4681,'Clara','Carmelo','Vidal','Mina','O+',1,18,160,52,'1990-01-06 00:00:00',38,1,'D',24,2,16,5),
(4682,'Evelina','Dulcinea','Cotazo','Tobon','AB-',2,2,186,62,'1998-02-03 00:00:00',41,3,'Z',5,3,3,3),
(4683,'Alarico','Alexis','Murillo','Barcenas','A+',1,12,178,76,'1988-07-09 00:00:00',37,3,'D',11,5,14,1),
(4684,'Alison','Anibal','Garces','Ojeda','O+',4,10,172,83,'1985-11-11 00:00:00',36,1,'D',4,4,14,8),
(4685,'Arnulfo','Cleto','Hoyos','Barrera','O-',1,27,183,89,'1980-11-11 00:00:00',43,2,'D',3,6,2,7),
(4686,'Belisa','Delma','Tobar','Astudillo','AB+',4,20,163,82,'1984-09-22 00:00:00',41,1,'D',9,1,4,6),
(4687,'Crisanto','Felisa','Vidal','Escarria','O-',3,33,185,89,'1984-11-16 00:00:00',41,1,'D',3,1,12,4),
(4688,'Benito','Aquilino','Pazos','Melo','AB+',1,1,171,67,'1992-12-20 00:00:00',36,3,'Z',21,2,9,8),
(4689,'Cipriano','Benicio','Soto','Cifuentes','AB-',3,39,169,62,'1996-10-17 00:00:00',37,3,'Z',2,5,10,7),
(4690,'Casiano','Benicio','Ramirez','Suarez','B+',1,8,181,55,'1990-03-29 00:00:00',38,4,'D',10,4,11,5),
(4691,'Benito','Custodio','Cotazo','Narvaez','B-',4,25,162,72,'1980-12-03 00:00:00',38,2,'D',1,5,4,1),
(4692,'Anibal','Custodio','Fuerte','Micolta','O-',3,39,188,81,'1966-05-31 00:00:00',39,2,'Z',2,4,3,8),
(4693,'Borja','Anacleto','Fuerte','Tobar','O+',2,1,177,74,'1985-10-06 00:00:00',37,4,'Z',4,5,1,4),
(4694,'Blanca','Blanca','Tobar','Narvaez','AB+',2,26,181,51,'1991-11-04 00:00:00',39,3,'Z',3,4,14,8),
(4695,'Belisa','Bruno','Estrada','Torres','O+',2,30,162,72,'1979-12-24 00:00:00',40,1,'Z',9,1,14,3),
(4696,'Baldomero','Agustín','Cuevas','Uribe','A+',4,41,187,62,'1967-01-09 00:00:00',37,4,'Z',9,6,8,4),
(4697,'Berta','Atilano','Loaiza','Mina','O-',3,34,181,82,'1961-09-19 00:00:00',39,1,'D',2,5,7,8),
(4698,'Alarico','Alexis','Soto','Gutierrez','AB-',3,31,177,80,'1961-01-09 00:00:00',40,3,'D',2,4,7,8),
(4699,'Francisca','Erina','Ocampo','Arce','O-',1,34,167,65,'1967-05-15 00:00:00',39,4,'Z',17,3,17,4),
(4700,'Alcira','Felisa','Jimenez','Rueda','O-',2,28,172,90,'1994-10-07 00:00:00',41,3,'D',6,6,12,8),
(4701,'Casiano','Audrey','Ojeda','Bermudez','B-',4,2,167,65,'1991-07-14 00:00:00',38,4,'D',21,7,16,2),
(4702,'Erina','Florinda','Tobon','Escarria','B+',3,20,169,54,'1983-08-25 00:00:00',36,3,'Z',6,4,6,1),
(4703,'Berta','Arcadia','Robles','Ocampo','AB-',4,5,176,76,'1994-02-28 00:00:00',43,2,'D',11,4,10,6),
(4704,'Crisanto','Angela','Galindo','Giraldo','B-',1,30,166,71,'1993-02-22 00:00:00',43,3,'Z',15,6,11,7),
(4705,'Dalma','Cipriano','Cadena','Castillo','A-',4,29,164,61,'1982-04-08 00:00:00',36,4,'Z',10,6,9,7),
(4706,'Bartolomé','Emily','Alomia','Bermudez','B-',4,10,183,54,'1960-10-01 00:00:00',43,1,'D',22,4,7,8),
(4707,'Blasco','Adelio','Cotazo','Escarria','O+',1,32,185,90,'1969-06-09 00:00:00',43,1,'Z',12,5,8,4),
(4708,'Bartolomé','Armando','Escarria','Peña','A+',4,29,173,88,'1964-06-27 00:00:00',39,2,'Z',22,7,14,5),
(4709,'Anibal','Basilio','Narvaez','Rueda','O+',4,21,176,59,'1997-03-31 00:00:00',36,2,'D',16,4,8,7),
(4710,'Antonio','Gema','Burbano','Giraldo','A+',2,23,185,79,'1967-03-31 00:00:00',39,3,'D',21,3,1,8),
(4711,'Custodio','Antonio','Delgado','Vidal','B-',1,24,165,85,'1997-02-20 00:00:00',40,2,'Z',9,3,9,6),
(4712,'Benicio','Anibal','Diaz','Narvaez','B-',4,3,167,72,'1978-10-01 00:00:00',41,3,'Z',12,7,15,2),
(4713,'Emily','Aquilino','Garces','Caicedo','O-',1,11,170,67,'1972-07-13 00:00:00',42,1,'D',25,5,7,5),
(4714,'Armando','Anibal','Riascos','Astudillo','A-',4,21,165,68,'1984-04-20 00:00:00',37,2,'D',3,4,5,3),
(4715,'Alfonso','Borja','Castillo','Barcenas','B-',2,37,162,68,'1981-02-20 00:00:00',43,1,'Z',5,7,14,2),
(4716,'Dolores','Catón','Castaño','Escarria','AB+',3,21,172,78,'1972-12-31 00:00:00',42,3,'D',16,7,1,6),
(4717,'Bartolomé','Crisanto','Torres','Ocampo','O-',1,31,177,79,'1995-02-23 00:00:00',38,3,'Z',19,4,1,4),
(4718,'Audrey','Dulcinea','Castillo','Robles','A+',3,4,173,81,'1988-11-12 00:00:00',40,3,'D',2,1,2,1),
(4719,'Anibal','Alexis','Barrera','Rengifo','O-',2,31,187,73,'1971-05-22 00:00:00',40,2,'D',16,7,8,3),
(4720,'Casiano','Erina','Tobar','Suarez','O+',1,36,166,89,'1980-03-27 00:00:00',41,1,'D',19,1,17,6),
(4721,'Agata','Evelina','Gutierrez','Cortes','O-',2,17,162,83,'1995-04-24 00:00:00',38,4,'D',20,1,9,5),
(4722,'Amadis','Carol','Ocampo','Murillo','A+',1,3,187,52,'1988-01-12 00:00:00',42,4,'Z',4,3,16,6),
(4723,'Cloe','Aquilino','Rueda','Noriega','AB+',2,28,161,64,'1979-01-26 00:00:00',39,2,'D',1,7,10,6),
(4724,'Avelina','Amadis','Libreros','Rueda','A+',4,23,180,80,'1975-08-15 00:00:00',39,2,'D',16,1,6,2),
(4725,'Clara','Alfredo','Delgado','Ocampo','A+',1,33,181,88,'1981-06-27 00:00:00',39,2,'D',4,2,12,4),
(4726,'Arnulfo','Adelio','Alomia','Loaiza','O-',4,21,176,51,'1972-05-20 00:00:00',37,2,'Z',19,3,10,2),
(4727,'Bruno','Casiano','Noriega','Soto','A-',2,25,179,80,'1965-11-01 00:00:00',38,2,'Z',12,3,13,1),
(4728,'Azanias','Adelaida','Zambrano','Libreros','O+',4,42,182,53,'1975-11-11 00:00:00',43,4,'Z',13,7,7,4),
(4729,'Francisca','Arcadia','Fuerte','Cotazo','O-',1,41,160,64,'1996-10-04 00:00:00',39,4,'Z',9,3,11,4),
(4730,'Arnulfo','Bruno','Bermudez','Castaño','B+',4,42,187,61,'1982-12-28 00:00:00',40,3,'Z',20,3,6,3),
(4731,'Elea','Elea','Galindo','Hoyos','O+',4,35,160,54,'1974-02-07 00:00:00',38,4,'D',23,7,13,8),
(4732,'Elea','Anibal','Velasquez','Murillo','A-',1,26,175,61,'1993-07-27 00:00:00',42,4,'D',4,6,7,8),
(4733,'Dalma','Gema','Saucedo','Millan','A+',1,25,189,78,'1971-11-20 00:00:00',41,3,'Z',10,2,8,4),
(4734,'Baldomero','Arnulfo','Zuluaga','Perea','B+',1,1,165,80,'1980-09-30 00:00:00',41,1,'D',8,5,17,1),
(4735,'Emily','Elisenda','Vidal','Escarria','A-',4,7,162,64,'1989-08-17 00:00:00',37,3,'D',18,6,9,1),
(4736,'Benicio','Catón','Serrato','Bermudez','O+',3,25,189,82,'1963-01-02 00:00:00',38,1,'Z',7,6,3,5),
(4737,'Arnulfo','Arnulfo','Soto','Cotazo','B-',4,27,179,58,'1993-05-09 00:00:00',37,4,'Z',23,4,2,5),
(4738,'Alarico','Alarico','Rengifo','Zapata','B+',4,34,170,74,'1967-06-12 00:00:00',41,2,'D',23,7,15,6),
(4739,'Graciela','Benicio','Cotazo','Mina','AB+',3,16,161,58,'1996-08-30 00:00:00',41,4,'D',23,4,12,7),
(4740,'Alexis','Elea','Zambrano','Cotazo','A+',3,23,179,56,'1975-12-18 00:00:00',36,3,'D',20,3,5,6),
(4741,'Delma','Dalma','Alomia','Perea','B-',1,10,176,71,'1969-12-01 00:00:00',39,3,'Z',7,4,4,7),
(4742,'Armando','Amadis','Cuevas','Millan','A-',2,26,186,56,'1989-02-26 00:00:00',41,2,'Z',13,4,16,2),
(4743,'Alfonso','Alcira','Escarria','Mina','A+',4,25,172,84,'1964-02-28 00:00:00',40,1,'D',3,2,9,7),
(4744,'Alfonso','Audrey','Libreros','Noriega','AB+',4,36,182,63,'1988-08-27 00:00:00',41,3,'Z',21,4,11,5),
(4745,'Catón','Anacleto','Castillo','Bermudez','A-',3,14,185,55,'1964-03-07 00:00:00',43,1,'Z',1,2,16,3),
(4746,'Graciela','Dulcinea','Murillo','Cortes','A+',4,16,180,57,'1990-11-02 00:00:00',39,2,'D',8,2,4,7),
(4747,'Cloe','Agata','Astudillo','Torres','B-',3,21,177,72,'1983-07-06 00:00:00',38,2,'Z',20,6,17,5),
(4748,'Adelio','Audrey','Uribe','Castillo','B-',2,24,179,73,'1964-08-23 00:00:00',38,1,'D',2,7,9,7),
(4749,'Blasco','Crisanto','Cifuentes','Ocampo','AB-',4,4,183,83,'1982-06-19 00:00:00',39,2,'D',6,3,5,6),
(4750,'Audrey','Bruno','Vidal','Tobon','B-',3,26,166,67,'1968-12-19 00:00:00',43,2,'D',1,1,17,8),
(4751,'Casiano','Francisca','Millan','Tobar','B+',2,34,184,53,'1968-03-03 00:00:00',40,4,'D',12,6,3,3),
(4752,'Adelio','Graciela','Hoyos','Robles','O+',2,28,187,54,'1965-12-28 00:00:00',36,4,'Z',7,7,4,5),
(4753,'Dalma','Atilano','Polanco','Millan','A-',3,5,162,57,'1997-01-20 00:00:00',37,2,'Z',16,4,16,7),
(4754,'Amadeo','Catón','Noriega','Torres','B-',2,36,176,52,'1987-07-16 00:00:00',40,3,'Z',1,5,6,1),
(4755,'Casiano','Clara','Escarria','Peña','AB+',2,17,166,81,'1962-08-10 00:00:00',36,4,'Z',16,7,10,8),
(4756,'Crisanto','Emily','Arenas','Uribe','O-',1,13,174,59,'1982-10-07 00:00:00',43,2,'D',12,6,1,3),
(4757,'Alarico','Boleslao','Diaz','Escarria','B+',3,32,178,89,'1993-12-31 00:00:00',36,2,'D',6,2,16,1),
(4758,'Belisa','Erina','Micolta','Perea','O-',2,3,182,60,'1962-04-13 00:00:00',42,1,'Z',3,7,2,4),
(4759,'Dalma','Crisanto','Ordoñez','Cotazo','AB+',4,36,178,79,'1991-07-25 00:00:00',37,3,'D',11,2,9,1),
(4760,'Adolfo','Adelio','Perea','Cuevas','B-',4,18,174,79,'1990-08-15 00:00:00',42,2,'Z',12,2,7,3),
(4761,'Crisanto','Atilano','Giraldo','Narvaez','A+',1,5,183,85,'1995-01-26 00:00:00',43,4,'D',11,4,11,6),
(4762,'Crisanto','Blanca','Vidal','Tobon','A+',3,6,167,53,'1991-04-02 00:00:00',39,4,'D',16,4,11,7),
(4763,'Gema','Amaya','Zuñiga','Micolta','B-',2,28,172,55,'1970-01-11 00:00:00',42,1,'Z',1,3,11,7),
(4764,'Cancio','Bruno','Ojeda','Tobar','A-',4,21,187,69,'1984-03-16 00:00:00',37,4,'D',4,1,1,5),
(4765,'Anibal','Cancio','Barcenas','Astudillo','A-',3,14,170,78,'1966-01-24 00:00:00',36,4,'Z',6,6,3,5),
(4766,'Dulcinea','Emily','Libreros','Polanco','AB-',1,24,174,62,'1997-02-18 00:00:00',41,4,'Z',8,4,16,6),
(4767,'Basilio','Elisenda','Castaño','Astudillo','AB+',1,6,178,61,'1963-12-27 00:00:00',40,1,'D',16,3,6,8),
(4768,'Emily','Agustín','Zapata','Tobar','A+',2,10,185,73,'1982-10-23 00:00:00',36,2,'D',18,1,15,8),
(4769,'Amaya','Emily','Zuluaga','Ojeda','O-',2,27,171,56,'1972-04-03 00:00:00',43,1,'D',4,3,2,8),
(4770,'Arnulfo','Crisanto','Ocampo','Gutierrez','B+',4,39,177,67,'1991-04-06 00:00:00',39,2,'Z',23,1,6,1),
(4771,'Arnulfo','Alfredo','Riascos','Barrera','O+',3,14,165,68,'1988-07-10 00:00:00',43,3,'D',8,3,11,7),
(4772,'Adelaida','Anibal','Jimenez','Zapata','O+',3,27,188,80,'1983-05-24 00:00:00',41,2,'D',5,5,12,4),
(4773,'Clara','Basilio','Polanco','Zuluaga','B+',3,27,161,81,'1995-10-16 00:00:00',41,2,'D',5,6,2,6),
(4774,'Anacleto','Carmelo','Mina','Zuluaga','A+',3,20,182,55,'1967-01-28 00:00:00',37,1,'Z',23,5,3,3),
(4775,'Arnulfo','Bruna','Arenas','Jimenez','A+',2,34,187,83,'1981-10-15 00:00:00',41,1,'Z',7,3,16,8),
(4776,'Adolfo','Amadis','Gutierrez','Murillo','A-',1,27,183,87,'1990-05-29 00:00:00',40,1,'Z',4,6,13,1),
(4777,'Carol','Delma','Caicedo','Escarria','B+',1,5,175,61,'1996-08-21 00:00:00',39,2,'Z',15,1,13,4),
(4778,'Dulcinea','Gema','Cifuentes','Millan','AB-',2,12,168,82,'1962-05-08 00:00:00',42,2,'D',10,6,2,2),
(4779,'Adolfo','Basilio','Ordoñez','Escarria','O-',4,8,169,59,'1977-12-06 00:00:00',39,2,'Z',19,4,7,7),
(4780,'Bartolomé','Alfredo','Cortes','Castillo','O+',1,24,160,82,'1967-09-28 00:00:00',40,1,'Z',8,4,1,5),
(4781,'Cancio','Anibal','Serrato','Castillo','AB-',1,15,176,53,'1977-05-24 00:00:00',43,1,'Z',9,7,12,1),
(4782,'Cancio','Arcadia','Perea','Uribe','O-',1,14,171,88,'1990-06-03 00:00:00',38,2,'D',20,4,10,6),
(4783,'Asael','Bruno','Tobar','Libreros','AB-',1,5,186,57,'1960-05-16 00:00:00',43,4,'Z',7,6,8,1),
(4784,'Cleto','Amaya','Soto','Castaño','B+',1,25,186,87,'1978-12-31 00:00:00',43,1,'Z',16,6,5,5),
(4785,'Clara','Carmelo','Polanco','Murillo','A+',4,7,174,78,'1994-12-07 00:00:00',40,2,'D',15,6,16,8),
(4786,'Alfonso','Francisca','Burbano','Zuñiga','O-',2,40,189,53,'1971-07-16 00:00:00',43,3,'Z',9,2,11,1),
(4787,'Blasco','Bruna','Giraldo','Garces','O+',1,32,186,68,'1979-04-24 00:00:00',39,4,'D',13,6,2,7),
(4788,'Blasco','Alison','Micolta','Uribe','A-',1,4,182,77,'1986-11-06 00:00:00',43,4,'D',24,6,17,4),
(4789,'Alfonso','Gema','Ocampo','Alomia','O-',2,24,175,57,'1974-05-04 00:00:00',41,3,'D',5,7,7,4),
(4790,'Cloe','Agata','Caicedo','Delgado','AB-',3,7,185,51,'1983-05-16 00:00:00',39,1,'Z',6,4,11,2),
(4791,'Alfredo','Cancio','Arce','Soto','B-',2,15,184,69,'1970-09-25 00:00:00',37,2,'Z',22,5,15,3),
(4792,'Alcira','Evelina','Galindo','Ordoñez','O+',3,39,164,89,'1970-11-28 00:00:00',37,3,'D',9,7,9,3),
(4793,'Casiano','Anacleto','Ryes','Astudillo','O-',4,15,163,61,'1968-11-30 00:00:00',36,1,'Z',16,7,10,5),
(4794,'Carmelo','Alison','Cadena','Torres','B+',4,42,187,86,'1960-03-12 00:00:00',36,3,'Z',3,4,16,7),
(4795,'Alfredo','Eunice','Libreros','Zuñiga','B-',2,41,183,74,'1982-12-07 00:00:00',37,1,'D',4,6,1,3),
(4796,'Borja','Antonio','Riascos','Uribe','B-',4,12,167,72,'1968-07-25 00:00:00',43,1,'Z',7,4,10,6),
(4797,'Azanias','Audrey','Libreros','Serrato','O+',1,32,174,53,'1995-08-17 00:00:00',36,3,'D',21,6,15,4),
(4798,'Armando','Borja','Rueda','Caicedo','B-',3,20,168,50,'1965-03-06 00:00:00',43,4,'Z',22,1,1,2),
(4799,'Agustín','Alfredo','Galindo','Uribe','AB+',2,35,187,68,'1996-08-27 00:00:00',37,1,'Z',2,1,15,8),
(4800,'Cleto','Azanias','Barrera','Astudillo','O+',1,6,166,87,'1989-11-26 00:00:00',39,2,'Z',10,2,6,5),
(4801,'Amaya','Azanias','Bermudez','Ojeda','A-',4,31,188,53,'1964-03-30 00:00:00',43,1,'Z',13,2,6,6),
(4802,'Carmelo','Evelina','Hoyos','Jimenez','A+',3,31,177,79,'1996-04-21 00:00:00',36,3,'D',11,6,11,2),
(4803,'Cipriano','Arnulfo','Ordoñez','Noriega','A+',4,7,183,84,'1967-07-09 00:00:00',41,3,'D',10,5,14,6),
(4804,'Carol','Angela','Suarez','Guevara','O-',1,14,181,58,'1979-01-11 00:00:00',39,1,'Z',22,5,1,2),
(4805,'Atilano','Bruno','Suarez','Galindo','AB+',4,20,160,68,'1985-02-13 00:00:00',38,3,'D',15,4,16,7),
(4806,'Amadeo','Belisario','Hincapie','Cuevas','AB-',4,42,185,70,'1964-04-02 00:00:00',37,2,'D',15,3,11,4),
(4807,'Belisa','Blasco','Barcenas','Astudillo','B-',4,10,188,71,'1987-09-04 00:00:00',43,2,'D',1,6,16,5),
(4808,'Armando','Anacleto','Bermudez','Barcenas','AB+',2,38,172,70,'1990-11-30 00:00:00',41,1,'Z',11,6,3,4),
(4809,'Basilio','Adelaida','Hincapie','Arce','O+',1,5,162,90,'1972-10-26 00:00:00',39,3,'Z',17,7,6,6),
(4810,'Erina','Anibal','Caicedo','Perea','A-',4,23,165,77,'1971-08-28 00:00:00',40,2,'D',4,1,3,8),
(4811,'Cloe','Aquilino','Jimenez','Diaz','B+',2,22,173,69,'1997-10-25 00:00:00',41,1,'Z',6,2,14,1),
(4812,'Gema','Amadis','Arenas','Cortes','AB-',3,18,173,74,'1969-04-27 00:00:00',39,4,'D',6,3,1,3),
(4813,'Armando','Antonio','Bermudez','Burbano','B-',2,25,164,86,'1976-05-07 00:00:00',38,4,'D',6,1,17,5),
(4814,'Alfonso','Blanca','Diaz','Micolta','A+',2,21,160,54,'1971-06-14 00:00:00',37,3,'D',15,2,8,4),
(4815,'Evelina','Casiano','Barcenas','Galindo','A-',1,4,172,72,'1963-11-19 00:00:00',39,1,'Z',21,6,10,2),
(4816,'Adolfo','Alison','Alomia','Ryes','B-',4,11,165,70,'1988-01-13 00:00:00',36,1,'Z',2,3,17,8),
(4817,'Atilano','Adolfo','Micolta','Gutierrez','O+',2,37,172,53,'1995-04-29 00:00:00',41,3,'D',19,5,6,1),
(4818,'Boleslao','Blasco','Soto','Arenas','A-',3,9,174,63,'1985-08-01 00:00:00',41,4,'D',17,3,9,1),
(4819,'Custodio','Elea','Torres','Noriega','A-',4,37,178,75,'1974-05-06 00:00:00',40,1,'Z',20,2,7,7),
(4820,'Adelaida','Eunice','Garces','Hincapie','AB+',4,3,183,64,'1967-10-06 00:00:00',40,4,'D',11,4,8,2),
(4821,'Anibal','Alison','Noriega','Cifuentes','O-',2,25,162,89,'1976-10-31 00:00:00',43,1,'D',7,4,9,6),
(4822,'Adelaida','Elisenda','Rivera','Arce','O-',4,13,174,65,'1998-07-05 00:00:00',37,4,'D',20,7,9,1),
(4823,'Graciela','Boleslao','Rueda','Mina','AB-',2,30,176,87,'1988-05-25 00:00:00',43,3,'D',10,7,17,5),
(4824,'Francisca','Felisa','Loaiza','Torres','AB+',2,5,190,88,'1969-06-10 00:00:00',38,1,'D',4,6,5,6),
(4825,'Clara','Agata','Barrera','Caicedo','B+',1,12,164,67,'1980-08-28 00:00:00',43,1,'Z',11,4,13,3),
(4826,'Aquilino','Ambrosio','Castaño','Torres','AB-',1,24,169,55,'1991-06-18 00:00:00',42,1,'Z',22,5,12,7),
(4827,'Belisa','Bruna','Hincapie','Gutierrez','O-',2,31,168,52,'1986-07-06 00:00:00',37,1,'Z',3,3,8,7),
(4828,'Elea','Graciela','Rueda','Caicedo','A-',2,20,170,88,'1995-01-26 00:00:00',37,4,'Z',24,3,12,3),
(4829,'Elisenda','Arcadia','Polanco','Escarria','B+',1,39,182,73,'1977-06-18 00:00:00',40,3,'D',6,5,9,7),
(4830,'Benito','Bruno','Garces','Murillo','B-',1,31,187,82,'1991-09-27 00:00:00',40,2,'Z',25,5,1,5),
(4831,'Audrey','Evelina','Libreros','Robles','AB+',1,29,163,64,'1997-05-29 00:00:00',42,1,'Z',3,7,1,8),
(4832,'Asael','Adelio','Diaz','Guevara','O-',3,38,186,50,'1985-11-01 00:00:00',41,2,'Z',21,2,2,8),
(4833,'Adelaida','Atilano','Narvaez','Caicedo','A-',1,38,188,58,'1985-03-22 00:00:00',37,3,'Z',23,1,13,2),
(4834,'Amaya','Carmelo','Loaiza','Micolta','AB+',2,39,184,58,'1985-09-29 00:00:00',38,1,'Z',3,4,2,3),
(4835,'Arcadia','Alfredo','Castillo','Uribe','A+',4,9,164,62,'1990-06-16 00:00:00',36,1,'Z',13,2,17,8),
(4836,'Delma','Basilio','Rengifo','Torres','B+',1,1,184,51,'1982-10-18 00:00:00',37,2,'D',20,5,11,5),
(4837,'Anibal','Custodio','Jimenez','Jimenez','AB+',1,35,164,90,'1970-06-07 00:00:00',41,3,'D',20,1,13,8),
(4838,'Graciela','Alarico','Astudillo','Burbano','AB-',2,14,185,68,'1962-09-12 00:00:00',41,3,'D',19,1,4,6),
(4839,'Elisenda','Boleslao','Rivera','Diaz','B+',3,10,184,80,'1992-07-15 00:00:00',42,3,'Z',13,3,7,3),
(4840,'Agustín','Crisanto','Arce','Velasquez','AB-',2,10,179,82,'1969-02-27 00:00:00',37,1,'Z',4,5,10,4),
(4841,'Evelina','Bruna','Polanco','Micolta','A+',3,5,165,85,'1966-10-15 00:00:00',36,4,'Z',4,2,14,7),
(4842,'Bartolomé','Bruno','Ordoñez','Delgado','B+',2,42,183,63,'1971-05-17 00:00:00',41,4,'D',1,6,10,5),
(4843,'Agata','Carmelo','Giraldo','Peña','O+',2,10,177,64,'1974-08-22 00:00:00',41,3,'D',6,4,2,5),
(4844,'Carol','Dolores','Serrato','Perea','AB-',4,29,169,53,'1977-12-07 00:00:00',43,3,'Z',4,5,6,7),
(4845,'Baldomero','Alfredo','Robles','Lopez','O+',4,16,175,88,'1982-07-21 00:00:00',43,2,'Z',20,7,4,5),
(4846,'Basilio','Boleslao','Barcenas','Cadena','AB-',4,24,180,51,'1983-07-29 00:00:00',43,1,'D',6,2,7,3),
(4847,'Ambrosio','Cleto','Caicedo','Alomia','AB+',1,10,163,61,'1997-10-23 00:00:00',41,3,'Z',25,4,9,4),
(4848,'Baldomero','Felisa','Saucedo','Rueda','AB-',3,32,160,88,'1972-04-14 00:00:00',43,1,'Z',23,3,16,5),
(4849,'Anacleto','Adelaida','Cadena','Zuñiga','AB+',2,2,167,66,'1995-02-22 00:00:00',40,1,'D',23,1,14,7),
(4850,'Avelina','Berta','Millan','Zapata','B-',3,31,179,81,'1993-01-31 00:00:00',40,3,'Z',20,5,1,4),
(4851,'Cloe','Anibal','Fuerte','Ordoñez','B+',1,12,160,86,'1969-05-13 00:00:00',43,2,'Z',4,7,5,7),
(4852,'Custodio','Carmelo','Velasquez','Ryes','A+',4,14,190,86,'1989-04-26 00:00:00',40,1,'D',12,1,2,3),
(4853,'Carmelo','Boleslao','Tobar','Ordoñez','B+',3,31,167,66,'1972-12-27 00:00:00',40,3,'D',20,2,1,4),
(4854,'Arcadia','Cancio','Gutierrez','Noriega','A+',1,23,161,86,'1992-08-28 00:00:00',36,1,'Z',19,6,15,2),
(4855,'Cancio','Bruna','Escarria','Hoyos','AB+',4,24,190,80,'1970-08-04 00:00:00',40,3,'D',5,1,7,2),
(4856,'Agata','Crisanto','Vidal','Mina','A-',2,7,189,61,'1987-11-06 00:00:00',39,4,'Z',19,4,7,8),
(4857,'Crisanto','Aquilino','Bermudez','Soto','A+',1,7,163,62,'1980-03-21 00:00:00',43,2,'D',1,4,12,4),
(4858,'Asael','Belisario','Suarez','Ocampo','B+',4,22,180,88,'1979-06-27 00:00:00',39,2,'Z',24,6,11,2),
(4859,'Arcadia','Dulcinea','Peña','Garces','A+',2,39,175,64,'1976-11-14 00:00:00',41,4,'Z',5,6,12,5),
(4860,'Belisario','Boleslao','Ojeda','Zuluaga','A-',1,12,167,52,'1994-10-31 00:00:00',40,3,'D',22,5,17,4),
(4861,'Casiano','Belisa','Guevara','Zambrano','O+',2,28,178,54,'1960-11-26 00:00:00',41,4,'Z',3,3,2,7),
(4862,'Arcadia','Arcadia','Micolta','Arenas','A+',2,17,181,57,'1990-09-13 00:00:00',38,4,'Z',5,5,1,3),
(4863,'Agata','Berta','Arce','Millan','AB-',1,22,189,80,'1972-09-11 00:00:00',38,3,'D',21,6,1,1),
(4864,'Baldomero','Alfredo','Torres','Galindo','O-',1,7,179,74,'1976-07-18 00:00:00',43,3,'Z',24,5,7,6),
(4865,'Emily','Basilio','Delgado','Suarez','B+',3,6,180,82,'1960-02-24 00:00:00',42,2,'Z',4,3,14,2),
(4866,'Carmelo','Agata','Burbano','Castillo','B-',3,16,177,57,'1988-07-02 00:00:00',39,3,'D',3,2,12,2),
(4867,'Berta','Cleto','Diaz','Cadena','A-',1,31,168,84,'1979-04-16 00:00:00',39,1,'Z',23,3,7,2),
(4868,'Angela','Eunice','Barcenas','Ordoñez','O+',4,18,178,79,'1996-05-31 00:00:00',38,1,'D',22,3,17,8),
(4869,'Eunice','Alfredo','Ordoñez','Astudillo','AB+',4,16,177,75,'1966-01-04 00:00:00',40,2,'Z',18,7,2,4),
(4870,'Cleto','Berta','Zuluaga','Hoyos','AB+',1,41,181,82,'1977-01-21 00:00:00',43,3,'D',2,2,1,7),
(4871,'Erina','Aquilino','Millan','Burbano','B-',3,7,180,68,'1972-08-01 00:00:00',41,1,'D',12,2,10,3),
(4872,'Crisanto','Arnulfo','Libreros','Rivera','O+',4,32,185,54,'1985-11-26 00:00:00',42,4,'Z',21,6,16,6),
(4873,'Aquilino','Clara','Ordoñez','Castaño','AB-',1,3,160,84,'1966-01-12 00:00:00',41,4,'Z',15,1,16,2),
(4874,'Anibal','Anibal','Millan','Giraldo','AB-',2,1,162,83,'1974-09-30 00:00:00',41,2,'D',15,5,15,7),
(4875,'Bruno','Graciela','Velasquez','Noriega','O-',3,8,169,88,'1990-12-06 00:00:00',38,1,'Z',18,7,2,6),
(4876,'Custodio','Clara','Robles','Velasquez','O-',3,27,162,65,'1980-10-04 00:00:00',36,1,'D',23,6,16,6),
(4877,'Ambrosio','Delma','Arenas','Galindo','O+',4,40,172,66,'1990-02-02 00:00:00',39,2,'Z',22,5,14,2),
(4878,'Alfonso','Carmelo','Estrada','Vidal','A+',4,34,186,57,'1994-12-28 00:00:00',37,1,'D',11,5,8,7),
(4879,'Elisenda','Berta','Burbano','Agudelo','O+',4,42,167,54,'1973-04-07 00:00:00',37,1,'D',3,7,3,4),
(4880,'Blasco','Audrey','Micolta','Ordoñez','A+',2,29,188,58,'1972-09-12 00:00:00',40,4,'Z',19,6,16,3),
(4881,'Agustín','Audrey','Millan','Delgado','B+',4,8,167,65,'1981-06-02 00:00:00',38,1,'D',6,1,11,7),
(4882,'Eunice','Aquilino','Tobon','Cotazo','O+',2,3,187,76,'1985-11-28 00:00:00',37,3,'Z',12,2,1,6),
(4883,'Armando','Belisario','Caicedo','Torres','AB-',3,18,170,66,'1972-11-22 00:00:00',40,1,'D',12,7,16,4),
(4884,'Adelaida','Ambrosio','Millan','Zuluaga','O-',1,25,180,59,'1975-01-19 00:00:00',40,1,'Z',18,7,10,6),
(4885,'Belisa','Anacleto','Barcenas','Galindo','O+',3,8,178,82,'1986-10-27 00:00:00',37,4,'Z',5,2,9,4),
(4886,'Catón','Aquilino','Murillo','Peña','AB-',4,29,189,79,'1972-08-17 00:00:00',39,3,'Z',14,5,2,7),
(4887,'Custodio','Casiano','Ocampo','Hincapie','B+',4,7,173,74,'1963-08-16 00:00:00',40,1,'Z',13,2,11,8),
(4888,'Alexis','Agata','Castaño','Polanco','A+',1,13,171,54,'1961-02-17 00:00:00',36,3,'D',10,6,17,8),
(4889,'Custodio','Dolores','Castaño','Hoyos','B+',2,4,164,63,'1971-02-22 00:00:00',36,3,'D',18,4,10,3),
(4890,'Berta','Florinda','Guevara','Caicedo','B+',3,22,160,65,'1998-03-10 00:00:00',36,1,'Z',24,7,8,8),
(4891,'Catón','Casiano','Rengifo','Agudelo','AB+',4,40,176,78,'1984-01-21 00:00:00',38,1,'D',4,2,2,4),
(4892,'Bruna','Belisario','Arce','Zuluaga','B-',1,8,182,87,'1984-11-21 00:00:00',42,4,'Z',6,1,1,8),
(4893,'Avelina','Blasco','Narvaez','Zapata','AB-',3,33,187,75,'1998-07-13 00:00:00',43,1,'D',8,7,14,4),
(4894,'Benicio','Casiano','Tobar','Estrada','AB-',4,26,188,63,'1985-03-13 00:00:00',43,1,'D',15,1,6,3),
(4895,'Arcadia','Elea','Pazos','Suarez','B-',2,12,189,67,'1989-05-27 00:00:00',36,3,'Z',10,4,12,5),
(4896,'Baldomero','Delma','Burbano','Melo','B-',2,41,188,59,'1986-11-17 00:00:00',42,2,'Z',3,6,12,1),
(4897,'Bruna','Anibal','Serrato','Garces','O-',1,5,163,70,'1988-06-24 00:00:00',41,4,'D',10,2,16,4),
(4898,'Emily','Gema','Arenas','Pazos','AB+',3,17,171,64,'1961-08-19 00:00:00',43,2,'Z',18,7,10,3),
(4899,'Berta','Angela','Gutierrez','Serrato','A+',4,14,163,78,'1997-10-28 00:00:00',36,4,'D',23,6,6,1),
(4900,'Emily','Casiano','Arenas','Barrera','A-',3,33,167,73,'1972-05-29 00:00:00',39,1,'D',21,7,8,5),
(4901,'Anibal','Cipriano','Rengifo','Hoyos','O+',4,1,171,66,'1987-11-08 00:00:00',38,1,'D',24,5,5,5),
(4902,'Anacleto','Cleto','Robles','Fuerte','A-',3,14,175,65,'1997-12-10 00:00:00',36,4,'Z',16,1,9,3),
(4903,'Anibal','Cipriano','Perea','Arce','A+',4,10,161,83,'1976-03-27 00:00:00',41,4,'D',9,2,5,8),
(4904,'Felisa','Clara','Mina','Lopez','A-',2,33,161,50,'1974-07-20 00:00:00',38,1,'D',19,6,1,6),
(4905,'Belisa','Amadeo','Estrada','Estrada','A+',1,1,173,71,'1980-03-05 00:00:00',39,3,'D',20,4,12,8),
(4906,'Anibal','Arnulfo','Robles','Velasquez','B+',3,2,183,90,'1986-08-24 00:00:00',40,3,'D',3,7,1,7),
(4907,'Alexis','Eunice','Melo','Ordoñez','O+',4,27,179,66,'1979-09-02 00:00:00',42,4,'Z',5,3,14,8),
(4908,'Adelio','Adelio','Suarez','Cotazo','O+',1,42,163,74,'1968-10-08 00:00:00',40,4,'D',3,1,3,5),
(4909,'Amaya','Carmelo','Hincapie','Agudelo','AB+',1,9,185,60,'1982-09-02 00:00:00',42,2,'Z',14,3,17,6),
(4910,'Blanca','Catón','Caicedo','Lopez','AB+',4,35,184,59,'1992-03-18 00:00:00',40,1,'D',3,4,3,2),
(4911,'Custodio','Asael','Estrada','Castillo','O-',3,14,164,80,'1967-02-19 00:00:00',43,2,'Z',14,5,7,6),
(4912,'Anibal','Basilio','Guevara','Ramirez','O-',1,15,170,75,'1977-02-07 00:00:00',40,2,'Z',14,7,11,1),
(4913,'Anacleto','Catón','Millan','Melo','B+',3,37,164,62,'1984-08-26 00:00:00',39,1,'D',19,3,14,2),
(4914,'Custodio','Carol','Galindo','Zapata','A-',1,37,168,56,'1981-10-13 00:00:00',40,4,'Z',21,5,11,5),
(4915,'Ambrosio','Anibal','Escarria','Ordoñez','A+',2,28,189,90,'1977-07-31 00:00:00',40,1,'D',18,7,14,2),
(4916,'Azanias','Anacleto','Giraldo','Suarez','O-',1,37,162,83,'1991-10-10 00:00:00',41,2,'Z',8,5,10,8),
(4917,'Blasco','Bruna','Cifuentes','Pazos','O+',3,19,183,87,'1986-04-13 00:00:00',41,3,'Z',4,3,14,2),
(4918,'Graciela','Basilio','Giraldo','Soto','AB-',2,11,187,57,'1962-07-21 00:00:00',41,4,'Z',3,2,1,3),
(4919,'Asael','Alarico','Torres','Murillo','AB-',4,39,162,80,'1986-02-05 00:00:00',43,4,'D',2,2,16,8),
(4920,'Dulcinea','Erina','Libreros','Burbano','O-',1,32,186,67,'1977-02-04 00:00:00',39,2,'Z',8,5,4,8),
(4921,'Catón','Amadis','Gutierrez','Rivera','B-',1,36,187,54,'1964-04-13 00:00:00',39,2,'Z',16,2,17,5),
(4922,'Atilano','Arcadia','Delgado','Guevara','O+',2,1,170,51,'1960-02-18 00:00:00',37,2,'D',7,3,13,7),
(4923,'Custodio','Catón','Torres','Mina','O-',1,19,162,79,'1994-05-31 00:00:00',41,2,'D',4,7,11,6),
(4924,'Armando','Felisa','Barcenas','Lopez','B+',1,8,178,85,'1961-05-18 00:00:00',43,2,'Z',16,5,1,7),
(4925,'Basilio','Angela','Perea','Giraldo','AB+',3,40,166,66,'1970-12-29 00:00:00',40,2,'D',4,2,16,4),
(4926,'Aquilino','Aquilino','Hincapie','Castillo','A-',3,35,183,69,'1967-01-14 00:00:00',37,2,'D',13,2,17,8),
(4927,'Elisenda','Alison','Tobar','Rivera','B+',4,30,189,64,'1979-11-09 00:00:00',39,4,'D',10,6,17,1),
(4928,'Audrey','Bruna','Diaz','Suarez','AB+',3,30,171,80,'1984-01-13 00:00:00',41,2,'D',9,7,10,8),
(4929,'Benicio','Benito','Suarez','Cuevas','AB-',2,14,188,63,'1990-05-09 00:00:00',38,3,'D',21,7,13,7),
(4930,'Eunice','Arcadia','Arce','Hoyos','O+',3,18,188,55,'1966-03-10 00:00:00',36,2,'Z',16,2,13,2),
(4931,'Alfredo','Alcira','Ramirez','Saucedo','A+',2,36,161,86,'1994-08-09 00:00:00',38,2,'Z',14,4,13,7),
(4932,'Alfredo','Graciela','Vidal','Uribe','AB+',4,27,181,68,'1995-11-25 00:00:00',40,3,'D',23,5,17,3),
(4933,'Delma','Agustín','Gutierrez','Ryes','B-',2,28,168,83,'1975-06-05 00:00:00',37,3,'Z',25,5,7,8),
(4934,'Cloe','Cipriano','Melo','Arenas','O-',2,11,172,52,'1971-02-05 00:00:00',42,3,'Z',4,3,17,2),
(4935,'Francisca','Bartolomé','Mina','Rivera','A+',3,11,172,73,'1988-10-24 00:00:00',36,2,'Z',17,2,14,6),
(4936,'Bruna','Asael','Galindo','Zambrano','A+',2,42,188,74,'1963-08-20 00:00:00',43,4,'D',18,3,9,2),
(4937,'Alcira','Clara','Delgado','Escarria','AB+',3,27,181,66,'1998-10-24 00:00:00',40,4,'Z',19,5,2,4),
(4938,'Asael','Delma','Hincapie','Pazos','AB+',2,39,176,78,'1988-12-05 00:00:00',39,4,'D',15,6,9,3),
(4939,'Benito','Casiano','Cotazo','Bermudez','B-',2,22,181,58,'1997-07-31 00:00:00',41,3,'D',2,6,16,7),
(4940,'Emily','Erina','Alomia','Mina','A-',2,3,176,78,'1972-03-31 00:00:00',36,4,'Z',20,4,7,3),
(4941,'Cleto','Casiano','Velasquez','Tobon','AB+',1,28,174,64,'1978-03-06 00:00:00',40,2,'D',8,3,11,7),
(4942,'Clara','Belisa','Delgado','Vidal','AB+',4,18,173,90,'1991-06-23 00:00:00',43,4,'Z',10,5,16,1),
(4943,'Erina','Arcadia','Cortes','Tobar','B-',2,34,177,66,'1987-06-14 00:00:00',36,1,'Z',24,7,11,1),
(4944,'Basilio','Elisenda','Zambrano','Saucedo','B+',4,34,188,57,'1989-04-02 00:00:00',43,4,'D',17,4,13,1),
(4945,'Anibal','Dulcinea','Torres','Zuluaga','O-',1,21,173,51,'1986-01-10 00:00:00',40,2,'Z',10,4,8,4),
(4946,'Adolfo','Basilio','Arce','Micolta','B+',2,42,183,55,'1979-07-14 00:00:00',36,4,'Z',24,5,16,8),
(4947,'Delma','Ambrosio','Narvaez','Barrera','B+',3,18,179,88,'1985-10-01 00:00:00',42,3,'D',8,3,8,8),
(4948,'Angela','Amadis','Alomia','Narvaez','B+',1,19,172,58,'1973-03-31 00:00:00',39,2,'Z',20,4,15,1),
(4949,'Carol','Baldomero','Suarez','Estrada','O-',1,14,190,83,'1990-09-22 00:00:00',41,2,'Z',8,5,9,8),
(4950,'Catón','Adelaida','Estrada','Ojeda','AB+',3,14,170,73,'1980-04-03 00:00:00',43,4,'D',16,6,4,3),
(4951,'Anibal','Erina','Guevara','Giraldo','AB+',2,34,174,72,'1987-05-21 00:00:00',41,4,'D',3,1,14,7),
(4952,'Azanias','Gema','Barrera','Cotazo','A-',4,1,178,80,'1969-01-09 00:00:00',42,3,'Z',18,3,8,4),
(4953,'Avelina','Gema','Hoyos','Escarria','A-',3,13,184,71,'1985-04-19 00:00:00',36,3,'Z',5,3,6,1),
(4954,'Adelio','Atilano','Polanco','Noriega','B-',1,41,169,77,'1979-08-28 00:00:00',43,4,'D',21,4,15,6),
(4955,'Elisenda','Avelina','Alomia','Fuerte','B-',2,41,164,63,'1964-10-09 00:00:00',36,3,'Z',21,5,14,8),
(4956,'Ambrosio','Berta','Riascos','Caicedo','O-',4,31,164,90,'1983-07-09 00:00:00',38,4,'D',21,4,2,8),
(4957,'Blanca','Alison','Saucedo','Zuñiga','O-',1,11,178,63,'1989-03-26 00:00:00',39,2,'D',15,3,5,8),
(4958,'Alarico','Bruna','Zapata','Tobar','AB-',1,31,168,72,'1992-03-10 00:00:00',40,4,'Z',10,2,16,3),
(4959,'Graciela','Clara','Jimenez','Giraldo','AB-',1,31,163,54,'1965-05-27 00:00:00',37,4,'Z',20,5,14,6),
(4960,'Audrey','Carmelo','Ocampo','Loaiza','AB-',2,20,168,66,'1990-06-03 00:00:00',43,1,'Z',19,3,9,3),
(4961,'Arcadia','Eunice','Vidal','Guevara','AB-',1,22,161,66,'1976-02-13 00:00:00',43,1,'D',20,4,16,4),
(4962,'Emily','Felisa','Giraldo','Cadena','O-',2,7,188,73,'1998-11-12 00:00:00',41,1,'Z',24,6,7,2),
(4963,'Blasco','Dulcinea','Castaño','Robles','AB+',1,28,183,72,'1963-10-21 00:00:00',41,4,'D',19,7,15,2),
(4964,'Agata','Benito','Escarria','Giraldo','B+',3,38,162,82,'1961-04-01 00:00:00',40,2,'D',7,7,2,4),
(4965,'Atilano','Bruna','Gutierrez','Hincapie','B-',3,23,185,82,'1984-01-28 00:00:00',38,1,'Z',17,7,7,4),
(4966,'Amadeo','Azanias','Peña','Ocampo','B+',1,41,166,70,'1970-08-07 00:00:00',43,2,'Z',17,3,1,6),
(4967,'Atilano','Alfredo','Tobar','Ojeda','B-',2,34,171,87,'1976-05-30 00:00:00',42,2,'Z',12,2,11,8),
(4968,'Baldomero','Cancio','Ojeda','Zuluaga','A-',2,36,174,61,'1960-03-13 00:00:00',38,2,'D',9,5,13,3),
(4969,'Bruno','Dalma','Barcenas','Hincapie','B+',2,9,168,74,'1986-09-04 00:00:00',39,3,'D',8,3,2,6),
(4970,'Elisenda','Agata','Cortes','Tobon','O+',2,5,165,66,'1964-03-26 00:00:00',37,4,'D',9,4,1,7),
(4971,'Carmelo','Gema','Melo','Guevara','B+',1,16,187,88,'1992-04-04 00:00:00',38,2,'D',18,3,6,5),
(4972,'Baldomero','Bartolomé','Gutierrez','Hincapie','B+',4,37,161,77,'1971-09-06 00:00:00',41,1,'D',6,2,3,3),
(4973,'Delma','Carmelo','Rivera','Cotazo','AB-',4,17,185,78,'1967-03-16 00:00:00',37,1,'Z',23,7,9,2),
(4974,'Baldomero','Benito','Cotazo','Garces','B-',1,26,163,73,'1988-10-13 00:00:00',43,4,'Z',12,1,4,6),
(4975,'Cipriano','Armando','Millan','Lopez','B+',1,41,170,55,'1978-02-07 00:00:00',42,2,'D',3,7,9,7),
(4976,'Carmelo','Blanca','Astudillo','Fuerte','B+',1,31,170,60,'1990-11-02 00:00:00',38,3,'D',2,2,17,1),
(4977,'Aquilino','Anacleto','Zuluaga','Garces','B-',3,34,182,77,'1973-12-07 00:00:00',36,1,'D',13,6,3,8),
(4978,'Borja','Antonio','Zapata','Diaz','A+',4,14,169,60,'1986-01-06 00:00:00',38,4,'D',14,1,6,1),
(4979,'Francisca','Antonio','Barrera','Hoyos','AB+',3,24,190,61,'1977-05-17 00:00:00',37,3,'Z',6,1,6,3),
(4980,'Carmelo','Benicio','Cifuentes','Ojeda','B+',2,35,164,53,'1995-02-10 00:00:00',43,1,'D',19,3,6,2),
(4981,'Belisario','Dolores','Zuñiga','Ojeda','A+',3,20,190,76,'1967-01-09 00:00:00',38,2,'Z',3,7,13,3),
(4982,'Delma','Agustín','Uribe','Pazos','B+',3,39,189,53,'1990-07-13 00:00:00',39,4,'Z',13,4,5,3),
(4983,'Blanca','Alfredo','Polanco','Zuñiga','O-',2,7,187,79,'1964-05-15 00:00:00',37,4,'D',21,7,17,2),
(4984,'Alarico','Elea','Bermudez','Serrato','B-',1,37,184,63,'1994-07-28 00:00:00',43,4,'Z',11,7,17,6),
(4985,'Dolores','Evelina','Micolta','Pazos','B+',4,2,184,71,'1996-05-22 00:00:00',38,3,'Z',13,3,14,7),
(4986,'Cipriano','Avelina','Narvaez','Barcenas','A+',1,20,171,70,'1991-03-21 00:00:00',37,3,'D',3,6,1,7),
(4987,'Erina','Francisca','Burbano','Estrada','O+',1,28,179,83,'1971-10-13 00:00:00',40,2,'D',9,2,7,5),
(4988,'Graciela','Bruna','Cotazo','Cotazo','AB+',3,7,179,67,'1967-12-17 00:00:00',41,1,'Z',4,4,6,8),
(4989,'Dulcinea','Carmelo','Jimenez','Ocampo','AB-',4,21,162,53,'1971-07-18 00:00:00',37,1,'Z',7,2,17,4),
(4990,'Francisca','Elea','Alomia','Saucedo','AB+',4,14,175,87,'1982-04-21 00:00:00',39,4,'Z',9,5,10,1),
(4991,'Erina','Adelaida','Rengifo','Diaz','B-',2,1,178,61,'1966-06-20 00:00:00',43,3,'Z',17,2,16,7),
(4992,'Bruna','Graciela','Guevara','Ramirez','B-',2,39,163,73,'1975-08-14 00:00:00',36,2,'D',7,6,13,5),
(4993,'Custodio','Casiano','Diaz','Tobar','AB+',3,19,183,89,'1971-08-29 00:00:00',40,1,'Z',17,3,8,1),
(4994,'Francisca','Boleslao','Noriega','Rivera','AB-',1,12,176,56,'1980-07-29 00:00:00',39,3,'D',17,7,1,7),
(4995,'Bruno','Custodio','Velasquez','Serrato','B-',1,31,175,54,'1960-05-15 00:00:00',43,3,'D',19,7,14,5),
(4996,'Alcira','Anacleto','Saucedo','Soto','AB-',1,24,169,79,'1980-09-09 00:00:00',37,3,'D',9,6,4,2),
(4997,'Clara','Belisa','Garces','Millan','O+',2,26,172,52,'1962-10-12 00:00:00',43,3,'Z',5,1,9,6),
(4998,'Alison','Alison','Lopez','Bermudez','AB-',4,5,161,90,'1980-09-09 00:00:00',40,2,'Z',10,1,2,7),
(4999,'Anibal','Anacleto','Zambrano','Robles','O-',4,4,172,89,'1979-03-06 00:00:00',38,4,'D',6,7,2,1),
(5000,'Avelina','Carmelo','Rengifo','Bermudez','AB+',3,13,186,76,'1986-10-25 00:00:00',38,1,'D',11,1,6,4),
(5001,'Evelina','Emily','Giraldo','Hincapie','O+',1,28,169,71,'1991-12-10 00:00:00',41,2,'Z',14,4,13,7),
(5002,'Amadis','Carmelo','Torres','Robles','A-',1,33,169,64,'1966-01-30 00:00:00',42,2,'Z',21,7,4,3),
(5003,'Gema','Elisenda','Arenas','Agudelo','A-',1,33,161,68,'1973-08-28 00:00:00',36,1,'Z',9,4,15,1),
(5004,'Florinda','Erina','Riascos','Cifuentes','B+',4,3,190,86,'1967-04-23 00:00:00',39,4,'Z',19,2,11,1),
(5005,'Emily','Eunice','Serrato','Barcenas','B+',4,26,183,63,'1963-03-07 00:00:00',43,4,'Z',10,2,9,3),
(5006,'Alison','Arcadia','Castaño','Rivera','B+',3,29,166,63,'1994-04-20 00:00:00',43,4,'Z',18,5,16,6),
(5007,'Benicio','Crisanto','Murillo','Micolta','O+',2,21,186,73,'1977-11-08 00:00:00',41,2,'D',20,3,13,8),
(5008,'Elisenda','Dulcinea','Arenas','Velasquez','AB+',4,37,175,73,'1989-12-25 00:00:00',38,3,'Z',22,5,8,8),
(5009,'Alfredo','Dolores','Estrada','Millan','A-',4,41,166,58,'1966-01-17 00:00:00',43,1,'D',2,7,2,6),
(5010,'Felisa','Baldomero','Polanco','Delgado','B+',3,36,184,76,'1965-01-17 00:00:00',43,2,'Z',17,4,15,4),
(5011,'Cloe','Florinda','Libreros','Ordoñez','O+',3,27,169,81,'1993-08-19 00:00:00',42,1,'D',7,6,16,5),
(5012,'Ambrosio','Bruna','Astudillo','Pazos','AB+',1,21,185,70,'1972-02-17 00:00:00',36,3,'D',10,5,2,6),
(5013,'Gema','Dolores','Torres','Suarez','A+',3,10,162,76,'1977-05-19 00:00:00',43,4,'D',17,5,16,4),
(5014,'Cleto','Arcadia','Cuevas','Rueda','A-',2,19,177,90,'1970-11-11 00:00:00',40,1,'Z',5,6,5,4),
(5015,'Agustín','Cipriano','Zambrano','Arenas','A-',1,29,190,66,'1987-09-05 00:00:00',39,4,'Z',12,1,16,5),
(5016,'Borja','Alfonso','Uribe','Saucedo','B+',2,6,168,64,'1967-03-22 00:00:00',38,3,'D',16,2,8,3),
(5017,'Basilio','Cleto','Polanco','Caicedo','A+',4,29,180,52,'1979-08-02 00:00:00',39,2,'Z',23,4,12,8),
(5018,'Anibal','Adelio','Cortes','Escarria','AB+',1,35,178,54,'1982-01-24 00:00:00',36,2,'D',6,3,11,3),
(5019,'Carol','Florinda','Arce','Guevara','A+',2,14,189,77,'1989-12-11 00:00:00',36,3,'Z',19,7,12,1),
(5020,'Arnulfo','Elea','Mina','Murillo','O+',4,12,190,58,'1965-11-23 00:00:00',43,1,'Z',9,1,2,2),
(5021,'Borja','Graciela','Cuevas','Rengifo','AB+',4,2,180,51,'1981-06-18 00:00:00',41,2,'D',22,5,8,6),
(5022,'Agustín','Blanca','Guevara','Torres','A-',1,31,162,73,'1973-01-13 00:00:00',37,4,'Z',10,3,11,7),
(5023,'Alcira','Ambrosio','Millan','Zuluaga','AB+',3,40,163,51,'1988-08-10 00:00:00',38,2,'Z',23,1,7,4),
(5024,'Alexis','Angela','Cifuentes','Fuerte','O+',2,23,171,84,'1987-08-11 00:00:00',41,3,'Z',18,1,8,4),
(5025,'Adolfo','Berta','Mina','Lopez','A-',4,24,168,87,'1969-12-30 00:00:00',37,4,'D',11,2,8,8),
(5026,'Elisenda','Agata','Bermudez','Barrera','AB-',1,41,166,54,'1975-02-20 00:00:00',39,4,'D',11,7,10,5),
(5027,'Amadeo','Agustín','Alomia','Caicedo','O-',1,9,189,61,'1968-07-26 00:00:00',38,1,'D',5,3,14,2),
(5028,'Azanias','Armando','Micolta','Polanco','O+',3,17,186,73,'1974-03-25 00:00:00',38,1,'D',6,3,10,7),
(5029,'Dulcinea','Benito','Cuevas','Ocampo','A-',2,13,189,75,'1974-10-25 00:00:00',39,2,'D',15,2,6,5),
(5030,'Dalma','Francisca','Vidal','Cifuentes','B+',4,36,190,85,'1972-04-22 00:00:00',41,2,'D',17,3,12,6),
(5031,'Alfonso','Basilio','Lopez','Rueda','O+',3,14,164,66,'1966-06-02 00:00:00',36,2,'D',25,7,14,7),
(5032,'Cipriano','Anacleto','Cortes','Burbano','O-',4,21,160,61,'1975-09-19 00:00:00',38,4,'Z',16,3,15,6),
(5033,'Alcira','Basilio','Zambrano','Millan','O+',1,2,176,77,'1975-06-20 00:00:00',37,2,'D',3,6,5,3),
(5034,'Carmelo','Blasco','Garces','Gutierrez','O-',1,42,161,76,'1978-07-19 00:00:00',39,2,'D',4,2,2,7),
(5035,'Eunice','Cipriano','Tobar','Rengifo','AB-',3,20,183,87,'1975-08-05 00:00:00',40,2,'Z',6,2,4,7),
(5036,'Casiano','Adolfo','Peña','Ryes','A-',3,13,172,54,'1981-05-24 00:00:00',38,1,'D',25,7,13,8),
(5037,'Blanca','Aquilino','Soto','Gutierrez','AB-',3,6,163,73,'1991-10-15 00:00:00',39,1,'D',9,1,13,8),
(5038,'Angela','Bruno','Estrada','Libreros','O-',2,23,167,56,'1991-05-06 00:00:00',38,1,'D',19,4,10,7),
(5039,'Amadis','Angela','Riascos','Ramirez','A-',1,26,189,83,'1967-02-26 00:00:00',40,4,'D',16,5,17,6),
(5040,'Graciela','Casiano','Zapata','Tobon','AB-',4,4,189,69,'1978-11-07 00:00:00',37,3,'D',3,4,17,5),
(5041,'Anibal','Angela','Bermudez','Giraldo','A+',4,1,181,53,'1963-12-23 00:00:00',38,1,'Z',12,1,12,3),
(5042,'Alexis','Clara','Micolta','Vidal','O-',4,38,165,54,'1976-04-20 00:00:00',39,3,'Z',16,2,14,2),
(5043,'Arnulfo','Aquilino','Suarez','Escarria','A-',3,42,161,77,'1990-02-13 00:00:00',39,1,'Z',23,1,12,7),
(5044,'Armando','Elisenda','Giraldo','Loaiza','O+',3,19,164,59,'1962-07-16 00:00:00',40,3,'D',21,4,8,8),
(5045,'Belisa','Amadeo','Rengifo','Noriega','AB-',4,13,168,53,'1996-07-28 00:00:00',43,1,'Z',14,1,7,8),
(5046,'Cloe','Agustín','Tobon','Murillo','B+',3,16,174,51,'1997-08-23 00:00:00',38,1,'Z',2,2,7,6),
(5047,'Blanca','Emily','Rueda','Noriega','B+',1,4,166,72,'1981-02-09 00:00:00',39,4,'D',15,7,5,5),
(5048,'Belisario','Alfredo','Libreros','Ocampo','B-',2,15,172,83,'1971-10-13 00:00:00',36,4,'Z',6,2,12,3),
(5049,'Asael','Arcadia','Peña','Cuevas','O+',1,40,171,53,'1967-01-30 00:00:00',37,4,'D',12,4,16,2),
(5050,'Carmelo','Alarico','Arenas','Ryes','O+',1,4,167,77,'1995-05-14 00:00:00',43,4,'Z',6,5,1,6),
(5051,'Cipriano','Carmelo','Tobon','Peña','O+',3,41,178,53,'1987-12-18 00:00:00',43,2,'D',23,1,11,4),
(5052,'Graciela','Amadeo','Torres','Alomia','A+',2,34,188,65,'1979-03-07 00:00:00',39,3,'Z',22,6,6,6),
(5053,'Amadeo','Evelina','Garces','Tobon','A+',3,27,188,70,'1973-03-15 00:00:00',39,3,'Z',14,5,17,7),
(5054,'Adelio','Benicio','Astudillo','Melo','O-',3,1,177,82,'1977-01-26 00:00:00',37,3,'Z',1,7,17,3),
(5055,'Adelaida','Armando','Arenas','Serrato','O+',4,40,190,59,'1979-01-14 00:00:00',40,4,'Z',12,7,11,7),
(5056,'Bruna','Erina','Arce','Escarria','AB-',1,3,176,81,'1965-09-20 00:00:00',41,3,'Z',9,6,16,2),
(5057,'Boleslao','Dolores','Tobon','Burbano','AB+',3,1,179,87,'1981-01-14 00:00:00',36,4,'D',16,1,2,1),
(5058,'Arcadia','Delma','Hincapie','Arce','AB-',1,16,173,63,'1969-10-31 00:00:00',39,1,'D',20,5,8,8),
(5059,'Alcira','Alarico','Lopez','Saucedo','O+',1,28,172,53,'1997-06-21 00:00:00',43,1,'Z',17,6,4,8),
(5060,'Alfonso','Boleslao','Noriega','Polanco','AB-',3,32,186,60,'1984-10-26 00:00:00',41,2,'Z',18,3,11,4),
(5061,'Adelaida','Borja','Fuerte','Saucedo','B-',4,42,175,83,'1984-12-01 00:00:00',40,3,'D',21,5,2,5),
(5062,'Alison','Carmelo','Delgado','Delgado','A+',3,39,170,88,'1980-12-26 00:00:00',42,4,'Z',19,7,13,2),
(5063,'Carol','Elisenda','Tobon','Guevara','A-',1,35,168,53,'1966-02-07 00:00:00',43,3,'D',6,1,10,1),
(5064,'Delma','Erina','Alomia','Torres','B-',4,22,180,56,'1962-03-02 00:00:00',42,1,'D',11,1,4,7),
(5065,'Adelaida','Blanca','Ordoñez','Diaz','O-',4,1,164,63,'1975-05-08 00:00:00',36,1,'Z',3,6,8,2),
(5066,'Antonio','Blasco','Diaz','Bermudez','AB-',1,27,185,50,'1992-01-26 00:00:00',41,4,'D',1,3,12,6),
(5067,'Cipriano','Dolores','Riascos','Torres','B-',3,14,182,81,'1982-11-02 00:00:00',43,1,'D',14,2,1,3),
(5068,'Armando','Felisa','Gutierrez','Perea','B-',2,11,184,64,'1991-05-08 00:00:00',38,3,'D',3,3,4,7),
(5069,'Ambrosio','Carol','Ojeda','Mina','A+',2,18,180,90,'1994-12-08 00:00:00',42,1,'Z',25,6,9,4),
(5070,'Alfonso','Clara','Bermudez','Lopez','O+',3,25,173,86,'1967-02-19 00:00:00',40,4,'D',15,6,5,8),
(5071,'Dulcinea','Basilio','Galindo','Burbano','AB+',2,38,189,66,'1983-10-23 00:00:00',36,4,'D',19,5,9,1),
(5072,'Catón','Belisa','Zambrano','Polanco','AB+',3,21,167,61,'1960-01-06 00:00:00',43,4,'D',10,7,12,8),
(5073,'Arcadia','Graciela','Pazos','Serrato','AB+',4,40,179,90,'1970-06-18 00:00:00',38,4,'Z',23,6,7,7),
(5074,'Amadeo','Arnulfo','Garces','Uribe','B+',2,16,174,67,'1994-01-11 00:00:00',42,4,'Z',12,6,17,3),
(5075,'Borja','Anibal','Tobar','Melo','B-',4,15,168,67,'1995-09-16 00:00:00',43,1,'Z',20,7,8,5),
(5076,'Bruna','Blasco','Micolta','Cotazo','AB+',3,29,182,80,'1989-03-01 00:00:00',39,1,'Z',6,3,16,6),
(5077,'Adolfo','Cancio','Zuñiga','Suarez','O-',2,28,179,90,'1984-11-08 00:00:00',38,2,'Z',15,1,10,6),
(5078,'Carol','Cloe','Guevara','Ocampo','A+',4,28,166,59,'1979-12-20 00:00:00',41,1,'D',15,4,11,5),
(5079,'Alexis','Cleto','Cortes','Hincapie','O+',1,27,170,55,'1984-09-08 00:00:00',42,2,'D',8,3,9,7),
(5080,'Clara','Arcadia','Cotazo','Escarria','A+',1,17,172,56,'1962-07-11 00:00:00',39,2,'D',14,5,5,5),
(5081,'Evelina','Anacleto','Alomia','Estrada','O-',4,37,162,57,'1975-08-21 00:00:00',41,4,'D',8,4,10,5),
(5082,'Eunice','Custodio','Melo','Tobon','A-',2,23,173,73,'1975-04-01 00:00:00',36,3,'D',18,6,15,4),
(5083,'Blanca','Amadis','Loaiza','Ojeda','B-',3,42,188,86,'1963-07-18 00:00:00',41,3,'D',22,3,2,8),
(5084,'Adelio','Amaya','Zapata','Guevara','O+',3,18,177,53,'1981-08-19 00:00:00',36,3,'D',22,2,4,5),
(5085,'Avelina','Dolores','Ordoñez','Polanco','O+',4,42,184,54,'1993-12-21 00:00:00',40,1,'D',5,2,2,1),
(5086,'Anibal','Agata','Rengifo','Melo','A+',3,34,185,72,'1971-11-28 00:00:00',41,1,'Z',25,4,6,2),
(5087,'Blanca','Benito','Micolta','Vidal','AB+',3,22,165,73,'1978-07-16 00:00:00',43,1,'D',7,7,11,1),
(5088,'Florinda','Bruna','Melo','Ramirez','A+',2,22,180,54,'1985-07-06 00:00:00',39,3,'D',24,3,2,1),
(5089,'Alcira','Bruna','Galindo','Libreros','A-',4,1,188,55,'1978-01-11 00:00:00',39,2,'D',10,5,17,3),
(5090,'Benito','Delma','Vidal','Escarria','B-',2,32,175,79,'1966-12-18 00:00:00',39,1,'D',12,6,14,6),
(5091,'Berta','Agustín','Barrera','Caicedo','A-',2,22,165,62,'1967-08-13 00:00:00',41,3,'Z',12,7,13,4),
(5092,'Amaya','Asael','Zambrano','Mina','A+',3,1,177,70,'1969-06-14 00:00:00',36,3,'Z',13,7,17,3),
(5093,'Borja','Agata','Delgado','Agudelo','AB+',3,31,171,64,'1985-09-24 00:00:00',41,4,'Z',12,4,12,3),
(5094,'Benicio','Alfonso','Ramirez','Rengifo','AB-',2,24,189,88,'1975-12-02 00:00:00',39,2,'Z',20,4,2,3),
(5095,'Agata','Borja','Arce','Cortes','A+',2,5,175,73,'1971-02-15 00:00:00',43,3,'D',5,2,1,3),
(5096,'Asael','Felisa','Micolta','Garces','O+',2,5,171,86,'1971-07-27 00:00:00',41,2,'D',20,1,8,2),
(5097,'Arnulfo','Berta','Castaño','Fuerte','B+',1,37,178,72,'1970-06-28 00:00:00',40,4,'D',2,6,12,4),
(5098,'Evelina','Carmelo','Fuerte','Giraldo','A-',3,41,171,55,'1974-04-01 00:00:00',42,2,'Z',18,1,7,4),
(5099,'Dulcinea','Alison','Soto','Saucedo','O-',1,12,165,82,'1969-05-03 00:00:00',41,1,'D',14,3,5,2),
(5100,'Graciela','Atilano','Giraldo','Cotazo','O-',3,15,179,66,'1969-12-20 00:00:00',37,4,'Z',11,1,2,3),
(5101,'Angela','Alison','Ocampo','Escarria','B-',2,14,167,73,'1998-02-21 00:00:00',39,3,'Z',4,1,7,1),
(5102,'Amaya','Benito','Guevara','Galindo','B+',1,41,166,80,'1990-05-15 00:00:00',37,3,'Z',21,6,14,2),
(5103,'Carmelo','Anacleto','Cifuentes','Cotazo','A+',4,41,190,74,'1970-05-14 00:00:00',41,2,'Z',15,1,12,2),
(5104,'Baldomero','Crisanto','Libreros','Saucedo','O+',4,17,160,86,'1998-09-17 00:00:00',42,2,'Z',10,4,9,4),
(5105,'Bartolomé','Evelina','Mina','Ryes','A+',4,26,161,64,'1979-12-19 00:00:00',37,2,'D',2,4,9,1),
(5106,'Cleto','Bruna','Hoyos','Guevara','A+',3,25,177,80,'1961-09-09 00:00:00',38,4,'Z',12,1,8,4),
(5107,'Belisario','Borja','Ocampo','Alomia','A-',4,33,162,79,'1985-11-18 00:00:00',36,4,'D',21,7,12,4),
(5108,'Graciela','Adolfo','Melo','Robles','O-',3,5,170,68,'1981-10-02 00:00:00',36,3,'Z',4,4,12,5),
(5109,'Blanca','Alfonso','Barcenas','Soto','O-',1,40,183,81,'1968-08-26 00:00:00',42,3,'Z',8,1,8,1),
(5110,'Dalma','Bartolomé','Hincapie','Barrera','AB+',1,34,168,86,'1982-11-06 00:00:00',42,3,'D',13,4,2,7),
(5111,'Blasco','Alison','Ramirez','Hincapie','AB+',2,11,164,57,'1963-03-14 00:00:00',36,1,'D',25,4,9,8),
(5112,'Evelina','Casiano','Mina','Estrada','O-',2,10,174,85,'1967-06-09 00:00:00',38,4,'Z',18,3,11,7),
(5113,'Borja','Alarico','Astudillo','Uribe','A-',1,11,188,52,'1973-03-30 00:00:00',41,2,'D',14,5,16,8),
(5114,'Ambrosio','Clara','Zuñiga','Delgado','AB-',4,35,180,89,'1980-12-05 00:00:00',40,2,'Z',24,6,3,6),
(5115,'Arnulfo','Bruna','Perea','Castillo','O-',2,42,180,84,'1978-03-03 00:00:00',39,1,'Z',10,6,6,8),
(5116,'Elea','Aquilino','Mina','Lopez','O+',2,8,166,85,'1987-03-24 00:00:00',38,3,'D',25,6,1,1),
(5117,'Blasco','Dalma','Micolta','Zuluaga','B+',1,24,186,89,'1970-01-27 00:00:00',40,1,'D',1,7,7,8),
(5118,'Avelina','Custodio','Gutierrez','Zuñiga','AB-',2,4,181,88,'1984-02-25 00:00:00',43,1,'Z',21,1,17,3),
(5119,'Basilio','Carmelo','Murillo','Fuerte','AB-',1,20,172,53,'1995-03-19 00:00:00',39,3,'Z',13,4,2,1),
(5120,'Catón','Boleslao','Fuerte','Libreros','AB-',3,29,165,78,'1997-11-01 00:00:00',42,1,'D',16,1,1,4),
(5121,'Florinda','Elea','Hincapie','Hincapie','O+',4,15,182,87,'1985-03-25 00:00:00',36,3,'Z',16,7,14,7),
(5122,'Graciela','Atilano','Diaz','Delgado','AB-',3,39,171,63,'1963-02-20 00:00:00',37,3,'Z',25,7,6,4),
(5123,'Gema','Azanias','Burbano','Vidal','AB+',4,30,160,64,'1972-12-28 00:00:00',41,4,'Z',7,3,8,5),
(5124,'Benicio','Casiano','Zapata','Arenas','O+',4,31,181,57,'1988-02-27 00:00:00',43,4,'D',13,5,12,3),
(5125,'Amadeo','Arcadia','Cotazo','Narvaez','AB+',4,11,190,67,'1978-05-07 00:00:00',39,2,'Z',15,7,10,2),
(5126,'Felisa','Alison','Polanco','Torres','O-',2,21,175,54,'1965-11-13 00:00:00',37,2,'Z',7,7,12,7),
(5127,'Anibal','Dulcinea','Arce','Arenas','AB-',1,26,185,50,'1984-01-01 00:00:00',37,1,'Z',10,5,7,7),
(5128,'Carmelo','Anacleto','Barrera','Uribe','B-',4,41,175,50,'1984-04-12 00:00:00',37,2,'D',19,3,13,8),
(5129,'Avelina','Elea','Guevara','Robles','B-',4,15,163,65,'1986-01-03 00:00:00',43,1,'D',12,6,14,5),
(5130,'Alexis','Bruna','Giraldo','Escarria','A-',3,19,182,78,'1982-05-15 00:00:00',39,4,'D',10,2,8,4),
(5131,'Blasco','Atilano','Mina','Pazos','O+',3,17,178,80,'1972-02-07 00:00:00',36,3,'Z',5,1,11,7),
(5132,'Cleto','Azanias','Galindo','Caicedo','AB+',3,34,161,79,'1990-07-27 00:00:00',38,3,'Z',9,6,9,8),
(5133,'Amaya','Audrey','Burbano','Garces','O-',1,3,169,60,'1997-12-09 00:00:00',39,4,'Z',21,2,9,7),
(5134,'Florinda','Gema','Libreros','Loaiza','AB-',2,16,162,68,'1975-03-07 00:00:00',42,3,'Z',19,1,1,3),
(5135,'Anibal','Erina','Pazos','Melo','B-',1,41,173,90,'1975-03-13 00:00:00',40,2,'Z',2,4,3,3),
(5136,'Delma','Gema','Arenas','Rivera','AB-',4,42,186,82,'1994-01-20 00:00:00',42,1,'D',25,1,11,2),
(5137,'Custodio','Felisa','Alomia','Giraldo','AB-',3,31,175,67,'1991-10-20 00:00:00',41,3,'Z',5,5,11,8),
(5138,'Elea','Amaya','Ramirez','Castillo','O-',3,27,170,80,'1988-08-22 00:00:00',36,1,'D',9,4,4,5),
(5139,'Bartolomé','Avelina','Barcenas','Ojeda','B-',1,20,169,72,'1992-01-11 00:00:00',43,3,'D',12,1,10,1),
(5140,'Bruna','Audrey','Jimenez','Suarez','B+',2,33,176,85,'1987-03-21 00:00:00',41,4,'D',16,2,2,1),
(5141,'Azanias','Boleslao','Guevara','Cadena','O-',4,3,177,52,'1997-04-19 00:00:00',38,3,'D',6,2,8,8),
(5142,'Basilio','Ambrosio','Pazos','Torres','A+',2,12,189,68,'1973-05-25 00:00:00',40,3,'Z',25,3,17,2),
(5143,'Eunice','Bruno','Bermudez','Soto','B-',1,29,167,75,'1968-06-28 00:00:00',42,2,'Z',1,5,17,8),
(5144,'Custodio','Borja','Loaiza','Arenas','O-',4,10,176,61,'1960-10-03 00:00:00',42,3,'D',4,6,14,2),
(5145,'Antonio','Cipriano','Tobar','Galindo','A-',3,21,160,85,'1974-11-13 00:00:00',39,2,'Z',8,2,3,3),
(5146,'Armando','Elea','Mina','Alomia','B-',1,15,171,57,'1993-05-23 00:00:00',43,3,'D',21,1,4,3),
(5147,'Anacleto','Aquilino','Suarez','Zapata','O+',3,4,182,88,'1975-09-19 00:00:00',39,4,'D',21,4,15,1),
(5148,'Gema','Benicio','Saucedo','Cortes','AB+',4,39,166,62,'1971-11-23 00:00:00',43,4,'D',21,5,5,7),
(5149,'Angela','Crisanto','Zapata','Ryes','O-',4,11,165,90,'1995-09-05 00:00:00',36,2,'Z',19,4,17,2),
(5150,'Clara','Adelio','Serrato','Vidal','O-',1,36,171,67,'1963-11-01 00:00:00',37,1,'Z',5,1,5,5),
(5151,'Elisenda','Benito','Uribe','Mina','B+',2,35,179,78,'1962-02-11 00:00:00',36,4,'D',8,5,7,5),
(5152,'Florinda','Amadeo','Ordoñez','Zapata','AB+',4,4,177,66,'1973-05-07 00:00:00',43,1,'D',8,6,17,3),
(5153,'Crisanto','Alexis','Zuñiga','Hincapie','AB-',2,1,179,89,'1972-08-07 00:00:00',41,2,'D',24,2,9,4),
(5154,'Cipriano','Bruno','Rengifo','Velasquez','AB-',4,21,168,52,'1974-06-24 00:00:00',39,3,'D',25,4,4,1),
(5155,'Cipriano','Bartolomé','Cortes','Galindo','B-',1,18,188,68,'1968-12-30 00:00:00',39,4,'D',4,4,14,4),
(5156,'Angela','Dolores','Hincapie','Cortes','O+',1,1,187,71,'1974-06-14 00:00:00',38,4,'Z',7,2,11,1),
(5157,'Eunice','Cleto','Rengifo','Giraldo','O-',3,14,181,60,'1982-05-04 00:00:00',36,4,'D',22,6,6,6),
(5158,'Anibal','Belisa','Escarria','Ramirez','B+',4,8,184,80,'1966-02-08 00:00:00',36,2,'Z',2,6,1,3),
(5159,'Angela','Bruna','Astudillo','Ramirez','B+',1,25,171,63,'1992-05-14 00:00:00',39,4,'Z',22,5,6,4),
(5160,'Azanias','Ambrosio','Saucedo','Caicedo','B+',4,13,177,50,'1961-05-19 00:00:00',40,2,'D',19,6,5,6),
(5161,'Elisenda','Casiano','Diaz','Agudelo','A+',4,8,172,80,'1972-11-18 00:00:00',36,3,'Z',21,4,16,2),
(5162,'Casiano','Carmelo','Soto','Cadena','AB-',2,26,167,65,'1964-12-26 00:00:00',40,2,'D',17,4,1,4),
(5163,'Alfonso','Boleslao','Narvaez','Cifuentes','A-',1,10,168,79,'1993-07-31 00:00:00',36,3,'D',13,7,17,7),
(5164,'Blanca','Alcira','Bermudez','Ramirez','A+',1,15,163,79,'1962-04-20 00:00:00',36,3,'D',8,5,4,2),
(5165,'Ambrosio','Amadeo','Cuevas','Polanco','O-',1,34,186,58,'1975-05-03 00:00:00',42,1,'D',21,6,3,6),
(5166,'Carol','Elisenda','Riascos','Zambrano','O-',3,42,181,77,'1978-06-18 00:00:00',39,2,'D',8,4,8,4),
(5167,'Dalma','Amadeo','Bermudez','Murillo','A+',2,13,189,64,'1962-08-30 00:00:00',41,3,'D',9,7,4,3),
(5168,'Cancio','Aquilino','Torres','Estrada','B-',1,27,161,86,'1964-04-22 00:00:00',36,1,'Z',14,7,16,4),
(5169,'Blasco','Angela','Castillo','Jimenez','O+',2,14,168,64,'1976-11-18 00:00:00',40,4,'Z',9,4,16,2),
(5170,'Alison','Berta','Ocampo','Saucedo','AB+',3,3,178,90,'1986-07-09 00:00:00',40,1,'Z',14,5,12,6),
(5171,'Ambrosio','Elisenda','Micolta','Cuevas','O+',4,42,182,67,'1989-01-23 00:00:00',40,3,'D',17,3,14,8),
(5172,'Amaya','Ambrosio','Lopez','Perea','B+',1,16,190,67,'1989-07-07 00:00:00',38,3,'D',9,3,12,6),
(5173,'Antonio','Florinda','Barcenas','Ordoñez','O+',4,22,177,60,'1994-03-15 00:00:00',37,2,'Z',13,1,17,6),
(5174,'Evelina','Anibal','Serrato','Giraldo','O-',2,35,164,88,'1966-10-07 00:00:00',38,1,'D',11,3,17,3),
(5175,'Carol','Cloe','Micolta','Cifuentes','B-',1,28,174,54,'1966-10-13 00:00:00',40,4,'Z',1,7,2,6),
(5176,'Boleslao','Delma','Diaz','Cadena','A+',3,20,178,69,'1964-10-17 00:00:00',38,1,'Z',12,5,6,8),
(5177,'Adolfo','Felisa','Velasquez','Diaz','O-',1,11,173,72,'1980-08-30 00:00:00',43,2,'Z',14,6,14,8),
(5178,'Evelina','Basilio','Astudillo','Burbano','B+',1,27,167,76,'1963-06-26 00:00:00',42,3,'D',5,5,5,7),
(5179,'Emily','Adelio','Alomia','Suarez','A-',2,28,170,70,'1972-04-07 00:00:00',39,3,'D',9,4,3,3),
(5180,'Azanias','Catón','Arenas','Burbano','O+',2,15,160,88,'1995-10-31 00:00:00',37,1,'Z',16,4,6,3),
(5181,'Florinda','Crisanto','Jimenez','Perea','A+',2,10,171,77,'1972-04-19 00:00:00',37,3,'D',8,3,7,2),
(5182,'Cancio','Atilano','Narvaez','Castillo','B-',4,29,180,83,'1989-05-30 00:00:00',37,4,'D',14,2,11,2),
(5183,'Alison','Blanca','Ocampo','Ordoñez','B-',4,19,164,73,'1994-02-04 00:00:00',37,2,'Z',10,6,1,4),
(5184,'Agata','Arcadia','Hincapie','Castaño','O+',3,17,190,73,'1983-02-10 00:00:00',40,2,'Z',2,6,17,5),
(5185,'Carmelo','Anibal','Barrera','Rueda','B+',2,3,169,58,'1975-01-17 00:00:00',41,2,'D',25,3,3,3),
(5186,'Audrey','Francisca','Castaño','Millan','AB+',4,38,170,74,'1985-01-20 00:00:00',38,1,'D',4,4,16,3),
(5187,'Amaya','Erina','Ojeda','Arenas','O-',3,4,172,62,'1985-04-06 00:00:00',42,1,'Z',7,5,1,6),
(5188,'Blasco','Evelina','Cortes','Fuerte','A-',3,3,178,70,'1990-01-24 00:00:00',42,4,'Z',16,2,9,2),
(5189,'Blasco','Amaya','Tobon','Zuñiga','B+',4,13,160,75,'1977-05-19 00:00:00',43,1,'Z',19,7,1,5),
(5190,'Angela','Amadis','Giraldo','Zapata','O-',1,39,188,65,'1980-08-31 00:00:00',38,4,'Z',11,3,12,8),
(5191,'Belisa','Adelio','Robles','Agudelo','B+',1,38,162,61,'1992-01-23 00:00:00',37,1,'D',25,1,9,1),
(5192,'Graciela','Dolores','Peña','Alomia','B-',2,9,162,58,'1993-09-04 00:00:00',42,2,'D',1,3,7,1),
(5193,'Francisca','Benito','Rueda','Agudelo','AB+',3,17,188,51,'1970-01-23 00:00:00',42,4,'D',10,4,12,5),
(5194,'Blanca','Dolores','Castillo','Perea','AB+',2,28,171,66,'1966-05-29 00:00:00',38,3,'Z',19,5,10,8),
(5195,'Agata','Alfredo','Zuñiga','Soto','B+',2,23,187,51,'1992-02-20 00:00:00',38,4,'Z',9,7,5,7),
(5196,'Amadis','Elea','Melo','Delgado','A-',1,18,187,72,'1991-11-08 00:00:00',43,4,'Z',12,2,11,1),
(5197,'Evelina','Berta','Castillo','Cifuentes','B+',3,2,172,75,'1991-07-14 00:00:00',37,2,'D',8,2,15,3),
(5198,'Dalma','Angela','Rueda','Cadena','A+',2,25,175,69,'1992-09-08 00:00:00',40,3,'D',15,2,7,3),
(5199,'Eunice','Blasco','Rivera','Velasquez','O-',2,14,181,68,'1990-08-03 00:00:00',37,1,'D',12,5,4,6),
(5200,'Clara','Clara','Rengifo','Polanco','AB-',2,3,179,59,'1963-02-24 00:00:00',40,2,'Z',24,1,15,6),
(5201,'Basilio','Arcadia','Cuevas','Gutierrez','AB+',2,35,185,90,'1966-02-08 00:00:00',36,1,'D',12,5,11,5),
(5202,'Elisenda','Alexis','Ryes','Cuevas','O-',3,1,168,60,'1962-06-16 00:00:00',36,2,'D',16,5,6,5),
(5203,'Elea','Casiano','Tobar','Diaz','AB+',3,4,189,67,'1985-03-03 00:00:00',39,1,'Z',3,7,9,2),
(5204,'Asael','Adolfo','Arenas','Ramirez','AB-',2,3,184,61,'1964-11-09 00:00:00',38,3,'Z',23,2,15,1),
(5205,'Elisenda','Custodio','Delgado','Galindo','AB+',4,3,179,54,'1985-05-03 00:00:00',37,2,'Z',2,6,8,4),
(5206,'Arnulfo','Casiano','Arenas','Ryes','O-',1,19,169,68,'1986-02-26 00:00:00',40,1,'Z',24,1,15,5),
(5207,'Benito','Cipriano','Velasquez','Ramirez','AB-',2,13,174,79,'1991-11-28 00:00:00',38,2,'Z',24,3,3,1),
(5208,'Belisa','Azanias','Barcenas','Uribe','O+',3,26,182,68,'1978-11-27 00:00:00',38,1,'D',7,3,16,2),
(5209,'Blasco','Graciela','Libreros','Velasquez','O+',1,7,182,80,'1981-11-16 00:00:00',36,3,'Z',20,2,5,1),
(5210,'Carmelo','Amaya','Serrato','Zuluaga','A+',2,40,175,73,'1997-02-14 00:00:00',43,2,'Z',25,1,7,2),
(5211,'Asael','Basilio','Peña','Uribe','B-',1,19,171,72,'1988-11-15 00:00:00',43,4,'Z',19,2,1,8),
(5212,'Cipriano','Alfredo','Alomia','Cuevas','O-',3,14,184,76,'1962-10-27 00:00:00',43,2,'D',9,7,10,8),
(5213,'Bartolomé','Gema','Vidal','Cifuentes','A-',3,15,183,65,'1969-08-08 00:00:00',43,1,'D',1,2,10,2),
(5214,'Armando','Alcira','Uribe','Perea','B+',4,39,163,69,'1962-09-23 00:00:00',42,4,'Z',13,4,9,1),
(5215,'Armando','Antonio','Barcenas','Serrato','AB+',1,6,169,67,'1979-06-30 00:00:00',41,1,'Z',7,3,4,5),
(5216,'Adelaida','Agata','Ocampo','Ramirez','AB+',2,29,162,51,'1989-05-25 00:00:00',39,2,'Z',11,6,12,5),
(5217,'Elisenda','Alfredo','Noriega','Cotazo','B-',4,35,182,64,'1964-11-16 00:00:00',41,4,'Z',17,1,16,8),
(5218,'Crisanto','Avelina','Zuñiga','Cifuentes','B+',2,4,190,58,'1983-10-18 00:00:00',36,4,'Z',17,3,2,1),
(5219,'Casiano','Dalma','Alomia','Melo','A+',4,10,170,51,'1984-11-10 00:00:00',37,4,'Z',23,4,17,4),
(5220,'Azanias','Custodio','Libreros','Cifuentes','O+',4,24,175,62,'1971-02-17 00:00:00',38,4,'D',16,2,17,8),
(5221,'Audrey','Elea','Estrada','Galindo','O+',4,34,185,78,'1980-03-22 00:00:00',41,2,'D',25,6,16,6),
(5222,'Adolfo','Atilano','Micolta','Zapata','AB-',3,41,162,84,'1964-12-02 00:00:00',41,2,'D',5,3,17,6),
(5223,'Amadis','Belisario','Riascos','Serrato','AB+',4,26,174,53,'1994-11-30 00:00:00',43,3,'D',5,7,15,3),
(5224,'Arcadia','Dalma','Tobon','Castillo','A+',4,7,177,87,'1974-01-18 00:00:00',36,3,'D',24,1,8,7),
(5225,'Blasco','Amadeo','Lopez','Cuevas','A+',4,36,175,90,'1974-05-11 00:00:00',41,3,'D',9,4,4,4),
(5226,'Delma','Amadis','Hincapie','Giraldo','O+',4,28,187,60,'1976-04-24 00:00:00',40,3,'Z',22,2,2,5),
(5227,'Dulcinea','Casiano','Galindo','Fuerte','B+',3,12,162,83,'1990-01-30 00:00:00',38,2,'D',13,3,12,4),
(5228,'Avelina','Elisenda','Zuluaga','Diaz','B+',3,15,162,62,'1989-07-05 00:00:00',40,3,'D',11,4,17,5),
(5229,'Blasco','Anacleto','Galindo','Cuevas','A-',1,5,180,76,'1989-09-18 00:00:00',36,4,'Z',14,4,9,2),
(5230,'Blanca','Alfredo','Fuerte','Agudelo','B-',1,9,188,68,'1988-03-03 00:00:00',36,4,'D',14,2,1,4),
(5231,'Casiano','Delma','Jimenez','Velasquez','A+',2,24,179,52,'1981-02-11 00:00:00',43,4,'D',11,5,8,3),
(5232,'Aquilino','Blanca','Pazos','Rengifo','A+',2,4,179,84,'1988-01-07 00:00:00',39,4,'Z',18,4,6,1),
(5233,'Cleto','Florinda','Tobon','Cuevas','O-',3,13,189,73,'1964-06-27 00:00:00',38,3,'Z',18,2,15,6),
(5234,'Atilano','Alcira','Rivera','Velasquez','O-',3,26,160,76,'1994-06-02 00:00:00',36,1,'D',10,2,1,1),
(5235,'Amadeo','Cleto','Escarria','Velasquez','O+',4,15,172,50,'1970-09-13 00:00:00',42,3,'Z',15,7,4,4),
(5236,'Amadis','Azanias','Caicedo','Tobar','O+',1,28,186,67,'1988-03-06 00:00:00',38,1,'Z',11,3,8,4),
(5237,'Cleto','Agustín','Tobar','Estrada','O-',4,4,163,77,'1992-09-09 00:00:00',39,2,'Z',24,4,10,3),
(5238,'Armando','Gema','Escarria','Zambrano','A-',3,42,161,53,'1969-08-15 00:00:00',37,2,'D',25,5,17,2),
(5239,'Belisario','Eunice','Ojeda','Hincapie','AB-',2,34,166,50,'1998-01-15 00:00:00',38,2,'D',23,2,15,5),
(5240,'Cleto','Cloe','Giraldo','Arce','B-',4,42,183,77,'1985-05-15 00:00:00',43,3,'Z',14,3,9,6),
(5241,'Alfonso','Adolfo','Rivera','Saucedo','O-',3,28,172,78,'1987-07-11 00:00:00',36,2,'Z',23,6,2,2),
(5242,'Anibal','Florinda','Burbano','Zuñiga','AB+',3,20,187,55,'1966-08-14 00:00:00',40,4,'Z',24,6,12,2),
(5243,'Custodio','Adolfo','Ryes','Polanco','B+',1,39,163,76,'1988-12-25 00:00:00',39,1,'Z',12,3,15,8),
(5244,'Dolores','Bruno','Pazos','Diaz','A-',2,41,164,66,'1994-04-30 00:00:00',36,3,'Z',17,7,2,1),
(5245,'Eunice','Cleto','Arce','Garces','A-',3,13,168,57,'1996-08-30 00:00:00',42,1,'D',6,7,16,5),
(5246,'Blasco','Emily','Estrada','Barrera','O+',2,2,179,80,'1987-07-07 00:00:00',39,4,'Z',11,7,7,1),
(5247,'Aquilino','Francisca','Serrato','Astudillo','AB-',2,33,182,71,'1988-06-10 00:00:00',40,2,'D',6,7,11,4),
(5248,'Eunice','Dolores','Riascos','Robles','AB-',3,20,170,57,'1996-01-17 00:00:00',42,4,'D',12,7,1,1),
(5249,'Felisa','Casiano','Ryes','Fuerte','A+',1,40,163,56,'1985-10-22 00:00:00',36,3,'D',2,7,13,2),
(5250,'Erina','Blasco','Hincapie','Escarria','B+',2,28,170,83,'1972-10-17 00:00:00',41,4,'Z',25,7,9,1),
(5251,'Atilano','Alexis','Peña','Pazos','O-',3,1,173,89,'1987-07-31 00:00:00',40,3,'D',21,5,14,7),
(5252,'Francisca','Blanca','Barcenas','Ryes','B+',2,22,174,65,'1993-10-30 00:00:00',38,2,'Z',17,7,12,4),
(5253,'Audrey','Felisa','Torres','Estrada','AB+',1,20,166,81,'1995-05-28 00:00:00',41,1,'Z',21,6,12,4),
(5254,'Antonio','Carmelo','Cotazo','Libreros','A+',4,9,164,80,'1964-06-02 00:00:00',40,3,'Z',17,6,16,1),
(5255,'Francisca','Custodio','Agudelo','Cuevas','A+',2,42,161,58,'1990-09-21 00:00:00',43,2,'D',6,5,10,4),
(5256,'Anacleto','Elisenda','Cuevas','Pazos','B+',1,42,179,64,'1966-06-24 00:00:00',40,4,'D',3,6,16,1),
(5257,'Elisenda','Graciela','Serrato','Ordoñez','B+',2,26,190,81,'1984-02-22 00:00:00',40,3,'D',9,1,10,7),
(5258,'Avelina','Bruna','Escarria','Loaiza','AB+',1,19,170,90,'1964-05-31 00:00:00',39,4,'D',17,2,13,3),
(5259,'Alfredo','Custodio','Rengifo','Lopez','O-',3,7,179,82,'1966-10-11 00:00:00',36,1,'D',1,4,1,6),
(5260,'Antonio','Cloe','Cifuentes','Ojeda','A-',2,17,164,90,'1979-04-15 00:00:00',43,2,'D',23,4,3,2),
(5261,'Eunice','Erina','Perea','Saucedo','O+',4,1,190,73,'1989-11-22 00:00:00',40,4,'Z',9,3,15,7),
(5262,'Delma','Alfonso','Perea','Cifuentes','O-',4,12,186,83,'1972-08-08 00:00:00',43,1,'Z',21,4,6,7),
(5263,'Arnulfo','Amaya','Noriega','Estrada','O-',2,37,182,53,'1972-01-07 00:00:00',39,2,'D',23,3,10,4),
(5264,'Asael','Amaya','Diaz','Tobar','A+',1,29,184,76,'1965-01-28 00:00:00',36,3,'D',2,6,12,7),
(5265,'Alison','Florinda','Diaz','Vidal','B-',2,23,183,84,'1975-02-06 00:00:00',43,4,'Z',24,2,13,7),
(5266,'Alarico','Crisanto','Torres','Bermudez','O-',4,1,190,74,'1988-03-21 00:00:00',36,3,'D',22,2,16,4),
(5267,'Alison','Amadis','Vidal','Jimenez','B+',1,30,187,52,'1965-07-01 00:00:00',39,2,'Z',21,3,16,4),
(5268,'Ambrosio','Aquilino','Rengifo','Ordoñez','O-',1,33,176,64,'1980-12-18 00:00:00',36,2,'Z',1,7,3,7),
(5269,'Arcadia','Adelio','Pazos','Caicedo','AB+',2,19,167,74,'1968-07-11 00:00:00',43,1,'Z',25,3,9,6),
(5270,'Crisanto','Anibal','Rengifo','Gutierrez','O+',3,15,180,83,'1992-06-27 00:00:00',41,1,'D',23,1,5,1),
(5271,'Dulcinea','Alcira','Cortes','Lopez','A+',2,30,186,80,'1960-09-08 00:00:00',38,2,'D',13,5,16,3),
(5272,'Avelina','Crisanto','Cortes','Pazos','A-',2,33,189,53,'1966-07-19 00:00:00',43,2,'D',15,1,11,1),
(5273,'Asael','Carmelo','Agudelo','Ordoñez','AB+',4,15,177,55,'1966-06-11 00:00:00',36,4,'D',2,6,8,7),
(5274,'Cipriano','Adolfo','Serrato','Ramirez','A+',1,40,161,81,'1996-09-26 00:00:00',36,3,'Z',20,1,9,1),
(5275,'Berta','Adelaida','Guevara','Cortes','B+',1,30,186,60,'1972-12-26 00:00:00',39,3,'Z',20,4,16,2),
(5276,'Bartolomé','Dulcinea','Soto','Polanco','O-',1,19,181,57,'1968-03-26 00:00:00',43,3,'D',12,2,3,7),
(5277,'Francisca','Audrey','Ordoñez','Escarria','A+',1,7,167,61,'1963-09-06 00:00:00',38,4,'D',6,1,2,2),
(5278,'Florinda','Amadis','Zuluaga','Pazos','B-',2,24,169,73,'1984-07-23 00:00:00',39,3,'D',4,5,10,1),
(5279,'Dolores','Baldomero','Saucedo','Riascos','AB+',2,39,187,64,'1964-08-06 00:00:00',37,4,'Z',3,4,16,7),
(5280,'Delma','Asael','Lopez','Cotazo','A+',3,32,179,82,'1976-03-06 00:00:00',38,3,'Z',21,5,5,3),
(5281,'Cipriano','Ambrosio','Millan','Arenas','B+',1,36,178,83,'1990-12-12 00:00:00',40,1,'Z',6,2,15,7),
(5282,'Blanca','Eunice','Zambrano','Cadena','A+',3,29,161,51,'1990-09-30 00:00:00',42,4,'Z',2,1,5,8),
(5283,'Carol','Gema','Castillo','Rivera','B-',1,35,186,52,'1980-11-14 00:00:00',37,1,'Z',16,6,5,6),
(5284,'Ambrosio','Azanias','Melo','Rivera','O-',1,22,178,69,'1993-02-26 00:00:00',37,3,'D',11,1,13,4),
(5285,'Alcira','Delma','Tobar','Ordoñez','A+',2,5,164,60,'1970-09-26 00:00:00',40,2,'D',14,3,15,2),
(5286,'Alfonso','Alarico','Saucedo','Guevara','A+',4,12,174,83,'1981-03-03 00:00:00',39,4,'Z',16,4,6,4),
(5287,'Cloe','Berta','Ojeda','Hincapie','AB+',2,25,190,77,'1987-09-08 00:00:00',39,4,'Z',17,5,16,5),
(5288,'Clara','Anibal','Astudillo','Fuerte','AB-',4,1,165,87,'1966-11-26 00:00:00',43,1,'D',16,5,5,7),
(5289,'Borja','Carmelo','Ojeda','Castaño','B+',4,14,183,58,'1963-01-24 00:00:00',43,3,'Z',5,3,2,1),
(5290,'Custodio','Borja','Barcenas','Loaiza','AB+',4,27,167,70,'1997-06-01 00:00:00',43,3,'D',19,4,6,4),
(5291,'Cancio','Agata','Hoyos','Mina','B-',2,10,163,87,'1991-04-07 00:00:00',38,2,'Z',11,3,15,4),
(5292,'Anibal','Elea','Ryes','Cortes','A-',1,39,169,60,'1979-03-10 00:00:00',42,2,'D',9,6,12,1),
(5293,'Graciela','Ambrosio','Arenas','Noriega','B+',1,18,180,65,'1989-06-16 00:00:00',39,3,'Z',18,3,4,3),
(5294,'Adelio','Carol','Agudelo','Estrada','B+',4,19,190,79,'1963-11-27 00:00:00',40,4,'D',23,7,11,4),
(5295,'Angela','Erina','Cadena','Arce','AB+',1,33,176,62,'1988-05-16 00:00:00',41,4,'D',3,1,8,3),
(5296,'Dolores','Aquilino','Arenas','Noriega','A+',3,7,175,69,'1985-10-21 00:00:00',42,4,'D',6,4,1,6),
(5297,'Amadis','Benito','Hoyos','Rueda','O-',2,40,182,71,'1975-09-28 00:00:00',43,2,'D',7,7,7,5),
(5298,'Asael','Catón','Ryes','Escarria','AB+',1,13,173,60,'1990-06-04 00:00:00',39,3,'Z',16,5,16,6),
(5299,'Baldomero','Anibal','Burbano','Libreros','O+',2,32,175,86,'1979-01-29 00:00:00',38,2,'D',3,3,6,2),
(5300,'Catón','Alfredo','Galindo','Ordoñez','B-',2,24,167,78,'1994-11-15 00:00:00',41,3,'D',10,4,1,5),
(5301,'Delma','Agata','Garces','Zuñiga','O+',4,12,179,53,'1990-03-20 00:00:00',39,4,'D',4,6,11,8),
(5302,'Benito','Delma','Cortes','Tobar','AB-',4,27,166,76,'1963-11-27 00:00:00',40,4,'Z',9,4,16,4),
(5303,'Emily','Boleslao','Ramirez','Escarria','B-',3,14,171,84,'1995-08-10 00:00:00',42,3,'Z',9,4,10,8),
(5304,'Boleslao','Bruna','Tobar','Arenas','B+',1,1,178,71,'1997-11-28 00:00:00',36,2,'D',23,5,16,3),
(5305,'Arcadia','Anacleto','Mina','Barcenas','O-',4,21,171,72,'1978-08-07 00:00:00',38,2,'D',25,1,5,3),
(5306,'Adelio','Audrey','Robles','Zuluaga','O+',3,20,168,69,'1964-07-21 00:00:00',41,3,'D',22,1,2,5),
(5307,'Gema','Custodio','Cuevas','Saucedo','O+',4,11,162,68,'1972-10-21 00:00:00',40,2,'D',25,6,12,4),
(5308,'Florinda','Atilano','Micolta','Torres','A-',1,23,175,67,'1960-01-08 00:00:00',39,1,'Z',10,4,13,7),
(5309,'Angela','Felisa','Zambrano','Agudelo','A+',2,15,187,76,'1989-01-01 00:00:00',37,4,'Z',8,7,1,4),
(5310,'Dalma','Evelina','Agudelo','Zapata','AB-',2,2,162,90,'1966-12-02 00:00:00',39,2,'D',20,6,12,2),
(5311,'Catón','Amadeo','Escarria','Gutierrez','AB+',1,11,187,89,'1997-01-11 00:00:00',41,3,'D',8,7,4,2),
(5312,'Francisca','Catón','Saucedo','Burbano','AB+',2,15,170,67,'1973-05-31 00:00:00',43,4,'Z',15,4,5,1),
(5313,'Anibal','Custodio','Zapata','Tobar','O+',2,19,167,68,'1995-01-20 00:00:00',37,1,'Z',5,5,8,6),
(5314,'Custodio','Armando','Fuerte','Zuñiga','A+',3,15,180,77,'1963-11-25 00:00:00',36,4,'Z',17,1,12,7),
(5315,'Alfredo','Borja','Lopez','Barcenas','B-',4,26,185,76,'1993-03-02 00:00:00',39,2,'D',2,1,17,5),
(5316,'Elea','Boleslao','Astudillo','Noriega','O-',4,5,174,70,'1969-07-24 00:00:00',36,3,'Z',23,4,1,2),
(5317,'Graciela','Alfonso','Zapata','Perea','B+',1,37,174,74,'1987-03-03 00:00:00',39,1,'Z',5,3,4,2),
(5318,'Agata','Graciela','Zapata','Hoyos','A+',1,41,179,83,'1973-05-07 00:00:00',41,1,'Z',21,6,16,6),
(5319,'Evelina','Alfonso','Noriega','Alomia','AB+',4,24,163,63,'1968-10-11 00:00:00',41,4,'Z',12,2,9,7),
(5320,'Emily','Audrey','Melo','Ojeda','B-',1,27,181,65,'1987-11-20 00:00:00',43,3,'D',10,5,12,7),
(5321,'Baldomero','Agata','Cortes','Serrato','O+',3,1,180,57,'1983-03-31 00:00:00',36,1,'D',16,3,8,6),
(5322,'Amadeo','Basilio','Cortes','Murillo','B-',4,20,187,82,'1985-05-25 00:00:00',36,2,'Z',13,4,13,8),
(5323,'Azanias','Dulcinea','Gutierrez','Arenas','A-',3,35,183,75,'1980-06-20 00:00:00',39,1,'Z',25,5,1,3),
(5324,'Bartolomé','Catón','Ryes','Tobon','A+',2,3,183,78,'1992-10-09 00:00:00',36,2,'D',23,4,11,7),
(5325,'Belisa','Bruno','Arenas','Castaño','B-',2,20,183,64,'1977-05-12 00:00:00',37,2,'D',24,1,9,3),
(5326,'Delma','Delma','Narvaez','Jimenez','A+',3,36,174,63,'1976-09-04 00:00:00',43,1,'Z',23,4,16,7),
(5327,'Eunice','Elisenda','Murillo','Arce','AB+',3,41,173,51,'1966-11-12 00:00:00',39,4,'D',1,6,3,6),
(5328,'Adolfo','Casiano','Ordoñez','Bermudez','B-',3,21,187,81,'1994-10-14 00:00:00',40,4,'Z',12,6,8,7),
(5329,'Blanca','Baldomero','Velasquez','Micolta','A-',3,30,168,52,'1996-09-21 00:00:00',39,4,'D',20,3,14,3),
(5330,'Carol','Boleslao','Ojeda','Rueda','B+',4,17,188,73,'1962-12-07 00:00:00',40,1,'Z',20,2,13,4),
(5331,'Cipriano','Dolores','Polanco','Ryes','O+',2,35,183,54,'1967-04-06 00:00:00',41,4,'D',19,6,14,2),
(5332,'Clara','Delma','Rivera','Ryes','AB-',2,18,173,59,'1998-07-09 00:00:00',37,1,'Z',9,7,9,7),
(5333,'Cloe','Anacleto','Garces','Garces','O+',1,39,169,87,'1968-09-07 00:00:00',38,2,'Z',23,1,1,5),
(5334,'Catón','Emily','Burbano','Perea','A-',1,40,188,60,'1982-07-06 00:00:00',37,2,'Z',19,5,17,4),
(5335,'Eunice','Alfonso','Arce','Barrera','A-',2,1,178,51,'1972-11-29 00:00:00',38,2,'Z',10,6,16,5),
(5336,'Belisa','Alcira','Tobar','Guevara','B+',1,19,163,85,'1972-01-15 00:00:00',39,1,'D',25,2,5,2),
(5337,'Asael','Catón','Guevara','Arce','O+',4,37,180,79,'1963-08-22 00:00:00',37,3,'D',3,4,10,6),
(5338,'Amadeo','Basilio','Narvaez','Suarez','O-',3,32,165,76,'1961-11-06 00:00:00',36,3,'D',10,4,2,7),
(5339,'Audrey','Custodio','Cotazo','Cortes','O-',1,36,166,78,'1974-03-26 00:00:00',39,3,'D',25,1,14,2),
(5340,'Belisario','Dalma','Melo','Ramirez','A+',2,27,178,53,'1969-04-03 00:00:00',40,2,'Z',16,1,13,5),
(8888888,'Cipriano','Antonio','Robles','Zapata','O-',1,39,172,66,'1966-09-05 00:00:00',41,3,'D',21,6,14,7);

/*Table structure for table `profesion` */

DROP TABLE IF EXISTS `profesion`;

CREATE TABLE `profesion` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `profesion` */

insert  into `profesion`(`codigo`,`nombre`) values 
(1,'Abogacía'),
(2,'Actuación'),
(3,'Arquitectura'),
(4,'Biblioteca'),
(5,'Biología'),
(6,'Chef'),
(7,'Dentista'),
(8,'Dirección de Orquesta'),
(9,'Docente'),
(10,'Electricista'),
(11,'Ingeniería'),
(12,'Medicina'),
(13,'Militar'),
(14,'Piloto'),
(15,'Psicología'),
(16,'Psiquiatría'),
(17,'Robótica');

insert  into `usuario`(`id`,`contrasena`,`tipo`) values 
('administrador','DEFECTO',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
