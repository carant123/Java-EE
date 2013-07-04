-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.32-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema facilito
--

CREATE DATABASE IF NOT EXISTS PI_TrabFinalDB;
USE PI_TrabFinalDB;

--
-- Definition of table `tbcliente`
--

DROP TABLE IF EXISTS `tbcliente`;
CREATE TABLE `tbcliente` (
  `nombre` varchar(100) DEFAULT NULL,
  `sueldo` double DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `fecnac` datetime DEFAULT NULL,
  `usuario` varchar(15) NOT NULL DEFAULT '',
  `clave` varchar(15) NOT NULL DEFAULT '',
 `foto` longblob DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbcliente`
--

/*!40000 ALTER TABLE `tbcliente` DISABLE KEYS */;
INSERT INTO `tbcliente` (`nombre`,`sueldo`,`sexo`,`fecnac`,`usuario`,`clave`,`foto`) VALUES
 ('Pepito Perez Pineda ',3800,'M','1991-03-22 00:00:00','pepe','123',null),
 ('Jimena Rodriguez',2000,'F','1993-12-25 00:00:00','jime','456',null),
 ('Paul Valenzuela',2000,'M','1980-01-12 00:00:00','paul','jojo',null),
 ('Ricardo Ramirez Ramos',7000,'M','1991-01-20 00:00:00','riqui','123',null),
 ('Falco DaVanisher',9001,'M','1990-05-17 00:00:00','falco','aven',null),
 ('Kana Moonwood',1337,'F','1993-07-29 00:00:00','kana','elfa',null);

/*!40000 ALTER TABLE `tbcliente` ENABLE KEYS */;
/*---------------------------------------------------------------------------------------*/

DROP TABLE IF EXISTS `tbreserva`;
CREATE TABLE `tbreserva` (
  `usuario` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `CV` varchar(3) DEFAULT 'No',
  `PY` varchar(3) DEFAULT 'No',
  `DM` varchar(3) DEFAULT 'No',
  `cupos` int DEFAULT NULL,

  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `tbreserva` (`usuario`,`nombre`,`destino`,`CV`,`PY`,`DM`,`cupos`) VALUES
 ('kana','Mana DaVanisher ','Luminark - Sunwave Kingdom','Si','No','Si',3);

/*!40000 ALTER TABLE `tbreserva` ENABLE KEYS */;

/*---------------------------------------------------------------------------------------*/


DROP TABLE IF EXISTS `tbcarrito`;
CREATE TABLE `tbcarrito` (
  `usuario` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `modo` varchar(1) DEFAULT '1',

  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `tbcarrito` (`usuario`,`direccion`,`telefono`,`modo`) VALUES
 ('falco','Central Tower 45f - Newstar','90011337','1');

/*!40000 ALTER TABLE `tbcarrito` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
