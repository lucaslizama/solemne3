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

-- Dumping structure for table solemne3.automovil
DROP TABLE IF EXISTS `automovil`;
CREATE TABLE IF NOT EXISTS `automovil` (
  `id_auto` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) unsigned NOT NULL,
  `nombre` varchar(40) COLLATE utf32_bin NOT NULL,
  `capacidad_personas` int(5) NOT NULL,
  `km` int(10) NOT NULL,
  `anio` int(4) NOT NULL,
  `descripcion` text COLLATE utf32_bin NOT NULL,
  `thumbnail_url` text COLLATE utf32_bin NOT NULL,
  PRIMARY KEY (`id_auto`),
  KEY `FK_automovil_usuario` (`id_usuario`),
  CONSTRAINT `FK_automovil_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8658 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.automovil: ~0 rows (approximately)
DELETE FROM `automovil`;
/*!40000 ALTER TABLE `automovil` DISABLE KEYS */;
/*!40000 ALTER TABLE `automovil` ENABLE KEYS */;

-- Dumping structure for table solemne3.boleta
DROP TABLE IF EXISTS `boleta`;
CREATE TABLE IF NOT EXISTS `boleta` (
  `id_boleta` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) unsigned NOT NULL,
  `id_auto` int(11) unsigned NOT NULL,
  `id_plan` int(11) unsigned NOT NULL,
  `total` int(40) NOT NULL,
  PRIMARY KEY (`id_boleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.boleta: ~0 rows (approximately)
DELETE FROM `boleta`;
/*!40000 ALTER TABLE `boleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `boleta` ENABLE KEYS */;

-- Dumping structure for table solemne3.plan
DROP TABLE IF EXISTS `plan`;
CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_plan` varchar(35) COLLATE utf32_bin NOT NULL,
  `descripcion` text COLLATE utf32_bin NOT NULL,
  `precio_hora` int(11) NOT NULL,
  `precio_dia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.plan: ~5 rows (approximately)
DELETE FROM `plan`;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` (`id`, `nombre_plan`, `descripcion`, `precio_hora`, `precio_dia`) VALUES
	(1, 'Plan Light', 'el plan light es la solución ideal si:\r\nPensar en un compromiso mensual te da escalofríos.\r\nNo estás seguro de la frecuencia con la que conducirás.\r\nTienes coche, pero quieres disponer de otro por si acaso.\r\nSi buscas un plan sin grandes compromisos\r\nNo estás seguro de la frecuencia con la que conducirás pero aún así quieres tener acceso a nuestros autos o van cuando los necesites.\r\nUna tarifa mensual de 0 €\r\nSin depósito\r\nSin cuota de inscripción ni cargo anual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $7,000  la hora y 66000 € el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra por 0,25€/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores a tu cuenta. sin cargo anual.\r\nCuando te des de alta, puedes añadir más conductores a tu cuenta por sólo 0,00 € al mes.', 0, 0),
	(2, 'Plan Smart', 'el plan smart es la solución ideal si:\r\nTienes pensado utilizar el servicio de vez en cuando.\r\nTe gusta saber que tienes un Avancar a la vuelta de la esquina siempre que lo necesites.\r\nQuieres acceder a tarifas económicas y ahorrar a partir de 2 horas de reserva al mes\r\n¿Cuánto cuesta apuntarse?\r\nUna tarifa mensual de 5 €\r\nSin depósito\r\nSin cuota de inscripción ni cargo annual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $6000 € la hora y $ $56000  el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra a partir de 0,20€/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores, por tan sólo $2500 al mes.', 0, 0),
	(3, 'PlanLight', 'el plan light es la solución ideal si:\r\nPensar en un compromiso mensual te da escalofríos.\r\nNo estás seguro de la frecuencia con la que conducirás.\r\nTienes coche, pero quieres disponer de otro por si acaso.\r\nSi buscas un plan sin grandes compromisos\r\nNo estás seguro de la frecuencia con la que conducirás pero aún así quieres tener acceso a nuestros coches o furgos cuando los necesites.\r\nUna tarifa mensual de $0 \r\nSin depósito\r\nSin cuota de inscripción ni cargo anual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $7000  la hora y $ 66000  el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra por $2500/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores a tu cuenta. sin cargo anual.\r\nCuando te des de alta, puedes añadir más conductores a tu cuenta por sólo $0 al mes.', 7000, 66000),
	(4, 'PlanSmart', 'el plan light es la solución ideal si:\r\nPensar en un compromiso mensual te da escalofríos.\r\nNo estás seguro de la frecuencia con la que conducirás.\r\nTienes coche, pero quieres disponer de otro por si acaso.\r\nSi buscas un plan sin grandes compromisos\r\nNo estás seguro de la frecuencia con la que conducirás pero aún así quieres tener acceso a nuestros autos y van cuando los necesites.\r\nUna tarifa mensual de $0 \r\nSin depósito\r\nSin cuota de inscripción ni cargo anual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $7000  la hora y $60000  el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra por $2500/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores a tu cuenta. sin cargo anual.\r\nCuando te des de alta, puedes añadir más conductores a tu cuenta por sólo $0.0 al mes.', 7000, 66000),
	(5, 'PlanStar', 'el plan star es la solución ideal si:\r\nTienes pensado utilizar el servicio a menudo\r\nQuieres acceder a nuestras tarifas más competitivas\r\nTe gusta saber que tienes un Avancar a la vuelta de la esquina siempre que lo necesites.\r\n¿Cuánto cuesta apuntarse?\r\nUna tarifa mensual de $10000\r\nTe regalamos $1000 de bono consumo cada mes\r\nSin depósito\r\nSin cuota de inscripción ni cargo anual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $5000  la hora y $46000  el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra a partir de $1500/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores, por tan sólo  $5000  al mes.\r\nEl conductor adicional.', 5000, 46000);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;

-- Dumping structure for table solemne3.tarifa
DROP TABLE IF EXISTS `tarifa`;
CREATE TABLE IF NOT EXISTS `tarifa` (
  `id_tarifa` int(11) NOT NULL AUTO_INCREMENT,
  `id_auto` varchar(40) COLLATE utf32_bin NOT NULL,
  `id_plan` varchar(40) COLLATE utf32_bin NOT NULL,
  `fecha_I` date NOT NULL,
  `fecha_T` date NOT NULL,
  PRIMARY KEY (`id_tarifa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.tarifa: ~0 rows (approximately)
DELETE FROM `tarifa`;
/*!40000 ALTER TABLE `tarifa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifa` ENABLE KEYS */;

-- Dumping structure for table solemne3.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) COLLATE utf32_bin NOT NULL,
  `apellidoPat` varchar(40) COLLATE utf32_bin NOT NULL,
  `apellidoMat` varchar(40) COLLATE utf32_bin NOT NULL,
  `correo` varchar(30) COLLATE utf32_bin NOT NULL,
  `user` varchar(40) COLLATE utf32_bin NOT NULL,
  `clave` varchar(30) COLLATE utf32_bin NOT NULL,
  `id_plan` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_usuario_plan` (`id_plan`),
  CONSTRAINT `FK_usuario_plan` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.usuario: ~1 rows (approximately)
DELETE FROM `usuario`;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nombre`, `apellidoPat`, `apellidoMat`, `correo`, `user`, `clave`, `id_plan`) VALUES
	(3, 'Lucas', 'Lizama', 'Monje', 'lucaslizama3@hotmail.com', 'lucaslizama', 'triforce#', NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
