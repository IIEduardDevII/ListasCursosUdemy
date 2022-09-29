-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 09:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paginawebphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tm_curso`
--

CREATE TABLE `tm_curso` (
  `cur_id` int(11) NOT NULL,
  `cur_titulo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cur_subtitulo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cur_img` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cur_url` varchar(600) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cur_desta` int(11) NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `tm_curso`
--

INSERT INTO `tm_curso` (`cur_id`, `cur_titulo`, `cur_subtitulo`, `cur_img`, `cur_url`, `cur_desta`, `fech_crea`, `est`) VALUES
(1, 'Convierte cualquier template HTML en una WebAPP', 'Este curso se enfoca en enseñar como convertir una plantilla HTML a una aplicación con PHP, usando MySQL como base de datos.', '1.jpg', 'https://www.udemy.com/course/php-y-mysql-convierte-cualquier-template-html-en-una-webapp/learn/lecture/25171582#overview', 1, '2022-09-01 14:51:57', 1),
(2, 'SQL: Creación de Bases de Datos (De cero a profesional)', 'Aprende a diseñar bases de datos eficientes para posteriormente crearlas, modificarlas y manipularlas en SQL.', '2.jpg', 'https://www.udemy.com/course/sql-creacion-de-bd/learn/lecture/25573576?start=0#overview', 1, '2022-09-02 14:52:05', 1),
(3, 'Curso 1', 'Curso 1: About all.', '1.jpg', 'https://www.udemy.com/course/sql-creacion-de-bd/learn/lecture/25573576?start=0#overview', 0, '2022-09-03 14:52:12', 1),
(4, 'Curso 2', 'Curso 2: About all.', '2.jpg', 'https://www.udemy.com/course/sql-creacion-de-bd/learn/lecture/25573576?start=0#overview', 0, '2022-09-04 14:52:20', 1),
(5, 'Curso 3', 'Curso 3: About all.', '1.jpg', 'https://www.udemy.com/course/sql-creacion-de-bd/learn/lecture/25573576?start=0#overview', 0, '2022-09-05 14:52:26', 1),
(6, 'Curso 4', 'Curso 4: About all.', '2.jpg', 'https://www.udemy.com/course/sql-creacion-de-bd/learn/lecture/25573576?start=0#overview', 0, '2022-09-06 14:52:34', 1),
(7, 'Curso 5', 'Curso 5: About all.', '1.jpg', 'https://www.udemy.com/course/sql-creacion-de-bd/learn/lecture/25573576?start=0#overview', 0, '2022-09-07 14:52:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tm_curso_detalle`
--

CREATE TABLE `tm_curso_detalle` (
  `det_id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `det_nom` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `tm_curso_detalle`
--

INSERT INTO `tm_curso_detalle` (`det_id`, `cur_id`, `det_nom`, `est`) VALUES
(1, 1, 'PHP', 1),
(2, 1, 'MySQL', 1),
(3, 2, 'MSSQL', 1),
(4, 3, 'Angular', 1),
(5, 4, 'Angular', 1),
(6, 4, 'React', 1),
(7, 7, 'Ionic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tm_lenguajes`
--

CREATE TABLE `tm_lenguajes` (
  `len_id` int(11) NOT NULL,
  `len_nom` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `tm_lenguajes`
--

INSERT INTO `tm_lenguajes` (`len_id`, `len_nom`, `est`) VALUES
(1, 'NodeJs', 1),
(2, 'PHP', 1),
(3, 'Angular', 1),
(4, 'Laravel', 1),
(5, 'SQL SERVER', 1),
(6, 'MySQL', 1),
(7, 'React', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tm_socialmedia`
--

CREATE TABLE `tm_socialmedia` (
  `sm_id` int(11) NOT NULL,
  `sm_nom` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sm_icon1` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sm_icon2` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sm_rutaweb` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `tm_socialmedia`
--

INSERT INTO `tm_socialmedia` (`sm_id`, `sm_nom`, `sm_icon1`, `sm_icon2`, `sm_rutaweb`, `est`) VALUES
(1, 'facebook', 'fb', 'social_facebook', 'https://www.facebook.com/eduard.martinez.1485', 1),
(2, 'twitter', 'tw', 'social_twitter', '#', 0),
(3, 'youtube', 'pt', 'social_youtube', 'https://www.youtube.com/channel/UCzDreomgUfDJua8OmQHNm-Q', 1),
(4, 'instagram', 'ig', 'social_instagram', 'https://github.com/IIEduardDevII', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tm_curso`
--
ALTER TABLE `tm_curso`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indexes for table `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  ADD PRIMARY KEY (`det_id`);

--
-- Indexes for table `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  ADD PRIMARY KEY (`len_id`);

--
-- Indexes for table `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  ADD PRIMARY KEY (`sm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tm_curso`
--
ALTER TABLE `tm_curso`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  MODIFY `len_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
