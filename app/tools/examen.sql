-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2024 a las 16:14:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AGREGAR_FACTURA` (IN `_DESCRIPCION` VARCHAR(100))   BEGIN
INSERT INTO factura (DESCRIPCION)
VALUES (_DESCRIPCION);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EDITAR_FACTURA` (IN `_ID` INT)   BEGIN
    UPDATE factura
    SET descripcion = _DESCRIPCION
    WHERE ID = _ID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINAR_FACTURA` (IN `_ID` INT)   BEGIN
DELETE FROM factura WHERE ID = _ID;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LISTAR_FACTURA` ()   BEGIN

SELECT * FROM factura;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MOSTRAR_FACTURA` (IN `_ID` INT)   BEGIN
SELECT * FROM factura WHERE ID = _ID;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `descripcion`) VALUES
(1, 'PERRO CALIENTE'),
(2, 'HAMBURGUESA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
