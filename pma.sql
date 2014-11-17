-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2014 a las 08:44:45
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `pma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area` varchar(20) DEFAULT NULL,
  `cargo` varchar(40) DEFAULT NULL,
  `cedula` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(120) NOT NULL,
  `empresa_id` bigint(20) NOT NULL,
  `estado_cliente` varchar(8) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m9hhfnr1rhqdvsq3g2s897d99` (`empresa_id`),
  KEY `FK_96x1n5ut15ns1xhkm87y7qhnd` (`usuario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `area`, `cargo`, `cedula`, `celular`, `email`, `empresa_id`, `estado_cliente`, `nombre`, `usuario_id`) VALUES
(1, 'Sistemas', 'Ingeniero de Sistemas', '1042350700', '3004448646', 'agonzale34@gmail.com', 1, 'Activo', 'anthony gonzalez', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `estado_empleado` varchar(8) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sjpxfuol5uag54oxbayrfuuii` (`usuario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `cedula`, `celular`, `email`, `estado_empleado`, `nombre`, `usuario_id`) VALUES
(1, '11402031472', '3204420147', 'alguno@hotmail.com', 'Activo', 'Milton Bolibar', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado_empresa` varchar(8) NOT NULL,
  `nit` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `estado_empresa`, `nit`, `nombre`) VALUES
(1, 'Activo', '123456', 'Anello Soft');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidentes`
--

CREATE TABLE IF NOT EXISTS `incidentes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint(20) NOT NULL,
  `descrip_tecnica` varchar(1000) DEFAULT NULL,
  `descrip_usuario` varchar(2000) NOT NULL,
  `empleado_id` bigint(20) NOT NULL,
  `estado_incidente` varchar(8) NOT NULL,
  `id_categoria_incidente` int(11) NOT NULL,
  `id_prioridad_incidente` int(11) NOT NULL,
  `id_tipo_incidente` int(11) NOT NULL,
  `registro` datetime NOT NULL,
  `solucion` datetime DEFAULT NULL,
  `solucion_dada` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l3d7disbh97wts4lk8lwqie0i` (`cliente_id`),
  KEY `FK_b9hpl0f1dtg2n3ktfas5dvkb9` (`empleado_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `incidentes`
--

INSERT INTO `incidentes` (`id`, `cliente_id`, `descrip_tecnica`, `descrip_usuario`, `empleado_id`, `estado_incidente`, `id_categoria_incidente`, `id_prioridad_incidente`, `id_tipo_incidente`, `registro`, `solucion`, `solucion_dada`) VALUES
(1, 1, NULL, 'Descripcion', 1, 'Activo', 1, 1, 1, '2014-11-16 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `clase_css` varchar(100) DEFAULT NULL,
  `controlador` varchar(200) DEFAULT NULL,
  `estado_opcion` varchar(8) NOT NULL,
  `opcion` varchar(100) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  `tipo_opcion` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9qh8twcltvwh99tsre5iyru8w` (`rol_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `clase_css`, `controlador`, `estado_opcion`, `opcion`, `rol_id`, `url`, `tipo_opcion`) VALUES
(1, 'fa fa-fw fa-user', 'cliente', 'Activo', 'Clientes', 1, '/pma/cliente/index', 'M'),
(2, 'fa fa-fw fa-wrench', 'incidente', 'Activo', 'Incidentes', 1, '/pma/incidente/index', 'M'),
(3, 'fa fa-fw fa-user', 'cliente', 'Activo', 'Clientes', 2, '/pma/cliente/index', 'M'),
(4, 'fa fa-fw fa-edit', 'empresa', 'Activo', 'Empresas', 2, '/pma/empresa/index', 'M'),
(5, 'fa fa-fw fa-user', 'empleado', 'Activo', 'Empleados', 2, '/pma/empleado/index', 'M'),
(7, 'fa fa-fw fa-wrench', 'incidente', 'Activo', 'Incidentes', 2, '/pma/incidente/index', 'M'),
(8, 'fa fa-fw fa-edit', 'opcion', 'Activo', 'Opciones', 2, '/pma/opcion/index', 'D'),
(9, 'fa fa-fw fa-wrench', 'operacion', 'Activo', 'Operaciones', 2, '/pma/operacion/index', 'D'),
(10, 'fa fa-fw fa-table', 'parametro', 'Activo', 'Parametrizacion', 2, '/pma/parametro/index', 'M'),
(11, 'fa fa-fw fa-check', 'rol', 'Activo', 'Roles', 2, '/pma/rol/index', 'M'),
(12, 'fa fa-fw fa-user', 'usuario', 'Activo', 'Usuarios', 2, '/pma/usuario/index', 'M'),
(13, 'fa fa-fw fa-user', 'usuario', 'Activo', 'Usuario', 1, '/pma/usuario/index', 'D'),
(14, 'fa fa-fw fa-table', 'valorParametro', 'Activo', 'valorParametro', 2, '/pma/valorParametro/index', 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE IF NOT EXISTS `operaciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado_operacion` varchar(8) NOT NULL,
  `opcion_id` bigint(20) DEFAULT NULL,
  `operacion` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_41748bupvx56r4i7hhq5vjcl4` (`opcion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`id`, `estado_operacion`, `opcion_id`, `operacion`) VALUES
(1, 'Activo', 1, 'show'),
(2, 'Activo', 1, 'index'),
(3, 'Activo', 1, 'save'),
(4, 'Activo', 1, 'edit'),
(5, 'Activo', 1, 'create'),
(6, 'Activo', 1, 'delete'),
(7, 'Activo', 2, 'show'),
(8, 'Activo', 1, 'update'),
(9, 'Activo', 2, 'create'),
(11, 'Activo', 2, 'delete'),
(12, 'Activo', 2, 'index');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `atributo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado_parametro` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `atributo`, `descripcion`, `estado_parametro`) VALUES
(1, 'idTipoIncidente', 'Tipo de Incidente', 'A'),
(2, 'idCategoriaIncidente', 'Categoria del Incidente', 'A'),
(3, 'idPrioridadIncidente', 'Prioridad del Incidente', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado_rol` varchar(8) NOT NULL,
  `rol` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `estado_rol`, `rol`) VALUES
(1, 'Activo', 'clienteAdmin'),
(2, 'Activo', 'systemAdmin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado_usuario` varchar(8) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r8oo98o39ykr4hi57md9nibmw` (`login`),
  KEY `FK_ghgeehq52emllswr9plavf7bd` (`rol_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `estado_usuario`, `login`, `password`, `rol_id`) VALUES
(1, 'Activo', 'agonzale34', '202cb962ac59075b964b07152d234b70', 2),
(2, 'Activo', 'jpastrana', '202cb962ac59075b964b07152d234b70', 2),
(3, 'Activo', 'mbolivar', '202cb962ac59075b964b07152d234b70', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_parametros`
--

CREATE TABLE IF NOT EXISTS `valor_parametros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado_valor_parametro` varchar(8) NOT NULL,
  `parametros_id` bigint(20) NOT NULL,
  `valor` varchar(300) DEFAULT NULL,
  `orden` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_dqgayjr17vb90arnv3507yrsj` (`parametros_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `valor_parametros`
--

INSERT INTO `valor_parametros` (`id`, `descripcion`, `estado_valor_parametro`, `parametros_id`, `valor`, `orden`) VALUES
(1, 'Incidente de Prioridad Alta', 'Activo', 3, 'Alta', NULL),
(2, 'Incidente de Prioridad Media', 'Activo', 3, 'Media', NULL),
(3, 'Incidente de Prioridad Baja', 'Activo', 3, 'Baja', NULL),
(4, 'Incidente de tipo tecnico', 'Activo', 1, 'Tecnico', NULL),
(5, 'Incidente de tipo usuario', 'Activo', 1, 'Causa Usuario', NULL),
(6, 'Incidente de tipo fortuito', 'Activo', 1, 'Causa fortuita', NULL),
(7, 'Categoria minima', 'Activo', 2, 'Inicidente menor', NULL),
(8, 'Categoria media', 'Activo', 2, 'Inicidente local', NULL),
(9, 'Categoria alta', 'Activo', 2, 'Incidente de infraestrutura', NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `FK_96x1n5ut15ns1xhkm87y7qhnd` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `FK_m9hhfnr1rhqdvsq3g2s897d99` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FK_sjpxfuol5uag54oxbayrfuuii` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `incidentes`
--
ALTER TABLE `incidentes`
  ADD CONSTRAINT `FK_b9hpl0f1dtg2n3ktfas5dvkb9` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `FK_l3d7disbh97wts4lk8lwqie0i` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `FK_9qh8twcltvwh99tsre5iyru8w` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD CONSTRAINT `FK_41748bupvx56r4i7hhq5vjcl4` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_ghgeehq52emllswr9plavf7bd` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
  ADD CONSTRAINT `FK_dqgayjr17vb90arnv3507yrsj` FOREIGN KEY (`parametros_id`) REFERENCES `parametros` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
