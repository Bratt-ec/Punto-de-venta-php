# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: stockapp
# ------------------------------------------------------
# Server version 5.5.27

#
# Table structure for table caja
#

CREATE TABLE `caja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` varchar(9) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `habilitado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table cajachica
#

CREATE TABLE `cajachica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` varchar(9) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `cajachica` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table cajachicaregistros
#

CREATE TABLE `cajachicaregistros` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `monto` varchar(9) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `Detalle` text,
  `habilitado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `cajachicaregistros` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table cajaregistros
#

CREATE TABLE `cajaregistros` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `monto` varchar(9) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `detalle` varchar(75) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `cajaregistros` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table cajatmp
#

CREATE TABLE `cajatmp` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `idfactura` int(25) DEFAULT NULL,
  `producto` int(2) DEFAULT NULL,
  `cantidad` int(5) DEFAULT '1',
  `precio` float DEFAULT NULL,
  `totalprecio` float DEFAULT NULL,
  `vendedor` int(9) DEFAULT NULL,
  `cliente` int(9) DEFAULT '1',
  `stockTmp` int(9) DEFAULT '0',
  `stock` int(9) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `cajatmp` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table canton
#

CREATE TABLE `canton` (
  `id` smallint(5) unsigned NOT NULL,
  `id_provincia` smallint(5) unsigned NOT NULL,
  `canton` varchar(45) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_CANTON_PROVINCIA` (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `canton` VALUES (101,1,'Machala');
INSERT INTO `canton` VALUES (102,1,'Arenillas');
INSERT INTO `canton` VALUES (103,1,'Atahualpa');
INSERT INTO `canton` VALUES (104,1,'Balsas');
INSERT INTO `canton` VALUES (105,1,'Chilla');
INSERT INTO `canton` VALUES (106,1,'El Guabo');
INSERT INTO `canton` VALUES (107,1,'Huaquillas');
INSERT INTO `canton` VALUES (108,1,'Las Lajas');
INSERT INTO `canton` VALUES (109,1,'Marcabelí');
INSERT INTO `canton` VALUES (110,1,'Pasaje');
INSERT INTO `canton` VALUES (111,1,'Piñas');
INSERT INTO `canton` VALUES (112,1,'Portovelo');
INSERT INTO `canton` VALUES (113,1,'Santa Rosa');
INSERT INTO `canton` VALUES (114,1,'Zaruma');
INSERT INTO `canton` VALUES (201,2,'Alajuela');
INSERT INTO `canton` VALUES (202,2,'San RamÃ³n');
INSERT INTO `canton` VALUES (203,2,'Grecia');
INSERT INTO `canton` VALUES (204,2,'San Mateo');
INSERT INTO `canton` VALUES (205,2,'Atenas');
INSERT INTO `canton` VALUES (206,2,'Naranjo');
INSERT INTO `canton` VALUES (207,2,'Palmares');
INSERT INTO `canton` VALUES (208,2,'PoÃ¡s');
INSERT INTO `canton` VALUES (209,2,'Orotina');
INSERT INTO `canton` VALUES (210,2,'San Carlos');
INSERT INTO `canton` VALUES (211,2,'Alfaro Ruiz');
INSERT INTO `canton` VALUES (212,2,'Valverde Vega');
INSERT INTO `canton` VALUES (213,2,'Upala');
INSERT INTO `canton` VALUES (214,2,'Los Chiles');
INSERT INTO `canton` VALUES (215,2,'Guatuso');
INSERT INTO `canton` VALUES (301,3,'Cartago');
INSERT INTO `canton` VALUES (302,3,'ParaÃ­so');
INSERT INTO `canton` VALUES (303,3,'La UniÃ³n');
INSERT INTO `canton` VALUES (304,3,'JimÃ©nez');
INSERT INTO `canton` VALUES (305,3,'Turrialba');
INSERT INTO `canton` VALUES (306,3,'Alvarado');
INSERT INTO `canton` VALUES (307,3,'Oreamuno');
INSERT INTO `canton` VALUES (308,3,'El Guarco');
INSERT INTO `canton` VALUES (401,4,'Heredia');
INSERT INTO `canton` VALUES (402,4,'Barva');
INSERT INTO `canton` VALUES (403,4,'Santo Domingo');
INSERT INTO `canton` VALUES (404,4,'Santa BÃ¡rbara');
INSERT INTO `canton` VALUES (405,4,'San Rafael');
INSERT INTO `canton` VALUES (406,4,'San Isidro');
INSERT INTO `canton` VALUES (407,4,'BelÃ©n');
INSERT INTO `canton` VALUES (408,4,'Flores');
INSERT INTO `canton` VALUES (409,4,'San Pablo');
INSERT INTO `canton` VALUES (410,4,'SarapiquÃ­ ');
INSERT INTO `canton` VALUES (501,5,'Liberia');
INSERT INTO `canton` VALUES (502,5,'Nicoya');
INSERT INTO `canton` VALUES (503,5,'Santa Cruz');
INSERT INTO `canton` VALUES (504,5,'Bagaces');
INSERT INTO `canton` VALUES (505,5,'Carrillo');
INSERT INTO `canton` VALUES (506,5,'CaÃ±as');
INSERT INTO `canton` VALUES (507,5,'Abangares');
INSERT INTO `canton` VALUES (508,5,'TilarÃ¡n');
INSERT INTO `canton` VALUES (509,5,'Nandayure');
INSERT INTO `canton` VALUES (510,5,'La Cruz');
INSERT INTO `canton` VALUES (511,5,'Hojancha');
INSERT INTO `canton` VALUES (601,6,'Puntarenas');
INSERT INTO `canton` VALUES (602,6,'Esparza');
INSERT INTO `canton` VALUES (603,6,'Buenos Aires');
INSERT INTO `canton` VALUES (604,6,'Montes de Oro');
INSERT INTO `canton` VALUES (605,6,'Osa');
INSERT INTO `canton` VALUES (606,6,'Aguirre');
INSERT INTO `canton` VALUES (607,6,'Golfito');
INSERT INTO `canton` VALUES (608,6,'Coto Brus');
INSERT INTO `canton` VALUES (609,6,'Parrita');
INSERT INTO `canton` VALUES (610,6,'Corredores');
INSERT INTO `canton` VALUES (611,6,'Garabito');
INSERT INTO `canton` VALUES (701,7,'LimÃ³n');
INSERT INTO `canton` VALUES (702,7,'PococÃ­');
INSERT INTO `canton` VALUES (703,7,'Siquirres');
INSERT INTO `canton` VALUES (704,7,'Talamanca');
INSERT INTO `canton` VALUES (705,7,'Matina');
INSERT INTO `canton` VALUES (706,7,'GuÃ¡cimo');
/*!40000 ALTER TABLE `canton` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table cierre
#

CREATE TABLE `cierre` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `numero` int(2) DEFAULT NULL,
  `valor` int(5) DEFAULT NULL,
  `tipo` varchar(35) DEFAULT NULL,
  `fecha` varchar(25) DEFAULT NULL,
  `hora` varchar(25) DEFAULT NULL,
  `vendedor` varchar(35) DEFAULT NULL,
  `cliente` varchar(35) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `cierre` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table cliente
#

CREATE TABLE `cliente` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descuento` varchar(4) DEFAULT '0',
  `habilitado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `cliente` VALUES (1,'Cliente Contado','0',1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table credito
#

CREATE TABLE `credito` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(25) DEFAULT NULL,
  `deuda` int(25) DEFAULT NULL,
  `deudaNeta` int(25) DEFAULT NULL,
  `saldo` int(25) DEFAULT NULL,
  `fecha` varchar(25) DEFAULT NULL,
  `interes` int(5) DEFAULT NULL,
  `cuota` varchar(25) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_credito` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `credito` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table departamento
#

CREATE TABLE `departamento` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `habilitada` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `departamento` VALUES (1,'Genérico ',1);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table distrito
#

CREATE TABLE `distrito` (
  `id` int(10) unsigned NOT NULL,
  `id_canton` smallint(5) unsigned NOT NULL,
  `distrito` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_DISTRITO_CANTON` (`id_canton`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `distrito` VALUES (10101,101,'Domicilio');
INSERT INTO `distrito` VALUES (10102,101,'Domicilio');
INSERT INTO `distrito` VALUES (10103,101,'Domicilio');
INSERT INTO `distrito` VALUES (10104,101,'Domicilio');
INSERT INTO `distrito` VALUES (10105,101,'Domicilio');
INSERT INTO `distrito` VALUES (10106,101,'Domicilio');
INSERT INTO `distrito` VALUES (10107,101,'Domicilio');
INSERT INTO `distrito` VALUES (10108,101,'Domicilio');
INSERT INTO `distrito` VALUES (10109,101,'Domicilio');
INSERT INTO `distrito` VALUES (10110,101,'Domicilio');
INSERT INTO `distrito` VALUES (10111,101,'Domicilio');
INSERT INTO `distrito` VALUES (10201,102,'Domicilio');
INSERT INTO `distrito` VALUES (10202,102,'Domicilio');
INSERT INTO `distrito` VALUES (10203,102,'Domicilio');
INSERT INTO `distrito` VALUES (10301,103,'Domicilio');
INSERT INTO `distrito` VALUES (10302,103,'Domicilio');
INSERT INTO `distrito` VALUES (10303,103,'Domicilio');
INSERT INTO `distrito` VALUES (10304,103,'Domicilio');
INSERT INTO `distrito` VALUES (10305,103,'Domicilio');
INSERT INTO `distrito` VALUES (10306,103,'Domicilio');
INSERT INTO `distrito` VALUES (10307,103,'Domicilio');
INSERT INTO `distrito` VALUES (10308,103,'Domicilio');
INSERT INTO `distrito` VALUES (10309,103,'Domicilio');
INSERT INTO `distrito` VALUES (10310,103,'Domicilio');
INSERT INTO `distrito` VALUES (10311,103,'Domicilio');
INSERT INTO `distrito` VALUES (10312,103,'Domicilio');
INSERT INTO `distrito` VALUES (10313,103,'Domicilio');
INSERT INTO `distrito` VALUES (10401,104,'Domicilio');
INSERT INTO `distrito` VALUES (10402,104,'Domicilio');
INSERT INTO `distrito` VALUES (10403,104,'Domicilio');
INSERT INTO `distrito` VALUES (10404,104,'Domicilio');
INSERT INTO `distrito` VALUES (10405,104,'Domicilio');
INSERT INTO `distrito` VALUES (10406,104,'Domicilio');
INSERT INTO `distrito` VALUES (10407,104,'Domicilio');
INSERT INTO `distrito` VALUES (10408,104,'Domicilio');
INSERT INTO `distrito` VALUES (10409,104,'Domicilio');
INSERT INTO `distrito` VALUES (10501,105,'Domicilio');
INSERT INTO `distrito` VALUES (10502,105,'Domicilio');
INSERT INTO `distrito` VALUES (10503,105,'Domicilio');
INSERT INTO `distrito` VALUES (10601,106,'Domicilio');
INSERT INTO `distrito` VALUES (10602,106,'Domicilio');
INSERT INTO `distrito` VALUES (10603,106,'Domicilio');
INSERT INTO `distrito` VALUES (10604,106,'Domicilio');
INSERT INTO `distrito` VALUES (10605,106,'Domicilio');
INSERT INTO `distrito` VALUES (10606,106,'Domicilio');
INSERT INTO `distrito` VALUES (10607,106,'Domicilio');
INSERT INTO `distrito` VALUES (10701,107,'Domicilio');
INSERT INTO `distrito` VALUES (10702,107,'Domicilio');
INSERT INTO `distrito` VALUES (10703,107,'Domicilio');
INSERT INTO `distrito` VALUES (10704,107,'Domicilio');
INSERT INTO `distrito` VALUES (10705,107,'Domicilio');
INSERT INTO `distrito` VALUES (10801,108,'Domicilio');
INSERT INTO `distrito` VALUES (10802,108,'Domicilio');
INSERT INTO `distrito` VALUES (10803,108,'Domicilio');
INSERT INTO `distrito` VALUES (10804,108,'Domicilio');
INSERT INTO `distrito` VALUES (10805,108,'Domicilio');
INSERT INTO `distrito` VALUES (10806,108,'Domicilio');
INSERT INTO `distrito` VALUES (10807,108,'Domicilio');
INSERT INTO `distrito` VALUES (10901,109,'Domicilio');
INSERT INTO `distrito` VALUES (10902,109,'Domicilio');
INSERT INTO `distrito` VALUES (10903,109,'Domicilio');
INSERT INTO `distrito` VALUES (10904,109,'Domicilio');
INSERT INTO `distrito` VALUES (10905,109,'Domicilio');
INSERT INTO `distrito` VALUES (10906,109,'Domicilio');
INSERT INTO `distrito` VALUES (11001,110,'Domicilio');
INSERT INTO `distrito` VALUES (11002,110,'Domicilio');
INSERT INTO `distrito` VALUES (11003,110,'Domicilio');
INSERT INTO `distrito` VALUES (11004,110,'Domicilio');
INSERT INTO `distrito` VALUES (11005,110,'Domicilio');
INSERT INTO `distrito` VALUES (11101,111,'Domicilio');
INSERT INTO `distrito` VALUES (11102,111,'Domicilio');
INSERT INTO `distrito` VALUES (11103,111,'Domicilio');
INSERT INTO `distrito` VALUES (11104,111,'Domicilio');
INSERT INTO `distrito` VALUES (11105,111,'Domicilio');
INSERT INTO `distrito` VALUES (11201,112,'Domicilio');
INSERT INTO `distrito` VALUES (11202,112,'Domicilio');
INSERT INTO `distrito` VALUES (11203,112,'Domicilio');
INSERT INTO `distrito` VALUES (11204,112,'Domicilio');
INSERT INTO `distrito` VALUES (11205,112,'Domicilio');
INSERT INTO `distrito` VALUES (11301,113,'Domicilio');
INSERT INTO `distrito` VALUES (11302,113,'Domicilio');
INSERT INTO `distrito` VALUES (11303,113,'Domicilio');
INSERT INTO `distrito` VALUES (11304,113,'Domicilio');
INSERT INTO `distrito` VALUES (11305,113,'Domicilio');
INSERT INTO `distrito` VALUES (11401,114,'Domicilio');
INSERT INTO `distrito` VALUES (11402,114,'Domicilio');
INSERT INTO `distrito` VALUES (11403,114,'Domicilio');
INSERT INTO `distrito` VALUES (11501,115,'Domicilio');
INSERT INTO `distrito` VALUES (11502,115,'Domicilio');
INSERT INTO `distrito` VALUES (11503,115,'Domicilio');
INSERT INTO `distrito` VALUES (11504,115,'Domicilio');
INSERT INTO `distrito` VALUES (11601,116,'Domicilio');
INSERT INTO `distrito` VALUES (11602,116,'Domicilio');
INSERT INTO `distrito` VALUES (11603,116,'Domicilio');
INSERT INTO `distrito` VALUES (11604,116,'Domicilio');
INSERT INTO `distrito` VALUES (11605,116,'Domicilio');
INSERT INTO `distrito` VALUES (11701,117,'Domicilio');
INSERT INTO `distrito` VALUES (11702,117,'Domicilio');
INSERT INTO `distrito` VALUES (11703,117,'Domicilio');
INSERT INTO `distrito` VALUES (11801,118,'Domicilio');
INSERT INTO `distrito` VALUES (11802,118,'Domicilio');
INSERT INTO `distrito` VALUES (11803,118,'Domicilio');
INSERT INTO `distrito` VALUES (11804,118,'Domicilio');
INSERT INTO `distrito` VALUES (11901,119,'Domicilio');
INSERT INTO `distrito` VALUES (11902,119,'Domicilio');
INSERT INTO `distrito` VALUES (11903,119,'Domicilio');
INSERT INTO `distrito` VALUES (11904,119,'Domicilio');
INSERT INTO `distrito` VALUES (11905,119,'Domicilio');
INSERT INTO `distrito` VALUES (11906,119,'Domicilio');
INSERT INTO `distrito` VALUES (11907,119,'Domicilio');
INSERT INTO `distrito` VALUES (11908,119,'Domicilio');
INSERT INTO `distrito` VALUES (11909,119,'Domicilio');
INSERT INTO `distrito` VALUES (11910,119,'Domicilio');
INSERT INTO `distrito` VALUES (11911,119,'Domicilio');
INSERT INTO `distrito` VALUES (12001,120,'Domicilio');
INSERT INTO `distrito` VALUES (12002,120,'Domicilio');
INSERT INTO `distrito` VALUES (12003,120,'Domicilio');
INSERT INTO `distrito` VALUES (12004,120,'Domicilio');
INSERT INTO `distrito` VALUES (12005,120,'Domicilio');
INSERT INTO `distrito` VALUES (12006,120,'Domicilio');
INSERT INTO `distrito` VALUES (20101,201,'Domicilio');
INSERT INTO `distrito` VALUES (20102,201,'Domicilio');
INSERT INTO `distrito` VALUES (20103,201,'Domicilio');
INSERT INTO `distrito` VALUES (20104,201,'Domicilio');
INSERT INTO `distrito` VALUES (20105,201,'Domicilio');
INSERT INTO `distrito` VALUES (20106,201,'Domicilio');
INSERT INTO `distrito` VALUES (20107,201,'Domicilio');
INSERT INTO `distrito` VALUES (20108,201,'Domicilio');
INSERT INTO `distrito` VALUES (20109,201,'Domicilio');
INSERT INTO `distrito` VALUES (20110,201,'Domicilio');
INSERT INTO `distrito` VALUES (20111,201,'Domicilio');
INSERT INTO `distrito` VALUES (20112,201,'Domicilio');
INSERT INTO `distrito` VALUES (20113,201,'Domicilio');
INSERT INTO `distrito` VALUES (20114,201,'Domicilio');
INSERT INTO `distrito` VALUES (20201,202,'Domicilio');
INSERT INTO `distrito` VALUES (20202,202,'Domicilio');
INSERT INTO `distrito` VALUES (20203,202,'Domicilio');
INSERT INTO `distrito` VALUES (20204,202,'Domicilio');
INSERT INTO `distrito` VALUES (20205,202,'Domicilio');
INSERT INTO `distrito` VALUES (20206,202,'Domicilio');
INSERT INTO `distrito` VALUES (20207,202,'Domicilio');
INSERT INTO `distrito` VALUES (20208,202,'Domicilio');
INSERT INTO `distrito` VALUES (20209,202,'Domicilio');
INSERT INTO `distrito` VALUES (20210,202,'Domicilio');
INSERT INTO `distrito` VALUES (20211,202,'Domicilio');
INSERT INTO `distrito` VALUES (20212,202,'Domicilio');
INSERT INTO `distrito` VALUES (20213,202,'Domicilio');
INSERT INTO `distrito` VALUES (20301,203,'Domicilio');
INSERT INTO `distrito` VALUES (20302,203,'Domicilio');
INSERT INTO `distrito` VALUES (20303,203,'Domicilio');
INSERT INTO `distrito` VALUES (20304,203,'Domicilio');
INSERT INTO `distrito` VALUES (20305,203,'Domicilio');
INSERT INTO `distrito` VALUES (20306,203,'Domicilio');
INSERT INTO `distrito` VALUES (20307,203,'Domicilio');
INSERT INTO `distrito` VALUES (20308,203,'Domicilio');
INSERT INTO `distrito` VALUES (20401,204,'Domicilio');
INSERT INTO `distrito` VALUES (20402,204,'Domicilio');
INSERT INTO `distrito` VALUES (20403,204,'Domicilio');
INSERT INTO `distrito` VALUES (20501,205,'Domicilio');
INSERT INTO `distrito` VALUES (20502,205,'Domicilio');
INSERT INTO `distrito` VALUES (20503,205,'Domicilio');
INSERT INTO `distrito` VALUES (20504,205,'Domicilio');
INSERT INTO `distrito` VALUES (20505,205,'Domicilio');
INSERT INTO `distrito` VALUES (20506,205,'Domicilio');
INSERT INTO `distrito` VALUES (20507,205,'Domicilio');
INSERT INTO `distrito` VALUES (20508,205,'Domicilio');
INSERT INTO `distrito` VALUES (20601,206,'Domicilio');
INSERT INTO `distrito` VALUES (20602,206,'Domicilio');
INSERT INTO `distrito` VALUES (20603,206,'Domicilio');
INSERT INTO `distrito` VALUES (20604,206,'Domicilio');
INSERT INTO `distrito` VALUES (20605,206,'Domicilio');
INSERT INTO `distrito` VALUES (20606,206,'Domicilio');
INSERT INTO `distrito` VALUES (20607,206,'Domicilio');
INSERT INTO `distrito` VALUES (20701,207,'Domicilio');
INSERT INTO `distrito` VALUES (20702,207,'Domicilio');
INSERT INTO `distrito` VALUES (20703,207,'Domicilio');
INSERT INTO `distrito` VALUES (20704,207,'Domicilio');
INSERT INTO `distrito` VALUES (20705,207,'Domicilio');
INSERT INTO `distrito` VALUES (20706,207,'Domicilio');
INSERT INTO `distrito` VALUES (20707,207,'Domicilio');
INSERT INTO `distrito` VALUES (20801,208,'Domicilio');
INSERT INTO `distrito` VALUES (20802,208,'Domicilio');
INSERT INTO `distrito` VALUES (20803,208,'Domicilio');
INSERT INTO `distrito` VALUES (20804,208,'Domicilio');
INSERT INTO `distrito` VALUES (20805,208,'Domicilio');
INSERT INTO `distrito` VALUES (20901,209,'Domicilio');
INSERT INTO `distrito` VALUES (20902,209,'Domicilio');
INSERT INTO `distrito` VALUES (20903,209,'Domicilio');
INSERT INTO `distrito` VALUES (20904,209,'Domicilio');
INSERT INTO `distrito` VALUES (20905,209,'Domicilio');
INSERT INTO `distrito` VALUES (21001,210,'Domicilio');
INSERT INTO `distrito` VALUES (21002,210,'Domicilio');
INSERT INTO `distrito` VALUES (21003,210,'Domicilio');
INSERT INTO `distrito` VALUES (21004,210,'Domicilio');
INSERT INTO `distrito` VALUES (21005,210,'Domicilio');
INSERT INTO `distrito` VALUES (21006,210,'Domicilio');
INSERT INTO `distrito` VALUES (21007,210,'Domicilio');
INSERT INTO `distrito` VALUES (21008,210,'Domicilio');
INSERT INTO `distrito` VALUES (21009,210,'Domicilio');
INSERT INTO `distrito` VALUES (21010,210,'Domicilio');
INSERT INTO `distrito` VALUES (21011,210,'Domicilio');
INSERT INTO `distrito` VALUES (21012,210,'Domicilio');
INSERT INTO `distrito` VALUES (21013,210,'Domicilio');
INSERT INTO `distrito` VALUES (21101,211,'Domicilio');
INSERT INTO `distrito` VALUES (21102,211,'Domicilio');
INSERT INTO `distrito` VALUES (21103,211,'Domicilio');
INSERT INTO `distrito` VALUES (21104,211,'Domicilio');
INSERT INTO `distrito` VALUES (21105,211,'Domicilio');
INSERT INTO `distrito` VALUES (21106,211,'Domicilio');
INSERT INTO `distrito` VALUES (21107,211,'Domicilio');
INSERT INTO `distrito` VALUES (21201,212,'Domicilio');
INSERT INTO `distrito` VALUES (21202,212,'Domicilio');
INSERT INTO `distrito` VALUES (21203,212,'Domicilio');
INSERT INTO `distrito` VALUES (21204,212,'Domicilio');
INSERT INTO `distrito` VALUES (21205,212,'Domicilio');
INSERT INTO `distrito` VALUES (21301,213,'Domicilio');
INSERT INTO `distrito` VALUES (21302,213,'Domicilio');
INSERT INTO `distrito` VALUES (21303,213,'Domicilio');
INSERT INTO `distrito` VALUES (21304,213,'Domicilio');
INSERT INTO `distrito` VALUES (21305,213,'Domicilio');
INSERT INTO `distrito` VALUES (21306,213,'Domicilio');
INSERT INTO `distrito` VALUES (21307,213,'Domicilio');
INSERT INTO `distrito` VALUES (21401,214,'Domicilio');
INSERT INTO `distrito` VALUES (21402,214,'Domicilio');
INSERT INTO `distrito` VALUES (21403,214,'Domicilio');
INSERT INTO `distrito` VALUES (21404,214,'Domicilio');
INSERT INTO `distrito` VALUES (21501,215,'Domicilio');
INSERT INTO `distrito` VALUES (21502,215,'Domicilio');
INSERT INTO `distrito` VALUES (21503,215,'Domicilio');
INSERT INTO `distrito` VALUES (30101,301,'Domicilio');
INSERT INTO `distrito` VALUES (30102,301,'Domicilio');
INSERT INTO `distrito` VALUES (30103,301,'Domicilio');
INSERT INTO `distrito` VALUES (30104,301,'Domicilio');
INSERT INTO `distrito` VALUES (30105,301,'Domicilio');
INSERT INTO `distrito` VALUES (30106,301,'Domicilio');
INSERT INTO `distrito` VALUES (30107,301,'Domicilio');
INSERT INTO `distrito` VALUES (30108,301,'Domicilio');
INSERT INTO `distrito` VALUES (30109,301,'Domicilio');
INSERT INTO `distrito` VALUES (30110,301,'Domicilio');
INSERT INTO `distrito` VALUES (30111,301,'Domicilio');
INSERT INTO `distrito` VALUES (30201,302,'Domicilio');
INSERT INTO `distrito` VALUES (30202,302,'Domicilio');
INSERT INTO `distrito` VALUES (30203,302,'Domicilio');
INSERT INTO `distrito` VALUES (30204,302,'Domicilio');
INSERT INTO `distrito` VALUES (30205,302,'Domicilio');
INSERT INTO `distrito` VALUES (30301,303,'Domicilio');
INSERT INTO `distrito` VALUES (30302,303,'Domicilio');
INSERT INTO `distrito` VALUES (30303,303,'Domicilio');
INSERT INTO `distrito` VALUES (30304,303,'Domicilio');
INSERT INTO `distrito` VALUES (30305,303,'Domicilio');
INSERT INTO `distrito` VALUES (30306,303,'Domicilio');
INSERT INTO `distrito` VALUES (30307,303,'Domicilio');
INSERT INTO `distrito` VALUES (30308,303,'Domicilio');
INSERT INTO `distrito` VALUES (30401,304,'Domicilio');
INSERT INTO `distrito` VALUES (30402,304,'Domicilio');
INSERT INTO `distrito` VALUES (30403,304,'Domicilio');
INSERT INTO `distrito` VALUES (30501,305,'Domicilio');
INSERT INTO `distrito` VALUES (30502,305,'Domicilio');
INSERT INTO `distrito` VALUES (30503,305,'Domicilio');
INSERT INTO `distrito` VALUES (30504,305,'Domicilio');
INSERT INTO `distrito` VALUES (30505,305,'Domicilio');
INSERT INTO `distrito` VALUES (30506,305,'Domicilio');
INSERT INTO `distrito` VALUES (30507,305,'Domicilio');
INSERT INTO `distrito` VALUES (30508,305,'Domicilio');
INSERT INTO `distrito` VALUES (30509,305,'Domicilio');
INSERT INTO `distrito` VALUES (30510,305,'Domicilio');
INSERT INTO `distrito` VALUES (30511,305,'Domicilio');
INSERT INTO `distrito` VALUES (30512,305,'Domicilio');
INSERT INTO `distrito` VALUES (30601,306,'Domicilio');
INSERT INTO `distrito` VALUES (30602,306,'Domicilio');
INSERT INTO `distrito` VALUES (30603,306,'Domicilio');
INSERT INTO `distrito` VALUES (30701,307,'Domicilio');
INSERT INTO `distrito` VALUES (30702,307,'Domicilio');
INSERT INTO `distrito` VALUES (30703,307,'Domicilio');
INSERT INTO `distrito` VALUES (30704,307,'Domicilio');
INSERT INTO `distrito` VALUES (30705,307,'Domicilio');
INSERT INTO `distrito` VALUES (30801,308,'Domicilio');
INSERT INTO `distrito` VALUES (30802,308,'Domicilio');
INSERT INTO `distrito` VALUES (30803,308,'Domicilio');
INSERT INTO `distrito` VALUES (30804,308,'Domicilio');
INSERT INTO `distrito` VALUES (40101,401,'Domicilio');
INSERT INTO `distrito` VALUES (40102,401,'Domicilio');
INSERT INTO `distrito` VALUES (40103,401,'Domicilio');
INSERT INTO `distrito` VALUES (40104,401,'Domicilio');
INSERT INTO `distrito` VALUES (40105,401,'Domicilio');
INSERT INTO `distrito` VALUES (40201,402,'Domicilio');
INSERT INTO `distrito` VALUES (40202,402,'Domicilio');
INSERT INTO `distrito` VALUES (40203,402,'Domicilio');
INSERT INTO `distrito` VALUES (40204,402,'Domicilio');
INSERT INTO `distrito` VALUES (40205,402,'Domicilio');
INSERT INTO `distrito` VALUES (40206,402,'Domicilio');
INSERT INTO `distrito` VALUES (40301,403,'Domicilio');
INSERT INTO `distrito` VALUES (40302,403,'Domicilio');
INSERT INTO `distrito` VALUES (40303,403,'Domicilio');
INSERT INTO `distrito` VALUES (40304,403,'Domicilio');
INSERT INTO `distrito` VALUES (40305,403,'Domicilio');
INSERT INTO `distrito` VALUES (40306,403,'Domicilio');
INSERT INTO `distrito` VALUES (40307,403,'Domicilio');
INSERT INTO `distrito` VALUES (40308,403,'Domicilio');
INSERT INTO `distrito` VALUES (40401,404,'Domicilio');
INSERT INTO `distrito` VALUES (40402,404,'Domicilio');
INSERT INTO `distrito` VALUES (40403,404,'Domicilio');
INSERT INTO `distrito` VALUES (40404,404,'Domicilio');
INSERT INTO `distrito` VALUES (40405,404,'Domicilio');
INSERT INTO `distrito` VALUES (40406,404,'Domicilio');
INSERT INTO `distrito` VALUES (40501,405,'Domicilio');
INSERT INTO `distrito` VALUES (40502,405,'Domicilio');
INSERT INTO `distrito` VALUES (40503,405,'Domicilio');
INSERT INTO `distrito` VALUES (40504,405,'Domicilio');
INSERT INTO `distrito` VALUES (40505,405,'Domicilio');
INSERT INTO `distrito` VALUES (40601,406,'Domicilio');
INSERT INTO `distrito` VALUES (40602,406,'Domicilio');
INSERT INTO `distrito` VALUES (40603,406,'Domicilio');
INSERT INTO `distrito` VALUES (40604,406,'Domicilio');
INSERT INTO `distrito` VALUES (40701,407,'Domicilio');
INSERT INTO `distrito` VALUES (40702,407,'Domicilio');
INSERT INTO `distrito` VALUES (40703,407,'Domicilio');
INSERT INTO `distrito` VALUES (40801,408,'Domicilio');
INSERT INTO `distrito` VALUES (40802,408,'Domicilio');
INSERT INTO `distrito` VALUES (40803,408,'Domicilio');
INSERT INTO `distrito` VALUES (40901,409,'Domicilio');
INSERT INTO `distrito` VALUES (41001,410,'Domicilio');
INSERT INTO `distrito` VALUES (41002,410,'Domicilio');
INSERT INTO `distrito` VALUES (41003,410,'Domicilio');
INSERT INTO `distrito` VALUES (41004,410,'Domicilio');
INSERT INTO `distrito` VALUES (41005,410,'Domicilio');
INSERT INTO `distrito` VALUES (50101,501,'Domicilio');
INSERT INTO `distrito` VALUES (50102,501,'Domicilio');
INSERT INTO `distrito` VALUES (50103,501,'Domicilio');
INSERT INTO `distrito` VALUES (50104,501,'Domicilio');
INSERT INTO `distrito` VALUES (50105,501,'Domicilio');
INSERT INTO `distrito` VALUES (50201,502,'Domicilio');
INSERT INTO `distrito` VALUES (50202,502,'Domicilio');
INSERT INTO `distrito` VALUES (50203,502,'Domicilio');
INSERT INTO `distrito` VALUES (50204,502,'Domicilio');
INSERT INTO `distrito` VALUES (50205,502,'Domicilio');
INSERT INTO `distrito` VALUES (50206,502,'Domicilio');
INSERT INTO `distrito` VALUES (50207,502,'Domicilio');
INSERT INTO `distrito` VALUES (50301,503,'Domicilio');
INSERT INTO `distrito` VALUES (50302,503,'Domicilio');
INSERT INTO `distrito` VALUES (50303,503,'Domicilio');
INSERT INTO `distrito` VALUES (50304,503,'Domicilio');
INSERT INTO `distrito` VALUES (50305,503,'Domicilio');
INSERT INTO `distrito` VALUES (50306,503,'Domicilio');
INSERT INTO `distrito` VALUES (50307,503,'Domicilio');
INSERT INTO `distrito` VALUES (50308,503,'Domicilio');
INSERT INTO `distrito` VALUES (50309,503,'Domicilio');
INSERT INTO `distrito` VALUES (50401,504,'Domicilio');
INSERT INTO `distrito` VALUES (50402,504,'Domicilio');
INSERT INTO `distrito` VALUES (50403,504,'Domicilio');
INSERT INTO `distrito` VALUES (50404,504,'Domicilio');
INSERT INTO `distrito` VALUES (50501,505,'Domicilio');
INSERT INTO `distrito` VALUES (50502,505,'Domicilio');
INSERT INTO `distrito` VALUES (50503,505,'Domicilio');
INSERT INTO `distrito` VALUES (50504,505,'Domicilio');
INSERT INTO `distrito` VALUES (50601,506,'Domicilio');
INSERT INTO `distrito` VALUES (50602,506,'Domicilio');
INSERT INTO `distrito` VALUES (50603,506,'Domicilio');
INSERT INTO `distrito` VALUES (50604,506,'Domicilio');
INSERT INTO `distrito` VALUES (50605,506,'Domicilio');
INSERT INTO `distrito` VALUES (50701,507,'Domicilio');
INSERT INTO `distrito` VALUES (50702,507,'Domicilio');
INSERT INTO `distrito` VALUES (50703,507,'Domicilio');
INSERT INTO `distrito` VALUES (50704,507,'Domicilio');
INSERT INTO `distrito` VALUES (50801,508,'Domicilio');
INSERT INTO `distrito` VALUES (50802,508,'Domicilio');
INSERT INTO `distrito` VALUES (50803,508,'Domicilio');
INSERT INTO `distrito` VALUES (50804,508,'Domicilio');
INSERT INTO `distrito` VALUES (50805,508,'Domicilio');
INSERT INTO `distrito` VALUES (50806,508,'Domicilio');
INSERT INTO `distrito` VALUES (50807,508,'Domicilio');
INSERT INTO `distrito` VALUES (50901,509,'Domicilio');
INSERT INTO `distrito` VALUES (50902,509,'Domicilio');
INSERT INTO `distrito` VALUES (50903,509,'Domicilio');
INSERT INTO `distrito` VALUES (50904,509,'Domicilio');
INSERT INTO `distrito` VALUES (50905,509,'Domicilio');
INSERT INTO `distrito` VALUES (50906,509,'Domicilio');
INSERT INTO `distrito` VALUES (51001,510,'Domicilio');
INSERT INTO `distrito` VALUES (51002,510,'Domicilio');
INSERT INTO `distrito` VALUES (51003,510,'Domicilio');
INSERT INTO `distrito` VALUES (51004,510,'Domicilio');
INSERT INTO `distrito` VALUES (51101,511,'Domicilio');
INSERT INTO `distrito` VALUES (51102,511,'Domicilio');
INSERT INTO `distrito` VALUES (51103,511,'Domicilio');
INSERT INTO `distrito` VALUES (51104,511,'Domicilio');
INSERT INTO `distrito` VALUES (60101,601,'Domicilio');
INSERT INTO `distrito` VALUES (60102,601,'Domicilio');
INSERT INTO `distrito` VALUES (60103,601,'Domicilio');
INSERT INTO `distrito` VALUES (60104,601,'Domicilio');
INSERT INTO `distrito` VALUES (60105,601,'Domicilio');
INSERT INTO `distrito` VALUES (60106,601,'Domicilio');
INSERT INTO `distrito` VALUES (60107,601,'Domicilio');
INSERT INTO `distrito` VALUES (60108,601,'Domicilio');
INSERT INTO `distrito` VALUES (60109,601,'Domicilio');
INSERT INTO `distrito` VALUES (60110,601,'Domicilio');
INSERT INTO `distrito` VALUES (60111,601,'Domicilio');
INSERT INTO `distrito` VALUES (60112,601,'Domicilio');
INSERT INTO `distrito` VALUES (60113,601,'Domicilio');
INSERT INTO `distrito` VALUES (60114,601,'Domicilio');
INSERT INTO `distrito` VALUES (60115,601,'Domicilio');
INSERT INTO `distrito` VALUES (60116,601,'Domicilio');
INSERT INTO `distrito` VALUES (60201,602,'Domicilio');
INSERT INTO `distrito` VALUES (60202,602,'Domicilio');
INSERT INTO `distrito` VALUES (60203,602,'Domicilio');
INSERT INTO `distrito` VALUES (60204,602,'Domicilio');
INSERT INTO `distrito` VALUES (60205,602,'Domicilio');
INSERT INTO `distrito` VALUES (60301,603,'Domicilio');
INSERT INTO `distrito` VALUES (60302,603,'Domicilio');
INSERT INTO `distrito` VALUES (60303,603,'Domicilio');
INSERT INTO `distrito` VALUES (60304,603,'Domicilio');
INSERT INTO `distrito` VALUES (60305,603,'Domicilio');
INSERT INTO `distrito` VALUES (60306,603,'Domicilio');
INSERT INTO `distrito` VALUES (60307,603,'Domicilio');
INSERT INTO `distrito` VALUES (60308,603,'Domicilio');
INSERT INTO `distrito` VALUES (60309,603,'Domicilio');
INSERT INTO `distrito` VALUES (60401,604,'Domicilio');
INSERT INTO `distrito` VALUES (60402,604,'Domicilio');
INSERT INTO `distrito` VALUES (60403,604,'Domicilio');
INSERT INTO `distrito` VALUES (60501,605,'Domicilio');
INSERT INTO `distrito` VALUES (60502,605,'Domicilio');
INSERT INTO `distrito` VALUES (60503,605,'Domicilio');
INSERT INTO `distrito` VALUES (60504,605,'Domicilio');
INSERT INTO `distrito` VALUES (60505,605,'Domicilio');
INSERT INTO `distrito` VALUES (60601,606,'Domicilio');
INSERT INTO `distrito` VALUES (60602,606,'Domicilio');
INSERT INTO `distrito` VALUES (60603,606,'Domicilio');
INSERT INTO `distrito` VALUES (60701,607,'Domicilio');
INSERT INTO `distrito` VALUES (60702,607,'Domicilio');
INSERT INTO `distrito` VALUES (60703,607,'Domicilio');
INSERT INTO `distrito` VALUES (60704,607,'Domicilio');
INSERT INTO `distrito` VALUES (60801,608,'Domicilio');
INSERT INTO `distrito` VALUES (60802,608,'Domicilio');
INSERT INTO `distrito` VALUES (60803,608,'Domicilio');
INSERT INTO `distrito` VALUES (60804,608,'Domicilio');
INSERT INTO `distrito` VALUES (60805,608,'Domicilio');
INSERT INTO `distrito` VALUES (60901,609,'Domicilio');
INSERT INTO `distrito` VALUES (61001,610,'Domicilio');
INSERT INTO `distrito` VALUES (61002,610,'Domicilio');
INSERT INTO `distrito` VALUES (61003,610,'Domicilio');
INSERT INTO `distrito` VALUES (61004,610,'Domicilio');
INSERT INTO `distrito` VALUES (61101,611,'Domicilio');
INSERT INTO `distrito` VALUES (61102,611,'Domicilio');
INSERT INTO `distrito` VALUES (70101,701,'Domicilio');
INSERT INTO `distrito` VALUES (70102,701,'Domicilio');
INSERT INTO `distrito` VALUES (70103,701,'Domicilio');
INSERT INTO `distrito` VALUES (70104,701,'Domicilio');
INSERT INTO `distrito` VALUES (70201,702,'Domicilio');
INSERT INTO `distrito` VALUES (70202,702,'Domicilio');
INSERT INTO `distrito` VALUES (70203,702,'Domicilio');
INSERT INTO `distrito` VALUES (70204,702,'Domicilio');
INSERT INTO `distrito` VALUES (70205,702,'Domicilio');
INSERT INTO `distrito` VALUES (70206,702,'Domicilio');
INSERT INTO `distrito` VALUES (70301,703,'Domicilio');
INSERT INTO `distrito` VALUES (70302,703,'Domicilio');
INSERT INTO `distrito` VALUES (70303,703,'Domicilio');
INSERT INTO `distrito` VALUES (70304,703,'Domicilio');
INSERT INTO `distrito` VALUES (70305,703,'Domicilio');
INSERT INTO `distrito` VALUES (70306,703,'Domicilio');
INSERT INTO `distrito` VALUES (70401,704,'Domicilio');
INSERT INTO `distrito` VALUES (70402,704,'Domicilio');
INSERT INTO `distrito` VALUES (70403,704,'Domicilio');
INSERT INTO `distrito` VALUES (70404,704,'Domicilio');
INSERT INTO `distrito` VALUES (70501,705,'Domicilio');
INSERT INTO `distrito` VALUES (70502,705,'Domicilio');
INSERT INTO `distrito` VALUES (70503,705,'Domicilio');
INSERT INTO `distrito` VALUES (70601,706,'Domicilio');
INSERT INTO `distrito` VALUES (70602,706,'Domicilio');
INSERT INTO `distrito` VALUES (70603,706,'Domicilio');
INSERT INTO `distrito` VALUES (70604,706,'Domicilio');
INSERT INTO `distrito` VALUES (70605,706,'Domicilio');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table entradasalidaregistro
#

CREATE TABLE `entradasalidaregistro` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `monto` varchar(9) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `Detalle` text,
  `habilitado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `entradasalidaregistro` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table establecimiento
#

CREATE TABLE `establecimiento` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) DEFAULT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `establecimiento` VALUES (1,'Local #1','26661234');
/*!40000 ALTER TABLE `establecimiento` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table factura
#

CREATE TABLE `factura` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `total` varchar(20) DEFAULT NULL,
  `fecha` varchar(25) DEFAULT NULL,
  `hora` varchar(25) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `cliente` varchar(30) DEFAULT '1',
  `tipo` tinyint(1) DEFAULT '1',
  `habilitado` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table iva
#

CREATE TABLE `iva` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'Nombre del impuesto de venta',
  `valor` int(4) DEFAULT NULL COMMENT 'Valor del impuesto de venta',
  `habilitado` tinyint(1) DEFAULT NULL COMMENT 'Determina si el registro es válido para utilizarse o se debe ignorar para operaciones sobre los datos.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `iva` VALUES (1,'Sin Impuesto de Venta',0,1);
INSERT INTO `iva` VALUES (2,'Impuesto de Venta',12,1);
INSERT INTO `iva` VALUES (3,'Impuesto de Servicio',10,0);
/*!40000 ALTER TABLE `iva` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table kardex
#

CREATE TABLE `kardex` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) DEFAULT NULL,
  `entrada` int(11) DEFAULT '0',
  `salida` int(11) DEFAULT '0',
  `stock` int(11) DEFAULT NULL,
  `preciounitario` varchar(15) DEFAULT NULL,
  `preciototal` varchar(15) DEFAULT NULL,
  `detalle` varchar(50) DEFAULT 'Salida de Producto',
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `kardex` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table medida
#

CREATE TABLE `medida` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `signo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `medida` VALUES (1,'Unidad/Pza','U');
INSERT INTO `medida` VALUES (2,'Litro','L');
INSERT INTO `medida` VALUES (3,'Kilo','K');
/*!40000 ALTER TABLE `medida` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table moneda
#

CREATE TABLE `moneda` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `moneda` varchar(55) DEFAULT NULL,
  `signo` varchar(25) DEFAULT NULL,
  `valor` int(9) DEFAULT NULL,
  `rango` tinyint(1) DEFAULT '0',
  `habilitada` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `moneda` VALUES (2,'Dolar','$',1,1,1);
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table movimientostipo
#

CREATE TABLE `movimientostipo` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `movimientostipo` VALUES (1,'Apertura de Caja');
INSERT INTO `movimientostipo` VALUES (2,'Cierre de Caja');
INSERT INTO `movimientostipo` VALUES (3,'Entrada de Dinero');
INSERT INTO `movimientostipo` VALUES (4,'Salida de Dinero');
INSERT INTO `movimientostipo` VALUES (5,'Entrada de Dinero Caja Chica');
INSERT INTO `movimientostipo` VALUES (6,'Salida de Dinero Caja Chica');
/*!40000 ALTER TABLE `movimientostipo` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table notificaciones
#

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notificacion` text,
  `fecha` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table perfil
#

CREATE TABLE `perfil` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)',
  `perfil` varchar(50) DEFAULT NULL COMMENT 'Nombre del perfil de usuario',
  `comentario` text COMMENT 'aclaración o comentario explicativo del tipo de perfil',
  `habilitado` tinyint(1) DEFAULT '1' COMMENT 'Determina si el registro es válido para utilizarse o se debe ignorar para operaciones sobre los datos.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `perfil` VALUES (1,'Administrador','',1);
INSERT INTO `perfil` VALUES (2,'Vendedor','',1);
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table producto
#

CREATE TABLE `producto` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `preciocosto` float DEFAULT NULL,
  `precioventa` float DEFAULT NULL,
  `proveedor` int(9) DEFAULT NULL,
  `departamento` int(6) DEFAULT NULL,
  `stock` int(9) DEFAULT NULL,
  `stockMin` int(9) DEFAULT NULL,
  `impuesto` int(3) DEFAULT '0',
  `medida` varchar(50) DEFAULT NULL,
  `especificaciones` text,
  `habilitado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_producto` (`departamento`),
  KEY `FK_id_proveedor` (`proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table proveedor
#

CREATE TABLE `proveedor` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  `contacto` varchar(80) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `proveedor` VALUES (1,'Generico','012345678','Genérico','Genérico',1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table provincia
#

CREATE TABLE `provincia` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `provincia` varchar(45) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO `provincia` VALUES (1,'El Oro');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table sistema
#

CREATE TABLE `sistema` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `logo` varchar(55) DEFAULT 'logo.jpg',
  `TipoCambio` tinyint(1) DEFAULT '1',
  `version` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `sistema` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table tema
#

CREATE TABLE `tema` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(35) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
INSERT INTO `tema` VALUES (1,'Amelia',0);
INSERT INTO `tema` VALUES (2,'Cerulean',0);
INSERT INTO `tema` VALUES (3,'Cosmo',0);
INSERT INTO `tema` VALUES (4,'Cyborg',0);
INSERT INTO `tema` VALUES (5,'Darkly',0);
INSERT INTO `tema` VALUES (6,'Defecto',0);
INSERT INTO `tema` VALUES (7,'Flatly',0);
INSERT INTO `tema` VALUES (8,'Journal',0);
INSERT INTO `tema` VALUES (9,'Lumen',0);
INSERT INTO `tema` VALUES (10,'Paper',0);
INSERT INTO `tema` VALUES (11,'Readable',0);
INSERT INTO `tema` VALUES (12,'Sandstone',0);
INSERT INTO `tema` VALUES (13,'Simplex',0);
INSERT INTO `tema` VALUES (14,'Slate',0);
INSERT INTO `tema` VALUES (15,'Spacelab',0);
INSERT INTO `tema` VALUES (16,'Superhero',0);
INSERT INTO `tema` VALUES (17,'United',1);
INSERT INTO `tema` VALUES (18,'Yeti',0);
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table usuario
#

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)',
  `usuario` varchar(50) DEFAULT NULL COMMENT 'Nombre del pseudonimo del usuario del sistema',
  `contrasena` varchar(40) DEFAULT NULL COMMENT 'Contraseña de acceso al sistema',
  `id_vendedor` int(9) DEFAULT NULL COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Foránea-Tabla Perfil)(1:1)',
  `id_perfil` int(1) DEFAULT '2',
  `habilitado` tinyint(1) DEFAULT '1' COMMENT 'Determina si el registro es válido para utilizarse o se debe ignorar para operaciones sobre los datos.',
  PRIMARY KEY (`id`),
  KEY `FK_usuario` (`id_vendedor`),
  KEY `FK_perfil` (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
INSERT INTO `usuario` VALUES (3,'admin','55276293dee3b4fb8743709f7a60afee349bd784',1,1,1);
INSERT INTO `usuario` VALUES (4,'Bratt','1716653ef21a9434ca2639364f5f728a527a0d67',2,1,1);
INSERT INTO `usuario` VALUES (5,'Vendedor','c915b5e3fc0e9179718ebc730e122cad96fde9b8',3,2,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table vendedores
#

CREATE TABLE `vendedores` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'Nombre real de la persona que va a utilizar el sistema',
  `apellido1` varchar(50) DEFAULT NULL COMMENT 'Primer apellido de la persona que va a utilizar el sistema',
  `apellido2` varchar(50) DEFAULT NULL COMMENT 'Segundo apellido de la persona que va a utilizar el sistema',
  `establecimiento` varchar(80) DEFAULT NULL COMMENT 'Nombre del Establecimiento',
  `nota` text COMMENT 'Dirección de la residencia de la persona',
  `provincia` int(15) DEFAULT NULL,
  `canton` int(10) DEFAULT NULL,
  `distrito` int(10) DEFAULT NULL,
  `id_usuario` int(9) DEFAULT NULL COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Foránea-Tabla Usuario(1:1). Relaciona un usuario específico con un empleado en una relación uno a uno.',
  `habilitado` tinyint(1) DEFAULT '1' COMMENT 'Determina si el registro es válido para utilizarse o se debe ignorar para operaciones sobre los datos.',
  PRIMARY KEY (`id`),
  KEY `FK_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

#
# Table structure for table ventas
#

CREATE TABLE `ventas` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `idfactura` int(25) DEFAULT NULL,
  `producto` int(2) DEFAULT NULL,
  `cantidad` int(5) DEFAULT '1',
  `precio` float DEFAULT NULL,
  `totalprecio` float DEFAULT NULL,
  `vendedor` int(9) DEFAULT NULL,
  `cliente` int(9) DEFAULT '1',
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(11) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `habilitada` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
INSERT INTO `ventas` VALUES (1,1,1,1,15,15,4,1,'04-03-2020','06:43:37 pm',NULL,1);
INSERT INTO `ventas` VALUES (2,2,1,2,15,30,4,1,'04-03-2020','06:44:08 pm',NULL,1);
INSERT INTO `ventas` VALUES (3,3,1,2,15,30,4,1,'30-11-2020','05:43:21 pm',NULL,1);
INSERT INTO `ventas` VALUES (4,4,1,1,15,15,4,1,'30-11-2020','05:44:13 pm',NULL,1);
INSERT INTO `ventas` VALUES (5,5,1,1,15,15,4,1,'30-11-2020','05:44:37 pm',NULL,1);
INSERT INTO `ventas` VALUES (6,6,2,2,10,20,4,1,'30-11-2020','05:52:05 pm',NULL,1);
INSERT INTO `ventas` VALUES (7,7,1,1,15,15,4,1,'06-02-2021','04:45:42 pm',NULL,1);
INSERT INTO `ventas` VALUES (8,7,2,4,10,40,4,1,'06-02-2021','04:45:51 pm',NULL,1);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table producto
#

ALTER TABLE `producto`
ADD CONSTRAINT `FK_id_categoria` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_id_proveedor` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
