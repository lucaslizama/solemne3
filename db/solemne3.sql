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
CREATE DATABASE IF NOT EXISTS `solemne3` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `solemne3`;

-- Dumping structure for table solemne3.automovil
CREATE TABLE IF NOT EXISTS `automovil` (
  `id_auto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) COLLATE utf32_bin NOT NULL,
  `capacidad_personas` int(5) NOT NULL,
  `km` int(10) NOT NULL,
  `anio` int(4) NOT NULL,
  `descripcion` text COLLATE utf32_bin NOT NULL,
  PRIMARY KEY (`id_auto`)
) ENGINE=InnoDB AUTO_INCREMENT=8658 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.automovil: ~0 rows (approximately)
DELETE FROM `automovil`;
/*!40000 ALTER TABLE `automovil` DISABLE KEYS */;
INSERT INTO `automovil` (`id_auto`, `nombre`, `capacidad_personas`, `km`, `anio`, `descripcion`) VALUES
	(3215, 'benni', 4, 2100, 2015, 'El Chana Benni es un subcompacto con un motor de cuatro cilindros 1.3 L de 84 CV acoplado a una caja de cinco velocidades manual y capacidad para cinco pasajeros, inicia la gama el modelo “Mini” con un motor 1.0 L 16V que eroga 70 CV y consume solo 5,8 L / 100km.'),
	(4651, 'changan-cv', 5, 3500, 2007, 'Motor Bluecore 1.5L VVT 16V DOHC 93 Octanos. Chasis. Chasis HEEAB con acero de alta resistencia y zonas de deformación programada. Airbags.'),
	(5748, 'alfa-romeo', 5, 1500, 1957, 'Modelo de 4 Puertas . Se construyeron 3344 Berlinas con mecánica de 2.5 L con 110 HP y 599 unidades  con mecánica de 2.8L y 128 HP.\r\n\r\n '),
	(6452, 'alfa-romeo-giulia "araña"', 2, 1000, 1962, 'Diseñado por Pininfarina\r\nEn total se fabricaron: 8.850 unidades \r\n\r\nMotor:  1.570 cc\r\nCilindros: 4 en línea, dispuesto en el frente, en posición longitudinal. \r\n\r\nDistribución con dos válvulas por cilindro, dispuestos en V y controlado por doble árbol de levas en la cabeza –\r\nAlimentación con un carburador Solex 32 PAIA 5-\r\nPotencia 92 HP a 6200 rpm / min –\r\nPotencia del Veloce: 112 HP\r\nRefrigeración Líquida –'),
	(6546, 'chevrolet-orlando', 7, 500, 2017, 'Frenos (delanteros / traseros)	Discos / Discos\r\nNeumático Repuesto	Acero, 215/60 R16\r\nPotencia máxima (HP @ rpm)	163 HP a 3.800'),
	(7894, 'kia-carens', 7, 2000, 2008, 'CAPCIDAD\r\n1,999 cccc\r\n\r\nMÁXIMA POTENCIA\r\n150 HP / 6,500 rpm\r\n\r\nMÁXIMO TORQUE\r\n19.8 @ 4,800 (Kg.M / rpm)'),
	(8465, 'Ferrari-166', 4, 2500, 1948, 'Creado el 27 octubre, 2014\r\nFerrari 166 Inter Coupé. Solo 37 se fabricaron y fueron vestidos por carroceros como Ghia, Farina, Vignale, Bertone. Todos unas verdaderas obras de arte.'),
	(8657, 'Fiat 1500 spider', 5, 3000, 2013, 'Un cabriolet hermoso por donde se lo mire. Un diseño perfecto de uno de los diseñadores mas importantes del mundo, si: Pininfarina');
/*!40000 ALTER TABLE `automovil` ENABLE KEYS */;

-- Dumping structure for table solemne3.boleta
CREATE TABLE IF NOT EXISTS `boleta` (
  `id_boleta` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(35) NOT NULL,
  `id_auto` int(35) NOT NULL,
  `id_plan` int(35) NOT NULL,
  `total` int(40) NOT NULL,
  PRIMARY KEY (`id_boleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.boleta: ~0 rows (approximately)
DELETE FROM `boleta`;
/*!40000 ALTER TABLE `boleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `boleta` ENABLE KEYS */;

-- Dumping structure for table solemne3.plan
CREATE TABLE IF NOT EXISTS `plan` (
  `id_plan` varchar(20) COLLATE utf32_bin NOT NULL,
  `nombre_plan` varchar(35) COLLATE utf32_bin NOT NULL,
  `descripcion` text COLLATE utf32_bin NOT NULL,
  `precio_hora` int(11) NOT NULL,
  `precio_dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.plan: ~5 rows (approximately)
DELETE FROM `plan`;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` (`id_plan`, `nombre_plan`, `descripcion`, `precio_hora`, `precio_dia`) VALUES
	('f001', 'Plan Light', 'el plan light es la solución ideal si:\r\nPensar en un compromiso mensual te da escalofríos.\r\nNo estás seguro de la frecuencia con la que conducirás.\r\nTienes coche, pero quieres disponer de otro por si acaso.\r\nSi buscas un plan sin grandes compromisos\r\nNo estás seguro de la frecuencia con la que conducirás pero aún así quieres tener acceso a nuestros autos o van cuando los necesites.\r\nUna tarifa mensual de 0 €\r\nSin depósito\r\nSin cuota de inscripción ni cargo anual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $7,000  la hora y 66000 € el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra por 0,25€/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores a tu cuenta. sin cargo anual.\r\nCuando te des de alta, puedes añadir más conductores a tu cuenta por sólo 0,00 € al mes.', 0, 0),
	('f002', 'Plan Smart', 'el plan smart es la solución ideal si:\r\nTienes pensado utilizar el servicio de vez en cuando.\r\nTe gusta saber que tienes un Avancar a la vuelta de la esquina siempre que lo necesites.\r\nQuieres acceder a tarifas económicas y ahorrar a partir de 2 horas de reserva al mes\r\n¿Cuánto cuesta apuntarse?\r\nUna tarifa mensual de 5 €\r\nSin depósito\r\nSin cuota de inscripción ni cargo annual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $6000 € la hora y $ $56000  el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra a partir de 0,20€/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores, por tan sólo $2500 al mes.', 0, 0),
	('f0001', 'PlanLight', 'el plan light es la solución ideal si:\r\nPensar en un compromiso mensual te da escalofríos.\r\nNo estás seguro de la frecuencia con la que conducirás.\r\nTienes coche, pero quieres disponer de otro por si acaso.\r\nSi buscas un plan sin grandes compromisos\r\nNo estás seguro de la frecuencia con la que conducirás pero aún así quieres tener acceso a nuestros coches o furgos cuando los necesites.\r\nUna tarifa mensual de $0 \r\nSin depósito\r\nSin cuota de inscripción ni cargo anual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $7000  la hora y $ 66000  el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra por $2500/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores a tu cuenta. sin cargo anual.\r\nCuando te des de alta, puedes añadir más conductores a tu cuenta por sólo $0 al mes.', 7000, 66000),
	('f0002', 'PlanSmart', 'el plan light es la solución ideal si:\r\nPensar en un compromiso mensual te da escalofríos.\r\nNo estás seguro de la frecuencia con la que conducirás.\r\nTienes coche, pero quieres disponer de otro por si acaso.\r\nSi buscas un plan sin grandes compromisos\r\nNo estás seguro de la frecuencia con la que conducirás pero aún así quieres tener acceso a nuestros autos y van cuando los necesites.\r\nUna tarifa mensual de $0 \r\nSin depósito\r\nSin cuota de inscripción ni cargo anual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $7000  la hora y $60000  el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra por $2500/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores a tu cuenta. sin cargo anual.\r\nCuando te des de alta, puedes añadir más conductores a tu cuenta por sólo $0.0 al mes.', 7000, 66000),
	('f0003', 'PlanStar', 'el plan star es la solución ideal si:\r\nTienes pensado utilizar el servicio a menudo\r\nQuieres acceder a nuestras tarifas más competitivas\r\nTe gusta saber que tienes un Avancar a la vuelta de la esquina siempre que lo necesites.\r\n¿Cuánto cuesta apuntarse?\r\nUna tarifa mensual de $10000\r\nTe regalamos $1000 de bono consumo cada mes\r\nSin depósito\r\nSin cuota de inscripción ni cargo anual\r\n¿Cuánto cuesta conducir?\r\nDependiendo del modelo de coche, conduce a partir de $5000  la hora y $46000  el día (24 horas seguidas).\r\nCarburante, seguro y hasta 80 kilometros gratuitos al dia. Km extra a partir de $1500/km\r\n¿Puedo cambiar de plan de precios?\r\nSi deseas cambiar de plan de precios, por favor, contáctanos o cámbialo tú mismo a través del apartado “mi cuenta” en la zona de socio de avancar.es\r\nPuedes cambiar tu plan de precios mensual, pero sólo un número limitado de veces a lo largo de cada año.\r\nCuando cambies a un nuevo plan de precios mensual, el cambio se hará efectivo aproximadamente 1 día después\r\nLas reservas futuras se facturarán con el plan de precios que tengas en vigor en el momento en que efectúes la reserva.\r\n¿Y los compañeros de piso o la familia?\r\nUna vez apuntado, puedes añadir otros conductores, por tan sólo  $5000  al mes.\r\nEl conductor adicional.', 5000, 46000);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;

-- Dumping structure for table solemne3.tarifa
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
CREATE TABLE IF NOT EXISTS `usuario` (
  `nombre` varchar(40) COLLATE utf32_bin NOT NULL,
  `apellidoPat` varchar(40) COLLATE utf32_bin NOT NULL,
  `apellidoMat` varchar(40) COLLATE utf32_bin NOT NULL,
  `correo` varchar(30) COLLATE utf32_bin NOT NULL,
  `user` varchar(40) COLLATE utf32_bin NOT NULL,
  `clave` varchar(30) COLLATE utf32_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- Dumping data for table solemne3.usuario: ~0 rows (approximately)
DELETE FROM `usuario`;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`nombre`, `apellidoPat`, `apellidoMat`, `correo`, `user`, `clave`, `id`) VALUES
	('paulina', 'basaure', 'ponce', 'basaurepaulina@gmail.com', 'pau.bas', '12345', 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
