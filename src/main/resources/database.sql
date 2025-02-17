-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 14-01-2025 a las 17:33:08
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `wejeta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` bigint NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Contable'),
(3, 'Auditor'),
(4, 'Administrador'),
(5, 'Contable'),
(6, 'Auditor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `apellido1` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `apellido2` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf32_unicode_ci NOT NULL,
  `id_tipousuario` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido1`, `apellido2`, `email`, `password`, `id_tipousuario`) VALUES
(1, 'Rosa', 'Escriche', 'Gonzalez', 'emailRosa3517@gmail.com', '3e5a1bdf4ff6d0356dabc6dafc94626602269bc9576de79a3ecab591398745b8', 3),
(2, 'Rafa', 'Rodriguez', 'Fernandez', 'emailRafa2149@gmail.com', '', 2),
(3, 'Ignacio', 'Sanchez', 'Fernandez', 'emailIgnacio8900@gmail.com', '', 2),
(4, 'Lorenzo', 'Gonzalez', 'Vidal', 'emailLorenzo9309@gmail.com', '', 1),
(5, 'Ana', 'Martinez', 'Garcia', 'emailAna3579@gmail.com', '', 3),
(6, 'Luis', 'Pérez', 'Garcia', 'emailLuis5642@gmail.com', '', 3),
(7, 'Ignacio', 'Gonzalez', 'Hermoso', 'emailIgnacio5912@gmail.com', '', 1),
(8, 'Rosa', 'Gomez', 'Pérez', 'emailRosa1816@gmail.com', '', 2),
(9, 'Lorenzo', 'Garcia', 'Pérez', 'emailLorenzo3254@gmail.com', '', 1),
(10, 'Rocio', 'Hermoso', 'Pérez', 'emailRocio3989@gmail.com', '', 1),
(11, 'Marta', 'Pérez', 'Moreno', 'emailMarta1978@gmail.com', '', 2),
(12, 'Pepe', 'Escriche', 'Sancho', 'emailPepe9370@gmail.com', '', 1),
(13, 'Pepe', 'Fernandez', 'Gonzalez', 'emailPepe1395@gmail.com', '', 2),
(14, 'Sara', 'Gomez', 'Gonzalez', 'emailSara2191@gmail.com', '', 3),
(15, 'Maria', 'Gomez', 'Vidal', 'emailMaria4964@gmail.com', '', 3),
(16, 'Rocio', 'Moreno', 'Pérez', 'emailRocio4965@gmail.com', '', 1),
(17, 'Ignacio', 'Hermoso', 'Gonzalez', 'emailIgnacio5391@gmail.com', '', 3),
(18, 'Lorenzo', 'Feliu', 'Gimenez', 'emailLorenzo5074@gmail.com', '', 1),
(19, 'Rosa', 'Pérez', 'Sancho', 'emailRosa8144@gmail.com', '', 2),
(20, 'Rafa', 'Fernandez', 'Moreno', 'emailRafa3035@gmail.com', '', 3),
(21, 'Rocio', 'Rodriguez', 'Rodriguez', 'emailRocio1448@gmail.com', '', 1),
(22, 'Carmen', 'Garcia', 'Feliu', 'emailCarmen1289@gmail.com', '', 1),
(23, 'Carmen', 'Pérez', 'Pérez', 'emailCarmen5165@gmail.com', '', 1),
(24, 'Ana', 'Sanchez', 'Pérez', 'emailAna7058@gmail.com', '', 3),
(25, 'Carmen', 'Vidal', 'Escriche', 'emailCarmen4168@gmail.com', '', 3),
(26, 'Carmen', 'Sancho', 'Sancho', 'emailCarmen5962@gmail.com', '', 3),
(27, 'Maria', 'Gonzalez', 'Vidal', 'emailMaria9926@gmail.com', '', 6),
(28, 'Rocio', 'Sancho', 'Gonzalez', 'emailRocio3928@gmail.com', '', 5),
(29, 'Lorenzo', 'Lopez', 'Martinez', 'emailLorenzo4600@gmail.com', '', 1),
(30, 'Rafa', 'Sanchez', 'Moreno', 'emailRafa5635@gmail.com', '', 2),
(31, 'Carmen', 'Rodriguez', 'Gonzalez', 'emailCarmen4107@gmail.com', '', 5),
(32, 'Ignacio', 'Feliu', 'Gonzalez', 'emailIgnacio4620@gmail.com', '', 3),
(33, 'Sara', 'Rodriguez', 'Pérez', 'emailSara5261@gmail.com', '', 5),
(34, 'Rafa', 'Martinez', 'Feliu', 'emailRafa4960@gmail.com', '', 3),
(35, 'Laura', 'Fernandez', 'Escriche', 'emailLaura8143@gmail.com', '', 2),
(36, 'Carmen', 'Gonzalez', 'Moreno', 'emailCarmen2893@gmail.com', '', 6),
(37, 'Manolo', 'Sancho', 'Gonzalez', 'emailManolo1735@gmail.com', '', 6),
(38, 'Ana', 'Gonzalez', 'Vidal', 'emailAna8991@gmail.com', '', 3),
(39, 'Pepe', 'Lopez', 'Vidal', 'emailPepe3611@gmail.com', '', 4),
(40, 'Luis', 'Feliu', 'Sanchez', 'emailLuis9018@gmail.com', '', 2),
(41, 'Lorenzo', 'Hermoso', 'Martinez', 'emailLorenzo6148@gmail.com', '', 5),
(42, 'Ana', 'Pérez', 'Vidal', 'emailAna2796@gmail.com', '', 1),
(43, 'Maria', 'Hermoso', 'Lopez', 'emailMaria1088@gmail.com', '', 4),
(44, 'Laura', 'Gonzalez', 'Fernandez', 'emailLaura9700@gmail.com', '', 3),
(45, 'Ignacio', 'Escriche', 'Gonzalez', 'emailIgnacio8663@gmail.com', '', 4),
(46, 'Lucia', 'Moreno', 'Lopez', 'emailLucia7900@gmail.com', '', 4),
(47, 'Paco', 'Fernandez', 'Vidal', 'emailPaco6099@gmail.com', '', 6),
(48, 'Carmen', 'Sanchez', 'Garcia', 'emailCarmen2464@gmail.com', '', 6),
(49, 'Sara', 'Fernandez', 'Gonzalez', 'emailSara4954@gmail.com', '', 5),
(50, 'Rocio', 'Vidal', 'Sanchez', 'emailRocio4115@gmail.com', '', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;
