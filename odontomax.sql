-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2021 a las 03:16:16
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `odontomax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `callcenter`
--

CREATE TABLE `callcenter` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefono` int(12) NOT NULL,
  `asunto` varchar(80) NOT NULL,
  `mensaje` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `num_tel` text COLLATE utf8_spanish_ci NOT NULL,
  `identificacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(100) NOT NULL,
  `password` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `tratamiento` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `email`, `num_tel`, `identificacion`, `edad`, `password`, `tratamiento`) VALUES
('', '', '', '', 0, '', 'Implantes'),
('daniel', 'daniel@gmail.com', '3154879', '44511069', 18, 'e569ddf95aab9e21f4d2ecc7d49373f1', 'Implantes');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `callcenter`
--
ALTER TABLE `callcenter`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`identificacion`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefono` (`num_tel`) USING HASH;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `callcenter`
--
ALTER TABLE `callcenter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
