-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2023 a las 22:20:06
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prensa_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloque`
--

CREATE TABLE `bloque` (
  `idBloque` int(11) NOT NULL,
  `nomBloque` varchar(5) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bloque`
--

INSERT INTO `bloque` (`idBloque`, `nomBloque`, `fechaCreacion`, `activo`) VALUES
(1, '', '2023-02-24 17:01:37', 1),
(2, 'B1', '2023-02-24 17:01:37', 1),
(3, 'B2', '2023-02-24 17:01:37', 1),
(4, 'B3', '2023-02-24 17:01:37', 1),
(5, 'B4', '2023-02-24 17:01:37', 1),
(6, 'B5', '2023-02-24 17:01:37', 1),
(7, 'B6', '2023-02-24 17:01:37', 1),
(8, 'B7', '2023-02-24 17:01:37', 1),
(9, 'B8', '2023-02-24 17:01:37', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idCiudad` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`idCiudad`, `nombre`) VALUES
(1, ''),
(2, 'Beni'),
(3, 'Chuquisaca'),
(4, 'Cochabamba'),
(5, 'Internacional'),
(6, 'La Paz'),
(7, 'Oruro'),
(8, 'Pando'),
(9, 'Potosi'),
(10, 'RNA'),
(11, 'Santa Cruz'),
(12, 'Tarija');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `idContenido` int(11) NOT NULL,
  `nomContenido` varchar(50) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contenido`
--

INSERT INTO `contenido` (`idContenido`, `nomContenido`, `fechaCreacion`, `activo`) VALUES
(22, '', '2023-02-24 00:00:00', 1),
(23, 'ACTUACIONES', '2023-02-24 00:00:00', 1),
(24, 'BRIGADA', '2023-02-24 00:00:00', 1),
(25, 'CIUDAD', '2023-02-24 00:00:00', 1),
(26, 'CLIMA', '2023-02-24 00:00:00', 1),
(27, 'COCINA', '2023-02-24 00:00:00', 1),
(28, 'COMERCIAL', '2023-02-24 00:00:00', 1),
(29, 'DEPORTES', '2023-02-24 00:00:00', 1),
(30, 'DESPEDIDA', '2023-02-24 00:00:00', 1),
(31, 'ECOLOGIA', '2023-02-24 00:00:00', 1),
(32, 'ECONOMIA', '2023-02-24 00:00:00', 1),
(33, 'EDUCACION', '2023-02-24 00:00:00', 1),
(34, 'ENTRETENIMIENTO', '2023-02-24 00:00:00', 1),
(35, 'INTERNACIONAL', '2023-02-24 00:00:00', 1),
(36, 'JUSTICIA', '2023-02-24 00:00:00', 1),
(37, 'POLICIAL', '2023-02-24 00:00:00', 1),
(38, 'POLITICA', '2023-02-24 00:00:00', 1),
(39, 'PROMOCION', '2023-02-24 00:00:00', 1),
(40, 'REDES SOCIALES', '2023-02-24 00:00:00', 1),
(41, 'SALUD', '2023-02-24 00:00:00', 1),
(42, 'SALUDO', '2023-02-24 00:00:00', 1),
(43, 'SOCIAL', '2023-02-24 00:00:00', 1),
(44, 'VARIOS', '2023-02-24 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edicion`
--

CREATE TABLE `edicion` (
  `idEdicion` int(11) NOT NULL,
  `nomEdicion` varchar(50) NOT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `edicion`
--

INSERT INTO `edicion` (`idEdicion`, `nomEdicion`, `fechaCreacion`, `activo`) VALUES
(1, 'Al Dia Revista', '2023-02-24 00:00:00', 1),
(2, 'Segunda Edicion', '2023-02-24 00:00:00', 1),
(3, 'Tercera Edicion', '2023-02-24 00:00:00', 1),
(4, 'Primera Edicion de Sabado', '2023-02-24 00:00:00', 1),
(5, 'Segunda Edicion de Sabado', '2023-02-24 00:00:00', 1),
(6, 'Primera Edicion de Domingo', '2023-02-24 00:00:00', 1),
(7, 'Segunda Edicion de Domingo', '2023-02-24 00:00:00', 1),
(8, 'Aqui en Vivo', '2023-02-24 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editor`
--

CREATE TABLE `editor` (
  `IdEditor` int(8) NOT NULL,
  `NombreEditor` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `editor`
--

INSERT INTO `editor` (`IdEditor`, `NombreEditor`) VALUES
(1, ''),
(2, 'Alejandra Negro'),
(3, 'Alejandro Rojas'),
(4, 'Alejandro Torrico'),
(5, 'Alfredo Cabrera'),
(6, 'Alvaro Guzman'),
(7, 'Carlos Herbas'),
(8, 'Carlos Jimenez'),
(9, 'Carlos Lara'),
(10, 'Carlos Lijeron'),
(11, 'Carlos Saavedra'),
(12, 'Carlos Salcedo'),
(13, 'Charlye Suarez'),
(14, 'Claudio Zambrana'),
(15, 'Conny Calderon'),
(16, 'Cristian Guzman'),
(17, 'Cristian Tejerina'),
(18, 'Daniel Apaza'),
(19, 'Daniel Ardiles'),
(20, 'Daniel Conde'),
(21, 'Daniela Serrano'),
(22, 'Dante Berrios'),
(23, 'Denisse Quiroga'),
(24, 'Deysi Cuestas'),
(25, 'Diego Poma'),
(26, 'Edmundo Gutierrez'),
(27, 'Edwin Natush'),
(28, 'Edwin Soria'),
(29, 'Elton Masay'),
(30, 'Elvis Sanchez'),
(31, 'Ezequiel Serres'),
(32, 'Fabiana Castillo'),
(33, 'Federico Camacho'),
(34, 'Fernando Duran'),
(35, 'Fernando Eid'),
(36, 'Fernando Mollo'),
(37, 'Freddy Yauri'),
(38, 'Graciela Reque'),
(39, 'Griselda Sandoval'),
(40, 'Guido Castro'),
(41, 'Guillermo Delgadillo'),
(42, 'Gustavo Meneses'),
(43, 'Hector Uriarte'),
(44, 'Henry Gutierrez'),
(45, 'Hialmar Sanchez'),
(46, 'Hugo Jimenez'),
(47, 'Israel Gutierrez'),
(48, 'Ivan Quisbert'),
(49, 'Javier Vaca'),
(50, 'Jeanneth Martinez'),
(51, 'Jenny Quispe'),
(52, 'Jesica Limpias'),
(53, 'Jeysi Alanes'),
(54, 'Jhonn Guzman'),
(55, 'Jhoselin Cabrera'),
(56, 'Joaquin Luna'),
(57, 'Jorge Ale'),
(58, 'Jose Choquechambi'),
(59, 'Jose Irusta'),
(60, 'Juan Carlos Tarqui'),
(61, 'Juan Jose Flores'),
(62, 'Juan Pablo Mamani'),
(63, 'Junior Barba'),
(64, 'Jussara Rueda Galean'),
(65, 'Karla Rodriguez'),
(66, 'Leila Castro'),
(67, 'Lorena Morales'),
(68, 'Lucia Quispe'),
(69, 'Luis Tapia'),
(70, 'Luis Torrez'),
(71, 'Maicol Orellana'),
(72, 'Manolo Aillon'),
(73, 'Manuel Choque'),
(74, 'Martin Alcorta'),
(75, 'Maximo Chura'),
(76, 'Michelle Meneses'),
(77, 'Miguel Choque'),
(78, 'Miguel Soliz'),
(79, 'Milton Sandoval'),
(80, 'Moises Colque'),
(81, 'Myriam Claros'),
(82, 'Nayra Deheza'),
(83, 'Nelson Medina'),
(84, 'Nery Prado'),
(85, 'Nicolas Enao'),
(86, 'Oscar Portugal'),
(87, 'Osmar Machicado'),
(88, 'Ovidio Paz'),
(89, 'Pamela Garcia'),
(90, 'Paola Coimbra'),
(91, 'Paola Zubieta'),
(92, 'Patricia Conde'),
(93, 'Paula Banegas'),
(94, 'Paula Ibañez'),
(95, 'Practicante'),
(96, 'Rene Quispe'),
(97, 'Reynaldo Peralta'),
(98, 'Ricardo Arias'),
(99, 'Ricardo Rivas'),
(100, 'Richard Pereira'),
(101, 'Roberth Valdivia'),
(102, 'Roberto Rios'),
(103, 'Roberto Soliz'),
(104, 'Rocio Hanssen'),
(105, 'Rodrigo Barrera'),
(106, 'Roly Mendez'),
(107, 'Rosmery Flores'),
(108, 'Royer Choque'),
(109, 'Samuel Hernandez'),
(110, 'Sergio Loza'),
(111, 'Tatiana Miranda'),
(112, 'Thiago Torrico'),
(113, 'Tony Gutierrez'),
(114, 'Valeria Otondo'),
(115, 'Vania Borja'),
(116, 'Victor Hugo Rojas'),
(117, 'Vivian Donoso'),
(119, 'Josè Miguel Velasco'),
(120, 'Juan Carlos Macias'),
(121, 'Ilsen Hernani');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato`
--

CREATE TABLE `formato` (
  `idFormato` int(11) NOT NULL,
  `nomFormato` varchar(50) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formato`
--

INSERT INTO `formato` (`idFormato`, `nomFormato`, `fechaCreacion`, `activo`) VALUES
(1, '', '0000-00-00 00:00:00', 0),
(2, 'CAPSULA', '2023-02-25 00:00:00', 1),
(3, 'CLIMA', '2023-02-26 00:00:00', 1),
(4, 'COMERCIAL', '2023-02-27 00:00:00', 1),
(5, 'COMPACTOS', '2023-02-28 00:00:00', 1),
(6, 'CUADROS', '2023-03-01 00:00:00', 1),
(7, 'ENTREVISTA', '2023-03-02 00:00:00', 1),
(8, 'FALSO', '2023-03-03 00:00:00', 1),
(9, 'INFORME', '2023-03-04 00:00:00', 1),
(10, 'NOTA', '2023-03-05 00:00:00', 1),
(11, 'NOTA ACTUALIZADA', '2023-03-06 00:00:00', 1),
(12, 'NOTA REPETIDA', '2023-03-07 00:00:00', 1),
(13, 'POST', '2023-03-08 00:00:00', 1),
(14, 'PROMOCION', '2023-03-09 00:00:00', 1),
(15, 'REPORTAJE', '2023-03-10 00:00:00', 1),
(16, 'SECTOR', '2023-03-11 00:00:00', 1),
(17, 'UNIDAD MOVIL', '2023-03-12 00:00:00', 1),
(18, 'VIVO', '2023-03-13 00:00:00', 1),
(19, 'VO', '2023-03-14 00:00:00', 1),
(20, 'VO-VTR', '2023-03-15 00:00:00', 1),
(21, 'VTR', '2023-03-16 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodismo`
--

CREATE TABLE `periodismo` (
  `Id` int(11) NOT NULL,
  `ordenPosicion` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `IdPresentador` int(8) DEFAULT NULL,
  `Edicion` varchar(32) DEFAULT NULL,
  `Emitido` varchar(32) DEFAULT NULL,
  `IdProductor` int(8) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Formato` varchar(32) DEFAULT NULL,
  `idCiudad` int(11) DEFAULT NULL,
  `IdPeriodista` int(8) DEFAULT NULL,
  `IdEditor` int(8) DEFAULT NULL,
  `Contenido` varchar(32) DEFAULT NULL,
  `Duracion` time DEFAULT NULL,
  `Bloque` varchar(32) DEFAULT NULL,
  `mm_ss` time DEFAULT NULL,
  `Hora_Prog` time DEFAULT NULL,
  `Realiza_en` varchar(32) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `periodismo`
--

INSERT INTO `periodismo` (`Id`, `ordenPosicion`, `numero`, `Fecha`, `IdPresentador`, `Edicion`, `Emitido`, `IdProductor`, `Descripcion`, `Formato`, `idCiudad`, `IdPeriodista`, `IdEditor`, `Contenido`, `Duracion`, `Bloque`, `mm_ss`, `Hora_Prog`, `Realiza_en`, `activo`, `flag`, `fechaCreacion`, `fechaModificacion`) VALUES
(1, 1, 1, '2023-02-18', 10, 'Segunda Edicion', 'Si', 4, 'carnaval oruro ', 'VIVO', 7, 26, 2, 'CIUDAD', '00:04:00', 'b2', '12:25:00', '19:00:00', 'Santa Cruz', 2, 0, '2023-02-18 00:00:00', NULL),
(2, 2, 2, '2023-02-18', 10, 'Segunda Edicion', 'Si', 4, 'vivo corso cruceño', 'VIVO', 11, 9, 2, 'CIUDAD', '00:03:00', 'b2', '12:25:00', '19:07:00', 'Santa Cruz', 2, 0, '2023-02-18 00:00:00', NULL),
(3, 3, 3, '2023-02-18', 10, 'Segunda Edicion', 'Si', 4, 'nota previo al corso ', 'NOTA', 11, 9, 2, 'CIUDAD', '00:03:00', 'b2', '12:25:00', '19:10:00', 'Santa Cruz', 2, 0, '2023-02-18 00:00:00', NULL),
(4, 4, 4, '2023-02-18', 3, 'Segunda Edicion', 'Si', 4, 'datos del tiempo', 'CLIMA', 11, 12, 2, 'CLIMA', '00:07:00', 'b2', '12:25:00', '19:17:00', 'Santa Cruz', 2, 0, '2023-02-18 00:00:00', NULL),
(5, 6, 6, '2023-02-18', 10, 'Segunda Edicion', 'Si', 4, 'hombre muerto', 'VO', 11, 7, 2, 'POLICIAL', '00:05:00', 'b2', '12:25:00', '19:27:00', 'Santa Cruz', 2, 0, '2023-02-18 00:00:00', NULL),
(6, 5, 5, '2023-02-18', 10, 'Segunda Edicion', 'Si', 4, 'investigacion hombre muerto', 'NOTA', 11, 9, 2, 'POLICIAL', '00:05:00', 'b2', '12:25:00', '19:22:00', 'Santa Cruz', 2, 0, '2023-02-18 00:00:00', NULL),
(7, 7, 7, '2023-02-18', 10, 'Segunda Edicion', 'Si', 4, 'caenaval de oruro ', 'VIVO', 7, 26, 2, 'CIUDAD', '00:03:00', 'b2', '12:25:00', '19:30:00', 'Santa Cruz', 2, 0, '2023-02-18 00:00:00', NULL),
(8, 3, 1, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(9, 3, 2, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(10, 3, 3, '2023-02-19', 38, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(11, 4, 4, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(12, 5, 5, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(13, 5, 6, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(14, 6, 7, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(15, 7, 8, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(16, 7, 9, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(17, 7, 10, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(18, 8, 11, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(19, 10, 12, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(20, 10, 13, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(21, 11, 14, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(22, 13, 15, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(23, 13, 16, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(24, 13, 17, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(25, 13, 18, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(26, 16, 19, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(27, 16, 20, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(28, 19, 21, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(29, 19, 22, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(30, 19, 23, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(31, 19, 24, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(32, 19, 25, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(33, 19, 26, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(34, 19, 27, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(35, 19, 28, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(36, 19, 29, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(37, 19, 30, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(38, 19, 31, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(39, 19, 32, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(40, 19, 33, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(41, 19, 34, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(42, 20, 35, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(43, 20, 36, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(44, 22, 37, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(45, 23, 38, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(46, 25, 40, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(47, 23, 39, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(48, 37, 41, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(49, 40, 42, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(50, 40, 43, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(51, 40, 44, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(52, 40, 45, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(53, 40, 46, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(54, 40, 47, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(55, 40, 48, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(56, 40, 49, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(57, 40, 50, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(58, 40, 51, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(59, 40, 52, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(60, 40, 53, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(61, 40, 54, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(62, 40, 55, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(63, 40, 56, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(64, 40, 57, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(65, 40, 58, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(66, 40, 59, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(67, 40, 60, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(68, 40, 61, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(69, 40, 62, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(70, 40, 63, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(71, 40, 64, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(72, 67, 65, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(73, 68, 67, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(74, 1, 1, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(75, 2, 2, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(76, 3, 3, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(77, 3, 4, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(78, 4, 5, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(79, 5, 6, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(80, 6, 7, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(81, 7, 8, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(82, 8, 9, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(83, 8, 10, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(84, 8, 11, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(85, 9, 12, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(86, 9, 13, '2023-02-19', 1, 'Segunda Edicion', 'Si', 11, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(87, 1, 1, '2023-01-13', 1, 'Tercera Edicion', 'Si', 12, '', '', 1, 1, 1, '', '00:00:00', '', '20:30:00', '20:30:00', 'La Paz', 1, 0, '2023-01-13 00:00:00', NULL),
(88, 1, 1, '2023-02-21', 1, 'Segunda Edicion', 'Si', 4, 'MUERTE EN CHONCHOCORO', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-21 00:00:00', NULL),
(89, 1, 1, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'REJILLA FINAL DEL CARNAVAL', 'VTR', 11, 2, 3, 'CIUDAD', '00:01:00', 'B1', '20:30:00', '20:30:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(90, 2, 2, '2023-02-23', 3, 'Tercera Edicion', 'Si', 15, 'AVANCE CHARLYIE', 'VO', 11, 50, 49, 'DEPORTES', '00:00:30', 'B1', '20:30:00', '20:31:30', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(91, 3, 3, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'TITULOS ', 'VO', 11, 74, 3, 'VARIOS', '00:00:30', 'b1', '20:30:00', '20:32:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(92, 4, 4, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'AVANCE QUE HARÍAS SI ', 'VTR', 11, 74, 74, 'SOCIAL', '00:00:00', 'B1', '20:30:00', '20:32:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(93, 5, 5, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, '21 F RECORDATORIO ', 'VTR', 11, 16, 120, 'POLITICA', '00:02:00', 'B1', '20:30:00', '20:34:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(94, 7, 7, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, '21 F CHALLA ', 'NOTA', 4, 104, 111, 'POLITICA', '00:03:00', 'B1', '20:30:00', '20:43:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(95, 6, 6, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'U.M. POLICÍA REALIZA CONTROLES EN LA BALLIVIAN ', 'UNIDAD MOVIL', 11, 16, 34, 'CIUDAD', '00:06:00', 'B1', '20:30:00', '20:40:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(96, 8, 8, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'JUICIO CALVO WHIPALA', 'VO', 11, 74, 3, 'JUSTICIA', '00:01:00', 'B1', '20:30:00', '20:44:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(97, 9, 9, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'INFORME CHONCHOCORO', 'NOTA REPETIDA', 6, 108, 116, 'POLICIAL', '00:03:00', 'B1', '20:30:00', '20:47:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(98, 10, 10, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'REPERCUSIONES MUERTO CHONCHOCORO', 'NOTA ACTUALIZADA', 6, 108, 116, 'POLITICA', '00:01:00', 'B1', '20:30:00', '20:48:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(99, 11, 11, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'SICARIOS APREHENDIDOS', 'INFORME', 5, 74, 3, 'INTERNACIONAL', '00:04:00', 'B1', '20:30:00', '20:52:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(100, 12, 12, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'COMPLETA DESAPARECIDA', 'NOTA ACTUALIZADA', 11, 57, 3, 'POLICIAL', '00:02:00', 'B1', '20:30:00', '20:54:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(101, 13, 13, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'MUJER SECUESTRADA', 'NOTA REPETIDA', 4, 104, 111, 'POLICIAL', '00:03:00', 'B1', '20:30:00', '20:57:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(102, 14, 14, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'PERRO SALVADOR', 'NOTA', 11, 21, 58, 'INTERNACIONAL', '00:02:00', 'B1', '20:30:00', '20:59:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(103, 15, 15, '2023-02-23', 23, 'Tercera Edicion', 'Si', 15, 'SANAMENTE', 'CAPSULA', 6, 73, 18, 'SALUD', '00:02:00', 'B1', '20:30:00', '21:01:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(104, 16, 16, '2023-02-23', 3, 'Tercera Edicion', 'Si', 15, 'LA CANCHA', 'CAPSULA', 11, 50, 49, 'DEPORTES', '00:05:00', 'B1', '20:30:00', '21:06:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(105, 17, 17, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'AVANCE QUE HARÍAS SI ', 'VTR', 11, 74, 74, 'SOCIAL', '00:01:30', 'B1', '20:30:00', '21:07:30', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(106, 18, 18, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'ORURO DESPIDIÓ EL CARNAVAL', 'FALSO', 7, 98, 103, 'CIUDAD', '00:01:30', 'B1', '20:30:00', '21:09:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(107, 19, 19, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'U.M.  LA BALLIVIAN SIGUE DE FIESTA', 'UNIDAD MOVIL', 11, 16, 34, 'CIUDAD', '00:02:00', 'B1', '20:30:00', '21:11:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(108, 20, 20, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'CARNAVAL EN LOS BARRIOS', 'NOTA REPETIDA', 11, 94, 99, 'CIUDAD', '00:02:00', 'B1', '20:30:00', '21:13:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(109, 21, 21, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'CARNAVAL PORONGUEÑO', 'NOTA', 11, 121, 34, 'CIUDAD', '00:02:00', 'B1', '20:30:00', '21:15:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(110, 22, 22, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'TERMINÓ CARNAVAL', 'NOTA', 4, 104, 111, 'CIUDAD', '00:03:00', 'B1', '20:30:00', '21:18:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(111, 23, 23, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'FIN CARNAVAL BRASIL ', 'VO', 11, 21, 58, 'INTERNACIONAL', '00:01:00', 'B1', '20:30:00', '21:19:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(112, 24, 24, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'CARNAVAL PIQUE ', 'VO', 11, 98, 58, 'INTERNACIONAL', '00:01:00', 'B1', '20:30:00', '21:20:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(113, 25, 25, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'ENCUENTRO ACTORES ', 'VO', 11, 21, 3, 'INTERNACIONAL', '00:01:00', 'B1', '20:30:00', '21:21:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(114, 26, 26, '2023-02-23', 5, 'Tercera Edicion', 'Si', 15, 'CORTE 1 ', 'COMERCIAL', 6, 109, 109, 'COMERCIAL', '00:03:50', 'B1', '20:30:00', '21:24:50', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(115, 27, 27, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'SEGUIMIENTO ATRACO ', 'NOTA', 11, 16, 120, 'POLICIAL', '00:03:10', 'B2', '20:30:00', '21:28:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(116, 28, 28, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'CHOQUE APARATOSO ', 'VO', 11, 57, 120, 'CIUDAD', '00:01:00', 'B2', '20:30:00', '21:29:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(117, 29, 29, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'VUELCO CAMIÓN ', 'VO-VTR', 6, 108, 116, 'CIUDAD', '00:00:30', 'B2', '20:30:00', '21:29:30', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(118, 30, 30, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'PROMO REPORTEROS', 'PROMOCION', 11, 74, 74, 'PROMOCION', '00:00:00', 'B2', '20:30:00', '21:29:30', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(119, 31, 31, '2023-02-23', 3, 'Tercera Edicion', 'Si', 15, 'REPORTEROS ROBA FOCOS', 'VO', 11, 98, 58, 'CIUDAD', '00:01:30', 'B2', '20:30:00', '21:31:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(120, 32, 32, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'RUSIA SE VA', 'VO', 11, 74, 3, 'INTERNACIONAL', '00:01:00', 'B2', '20:30:00', '21:32:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(121, 33, 33, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'FRASES PUTIN ', 'CUADROS', 11, 74, 3, 'INTERNACIONAL', '00:01:00', 'B2', '20:30:00', '21:33:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(122, 34, 34, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'FALSO DISCURSO BIDEN ', 'FALSO', 11, 74, 3, 'INTERNACIONAL', '00:02:00', 'B2', '20:30:00', '21:35:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(123, 35, 35, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'BIDEN FRASES', 'CUADROS', 11, 74, 3, 'INTERNACIONAL', '00:01:00', 'B2', '20:30:00', '21:36:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(124, 36, 36, '2023-02-23', 3, 'Tercera Edicion', 'Si', 15, 'LA CANCHA', 'CAPSULA', 11, 50, 49, 'DEPORTES', '00:03:00', 'B2', '20:30:00', '21:39:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(125, 37, 37, '2023-02-23', 5, 'Tercera Edicion', 'Si', 15, 'CORTE 2', 'COMERCIAL', 6, 109, 109, 'COMERCIAL', '00:02:34', 'B2', '20:30:00', '21:41:34', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(126, 38, 38, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'HOSPITAL DE NIÑOS DENGUE', 'NOTA REPETIDA', 11, 64, 119, 'SOCIAL', '00:03:26', 'B3', '20:30:00', '21:45:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(127, 39, 39, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'LIMPIEZA DENGUE ALCALDE', 'VTR', 11, 64, 119, 'SALUD', '00:01:00', 'B3', '20:30:00', '21:46:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(128, 40, 40, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'ECUADOR CONCRETO COCAÍNA', 'VO', 11, 115, 2, 'INTERNACIONAL', '00:01:00', 'B3', '20:30:00', '21:47:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(129, 41, 41, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'COSECHA MARIHUANA ', 'INFORME', 11, 21, 3, 'INTERNACIONAL', '00:06:00', 'B3', '20:30:00', '21:53:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(130, 42, 42, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'LLUVIAS MUERTOS BRASIL ', 'VO', 11, 21, 3, 'INTERNACIONAL', '00:01:00', 'B3', '20:30:00', '21:54:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(131, 43, 43, '2023-02-23', 5, 'Tercera Edicion', 'Si', 15, 'CORTE 3 ', 'COMERCIAL', 6, 109, 109, 'COMERCIAL', '00:04:33', 'B3', '20:30:00', '21:58:33', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(132, 44, 44, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'ANIVERSARIO PORONGO ', 'NOTA', 11, 121, 34, 'CIUDAD', '00:04:00', 'B4', '20:30:00', '22:02:33', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(133, 45, 45, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'TRADICION RELIGIOSA', 'NOTA', 2, 103, 58, 'CIUDAD', '00:02:27', 'B4', '20:30:00', '22:05:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(134, 1, 1, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(135, 2, 2, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(136, 3, 3, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(137, 4, 4, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(138, 4, 5, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(139, 5, 6, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(140, 6, 7, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(141, 6, 8, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(142, 8, 9, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(143, 8, 10, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(144, 10, 11, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(145, 10, 12, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(146, 10, 13, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(147, 10, 14, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(148, 10, 15, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(149, 10, 16, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(150, 10, 17, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(151, 10, 18, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(152, 10, 19, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(153, 10, 20, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(154, 20, 21, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(155, 21, 22, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(156, 21, 23, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(157, 21, 24, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(158, 21, 25, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(159, 21, 26, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(160, 21, 27, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(161, 21, 28, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(162, 21, 29, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(163, 23, 23, '2023-02-22', 1, 'Segunda Edicion', 'Si', 13, '', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '00:00:00', 'La Paz', 1, 0, '2023-02-22 00:00:00', NULL),
(164, 1, 1, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'GUERRA CONTRA EL DENGUE ', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(165, 2, 2, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'INSTALAN HOSPITAL DE CAMPAÑAS ', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(166, 3, 3, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'INSTALAN UN HOSPITAL DE CAMPAÑA', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(167, 4, 4, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'INSTALAN HOSPOTAL DE DENGUE ', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(168, 5, 5, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'EL DRAMA POR EL DENGUE ', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(169, 8, 8, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'EL DENGUE NO DA TREGUA ', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(170, 6, 6, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'PROTESTA EN EL HOSPITAL DE NIÑOS ', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(171, 7, 7, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'EL DENGUE NO DA TREGUA ', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(172, 9, 9, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'CALVO DA UNA CARTA AL PRESIDENTE ', 'VTR', 11, 60, 2, 'POLITICA', '00:00:00', 'B1', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(173, 10, 10, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'QUE ÁSO CON EL DOLAR', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(174, 11, 11, '2023-02-22', 1, 'Segunda Edicion', 'Si', 4, 'EL DRAMA POR EL DENGUE ', 'VIVO', 11, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'Santa Cruz', 1, 0, '2023-02-22 00:00:00', NULL),
(175, 67, 66, '2023-02-19', 1, 'Segunda Edicion de Domingo', 'Si', 26, '', '', 1, 1, 1, '', '00:00:00', '', '18:30:00', '18:30:00', 'La Paz', 1, 0, '2023-02-19 00:00:00', NULL),
(176, 1, 176, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'REJILLA DENGUE SANTA CRUZ', 'VTR', 11, 2, 2, 'SALUD', '00:00:30', 'B1', '20:30:00', '20:25:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(177, 2, 177, '2023-02-23', 3, 'Tercera Edicion', 'Si', 15, 'AVANCE CHARLYE', 'VO', 11, 50, 3, 'DEPORTES', '00:00:30', 'B1', '20:30:00', '20:26:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(178, 3, 178, '2023-02-23', 47, 'Tercera Edicion', 'Si', 15, 'AVANCE MARIO ', 'VO', 11, 98, 58, 'ENTRETENIMIENTO', '00:00:30', 'B1', '20:30:00', '20:26:30', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(179, 4, 179, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'TITULOS ', 'VO', 11, 21, 2, 'VARIOS', '00:00:30', 'B1', '20:30:00', '20:27:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(180, 5, 180, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'E.I. CALLES PELIGROSAS', 'VTR', 11, 97, 58, 'CIUDAD', '00:00:30', 'B1', '20:30:00', '20:27:30', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(181, 6, 181, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'CASOS DENGUE', 'VTR', 11, 98, 58, 'SALUD', '00:02:30', 'B1', '20:30:00', '20:30:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(182, 7, 182, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'U.M. APARECIÓ LA MENOR ', 'UNIDAD MOVIL', 11, 121, 108, 'CIUDAD', '00:02:00', 'B1', '20:30:00', '20:32:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(183, 9, 183, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'HOSPITAL DE NIÑOS SOBRESATURADO ', 'NOTA', 11, 121, 108, 'SALUD', '00:02:00', 'B1', '20:30:00', '20:37:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(184, 8, 184, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'HOSPITAL INAGURACIÓN CAMPANA', 'NOTA', 11, 64, 65, 'SALUD', '00:03:00', 'B1', '20:30:00', '20:35:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(185, 10, 185, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'PLAZO AMNISTIA', 'NOTA', 11, 16, 79, 'POLITICA', '00:02:00', 'B1', '20:30:00', '20:39:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(186, 11, 186, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'REACCIONES CARTA', 'VTR', 11, 16, 79, 'POLITICA', '00:02:00', 'B1', '20:30:00', '20:41:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(187, 12, 187, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'RESUMEN ENTREVISTA DÓLAR', 'NOTA', 11, 115, 3, 'ECONOMIA', '00:02:00', 'B1', '20:30:00', '20:43:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(188, 13, 188, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'ROBO CASA CARNAVAL', 'NOTA', 11, 57, 3, 'CIUDAD', '00:02:00', 'B1', '20:30:00', '20:45:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(189, 14, 189, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'LADRÓN ROBA LADRÓN ', 'VO', 11, 21, 58, 'INTERNACIONAL', '00:01:00', 'B1', '20:30:00', '20:46:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(190, 15, 190, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'PROMO REPORTEROS', 'PROMOCION', 11, 74, 74, 'PROMOCION', '00:01:00', 'B1', '20:30:00', '20:47:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(191, 16, 191, '2023-02-23', 47, 'Tercera Edicion', 'Si', 15, 'REPORTEROS VEHÍCULO JARDINERA', 'VO', 11, 98, 58, 'CIUDAD', '00:01:00', 'B1', '20:30:00', '20:48:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(192, 17, 192, '2023-02-23', 3, 'Tercera Edicion', 'Si', 15, 'LA CANCHA', 'CAPSULA', 11, 50, 49, 'DEPORTES', '00:05:00', 'B1', '20:30:00', '20:53:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(193, 18, 193, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'NIÑO CARNAVAL VALLEGRANDE', 'VO', 11, 98, 58, 'CIUDAD', '00:00:30', 'B1', '20:30:00', '20:53:30', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(194, 19, 194, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'MENONITAS CARNAVAL ', 'VO', 11, 98, 58, 'CIUDAD', '00:00:30', 'B1', '20:30:00', '20:54:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(195, 20, 195, '2023-02-23', 5, 'Tercera Edicion', 'Si', 15, 'CORTE 1', 'COMERCIAL', 6, 109, 109, 'COMERCIAL', '00:03:45', 'B1', '20:30:00', '20:57:45', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(196, 21, 196, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'EXPERIMENTO ROBO NIÑOS ', 'NOTA', 4, 105, 112, 'SOCIAL', '00:08:15', 'B2', '20:30:00', '21:06:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(197, 22, 197, '2023-02-23', 23, 'Tercera Edicion', 'Si', 15, 'SANAMENTE', 'CAPSULA', 6, 73, 18, 'SALUD', '00:02:00', 'B2', '20:30:00', '21:08:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(198, 23, 198, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'SALCHI CUCHILLO', 'NOTA', 6, 33, 33, 'POLICIAL', '00:04:00', 'B2', '20:30:00', '21:12:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(199, 24, 199, '2023-02-23', 13, 'Tercera Edicion', 'Si', 15, 'POTOSÍ MUERTE CLAVARIO ', 'NOTA', 9, 17, 17, 'POLICIAL', '00:01:00', 'B2', '20:30:00', '21:13:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(200, 25, 200, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'JUICIO NIÑO VIH', 'NOTA', 11, 121, 108, 'JUSTICIA', '00:05:00', 'B2', '20:30:00', '21:18:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(201, 26, 201, '2023-02-23', 5, 'Tercera Edicion', 'Si', 15, 'CORTE 2', 'COMERCIAL', 6, 109, 109, 'COMERCIAL', '00:03:32', 'B2', '20:30:00', '21:21:32', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(202, 27, 202, '2023-02-23', 24, 'Tercera Edicion', 'Si', 15, 'CALLES PELIGROSAS', 'NOTA', 11, 16, 79, 'CIUDAD', '00:07:28', 'B3', '20:30:00', '21:29:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(203, 28, 203, '2023-02-23', 47, 'Tercera Edicion', 'Si', 15, 'REPORTEROSACCIDENTE CARRETERA', 'VO', 11, 98, 58, 'CIUDAD', '00:02:00', 'B3', '20:30:00', '21:31:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(204, 29, 204, '2023-02-23', 3, 'Tercera Edicion', 'Si', 15, 'LA CANCHA ', 'CAPSULA', 11, 50, 49, 'DEPORTES', '00:03:00', 'B3', '20:30:00', '21:34:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(205, 30, 205, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'ATRAPADOS JEUGO MECANICO', 'VO', 11, 21, 58, 'INTERNACIONAL', '00:01:00', 'B3', '20:30:00', '21:35:00', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(206, 31, 206, '2023-02-23', 5, 'Tercera Edicion', 'Si', 15, 'CORTE 3', 'COMERCIAL', 6, 108, 109, 'COMERCIAL', '00:05:13', 'B3', '20:30:00', '21:40:13', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(207, 32, 207, '2023-02-23', 28, 'Tercera Edicion', 'Si', 15, 'AYUDA SEÑOR CIEGO ', 'NOTA', 11, 121, 108, 'SOCIAL', '00:04:00', 'B4', '20:30:00', '21:44:13', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(208, 33, 208, '2023-02-23', 1, 'Tercera Edicion', 'Si', 15, 'DESPEDIDA', '', 1, 1, 1, '', '00:00:00', '', '20:30:00', '21:44:13', 'Santa Cruz', 2, 0, '2023-02-23 00:00:00', NULL),
(209, 2, 2, '2023-02-23', 2, 'Al Dia Revista', 'SI', 26, 'POST EN INSTANTES DESAPARECIDOS', 'CAPSULA', 11, 6, 51, 'COMERCIAL', '00:00:10', 'B7', '06:00:00', '06:00:20', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(210, 3, 3, '2023-02-23', 4, 'Al Dia Revista', 'SI', 26, 'CARACTERISTICA NOTICIERO', 'REPORTAJE', 4, 6, 100, 'CIUDAD', '00:01:00', 'B8', '06:00:00', '06:01:20', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(211, 1, 1, '2023-02-23', 2, 'Al Dia Revista', 'SI', 26, 'SALUDO', 'CAPSULA', 6, 95, 7, 'EDUCACION', '00:00:10', 'B4', '06:00:00', '06:00:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(212, 4, 4, '2023-02-23', 2, 'Al Dia Revista', 'NO', 26, 'AVANCE DEPORTES', 'CLIMA', 3, 40, 100, 'COCINA', '00:00:10', 'B7', '06:00:00', '06:01:30', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(213, 5, 5, '2023-02-23', 2, 'Al Dia Revista', 'SI', 26, 'AVANCE REPORTEROS', 'CAPSULA', 3, 6, 89, 'CIUDAD', '00:00:10', 'B8', '06:00:00', '06:01:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(214, 6, 6, '2023-02-23', 2, 'Al Dia Revista', 'NO ', 26, 'AVACES AL DÍA', 'PROMOCION', 4, 6, 43, 'POLITICA', '00:00:10', 'B1', '06:00:00', '06:01:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(215, 7, 7, '2023-02-23', 2, 'Al Dia Revista', 'NO', 26, 'UM LIBERTADOR', 'CAPSULA', 4, 6, 43, 'SALUD', '00:01:00', 'B5', '06:00:00', '06:02:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(216, 8, 8, '2023-02-23', 2, 'Al Dia Revista', 'NO', 26, 'BOCAS TORMENTA', 'REPORTAJE', 3, 40, 5, 'PROMOCION', '00:01:00', 'B4', '06:00:00', '06:03:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(217, 9, 9, '2023-02-23', 2, 'Al Dia Revista', 'NO', 26, 'AVANCE EXPERIMENTO', 'UNIDAD MOVIL', 4, 40, 5, 'REDES SOCIALES', '00:00:10', 'B3', '06:00:00', '06:04:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(218, 10, 10, '2023-02-23', 2, 'Al Dia Revista', 'NO', 26, 'APUNTE', 'VO', 11, 40, 2, 'REDES SOCIALES', '00:00:10', 'B6', '06:00:00', '06:04:10', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(219, 12, 12, '2023-02-23', 2, 'Al Dia Revista', 'SI', 26, 'PREOCUPACIÓN DENGUIE', 'VIVO', 11, 40, 2, 'JUSTICIA', '00:00:10', 'B4', '06:00:00', '06:04:30', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(220, 13, 13, '2023-02-23', 4, 'Al Dia Revista', 'NO', 26, 'TARIJA DENGUE', 'UNIDAD MOVIL', 4, 40, 93, 'JUSTICIA', '00:01:00', 'B5', '06:00:00', '06:05:30', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(221, 11, 11, '2023-02-23', 25, 'Al Dia Revista', 'SI', 26, 'CUIDADOS DENGUE', 'UNIDAD MOVIL', 4, 40, 93, 'POLITICA', '00:00:10', 'B4', '06:00:00', '06:04:20', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(222, 14, 14, '2023-02-23', 38, 'Al Dia Revista', 'NO', 26, 'E.I. EXPLOCION TREN', 'VO', 4, 40, 93, 'POLITICA', '00:00:10', 'B5', '06:00:00', '06:05:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(223, 15, 15, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'PROCURADOR DENUNCIA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:05:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(224, 16, 16, '2023-02-23', 14, 'Al Dia Revista', 'NO', 26, 'CASO ABC', 'VIVO', 3, 9, 8, 'REDES SOCIALES', '00:01:00', 'B4', '06:00:00', '06:06:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(225, 17, 17, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'FAMILIA CASTILLO', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(226, 18, 18, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'EXPLOSÍON TREN', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(227, 19, 19, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'PROCURADOR DENUNCAI', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(228, 20, 20, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'FAMILIA CASTILLO', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(229, 21, 21, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'REJILLA ABRE LOS OJOS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(230, 22, 22, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'REJILLA REPORTEROS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(231, 23, 23, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'EDSON DESAPARECIDO (VIERNES)', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:40', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(232, 24, 24, '2023-02-23', 2, 'Al Dia Revista', 'NO', 26, 'ARTURO DESAPARECIDO', 'VIVO', 3, 6, 5, 'JUSTICIA', '00:00:10', 'B2', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(233, 25, 25, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'MARGARITA DESAPARECIDA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(234, 26, 26, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'AVANCE REPORTEROS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(235, 27, 27, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'PNT KRISS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(236, 28, 28, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'CORTE 1', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(237, 29, 29, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'REJILLA EXPERIMENTO', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(238, 30, 30, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'LA INDIFERENCIA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(239, 31, 31, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'PRIMER DIA UPEA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(240, 32, 32, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'REJILLA REPORTEROS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(241, 33, 33, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'GRANIZA SEMBRADÍOS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(242, 34, 34, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'VECINOS VILLA ARMONÍA ', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(243, 35, 35, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'AVANCE REPORTEROS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(244, 36, 36, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'ALERTA RÍOS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(245, 37, 37, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'MUERTE CHONCHOCORO SEG', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(246, 38, 38, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'CASO NARCOTRÁFICO', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(247, 39, 39, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'PATRULLERO EBRIO', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(248, 40, 40, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'MENOR DESAPARECIDA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(249, 41, 41, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'REJILLA SECTOR CARNAVALERO', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(250, 42, 42, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'REJILLA TEMA CARNAVAL EN BOLIVIA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(251, 43, 43, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'CARETAS YESO', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(252, 44, 44, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'SPOT UNIVIDA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(253, 45, 45, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'PRECAS CARNAVALERAS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(254, 46, 46, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'REJILLA SECTOR CARNAVALERO', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(255, 47, 47, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'ESPUMA DELINCUENCIA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(256, 48, 48, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'OPERATIVO CARNAVAL', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(257, 49, 49, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'DEPORTES 1', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:06:50', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(258, 51, 51, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'CARCEL EL SALVADOR', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:07:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(259, 52, 52, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'PNT VIVA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:07:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(260, 53, 53, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'CORTE 2', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:07:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(261, 54, 54, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'NIÑO COLEGIO MALEZA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:07:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(262, 55, 55, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'CANAL MALEZA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:07:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(263, 56, 56, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'GRIPE AVIAR', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:07:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(264, 57, 57, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'SANAMENTE', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:07:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(265, 58, 58, '2023-02-23', 2, 'Al Dia Revista', 'NO', 26, 'CORTE 3', 'SECTOR', 3, 6, 97, 'REDES SOCIALES', '00:01:00', 'B1', '06:00:00', '06:08:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(266, 59, 59, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'NIÑA TURQUIA', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:08:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(267, 60, 60, '2023-02-23', 1, 'Al Dia Revista', 'Si', 26, 'ROBO TIENDAS', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:08:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL);
INSERT INTO `periodismo` (`Id`, `ordenPosicion`, `numero`, `Fecha`, `IdPresentador`, `Edicion`, `Emitido`, `IdProductor`, `Descripcion`, `Formato`, `idCiudad`, `IdPeriodista`, `IdEditor`, `Contenido`, `Duracion`, `Bloque`, `mm_ss`, `Hora_Prog`, `Realiza_en`, `activo`, `flag`, `fechaCreacion`, `fechaModificacion`) VALUES
(268, 50, 50, '2023-02-23', 2, 'Al Dia Revista', 'NO', 26, 'DESPEDIDA', 'COMPACTOS', 3, 3, 2, 'CLIMA', '00:00:10', 'B4', '06:00:00', '06:07:00', 'La Paz', 2, 0, '2023-02-23 00:00:00', NULL),
(269, 1, 1, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'hola', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(270, 2, 2, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'mundo', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(271, 3, 3, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'como', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(272, 4, 4, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'estas', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(273, 5, 5, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'qiue', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(274, 6, 6, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'haces', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(275, 7, 7, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que t', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(276, 8, 8, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'al ', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(277, 9, 9, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'hola', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(278, 10, 10, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'mund', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(279, 11, 11, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que ', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(280, 12, 12, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'tal que', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(281, 13, 13, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'jaces', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(282, 14, 14, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que haces', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(283, 15, 15, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(284, 16, 16, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'tal ', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(285, 17, 17, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'como', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(286, 18, 18, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'estasl', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(287, 19, 19, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'asd', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(288, 20, 20, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'asd', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(289, 21, 21, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'as', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(290, 22, 22, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'aasd', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(291, 23, 23, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'aasdas', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(292, 25, 24, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'zxc', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(293, 26, 25, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'zxczc', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(294, 27, 26, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'hola mundo', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(295, 28, 27, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'como', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(296, 29, 28, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'stas', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(297, 30, 29, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(298, 31, 30, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'haces', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(299, 32, 31, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que ', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(300, 33, 32, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'tal ', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(301, 34, 33, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que fue', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(302, 35, 34, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'juajua', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(303, 36, 35, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que ta', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(304, 37, 36, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'l', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(305, 38, 37, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'mundio', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(306, 39, 38, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(307, 40, 39, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que fue', '', 1, 1, 1, '', '00:00:01', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(308, 1, 1, '2023-02-24', 1, 'Segunda Edicion', 'Si', 26, 'REJILLA + SALUDOS', '', 1, 1, 1, '', '00:00:00', '', '12:25:00', '12:25:00', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(309, 40, 40, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'hola', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(310, 41, 41, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'mundo', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(311, 41, 42, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'quye', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(312, 43, 43, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'gue', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(313, 44, 44, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'aza', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(314, 44, 45, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'oki', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(315, 45, 46, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'doki', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(316, 47, 47, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(317, 47, 48, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'pex', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(318, 49, 49, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'algun', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(319, 50, 50, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'probema', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(320, 50, 51, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(321, 51, 52, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'talkc', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(322, 53, 53, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'raza', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(323, 54, 54, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'como', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(324, 55, 55, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'ras', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(325, 56, 56, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'una', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(326, 57, 57, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'tarde normal de', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(327, 58, 58, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'reporte policial ', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(328, 59, 59, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'desaparecion de la bebe ail', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(329, 60, 60, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'que pasao', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(330, 61, 61, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'hola', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(331, 62, 62, '2023-02-24', 24, 'Al Dia Revista', 'SI', 26, 'REJILLA + SALUDOS', 'CAPSULA', 6, 107, 43, 'SALUDO', '00:01:02', 'B1', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(332, 63, 63, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'tal', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(333, 63, 64, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'como', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(334, 63, 65, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'comoque', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:01', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(335, 66, 66, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, '1', '', 1, 1, 1, '', '00:00:01', '', '06:00:00', '06:00:02', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(336, 66, 67, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, '2', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:02', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(337, 68, 68, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, '3', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:02', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(338, 68, 69, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, '5', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:02', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL),
(339, 70, 70, '2023-02-24', 1, 'Al Dia Revista', 'Si', 26, 'hola que tal brow', '', 1, 1, 1, '', '00:00:00', '', '06:00:00', '06:00:02', 'La Paz', 1, 0, '2023-02-24 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodista`
--

CREATE TABLE `periodista` (
  `IdPeriodista` int(8) NOT NULL,
  `NombrePeriodista` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `periodista`
--

INSERT INTO `periodista` (`IdPeriodista`, `NombrePeriodista`) VALUES
(1, ''),
(2, 'Alejandro Rojas'),
(3, 'Alejandro Torrico'),
(4, 'Alexandra Almendras'),
(5, 'Brenda Aleman'),
(6, 'Carlos Herbas'),
(7, 'Carlos Jimenez'),
(8, 'Carlos Lara'),
(9, 'Carlos Lijeron'),
(10, 'Carlos Saavedra'),
(11, 'Cesar Pardo'),
(12, 'Charlye Suarez'),
(13, 'Claudia Limpias'),
(14, 'Claudio Zambrana'),
(15, 'Conny Calderon'),
(16, 'Cristian Guzman'),
(17, 'Cristian Tejerina'),
(18, 'Daniel Apaza'),
(19, 'Daniel Ardiles'),
(20, 'Daniel Conde'),
(21, 'Daniela Serrano'),
(22, 'Dante Berrios'),
(23, 'Denisse Quiroga'),
(24, 'Deysi Cuestas'),
(25, 'Diego Poma'),
(26, 'Donato Hannover'),
(27, 'Edmundo Gutierrez'),
(28, 'Edwin Soria'),
(29, 'Elton Masay'),
(30, 'Elvis Sanchez'),
(31, 'Ezequiel Serres'),
(32, 'Fabiana Castillo'),
(33, 'Federico Camacho'),
(34, 'Fernando Cortez'),
(35, 'Fernando Duran'),
(36, 'Fernando Eid'),
(37, 'Fernando Mollo'),
(38, 'Freddy Yauri'),
(39, 'Giovanna Cardenas'),
(40, 'Graciela Reque'),
(41, 'Griselda Sandoval'),
(42, 'Guido Castro'),
(43, 'Guillermo Delgadillo'),
(44, 'Hector Uriarte'),
(45, 'Henry Gutierrez'),
(46, 'Hialmar Sanchez'),
(47, 'Hugo Jimenez'),
(48, 'Ivan Quisbert'),
(49, 'Ivone Centellas'),
(50, 'Javier Vaca'),
(51, 'Jeanneth Martinez'),
(52, 'Jenny Quispe'),
(53, 'Jesica Limpias'),
(54, 'Jeysi Alanes'),
(55, 'Jhonn Guzman'),
(56, 'Jhoselin Cabrera'),
(57, 'Joaquin Luna'),
(58, 'Jose Choquechambi'),
(59, 'Jose Irusta'),
(60, 'Juan Jose Flores'),
(61, 'Juan Pablo Mamani'),
(62, 'Junior Barba'),
(63, 'Jussara Rueda Galean'),
(64, 'Karla Rodriguez'),
(65, 'Leila Castro'),
(66, 'Leonel Fransezze'),
(67, 'Lorena Morales'),
(68, 'Lucia Quispa'),
(69, 'Luis Tapia'),
(70, 'Luis Torrez'),
(71, 'Maicol Orellana'),
(72, 'Manolo Aillon'),
(73, 'Mariel Soukup'),
(74, 'Martin Alcorta'),
(75, 'Maximo Chura'),
(76, 'Michelle Meneses'),
(77, 'Miguel Soliz'),
(78, 'Milton Sandoval'),
(79, 'Moises Colque'),
(80, 'Myriam Claros'),
(81, 'Nayra Deheza'),
(82, 'Nery Prado'),
(83, 'Nicolas Enao'),
(84, 'Ovidio Paz'),
(85, 'Pamela Garcia'),
(86, 'Pamela Sotelo'),
(87, 'Paola Coimbra'),
(88, 'Paola Zubieta'),
(89, 'Patricia Conde'),
(90, 'Paula Banegas'),
(91, 'Paula Ibañez'),
(92, 'Practicante'),
(93, 'Ricardo Arias'),
(94, 'Ricardo Rivas'),
(95, 'Richard Pereira'),
(96, 'Roberth Valdivia'),
(97, 'Roberto Rios'),
(98, 'Roberto Soliz'),
(99, 'Rocio Hanssen'),
(100, 'Rodrigo Barrera'),
(101, 'Roly Mendez'),
(102, 'Royer Choque'),
(103, 'Sergio Loza'),
(104, 'Tatiana Miranda'),
(105, 'Thiago Torrico'),
(106, 'Valeria Otondo'),
(107, 'Vania Borja'),
(108, 'Victor Hugo Rojas'),
(109, 'Victor Laura Paucara'),
(110, 'Vivian Donoso'),
(112, 'Mònica Bustos'),
(113, 'Roberto Acosta'),
(114, 'Luis Coronado'),
(115, 'Diego Bonilla'),
(116, 'Gley Salazar'),
(117, 'Mario del Alcazar'),
(118, 'Oscar Portugal'),
(119, 'Josè  Miguel Velasco'),
(120, 'Juan Carlos Macias'),
(121, 'Ilsen Hernani'),
(122, 'Yorgely Ordoñez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentador`
--

CREATE TABLE `presentador` (
  `IdPresentador` int(11) NOT NULL,
  `NombrePresentador` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `presentador`
--

INSERT INTO `presentador` (`IdPresentador`, `NombrePresentador`) VALUES
(1, ''),
(2, 'Carlos Lara'),
(3, 'Charlye Suarez'),
(4, 'Conny Calderon'),
(5, 'Corte Comercial'),
(6, 'Cristhian Rivero'),
(7, 'Daniel Ardiles'),
(8, 'Daniela Serrano'),
(9, 'Denisse Quiroga'),
(10, 'Edmundo Gutierrez'),
(11, 'Fabiana Castillo'),
(12, 'Federico Camacho'),
(13, 'Fernando Eid'),
(14, 'Giovanna Cardenas'),
(15, 'Hector Uriarte'),
(16, 'Hialmar Sanchez'),
(17, 'Jhonn Guzman'),
(18, 'Juan Pablo Mamani'),
(19, 'Junior Barba'),
(20, 'Leila Castro'),
(21, 'Leonel Fransezze'),
(22, 'Manolo Aillon'),
(23, 'Mariel Soukup'),
(24, 'Mixto'),
(25, 'Myriam Claros'),
(26, 'Nayra Deheza'),
(27, 'Pamela Sotelo'),
(28, 'Paola Coimbra'),
(29, 'Paola Zubieta'),
(30, 'Paola Zubieta'),
(31, 'Paula Banegas'),
(32, 'Paula Ibañez'),
(33, 'PNT'),
(34, 'Richard Pereira'),
(35, 'Rodrigo Barrera'),
(36, 'Sergio Rosado'),
(37, 'Tatiana Miranda'),
(38, 'Vania Borja'),
(39, 'Victor Hugo Rojas'),
(40, 'Vivian Donoso'),
(42, 'Mónica Bustos'),
(43, 'Roberto Acosta'),
(44, 'Luis Coronado'),
(45, 'Diego Bonilla'),
(46, 'Gley Salazar'),
(47, 'Mario del Alcazar'),
(48, 'Claudio Zambrana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productor`
--

CREATE TABLE `productor` (
  `IdProductor` int(8) NOT NULL,
  `nombreUsuario` varchar(30) DEFAULT NULL,
  `Nombre` varchar(32) DEFAULT NULL,
  `Pass` varchar(32) DEFAULT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productor`
--

INSERT INTO `productor` (`IdProductor`, `nombreUsuario`, `Nombre`, `Pass`, `activo`) VALUES
(1, '', '', '12345678', 0),
(2, 'CarMar', 'Carla Martinez', 'MarCar1', 1),
(3, 'CarLar', 'Carlos Lara', 'LarCar2', 1),
(4, 'EzeSer', 'Ezequiel Serres', 'EzeSer3', 1),
(7, 'JenQui', 'Jenny Quispe', 'QuiJen4', 1),
(11, 'LorMor', 'Lorena Morales', 'MorLor5', 1),
(12, 'LucQui', 'Lucía Quispe', 'QuiLuc6', 1),
(13, 'LuiTor', 'Luis Torrez', 'TorLui7', 1),
(14, 'MarSou', 'Mariel Soukup', 'SouMar8', 1),
(15, 'MarAlc', 'Martín Alcorta', 'AlcMar9', 1),
(16, 'NerPra', 'Nery Prado', 'PraNer10', 1),
(19, 'RobSol', 'Roberto Soliz', 'SolRob11', 1),
(26, 'JuaPer', 'Juan Perez', '123456', 2),
(27, 'YorOrd', 'Yorgely Ordoñez', 'OrdYor12', 1),
(28, 'DieBon', 'Diego Bonilla', 'BonDie13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realizada_en`
--

CREATE TABLE `realizada_en` (
  `idRealizada` int(11) NOT NULL,
  `nomRealizada` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `realizada_en`
--

INSERT INTO `realizada_en` (`idRealizada`, `nomRealizada`) VALUES
(1, 'La Paz'),
(2, 'Cochabamba'),
(3, 'Santa Cruz');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bloque`
--
ALTER TABLE `bloque`
  ADD PRIMARY KEY (`idBloque`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idCiudad`);

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`idContenido`);

--
-- Indices de la tabla `edicion`
--
ALTER TABLE `edicion`
  ADD PRIMARY KEY (`idEdicion`);

--
-- Indices de la tabla `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`IdEditor`);

--
-- Indices de la tabla `formato`
--
ALTER TABLE `formato`
  ADD PRIMARY KEY (`idFormato`);

--
-- Indices de la tabla `periodismo`
--
ALTER TABLE `periodismo`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdPresentador` (`IdPresentador`),
  ADD KEY `IdPeriodista` (`IdPeriodista`,`IdEditor`),
  ADD KEY `IdEditor` (`IdEditor`),
  ADD KEY `IdProductor` (`IdProductor`),
  ADD KEY `idCiudad` (`idCiudad`);

--
-- Indices de la tabla `periodista`
--
ALTER TABLE `periodista`
  ADD PRIMARY KEY (`IdPeriodista`);

--
-- Indices de la tabla `presentador`
--
ALTER TABLE `presentador`
  ADD PRIMARY KEY (`IdPresentador`);

--
-- Indices de la tabla `productor`
--
ALTER TABLE `productor`
  ADD PRIMARY KEY (`IdProductor`);

--
-- Indices de la tabla `realizada_en`
--
ALTER TABLE `realizada_en`
  ADD PRIMARY KEY (`idRealizada`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bloque`
--
ALTER TABLE `bloque`
  MODIFY `idBloque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idCiudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `edicion`
--
ALTER TABLE `edicion`
  MODIFY `idEdicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `editor`
--
ALTER TABLE `editor`
  MODIFY `IdEditor` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `periodismo`
--
ALTER TABLE `periodismo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT de la tabla `periodista`
--
ALTER TABLE `periodista`
  MODIFY `IdPeriodista` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `presentador`
--
ALTER TABLE `presentador`
  MODIFY `IdPresentador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `productor`
--
ALTER TABLE `productor`
  MODIFY `IdProductor` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `realizada_en`
--
ALTER TABLE `realizada_en`
  MODIFY `idRealizada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `periodismo`
--
ALTER TABLE `periodismo`
  ADD CONSTRAINT `periodismo_ibfk_1` FOREIGN KEY (`IdEditor`) REFERENCES `editor` (`IdEditor`),
  ADD CONSTRAINT `periodismo_ibfk_2` FOREIGN KEY (`IdPeriodista`) REFERENCES `periodista` (`IdPeriodista`),
  ADD CONSTRAINT `periodismo_ibfk_3` FOREIGN KEY (`IdPresentador`) REFERENCES `presentador` (`IdPresentador`),
  ADD CONSTRAINT `periodismo_ibfk_4` FOREIGN KEY (`IdProductor`) REFERENCES `productor` (`IdProductor`),
  ADD CONSTRAINT `periodismo_ibfk_5` FOREIGN KEY (`idCiudad`) REFERENCES `ciudad` (`idCiudad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
