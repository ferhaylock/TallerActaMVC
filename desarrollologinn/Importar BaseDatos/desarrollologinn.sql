-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2022 a las 01:56:14
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desarrollologinn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta`
--

CREATE TABLE `acta` (
  `ID` int(11) NOT NULL,
  `ASUNTO` varchar(250) NOT NULL,
  `FECHA` date NOT NULL,
  `DESCRIPCION` varchar(500) NOT NULL,
  `RESPONSABLE` varchar(255) NOT NULL,
  `PROGRAMA_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acta`
--

INSERT INTO `acta` (`ID`, `ASUNTO`, `FECHA`, `DESCRIPCION`, `RESPONSABLE`, `PROGRAMA_ID`) VALUES
(13, 'REUNION PROFESORES', '2022-07-25', 'sadasda', 'asdasdasd', 1),
(18, 'acta 3', '2022-07-28', 'MODIFICAR CALENDARIA ACADEMICO', 'MIGUEL MONTES', 3),
(20, 'fer12', '2022-07-30', 'fsfsdg', 'fsadfsaf', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compromisos`
--

CREATE TABLE `compromisos` (
  `ID` int(11) NOT NULL,
  `DESCRIPCION` varchar(255) NOT NULL,
  `FECHA_INIC` date NOT NULL,
  `FECHA_FIN` date NOT NULL,
  `RESPONSABLE` varchar(255) NOT NULL,
  `ID_ACTA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compromisos`
--

INSERT INTO `compromisos` (`ID`, `DESCRIPCION`, `FECHA_INIC`, `FECHA_FIN`, `RESPONSABLE`, `ID_ACTA`) VALUES
(4, 'tv + internet', '2022-07-25', '2022-07-27', 'dasdasds', 13),
(5, 'otro', '2022-07-25', '2022-07-27', 'dfsdfsdfs', 13),
(13, 'un compromiso', '2022-07-28', '2022-07-28', 'yo1', 18),
(14, '2 compromisos', '2022-07-29', '2022-07-30', 'yo 2', 18),
(16, 'fasfasf', '2022-07-29', '2022-07-30', 'fasfdasf', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `ID` int(11) NOT NULL,
  `PROGRAMA` varchar(255) NOT NULL,
  `FACULTAD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`ID`, `PROGRAMA`, `FACULTAD`) VALUES
(1, 'INGENIERIA DE SISTEMAS', 'FACULTAD DE INGENIERIA'),
(2, 'ADMINISTRACION EN SALUD', 'FACULTAD DE SALUD Y MEDICINA'),
(3, 'BACTERIOLOGIA', 'FACULTAD DE SALUD Y MEDICINA'),
(4, 'DERECHO', 'FACULTAD DE DERECHO'),
(5, 'INGENIERIA INDUSTRIAL', 'FACULTAD DE INGENIERIA'),
(6, 'LIC. LENGUA CASTELLANA', 'FACULTAD DE EDUCACION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progr_dependencia`
--

CREATE TABLE `progr_dependencia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `progr_dependencia`
--

INSERT INTO `progr_dependencia` (`id`, `nombre`) VALUES
(1, 'Ingenieria de sistemas-dept Sistemas'),
(2, 'Ingenieria industrial-dept Industrial'),
(3, 'Derecho-oficina derecho'),
(4, 'Edu Fisica-oficina deporte'),
(5, 'Fisica- oficina fisica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `tipo`) VALUES
(1, 'Administrador'),
(2, 'Profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `programa_dependencia` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(130) NOT NULL,
  `identificacion` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `last_session` datetime DEFAULT NULL,
  `activacion` int(11) NOT NULL DEFAULT 0,
  `token` varchar(40) NOT NULL,
  `token_password` varchar(100) DEFAULT NULL,
  `password_request` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_tipo`, `programa_dependencia`, `usuario`, `password`, `identificacion`, `nombre`, `apellido`, `correo`, `last_session`, `activacion`, `token`, `token_password`, `password_request`) VALUES
(19, 1, 1, 'tomm1998', '$2y$10$fxDOZkaPocWXEphJpMR2WOvJ0Nx0lUSiGPz7py7X5X09rm3byh3Li', '1003405445', 'jorge', 'montes', 'jooge199813@gmail.com', '2022-07-27 13:37:50', 1, 'd3cea1c70c6d2b192b609321101f801f', '', 1),
(30, 2, 1, 'dina', '$2y$10$ji6bHioM4myUE6RQoLPejuWTlmwXcLVD/Pi3eqd7jp31sU5hYRnKq', '213231', 'dina', 'gomez', 'digoes2003@gmail.com', '2022-07-18 22:37:42', 1, '397e8cb98f5a8611292801da3be8d044', '', 1),
(31, 2, 2, 'fer15', '$2y$10$zzFLIQ6GH/Df/SAOxoPK1OmvcduCflauz.A03cvY7snY18oJcoBMO', '101', 'Fernando Jose', 'Haylock Aguilar', 'ferhaylock15@gmail.com', '2022-07-28 18:49:11', 1, '93c57d3131118f42c6fe34517f9aa4bb', '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acta`
--
ALTER TABLE `acta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PROGRAMA_ID` (`PROGRAMA_ID`);

--
-- Indices de la tabla `compromisos`
--
ALTER TABLE `compromisos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_ACTA` (`ID_ACTA`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `progr_dependencia`
--
ALTER TABLE `progr_dependencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_usuario_tipo` (`id_tipo`),
  ADD KEY `Fk_usuario_prog` (`programa_dependencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acta`
--
ALTER TABLE `acta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `compromisos`
--
ALTER TABLE `compromisos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `progr_dependencia`
--
ALTER TABLE `progr_dependencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acta`
--
ALTER TABLE `acta`
  ADD CONSTRAINT `acta_ibfk_2` FOREIGN KEY (`PROGRAMA_ID`) REFERENCES `programa` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `compromisos`
--
ALTER TABLE `compromisos`
  ADD CONSTRAINT `compromisos_ibfk_1` FOREIGN KEY (`ID_ACTA`) REFERENCES `acta` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usuario` (`id`),
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`programa_dependencia`) REFERENCES `progr_dependencia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
