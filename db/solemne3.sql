-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.5-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for solemne3
DROP DATABASE IF EXISTS `solemne3`;
CREATE DATABASE IF NOT EXISTS `solemne3` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `solemne3`;

-- Dumping structure for table solemne3.automobil
DROP TABLE IF EXISTS `automobil`;
CREATE TABLE IF NOT EXISTS `automobil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `sobre_mi` varchar(255) DEFAULT NULL,
  `importante` varchar(255) DEFAULT NULL,
  `id_tarifa` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tarifa` (`id_tarifa`),
  CONSTRAINT `automobil_ibfk_1` FOREIGN KEY (`id_tarifa`) REFERENCES `tarifa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table solemne3.plan
DROP TABLE IF EXISTS `plan`;
CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `costoMesBase` int(11) NOT NULL,
  `costoHoraBase` int(11) NOT NULL,
  `costoDiaBase` int(11) NOT NULL,
  `costoKMExtraBase` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table solemne3.tarifa
DROP TABLE IF EXISTS `tarifa`;
CREATE TABLE IF NOT EXISTS `tarifa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `costeHoraSemana` int(11) NOT NULL,
  `costeDiaSemana` int(11) NOT NULL,
  `costeHoraFinSemana` int(11) NOT NULL,
  `costeDiaFinSemana` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table solemne3.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidoPat` varchar(50) NOT NULL,
  `apellidoMat` varchar(50) DEFAULT NULL,
  `correo` varchar(255) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `id_plan` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_plan` (`id_plan`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
