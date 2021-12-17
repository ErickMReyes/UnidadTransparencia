-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2021 a las 17:09:29
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trabajo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL,
  `Categorias` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategorias`, `Categorias`) VALUES
(1, 'Oficina del Titular'),
(2, 'Ingresos'),
(3, 'Egresos'),
(4, 'Programación y Presupuesto'),
(5, 'Procuraduría Fiscal'),
(6, 'Servicio de Administración Fiscal del Estado de Campeche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `idCategorias` text NOT NULL,
  `idSubcategorias` text NOT NULL,
  `idSeries` text NOT NULL,
  `idSubseries` text NOT NULL,
  `Caja` int(11) NOT NULL,
  `Expediente` int(11) NOT NULL,
  `Vigencia` int(11) NOT NULL,
  `archivo` varchar(500) NOT NULL,
  `Fojas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `idCategorias`, `idSubcategorias`, `idSeries`, `idSubseries`, `Caja`, `Expediente`, `Vigencia`, `archivo`, `Fojas`) VALUES
(2, '4', '12', '51', '110', 12, 234, 2022, 'Datadog.pdf', 12),
(3, '3', '10', '35', '79', 22, 156, 2028, 'BBVA.pdf', 123);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `despliegue`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `despliegue` (
`id` int(11)
,`Categorias` varchar(255)
,`Subcategorias` varchar(255)
,`Series` varchar(255)
,`Subseries` varchar(255)
,`Caja` int(11)
,`Expediente` int(11)
,`Vigencia` int(11)
,`Fojas` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `mostrar`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `mostrar` (
`id` int(11)
,`Categorias` varchar(255)
,`Subcategorias` varchar(255)
,`Series` varchar(255)
,`Subseries` varchar(255)
,`Caja` int(11)
,`Expediente` int(11)
,`Vigencia` int(11)
,`archivo` varchar(500)
,`Fojas` int(11)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `idSeries` int(11) NOT NULL,
  `Series` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idSubcategorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`idSeries`, `Series`, `idSubcategorias`) VALUES
(1, 'Vinculación Interinstitucional', 1),
(2, 'Comité de Ética y de Prevención de Conflictos de Interés', 2),
(3, 'Convenios, Acuerdos y Actas Suscritos por la Titular de la Secretaría de Finanzas', 3),
(4, 'Coordinación, Comunicación y Seguimiento de los Asuntos del Secretario', 3),
(5, 'Informes, Glosas e Indicadores', 3),
(6, 'Soporte Técnico', 4),
(7, 'Tecnologías de Información', 4),
(8, 'Telecomunicaciones e Infraestructura Tecnológica', 4),
(9, 'Seguridad de la Información', 4),
(10, 'Recursos Humanos', 5),
(11, 'Recursos Financieros', 5),
(12, 'Recursos Materiales', 5),
(13, 'Servicios Generales', 5),
(14, 'Solicitudes de Información Pública', 6),
(15, 'Solicitudes de Información de Datos Personales', 6),
(16, 'Comité de Transparencia', 6),
(17, 'Evaluaciones en Materia de Transparencia', 6),
(18, 'Plataforma Nacional y Portal de Transparencia', 6),
(19, 'Mejora Regulatoria', 6),
(20, 'Presupuesto Ciudadano', 6),
(21, 'Solicitudes de Información No Clasificadas Por Transparencia o Derecho Arco', 6),
(22, 'Instrumentos de Consulta y Control Archivístico', 6),
(23, 'Gestión Archivística', 6),
(24, 'Digitalización Archivística', 6),
(25, 'Archivo Histórico', 6),
(26, 'Sistema Institucional de Archivos', 6),
(27, 'Constancia de Liquidación', 7),
(28, 'Formatos Recaudatorios', 7),
(29, 'Cuenta Comprobada', 7),
(30, 'Enlace y Representación para el Seguimiento de Acuerdos', 8),
(31, 'Gestión y Seguimiento de Proyectos', 8),
(32, 'Vigilancia de Cumplimiento de Programas y Presupuestos', 9),
(33, 'Informes, Documentación y Seguimiento de Auditorías', 9),
(34, 'Procedimiento de Responsabilidades', 9),
(35, 'Apertura de Cuentas Bancarias', 10),
(36, 'Fideicomisos', 10),
(37, 'Créditos Simples con la Banca de Desarrollo', 10),
(38, 'Créditos Simples en Cuenta Corriente con la Banca Comercial', 10),
(39, 'Vinculación Documental', 10),
(40, 'Inversiones', 11),
(41, 'Documentación de Egresos', 11),
(42, 'Pólizas Contables', 11),
(43, 'Documentación de Ingresos', 11),
(44, 'Conciliaciones y Cuentas Bancarias', 11),
(45, 'Documentación de Obras en Proceso', 11),
(46, 'Documentación de Bienes', 11),
(47, 'Documentación de Cuenta Pública', 11),
(48, 'Estados Financieros', 11),
(49, 'Anteproyecto de Presupuesto de Egresos', 12),
(50, 'Analítico del Ejercicio del Presupuesto', 12),
(51, 'Gestión para Resultados (PBR/SED)', 12),
(52, 'Adecuaciones Presupuestales', 12),
(53, 'Creación de Partidas Presupuestales', 12),
(54, 'Manuales', 12),
(55, 'Seguimiento y Control de los Recursos Federalizados', 13),
(56, 'Avances Financieros', 13),
(57, 'Juicios', 14),
(58, 'Amparo Indirecto', 14),
(59, 'Recursos Administrativos', 14),
(60, 'Asesorías Jurídicas', 14),
(61, 'Propuestas de Iniciativas a Disposiciones Legales', 14),
(62, 'Estudios Comparados', 14),
(63, 'Propuestas de Modificaciones a Disposiciones Reglamentarias', 14),
(64, 'Impactos Presupuestales', 14),
(65, 'Representaciones en Materia Legal', 14),
(66, 'Marco Jurídico Legal, Reglamentario y Administrativo', 14),
(67, 'Correspondencia', 14),
(68, 'Registro Pública de Entidades Paraestatales', 14),
(69, 'Vinculación Interinstitucional', 15),
(70, 'Comité de Ética y de Prevención de Conflictos de Interés', 16),
(71, 'Impuestos Estatales', 17),
(72, 'Impuestos Federales', 17),
(73, 'Juicios', 18),
(74, 'Amparo Indirecto', 18),
(75, 'Interposición de Recursos Administrativos', 18),
(76, 'Condonaciones de Multas en Materia Estatal', 18),
(77, 'Asesorías Jurídicas', 18),
(78, 'Convenios y Contratos Jurídicos', 18),
(79, 'Actuaciones y Representaciones en Materia Legal', 18),
(80, 'Legislación y Normatividad', 18),
(81, 'Asambleas de Gobierno', 18),
(82, 'Registro Estatal de Contribuyentes', 19),
(83, 'Control Vehicular', 19),
(84, 'Recaudación Diaria', 20),
(85, 'Devoluciones y Fianzas', 21),
(86, 'Créditos al Contribuyente', 21),
(87, 'Concentración de Ingresos', 21),
(88, 'Reporte Aforos e Ingresos', 22),
(89, 'Vehículos Exentos del Pago de Peaje', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `idSubcategorias` int(11) NOT NULL,
  `Subcategorias` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idCategorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`idSubcategorias`, `Subcategorias`, `idCategorias`) VALUES
(1, '...', 1),
(2, 'Código de Ética', 1),
(3, 'Secretaría Técnica', 1),
(4, 'Dirección de Tecnologías de Información y Telecomunicaciones', 1),
(5, 'Coordinación Administrativa', 1),
(6, 'Unidad de Transparencia', 1),
(7, 'Unidad de Política de Ingresos y Coordinación Fiscal', 2),
(8, 'Dirección de Política Financiera y de Enlace de Proyectos de Inversión', 3),
(9, 'Dirección de Atención a Entes Fiscalizadores de Recursos Federales y Estatales', 3),
(10, 'Dirección de Egresos', 3),
(11, 'Contabilidad Gubernamental', 3),
(12, 'Presupuesto', 4),
(13, 'Programación', 4),
(14, 'Asuntos Jurídicos', 5),
(15, '...', 6),
(16, 'Código de Ética', 6),
(17, 'Auditoría Fiscal', 6),
(18, 'Asuntos Jurídicos', 6),
(19, 'Servicios al Contribuyente', 6),
(20, 'Oficinas Recaudadoras y de Servicio al Contribuyente', 6),
(21, 'Recaudación', 6),
(22, 'Dirección de la Plaza de Cobro del Puente la Unidad', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subseries`
--

CREATE TABLE `subseries` (
  `idSubseries` int(11) NOT NULL,
  `Subseries` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idSeries` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subseries`
--

INSERT INTO `subseries` (`idSubseries`, `Subseries`, `idSeries`) VALUES
(1, '...', 1),
(2, '...', 2),
(3, '...', 3),
(4, 'Comparecencias Ante el Poder Legislativo', 4),
(5, '...', 5),
(6, 'Mantenimiento de Equipos Informáticos', 6),
(7, 'Servicios de Soporte Técnico', 6),
(8, 'Dictámenes Técnicos', 6),
(9, 'Sistema Integral Tributario', 7),
(10, 'Sistema Integral de Armonización Contable', 7),
(11, 'Servicios de Soporte a Sistemas de Información', 7),
(12, 'Servicios de Telecomunicaciones', 8),
(13, 'Servicios de Infraestructura Tecnológica', 8),
(14, 'Servicios de Seguridad de la Información', 9),
(15, 'Expediente Único de Personal', 10),
(16, 'Presentación de Servicio Social y Residencias Profesionales', 10),
(17, 'Control de Viáticos', 10),
(18, 'Nóminas de Personal', 10),
(19, 'Incidencias de Personales', 10),
(20, 'Puntualidad y Asistencia', 10),
(21, 'Horas Extras', 10),
(22, 'Servicios Profesional de Carrera', 10),
(23, 'Conciliaciones Bancarias', 11),
(24, 'Fondo Revolvente', 11),
(25, 'Documentación de Pagos Menores a Proveedores, Reembolsos de Gastos y Reposición de Fondo Revolvente', 11),
(26, 'Documentación de Trámite de Pago a Proveedores', 11),
(27, 'Instancias Presupuestales', 11),
(28, 'Inventarios Físicos de Bienes Muebles e Inmuebles', 12),
(29, 'Requerimientos de Materiales y Equipos', 12),
(30, 'Parque Vehicular', 13),
(31, 'Servicios Básicos', 13),
(32, 'Servicios Financieros, Bancarios y Comerciales', 13),
(33, 'Recursos de Revisión y Alegatos', 14),
(34, 'Informe de Solicitudes de Información Pública', 14),
(35, 'Avisos de Privacidad y Documentos de Seguridad de los Sistemas de Datos Personales', 15),
(36, 'Informe Anual de Solicitudes de Datos Personales (Derecho Arco)', 15),
(37, 'Actas y Resoluciones', 16),
(38, 'Índice de Expedientes Reservados. Tabla de Aplicabilidad', 16),
(39, 'Índice de la Información Estatal Presupuestal (IIPE)', 17),
(40, 'Índice de la Información del Ejercicio del Gasto (IIEG)', 17),
(41, 'Índice de Transparencia y Disponibilidad de la Información Fiscal Estatal (ITDIF)', 17),
(42, 'Obligaciones Comunes y Específicas', 18),
(43, 'Informes de Cumplimiento y Seguimiento', 18),
(44, 'Programa Simplifica', 19),
(45, '...', 20),
(46, '...', 21),
(47, 'Cuadro General de Clasificación Archivística y Catálogo de Disposición Documental', 22),
(48, 'Inventarios Generales de Archivo', 22),
(49, 'Guías de Archivo Documental', 22),
(50, 'Asesorías Archivísticas', 23),
(51, 'Responsables de Archivo de Trámite', 23),
(52, 'Transferencias Primarias', 23),
(53, 'Dictámenes de Prevaloración', 23),
(54, 'Destino Final de Documentos', 23),
(55, 'Informes y Estadísticas de Archivo', 23),
(56, 'Préstamo y Consulta de Expedientes', 23),
(57, '...', 24),
(58, 'Inventarios de Transferencia Secundaria', 25),
(59, 'Dictámenes de Valoración Documental', 25),
(60, '...', 26),
(61, 'Participaciones a Municipios del Estado de Campeche', 27),
(62, 'Impuestos Predial de los Municipios Convenios', 27),
(63, 'Anticipo de Impuestos Predial de los Municipios Convenidos', 27),
(64, 'Impuestos y Derechos Locales (Incluye Predial y Agua)', 28),
(65, 'Recaudación Diaria de Impuestos Coordinados Federales', 29),
(66, 'Solicitudes de Aportaciones Federales de Zona Marítima Terrestre', 29),
(67, 'Sistema de Compensación de Fondos Federales', 29),
(68, 'Cuenta Mensual Comprobada', 29),
(69, 'Dependencias Estatales', 30),
(70, 'Dependencias Federales', 30),
(71, 'Organismos Desconcentrados', 30),
(72, 'Organismos Descentralizados', 30),
(73, 'Organismos Autónomos', 30),
(74, 'Fideicomisos', 30),
(75, '...', 31),
(76, '...', 32),
(77, '...', 33),
(78, '...', 34),
(79, 'Cuentas Estatales', 35),
(80, 'Cuentas Federales', 35),
(81, 'Administración de Terceros', 35),
(82, 'Fideicomisos 0205 Puente de la Unidad', 36),
(83, 'Fideicomisos 3089 Puente de la Unidad', 36),
(84, 'Fideicomisos 006 Financiamientos', 36),
(85, 'Fideicomisos 4092086 Créditos a Municipios', 36),
(86, 'Fideicomisos 4111191 Fodecam', 36),
(87, 'Directa', 37),
(88, 'Indirecta', 37),
(89, 'Directa', 38),
(90, 'Indirecta', 38),
(91, 'Internas', 39),
(92, 'Externas', 39),
(93, 'Movimientos de Inversiones Bancarias', 40),
(94, 'Gasto Público', 41),
(95, 'Ingresos', 42),
(96, 'Egresos', 42),
(97, 'Inversiones Bancarias', 42),
(98, 'Recibos de Ingresos', 43),
(99, 'Recaudaciones Diarias', 43),
(100, 'De Bancos', 44),
(101, 'De Cuentas', 44),
(102, 'Obras Federales', 45),
(103, 'Obras Estatales', 45),
(104, 'Bienes Muebles', 46),
(105, 'Bienes Inmuebles', 46),
(106, 'Oficios', 47),
(107, 'Información Contable', 48),
(108, '...', 49),
(109, '...', 50),
(110, 'Presupuesto Basado en Resultados (PBR)', 51),
(111, 'Sistema de Evaluación del Desempeño (SED)', 51),
(112, 'Ampliaciones', 52),
(113, 'Transferencias', 52),
(114, '...', 53),
(115, 'Manual de Programación y Presupuestación', 54),
(116, 'Manual de Normas y Procedimientos del Ejercicio del Presupuesto', 54),
(117, '...', 55),
(118, '...', 56),
(119, 'Contencioso Administrativo Federal', 57),
(120, 'Contencioso Administrativo Estatal', 57),
(121, '...', 58),
(122, 'Recurso de Revocación Federal', 59),
(123, 'Recurso de Revocación Estatal', 59),
(124, 'Asesoría Jurídica', 60),
(125, 'Convenios', 60),
(126, 'Contratos', 60),
(127, 'Acuerdos', 60),
(128, 'Actas', 60),
(129, 'Anexos', 60),
(130, 'Decretos', 61),
(131, 'Reformas', 61),
(132, 'Adiciones', 61),
(133, 'Derogaciones', 61),
(134, 'Abrogaciones', 61),
(135, '...', 62),
(136, 'Reglamentos', 63),
(137, 'Acuerdos', 63),
(138, 'Ordenes', 63),
(139, 'Disposiciones de Observancia General', 63),
(140, 'De Iniciativas de Leyes o Decretos de Modificaciones de Leyes', 64),
(141, 'De Disposiciones Administrativas', 64),
(142, '...', 65),
(143, 'Códigos', 66),
(144, 'Leyes', 66),
(145, 'Decretos', 66),
(146, 'Reglamentos', 66),
(147, 'Acuerdos Generales', 66),
(148, 'Normas', 66),
(149, 'Lineamientos', 66),
(150, 'Manuales', 66),
(151, 'Circulares', 66),
(152, 'Periódicos Oficiales del Estado', 66),
(153, '...', 67),
(154, '...', 68),
(155, '...', 69),
(156, '...', 70),
(157, 'Visita Domiciliaria', 71),
(158, 'Revisión de Gabinete', 71),
(159, 'Carta Invitación o Masiva', 71),
(160, 'Visita Domiciliaria', 72),
(161, 'Revisión de Gabinete', 72),
(162, 'Revisión de Papeles de Trabajo (DICTAMEN)', 72),
(163, 'Verificación de Expedición de Facturas Electrónicas', 72),
(164, 'Diferencia de Impuestos de Dictámenes', 72),
(165, 'Carta Invitación o Masiva', 72),
(166, 'Dictamen Técnico Contable', 72),
(167, 'Cancelación de Certificado de Sello Digital', 72),
(168, 'Publicaciones Artículo 69-B del CFF', 72),
(169, 'Verificación de Domicilios', 72),
(170, 'Delitos Fiscales', 72),
(171, 'Evaluación de CPI', 72),
(172, 'Responsabilidad Solidaria', 72),
(173, 'Contencioso Administrativo Federal', 73),
(174, 'Contencioso Administrativo Estatal', 73),
(175, '...', 74),
(176, 'Recurso de Revocación Federal', 75),
(177, 'Recurso de Revocación Estatal', 75),
(178, 'Reconsideraciones', 75),
(179, 'Caducidad de Facultades', 75),
(180, 'Prescripción de Créditos', 75),
(181, '...', 76),
(182, '...', 77),
(183, '...', 78),
(184, 'Representación Institucional', 79),
(185, 'Leyes', 80),
(186, 'Códigos', 80),
(187, 'Reglamentos', 80),
(188, 'Decretos', 80),
(189, 'Acuerdos Generales', 80),
(190, 'Normas', 80),
(191, 'Disposiciones Legales', 80),
(192, 'Lineamientos', 80),
(193, 'Normatividad Interna', 80),
(194, 'Diarios Oficiales', 80),
(195, 'Manuales', 80),
(196, 'Guías', 80),
(197, 'Compilaciones Jurídicas', 80),
(198, 'Agendas Fiscales', 80),
(199, 'Bases de Colaboración', 80),
(200, 'Circulares', 80),
(201, '...', 81),
(202, 'Inscripción, Suspensión, Modificaciones y Cambios al Registro Estatal de Contribuyentes', 82),
(203, 'Servicio Particular', 83),
(204, 'Servicio Público', 83),
(205, 'Servicio de Emergencias', 83),
(206, 'Recibos Oficiales', 83),
(207, 'Conciliación Diaria de Ingresos', 84),
(208, 'Arqueo de Cajas Recaudadoras', 84),
(209, 'Certificados de Depósitos', 84),
(210, 'Reportes Diarios de Ingresos', 84),
(211, 'Reportes Diarios de Cajas Contribunet', 84),
(212, 'Formas Valoradas Canceladas', 84),
(213, 'Formas Valoradas', 84),
(214, 'Devolución por Pago Indebido y Duplicado', 85),
(215, 'Requerimiento de Pago de Póliza de Fianza', 85),
(216, 'Créditos Fiscales Municipales', 86),
(217, 'Créditos Fiscales Federales', 86),
(218, 'Créditos Fiscales Estatales', 86),
(219, 'Conciliación de Contribunet', 87),
(220, 'Concentración Diaria de los Ingresos', 87),
(221, '...', 88),
(222, '...', 89);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(200) NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `rango` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `pswd`, `rango`) VALUES
(3, 'Jose', '1234', 1),
(4, 'Billy', '1234', 2);

-- --------------------------------------------------------

--
-- Estructura para la vista `despliegue`
--
DROP TABLE IF EXISTS `despliegue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `despliegue`  AS SELECT `d`.`id` AS `id`, `c`.`Categorias` AS `Categorias`, `s`.`Subcategorias` AS `Subcategorias`, `se`.`Series` AS `Series`, `sbs`.`Subseries` AS `Subseries`, `d`.`Caja` AS `Caja`, `d`.`Expediente` AS `Expediente`, `d`.`Vigencia` AS `Vigencia`, `d`.`Fojas` AS `Fojas` FROM ((((`datos` `d` join `categorias` `c` on(`c`.`idCategorias` = `d`.`idCategorias`)) join `subcategorias` `s` on(`d`.`idSubcategorias` = `s`.`idSubcategorias`)) join `series` `se` on(`se`.`idSeries` = `d`.`idSeries`)) join `subseries` `sbs` on(`sbs`.`idSubseries` = `d`.`idSubseries`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `mostrar`
--
DROP TABLE IF EXISTS `mostrar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mostrar`  AS SELECT `d`.`id` AS `id`, `c`.`Categorias` AS `Categorias`, `s`.`Subcategorias` AS `Subcategorias`, `se`.`Series` AS `Series`, `sbs`.`Subseries` AS `Subseries`, `d`.`Caja` AS `Caja`, `d`.`Expediente` AS `Expediente`, `d`.`Vigencia` AS `Vigencia`, `d`.`archivo` AS `archivo`, `d`.`Fojas` AS `Fojas` FROM ((((`datos` `d` join `categorias` `c` on(`c`.`idCategorias` = `d`.`idCategorias`)) join `subcategorias` `s` on(`d`.`idSubcategorias` = `s`.`idSubcategorias`)) join `series` `se` on(`se`.`idSeries` = `d`.`idSeries`)) join `subseries` `sbs` on(`sbs`.`idSubseries` = `d`.`idSubseries`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategorias`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`idSeries`),
  ADD KEY `idSubcategorias` (`idSubcategorias`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`idSubcategorias`),
  ADD KEY `idCategorias` (`idCategorias`);

--
-- Indices de la tabla `subseries`
--
ALTER TABLE `subseries`
  ADD PRIMARY KEY (`idSubseries`),
  ADD KEY `idSeries` (`idSeries`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `idSeries` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `idSubcategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `subseries`
--
ALTER TABLE `subseries`
  MODIFY `idSubseries` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_ibfk_1` FOREIGN KEY (`idSubcategorias`) REFERENCES `subcategorias` (`idSubcategorias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `subcategorias_ibfk_1` FOREIGN KEY (`idCategorias`) REFERENCES `categorias` (`idCategorias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subseries`
--
ALTER TABLE `subseries`
  ADD CONSTRAINT `subseries_ibfk_1` FOREIGN KEY (`idSeries`) REFERENCES `series` (`idSeries`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
