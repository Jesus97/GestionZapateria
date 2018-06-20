-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: phpmyadmin_testing_mariadb
-- Generation Time: Jun 20, 2018 at 12:27 PM
-- Server version: 10.2.14-MariaDB-10.2.14+maria~jessie
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_zapateria`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id`, `apellidos`, `dni`, `nombre`) VALUES
(1, 'Perez Martinez', 12345678, 'Pepe'),
(2, 'Gutierrez Garcia', 87654321, 'Miguel Angel'),
(3, 'Sin Miedo', 11223344, 'Juan'),
(4, 'Perez Martinez', 12345678, 'Pepe'),
(5, 'Gutierrez Garcia', 87654321, 'Miguel Angel'),
(6, 'Sin Miedo', 11223344, 'Juan');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `dni`) VALUES
(1, 'Pepe', 'Perez Martinez', 12345678),
(2, 'Miguel Angel', 'Gutierrez Garcia', 87654321);

-- --------------------------------------------------------

--
-- Table structure for table `cliente_direccion`
--

CREATE TABLE `cliente_direccion` (
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_direccion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nombre_via` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cliente_direccion`
--

INSERT INTO `cliente_direccion` (`nombre`, `id_direccion`, `id_cliente`, `nombre_via`, `cp`) VALUES
('Mi casa', 1, 1, 'Paseo de la Estación 44', 23008),
('Casa', 2, 2, 'Rue del Percebe 13', 23005);

-- --------------------------------------------------------

--
-- Table structure for table `CodPos`
--

CREATE TABLE `CodPos` (
  `cp` int(11) NOT NULL,
  `localidad` varchar(120) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `CodPos`
--

INSERT INTO `CodPos` (`cp`, `localidad`) VALUES
(23005, 'Jaén'),
(23008, 'Jaén');

-- --------------------------------------------------------

--
-- Table structure for table `cod_pos`
--

CREATE TABLE `cod_pos` (
  `cp` int(11) NOT NULL,
  `localidad` varchar(120) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cod_pos`
--

INSERT INTO `cod_pos` (`cp`, `localidad`) VALUES
(23005, 'Jaén'),
(23008, 'Jaén'),
(29000, 'Málaga');

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `apellidos`, `dni`) VALUES
(1, 'Manolo', 'Pecholata', 12345678),
(2, 'Luis', 'Duendecillos', 87654321);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor_direccion`
--

CREATE TABLE `proveedor_direccion` (
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_direccion` int(11) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `nombre_via` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `proveedor_direccion`
--

INSERT INTO `proveedor_direccion` (`nombre`, `id_direccion`, `id_proveedor`, `nombre_via`, `cp`) VALUES
('Ring', 1, 1, 'Estadio Arena', 23008),
('Casa', 2, 2, 'Rue del Percebe 13', 23005);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente_direccion`
--
ALTER TABLE `cliente_direccion`
  ADD PRIMARY KEY (`id_direccion`),
  ADD KEY `FK8nachjf9tn7nnipdia0qeqko4` (`cp`),
  ADD KEY `FKnyv0f4w0hmmx2cfq00gku210f` (`id_cliente`);

--
-- Indexes for table `CodPos`
--
ALTER TABLE `CodPos`
  ADD PRIMARY KEY (`cp`);

--
-- Indexes for table `cod_pos`
--
ALTER TABLE `cod_pos`
  ADD PRIMARY KEY (`cp`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proveedor_direccion`
--
ALTER TABLE `proveedor_direccion`
  ADD PRIMARY KEY (`id_direccion`),
  ADD KEY `FKcvaduqeeiqw6oydr8j5pwroo` (`id_proveedor`),
  ADD KEY `FKoxs9qmgosy4d7k119to5f57x2` (`cp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cliente_direccion`
--
ALTER TABLE `cliente_direccion`
  MODIFY `id_direccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proveedor_direccion`
--
ALTER TABLE `proveedor_direccion`
  MODIFY `id_direccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente_direccion`
--
ALTER TABLE `cliente_direccion`
  ADD CONSTRAINT `FK8nachjf9tn7nnipdia0qeqko4` FOREIGN KEY (`cp`) REFERENCES `cod_pos` (`cp`),
  ADD CONSTRAINT `FKnyv0f4w0hmmx2cfq00gku210f` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `fk_cliente_direccion` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cp` FOREIGN KEY (`cp`) REFERENCES `CodPos` (`cp`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `proveedor_direccion`
--
ALTER TABLE `proveedor_direccion`
  ADD CONSTRAINT `FKcvaduqeeiqw6oydr8j5pwroo` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  ADD CONSTRAINT `FKoxs9qmgosy4d7k119to5f57x2` FOREIGN KEY (`cp`) REFERENCES `cod_pos` (`cp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
