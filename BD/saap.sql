-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2019 a las 03:26:13
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `saap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cantidaddeparqueaderos`
--

CREATE TABLE `cantidaddeparqueaderos` (
  `id_cantidad` int(11) NOT NULL,
  `cantidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cantidaddeparqueaderos`
--

INSERT INTO `cantidaddeparqueaderos` (`id_cantidad`, `cantidad`) VALUES
(3, '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id_cargo`, `nombre_cargo`) VALUES
(1, 'Supervisor'),
(2, 'Cajero'),
(3, 'Administrador'),
(4, 'Gerente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL,
  `TipoDocumento` varchar(30) NOT NULL,
  `DocumentoCliente` int(11) NOT NULL,
  `NombreCliente` varchar(90) DEFAULT NULL,
  `ApellidosCliente` varchar(90) DEFAULT NULL,
  `NumeroTelefonico` int(11) DEFAULT NULL,
  `Email` varchar(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenios`
--

CREATE TABLE `convenios` (
  `IdConvenio` int(11) NOT NULL,
  `NombreConvenio` varchar(60) DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL,
  `NombreCliente` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `convenios`
--

INSERT INTO `convenios` (`IdConvenio`, `NombreConvenio`, `Valor`, `NombreCliente`) VALUES
(1, 'Almacenes Exito Clientes', 150000, 'ALMACENES EXITO S.A'),
(2, 'Universidad Javeriana Alumnos', 2500000, 'ALMACENES EXITO S.A'),
(5, 'Universidad Javeriana Profesores', 2500000, 'EFREN CAMILOSUESCA TORRES '),
(3, 'Almacenes Exito Empleados', 2000000, 'PONTIFICIA UNIVERSIDAD JAVERIANA-'),
(4, 'Universidad Javeriana Profesores', 2800000, 'EFREN CAMILOSUESCA TORRES '),
(7, 'Las arepas de Ruge', 300000, 'OLGA LUCIA  SOLORZANO PEREA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad`
--

CREATE TABLE `disponibilidad` (
  `IdLugar` int(11) NOT NULL,
  `Lugar` varchar(100) NOT NULL,
  `Disponibilidad` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `disponibilidad`
--

INSERT INTO `disponibilidad` (`IdLugar`, `Lugar`, `Disponibilidad`) VALUES
(1, 'A1', 'Activo'),
(2, 'A2', 'Activo'),
(3, 'A3', 'Activo'),
(4, 'A4', 'Activo'),
(5, 'A5', 'Activo'),
(6, 'A6', 'Activo'),
(7, 'A7', 'Activo'),
(8, 'A8', 'Activo'),
(9, 'A9', 'Activo'),
(10, 'A10', 'Activo'),
(11, 'A11', 'Activo'),
(12, 'A12', 'Activo'),
(13, 'A13', 'Activo'),
(14, 'A14', 'Activo'),
(15, 'A15', 'Activo'),
(16, 'A16', 'Activo'),
(17, 'A17', 'Activo'),
(18, 'A18', 'Activo'),
(19, 'A19', 'Activo'),
(20, 'A20', 'Activo'),
(21, 'A21', 'FALSO'),
(22, 'A22', 'FALSO'),
(23, 'A23', 'FALSO'),
(24, 'A24', 'FALSO'),
(25, 'A25', 'FALSO'),
(26, 'A26', 'FALSO'),
(27, 'A27', 'FALSO'),
(28, 'A28', 'FALSO'),
(29, 'A29', 'FALSO'),
(30, 'A30', 'FALSO'),
(31, 'A31', 'FALSO'),
(32, 'A32', 'FALSO'),
(33, 'A33', 'FALSO'),
(34, 'A34', 'FALSO'),
(35, 'A35', 'FALSO'),
(36, 'A36', 'FALSO'),
(37, 'A37', 'FALSO'),
(38, 'A38', 'FALSO'),
(39, 'A39', 'FALSO'),
(40, 'A40', 'FALSO'),
(41, 'A41', 'FALSO'),
(42, 'A42', 'FALSO'),
(43, 'A43', 'FALSO'),
(44, 'A44', 'FALSO'),
(45, 'A45', 'FALSO'),
(46, 'A46', 'FALSO'),
(47, 'A47', 'FALSO'),
(48, 'A48', 'FALSO'),
(49, 'A49', 'FALSO'),
(50, 'A50', 'FALSO'),
(51, 'A51', 'FALSO'),
(52, 'A52', 'FALSO'),
(53, 'A53', 'FALSO'),
(54, 'A54', 'FALSO'),
(55, 'A55', 'FALSO'),
(56, 'A56', 'FALSO'),
(57, 'A57', 'FALSO'),
(58, 'A58', 'FALSO'),
(59, 'A59', 'FALSO'),
(60, 'A60', 'FALSO'),
(61, 'A61', 'FALSO'),
(62, 'A62', 'FALSO'),
(63, 'A63', 'FALSO'),
(64, 'A64', 'FALSO'),
(65, 'A65', 'FALSO'),
(66, 'A66', 'FALSO'),
(67, 'A67', 'FALSO'),
(68, 'A68', 'FALSO'),
(69, 'A69', 'FALSO'),
(70, 'A70', 'FALSO'),
(71, 'A71', 'FALSO'),
(72, 'A72', 'FALSO'),
(73, 'A73', 'FALSO'),
(74, 'A74', 'FALSO'),
(75, 'A75', 'FALSO'),
(76, 'A76', 'FALSO'),
(77, 'A77', 'FALSO'),
(78, 'A78', 'FALSO'),
(79, 'A79', 'FALSO'),
(80, 'A80', 'FALSO'),
(81, 'A81', 'FALSO'),
(82, 'A82', 'FALSO'),
(83, 'A83', 'FALSO'),
(84, 'A84', 'FALSO'),
(85, 'A85', 'FALSO'),
(86, 'A86', 'FALSO'),
(87, 'A87', 'FALSO'),
(88, 'A88', 'FALSO'),
(89, 'A89', 'FALSO'),
(90, 'A90', 'FALSO'),
(91, 'A91', 'FALSO'),
(92, 'A92', 'FALSO'),
(93, 'A93', 'FALSO'),
(94, 'A94', 'FALSO'),
(95, 'A95', 'FALSO'),
(96, 'A96', 'FALSO'),
(97, 'A97', 'FALSO'),
(98, 'A98', 'FALSO'),
(99, 'A99', 'FALSO'),
(100, 'A100', 'FALSO'),
(101, 'A101', 'FALSO'),
(102, 'A102', 'FALSO'),
(103, 'A103', 'FALSO'),
(104, 'A104', 'FALSO'),
(105, 'A105', 'FALSO'),
(106, 'A106', 'FALSO'),
(107, 'A107', 'FALSO'),
(108, 'A108', 'FALSO'),
(109, 'A109', 'FALSO'),
(110, 'A110', 'FALSO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` int(11) NOT NULL,
  `TipoDeDocumento` varchar(100) DEFAULT NULL,
  `Documento` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Cargo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `TipoDeDocumento`, `Documento`, `Nombre`, `Apellidos`, `Cargo`) VALUES
(9, 'Cedula de ciudadania', '79958300', 'Miguel', 'Galindo Sánchez', 'Administrador'),
(11, 'Cedula de ciudadania', '79448730', 'Juan carlos', 'Salcedo Barreto', 'Administrador'),
(14, 'Cedula de ciudadania', '80125920', 'Freddy Camilo', 'Ardila Amortegui', 'Gerente'),
(15, 'Cedula de ciudadania', '98765432', 'Mario Manuel', 'Murillo Toro', 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `IdControlIngreso` int(11) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `tiempo` varchar(100) NOT NULL,
  `TipoTarifa` varchar(100) NOT NULL,
  `PlacasVehiculo` varchar(100) NOT NULL,
  `NombreEmpleado` varchar(100) NOT NULL,
  `Lugar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`IdControlIngreso`, `fecha`, `tiempo`, `TipoTarifa`, `PlacasVehiculo`, `NombreEmpleado`, `Lugar`) VALUES
(7, '20/Mar/2019', '21:23', 'Minuto', 'BFB689', 'Mario Manuel Murillo Toro', 'A17'),
(6, '20/Mar/2019', '21:22', 'Minuto', 'RTY678', 'Mario Manuel Murillo Toro', 'A18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `id_tarifa` int(11) NOT NULL,
  `tarifa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`id_tarifa`, `tarifa`) VALUES
(1, 'Minuto'),
(2, 'Hora'),
(3, 'Convenio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo`
--

CREATE TABLE `tiempo` (
  `IdControlTiempo` int(11) NOT NULL,
  `HoraEntrada` time(6) DEFAULT NULL,
  `HoraSalida` time(6) DEFAULT NULL,
  `PlacaVehiculo` varchar(90) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiempo`
--

INSERT INTO `tiempo` (`IdControlTiempo`, `HoraEntrada`, `HoraSalida`, `PlacaVehiculo`) VALUES
(1, '16:20:00.000000', '18:24:00.000000', '1'),
(2, '11:30:00.000000', '12:04:00.000000', '2'),
(3, '16:30:00.000000', '18:44:00.000000', '3'),
(4, '11:30:00.000000', '11:50:00.000000', '4'),
(5, '10:00:00.000000', '13:20:00.000000', '5'),
(12, '19:30:00.000000', '22:00:00.000000', 'MNT56A'),
(13, '23:00:00.000000', '23:59:00.000000', 'MNT56A'),
(14, '20:53:00.000000', '20:54:00.000000', 'RTY678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_documento`
--

CREATE TABLE `tipo_de_documento` (
  `id_tipo` int(11) NOT NULL,
  `nombre_documento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_de_documento`
--

INSERT INTO `tipo_de_documento` (`id_tipo`, `nombre_documento`) VALUES
(1, 'Cedula de ciudadania'),
(2, 'Cedula de extranjeria'),
(3, 'Tarjeta de identidad'),
(4, 'Pasaporte'),
(5, 'NIT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_vehiculo`
--

CREATE TABLE `tipo_de_vehiculo` (
  `id_tipo_v` int(11) NOT NULL,
  `nombre_tipov` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_de_vehiculo`
--

INSERT INTO `tipo_de_vehiculo` (`id_tipo_v`, `nombre_tipov`) VALUES
(1, 'Micro Bus'),
(2, 'Automovil'),
(3, 'Motocicleta'),
(4, 'Bicicleta'),
(5, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `email`, `name`) VALUES
(2, 'Dani', 'db96f9a4e73f39c88edd56be2cbd90b2d9aaaaf12e3440ca53d5dc2bb10af29f', 'rugelin@gmail.com', 'DanielRuge'),
(3, 'Migue', '087f097d43a1c2abd53601b25e9f1be2f673c60b444d2892bd465ed021b63d05', 'migue.el@gmail.com', 'Miguel Galindo'),
(4, 'fcardila', '4b6f9c8113bb89168d19f456dda7993994d2e673cfe725f157e09e4a514afb6c', 'freddycardila@gmail.com', 'Freddy Ardila'),
(5, 'jcsalcedo', 'a5cee29fc65db34be9dc799658434c834500c8e907eb447c94fa2ba3d5f876ce', 'jcsalcedo@gmail.com', 'Juan Carlos Salcedo'),
(6, 'alzate', '016010cdcd49d5a9b4dbfea2574a86f805039dff0d7c1a5154a5257ba18d352d', 'alzateelneris@gmail.com', 'Alejandro Alzate ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `nombre`, `clave`) VALUES
(4, 'Daniel Ruge', '$2y$10$S6pBblA5VTUhQeA5pW/5zOtpWPr39ag5O./fzxlG9iLZ0WOFeET0O'),
(10, 'SuperUsuario', '$2y$10$RNv1AGhwmjgpnPj4pIzepe67Bxb.bMdRJJUduf/rz9aizrMxtRrA2'),
(11, 'Miguel', '$2y$10$9NU1CNFrbbWu9XY6irqkUOlA6ejKSXapol8b.4CzRW2mynRmz46vO'),
(12, 'Juan Carlos Salcedo Barreto', '$2y$10$Oq4eslnPJWBO8kXTpx29a.BlFRrIkUoDnz4n8XgizU6evHsV/jhYO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `IdVehiculoCliente` int(11) NOT NULL,
  `TipoV` varchar(100) NOT NULL,
  `Placas` varchar(20) DEFAULT NULL,
  `Marca` varchar(30) DEFAULT NULL,
  `Referencia` varchar(30) DEFAULT NULL,
  `Color` varchar(30) DEFAULT NULL,
  `Modelo` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `NombreCliente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`IdVehiculoCliente`, `TipoV`, `Placas`, `Marca`, `Referencia`, `Color`, `Modelo`, `Descripcion`, `NombreCliente`) VALUES
(4, 'Motocicleta', 'RTY678', 'MAZDA', 'Carrick', 'verde', '1990', 'Carro ', 'EFREN CAMILO SUESCA TORRES '),
(5, 'Automovil', 'BFB689', 'Audi', 'Audaz', 'Rojo', '2018', 'Sedan', 'PONTIFICIA UNIVERSIDAD JAVERIANA -'),
(6, 'Automovil', 'FGT525', 'Ford', 'T', 'negro', '1921', 'clasico sin rayones', 'EFREN CAMILO SUESCA TORRES '),
(7, 'Automovil', 'SER459', 'CHEVROLET', 'CROWN', 'AZUL Y VERDE', '1920', 'RAYADO', 'PONTIFICIA UNIVERSIDAD JAVERIANA -'),
(8, 'Motocicleta', 'BXG36', 'AKT', '125 CC', 'NEGRO', '2008', 'RAYADA SIN PARRILLA', 'ALMACENES EXITO  S.A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cantidaddeparqueaderos`
--
ALTER TABLE `cantidaddeparqueaderos`
  ADD PRIMARY KEY (`id_cantidad`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `convenios`
--
ALTER TABLE `convenios`
  ADD PRIMARY KEY (`IdConvenio`);

--
-- Indices de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  ADD PRIMARY KEY (`IdLugar`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`IdControlIngreso`);

--
-- Indices de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  ADD PRIMARY KEY (`IdControlTiempo`);

--
-- Indices de la tabla `tipo_de_documento`
--
ALTER TABLE `tipo_de_documento`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`IdVehiculoCliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cantidaddeparqueaderos`
--
ALTER TABLE `cantidaddeparqueaderos`
  MODIFY `id_cantidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `convenios`
--
ALTER TABLE `convenios`
  MODIFY `IdConvenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  MODIFY `IdLugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `IdControlIngreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  MODIFY `IdControlTiempo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tipo_de_documento`
--
ALTER TABLE `tipo_de_documento`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `IdVehiculoCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
