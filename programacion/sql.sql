-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2016 at 12:41 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brasilia_diario`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_atributos`
--

CREATE TABLE IF NOT EXISTS `tbl_atributos` (
  `lp_atributo_id` varchar(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_atributo_id`),
  UNIQUE KEY `IDX_ATRIBUTO_ID` (`lp_atributo_id`),
  UNIQUE KEY `IDX_ATRIBUTO_NOMBRE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_atribxcodig`
--

CREATE TABLE IF NOT EXISTS `tbl_atribxcodig` (
  `lp_atribxcodig_id` varchar(5) NOT NULL,
  `lf_atribxcodig_atributo` varchar(5) NOT NULL,
  `lf_atribxcodig_codigo` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_atribxcodig_id`),
  UNIQUE KEY `IDX_ATRIBXCODIG_ID` (`lp_atribxcodig_id`),
  KEY `IDX_ATRIBXCODIG_ATRIBUTO` (`lf_atribxcodig_atributo`),
  KEY `IDX_ATRIBXCODIG_CODIGO` (`lf_atribxcodig_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_atribxprodu`
--

CREATE TABLE IF NOT EXISTS `tbl_atribxprodu` (
  `lp_atribxprodu_id` varchar(5) NOT NULL,
  `valor` varchar(15) NOT NULL,
  `lf_atribxprodu_producto` varchar(5) NOT NULL,
  `lf_atribxprodu_atributo` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_atribxprodu_id`),
  UNIQUE KEY `IDX_ATRIBXPRODU_ID` (`lp_atribxprodu_id`),
  KEY `IDX_ATRIBXPRODU_PRODUCTO` (`lf_atribxprodu_producto`),
  KEY `IDX_ATRIBXPRODU_ATRIBUTO` (`lf_atribxprodu_atributo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cambios`
--

CREATE TABLE IF NOT EXISTS `tbl_cambios` (
  `lp_cambio_id` varchar(5) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `simbolo` varchar(3) NOT NULL,
  `valor` double NOT NULL,
  `moneda_Defecto` tinyint(1) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_cambio_id`),
  UNIQUE KEY `IDX_CAMBIO_ID` (`lp_cambio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cambios`
--

INSERT INTO `tbl_cambios` (`lp_cambio_id`, `nombre`, `simbolo`, `valor`, `moneda_Defecto`, `visibilidad`, `fech_crea`, `usuar_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('3B7F2', 'BOLIVARES', 'BSF', 0, 1, 1, '2014-06-19 15:19:59', '28309', '2014-06-19 15:40:25', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('491C7', 'EUROS', 'E', 90, 0, 1, '2014-06-19 19:21:19', '28309', '2014-06-19 19:21:19', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('9F110', 'DOLARES', '$', 49.5, 0, 1, '2014-06-19 15:20:09', '28309', '2014-06-19 15:20:26', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clientes`
--

CREATE TABLE IF NOT EXISTS `tbl_clientes` (
  `lp_cliente_id` varchar(5) NOT NULL,
  `lf_cliente_persona` varchar(5) NOT NULL,
  `funcion` varchar(45) NOT NULL,
  `tipo_rif` varchar(2) NOT NULL,
  `rif` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `razonsocial` varchar(45) NOT NULL,
  `denominacion` varchar(8) NOT NULL,
  `lf_cliente_tipo` varchar(5) NOT NULL,
  `contribuidor` varchar(1) NOT NULL,
  `telefono1` varchar(13) NOT NULL,
  `telefono2` varchar(13) DEFAULT 'N/A',
  `fax` varchar(13) DEFAULT 'N/A',
  `correo` varchar(60) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_cliente_id`),
  UNIQUE KEY `IDX_CLIENTE_ID` (`lp_cliente_id`),
  KEY `fk_TBL_USUAR_PERSONAS_idx` (`lf_cliente_persona`),
  KEY `fk_TBL_CLIEN_TPEMPRESA_idx` (`lf_cliente_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`lp_cliente_id`, `lf_cliente_persona`, `funcion`, `tipo_rif`, `rif`, `nombre`, `razonsocial`, `denominacion`, `lf_cliente_tipo`, `contribuidor`, `telefono1`, `telefono2`, `fax`, `correo`, `visibilidad`, `fech_crea`, `usuar_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('197B4', '25AB6', 'EMISOR', 'J', '56', 'CONTINENTAL', 'CONTINENTAL', 'C.A', '54453', 'S', '111-111.11.11', '111-111.11.11', '111-111.11.11', 'CONTIMEDICA@CONTIMEDICA.COM', 1, '2014-06-18 14:48:21', 'SSDFE', '2014-06-18 14:48:21', 'SSDFE', '::1', 'RDELGADO.LAPAZ.LOCAL', '::1', 'RDELGADO.LAPAZ.LOCAL'),
('2233C', '5XN2K', 'PROVEEDOR', 'J', '457', 'FARMACIA BB', 'GRUPO BB', 'C.A', '54453', 'S', '234-324.32.42', '', '', 'DFDF@HOTMAIL.COM', 1, '2014-06-04 08:10:59', 'SSDFE', '2014-06-04 08:10:59', 'SSDFE', '172.16.0.162', 'RDELGADO.LAPAZ.LOCAL', '172.16.0.162', 'RDELGADO.LAPAZ.LOCAL'),
('49A37', 'EAD89', 'PROVEEDOR', 'J', '124214', '12442', '12442', 'S.R.L', 'ERDDE', 'N', '124-411.42.24', '124-124.42.42', '124-241.24.12', '1124421@KK.COM', 1, '2014-07-03 15:33:26', '28309', '2014-07-03 15:33:26', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('513AB', 'EAD89', 'PROVEEDOR', 'J', '2122', '21E221E', '1212E', 'S.R.L', '54453', 'N', '212-112.12.12', '212-121.21.21', '221-212.12.12', '1212E2@GG.COM', 1, '2014-07-03 15:43:18', '28309', '2014-07-03 15:43:18', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('52DE6', 'EAD89', 'PROVEEDOR', 'J', '2233232', '232323', '322323', 'C.A', '54453', 'N', '232-332.33.23', '233-232.32.23', '233-232.32.32', '323232@GG.COM', 1, '2014-07-04 12:14:47', '28309', '2014-07-04 12:14:47', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('55316', '5XN2K', 'CLIENTE', 'G', '987621667', 'EMPRESA', 'EMPRESA', 'C.A', 'ERDDE', 'S', '123-455.67.78', '233-455.66.78', '123-454.56.67', 'PRUEBA@GMAIL.COM', 1, '2014-06-03 19:45:51', '28309', '2014-06-13 17:18:39', 'SSDFE', '172.16.0.169', 'RDELGADO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('68506', 'EAD89', 'PROVEEDOR', 'J', '433434343', 'TTTTTT', '3343434', 'S.R.L', '54453', 'N', '434-343.43.43', '433-434.43.43', '433-443.43.44', '34344343@HH.COM', 1, '2014-07-04 12:12:30', '28309', '2014-07-04 12:12:30', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('FD60D', 'EAD89', 'PROVEEDOR', 'G', '323232', '32323', '23232323', 'S.R.L', '54453', 'N', '232-332.32.33', '233-233.23.23', '232-333.23.23', '323232@EE.COM', 1, '2014-07-04 12:25:17', '28309', '2014-07-04 12:25:17', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clien_tpempresas`
--

CREATE TABLE IF NOT EXISTS `tbl_clien_tpempresas` (
  `lp_tpempresa_id` varchar(5) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`lp_tpempresa_id`),
  UNIQUE KEY `IDX_TPEMPRESA⁯_ID` (`lp_tpempresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_clien_tpempresas`
--

INSERT INTO `tbl_clien_tpempresas` (`lp_tpempresa_id`, `tipo`) VALUES
('54453', 'PUBLICA'),
('ERDDE', 'PRIVADA'),
('QQQQQ', 'MIXTA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codigos`
--

CREATE TABLE IF NOT EXISTS `tbl_codigos` (
  `lp_codigo_id` varchar(5) NOT NULL,
  `lf_codigo_jerarquia` varchar(5) NOT NULL,
  `lf_codigo_tipo` varchar(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `seg_nombre` varchar(100) NOT NULL DEFAULT 'N/A',
  `codfabricant` varchar(30) NOT NULL,
  `descrpfabrica` text NOT NULL,
  `descripropia` text NOT NULL,
  `nombre_img` varchar(45) DEFAULT 'N/A',
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `bloquear` tinyint(1) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  PRIMARY KEY (`lp_codigo_id`),
  UNIQUE KEY `IDX_CODIGO_ID` (`lp_codigo_id`),
  KEY `IDX_CODIGO_TIPO` (`lf_codigo_tipo`),
  KEY `IDX_TIPO_JERARQUIA` (`lf_codigo_jerarquia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_codigos`
--

INSERT INTO `tbl_codigos` (`lp_codigo_id`, `lf_codigo_jerarquia`, `lf_codigo_tipo`, `nombre`, `seg_nombre`, `codfabricant`, `descrpfabrica`, `descripropia`, `nombre_img`, `visibilidad`, `fech_crea`, `usuar_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `bloquear`, `host_modfca`, `host_crea`, `ip_crea`) VALUES
('07F0F', '6ABB4', 'ERHZG', 'MORRAL', '-', '21212221', '3333', '3333', '3.jpg', 1, '2014-07-04 19:33:36', '28309', '2014-07-04 19:33:36', '28309', '::1', 0, 'BCARRASCO.LAPAZ.LOCAL', 'BCARRASCO.LAPAZ.LOCAL', '::1'),
('0B921', '8E374', 'ERHZG', 'LAVADORA DE 20 GAL', '-', '32F23F3F', 'CON OPCION ULTRASONICA BANDEJA PARA LAVADO DE INSTRUMENTAL MODELO CAVIWAR', 'LAVADORA DE 20 GAL', '', 1, '2014-06-25 21:48:22', '28309', '2014-06-25 21:48:22', '28309', '::1', 0, 'BCARRASCO.LAPAZ.LOCAL', 'BCARRASCO.LAPAZ.LOCAL', '::1'),
('124CA', 'EF8D0', 'ERHZG', 'INCUBADORA ABIERTA ', 'YU', 'S/C', 'INCUBADORA ABIERTA CON SISTEMA DE CALOR RADIANTE Y FOTOTERAPIA ', 'MODELO BABY CON ACCESORIOS', '', 1, '2014-06-30 19:24:56', 'SSDFE', '2014-06-30 19:24:56', 'SSDFE', '::1', 0, 'RDELGADO.LAPAZ.LOCAL', 'RDELGADO.LAPAZ.LOCAL', '::1'),
('3CFEC', '22911', 'ERHZG', 'MAQUINA DE ANESTESIA CON VENTILACION', '-', '34TG34G34', 'MAQUINA DE ANESTESIA CON VENTILACIóN A PISTóN ELéCTRICO DE ALTA VELOCIDAD EVENT PLUS', 'MODELO PRIMUS', '3CFEC.jpeg', 1, '2014-07-02 18:14:17', '28309', '2014-07-02 18:14:17', '28309', '::1', 0, 'BCARRASCO.LAPAZ.LOCAL', 'BCARRASCO.LAPAZ.LOCAL', '::1'),
('43647', '5D3E5', 'CB381', 'ESTETOCOPIO', '-', 'H45H54545H', 'MASCARILLA REDONDA', 'TALLA 2', 'stetocopio.jpg', 1, '2014-07-02 18:09:47', 'D2B7D', '2014-07-02 18:09:47', 'D2B7D', '::1', 0, 'CVIVAS.LAPAZ.LOCAL', 'CVIVAS.LAPAZ.LOCAL', '::1'),
('7AE55', 'EF8D0', 'ERHZG', 'INCUBADORA ABIERTA2', '-', '3R23R23R32', 'INCUBADORA ABIERTA CON SISTEMA DE CALOR RADIANTE Y FOTOTERAPIA ', 'MODELO BABY CON ACCESORIOS', '7AE55.jpeg', 1, '2014-06-26 12:44:34', 'SSDFE', '2014-06-26 12:44:34', 'SSDFE', '::1', 0, 'RDELGADO.LAPAZ.LOCAL', 'RDELGADO.LAPAZ.LOCAL', '::1'),
('A8289', '5D3E5', 'ERHZG', 'MAQUINA DE ANESTESIA', '-', '43443T4G', 'MODELO WATO EX55', 'ADULTO PEDIáTRICO NEONATAL', 'A8289.jpeg', 1, '2014-07-02 13:10:11', 'D2B7D', '2014-07-02 13:10:11', 'D2B7D', '172.16.0.99', 0, 'CVIVAS.LAPAZ.LOCAL', 'CVIVAS.LAPAZ.LOCAL', '172.16.0.99'),
('B30C2', '5D3E5', 'CCVVC', 'MASCARILLA REDONDA', '-', 'VWEVWEVEW', 'MASCARILLA REDONDA', 'TALLA 1', 'mascrilla-3m.jpg', 1, '2014-07-02 18:26:26', 'D2B7D', '2014-07-02 18:26:26', 'D2B7D', '::1', 0, 'CVIVAS.LAPAZ.LOCAL', 'CVIVAS.LAPAZ.LOCAL', '::1'),
('C494A', '6ABB4', 'ERHZG', 'MORRAL-', '45', 'S/C', '3333', '3333', '3.JPG', 1, '2014-07-04 19:52:43', 'D2B7D', '2014-07-04 19:52:43', 'D2B7D', '::1', 0, 'RDELGADO.LAPAZ.LOCAL', 'RDELGADO.LAPAZ.LOCAL', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codigoxpdf`
--

CREATE TABLE IF NOT EXISTS `tbl_codigoxpdf` (
  `lp_codigoxpdf_id` varchar(5) NOT NULL,
  `lf_codigoxpdf_codigo` varchar(5) NOT NULL,
  `lf_codigoxpdf_pdf` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_codigoxpdf_id`),
  UNIQUE KEY `IDX_CODIGOXPDF_ID` (`lp_codigoxpdf_id`),
  KEY `IDX_CODIGOXPDF_CODIGO` (`lf_codigoxpdf_codigo`),
  KEY `IDX_CODIGOXPDF_PDF` (`lf_codigoxpdf_pdf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_codigoxpdf`
--

INSERT INTO `tbl_codigoxpdf` (`lp_codigoxpdf_id`, `lf_codigoxpdf_codigo`, `lf_codigoxpdf_pdf`, `visibilidad`) VALUES
('27184', 'B30C2', '1B33D', 1),
('3305C', '3CFEC', '08EF6', 1),
('9E7CF', 'A8289', '1B33D', 1),
('DB6B8', '43647', '1B33D', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codig_codigbarras`
--

CREATE TABLE IF NOT EXISTS `tbl_codig_codigbarras` (
  `lp_codigos_barras_id` varchar(5) NOT NULL,
  `lf_codig_codigo_barras` varchar(5) NOT NULL,
  `codigo_barras` varchar(40) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_codigos_barras_id`),
  UNIQUE KEY `IDX_CODIGOBARRAS_ID` (`lp_codigos_barras_id`),
  KEY `IDX_CODIG_CODIGO_BARRA` (`lf_codig_codigo_barras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_codig_codigbarras`
--

INSERT INTO `tbl_codig_codigbarras` (`lp_codigos_barras_id`, `lf_codig_codigo_barras`, `codigo_barras`, `visibilidad`) VALUES
('270C0', '43647', '02', 1),
('E1E4F', '43647', '01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codig_compatibilidades`
--

CREATE TABLE IF NOT EXISTS `tbl_codig_compatibilidades` (
  `lp_compatibilidad_id` varchar(5) NOT NULL,
  `lf_compat_codigo_padre` varchar(5) NOT NULL,
  `lf_compat_codigo_hijo` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_compatibilidad_id`),
  UNIQUE KEY `IDX_COMPATIBILIDAD_ID` (`lp_compatibilidad_id`),
  KEY `IDX_COMPAT_CODIGO_PADRE` (`lf_compat_codigo_padre`),
  KEY `IDX_COMPAT_CODIGO_HIJO` (`lf_compat_codigo_hijo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_codig_compatibilidades`
--

INSERT INTO `tbl_codig_compatibilidades` (`lp_compatibilidad_id`, `lf_compat_codigo_padre`, `lf_compat_codigo_hijo`, `visibilidad`) VALUES
('8E4DA', '124CA', '43647', 1),
('B3B00', 'B30C2', '43647', 1),
('BA4DB', '0B921', '3CFEC', 1),
('EA11B', 'B30C2', '3CFEC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codig_jerarquias`
--

CREATE TABLE IF NOT EXISTS `tbl_codig_jerarquias` (
  `lp_jerarquia_id` varchar(5) NOT NULL,
  `lf_jerarquia_jerarquia` varchar(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_jerarquia_id`),
  UNIQUE KEY `IDX_JERARQUIA_ID` (`lp_jerarquia_id`),
  KEY `IDX_JERARQUIA_JERARQUIA` (`lf_jerarquia_jerarquia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_codig_jerarquias`
--

INSERT INTO `tbl_codig_jerarquias` (`lp_jerarquia_id`, `lf_jerarquia_jerarquia`, `nombre`, `visibilidad`) VALUES
('00ACE', 'E80A4', 'CABLES', 1),
('1DAA9', '2729E', 'MAQUINA DE ANESTESIA', 1),
('22911', '26B14', 'MAQUINA DE ANESTESIA', 1),
('26B14', '26B14', 'MINDRAY', 1),
('2729E', '2729E', 'DRÄGER', 1),
('2CD3D', '6ABB4', 'SISTEMA DE LIMPIEZA Y ALTA DESINFECCION', 1),
('407EA', '2729E', 'ACCESORIOS INCUBADORAS', 1),
('5D3E5', '2729E', 'ACESORIOS MAQUINA DE ANESTESIA', 1),
('62F22', '6ABB4', 'ESTERILIZADORES DE BAJA TEMPERATURA', 1),
('6ABB4', '6ABB4', 'STERIS', 1),
('7669A', '6ABB4', 'ESTERILIZADORES A VAPOR AUTOCLAVE', 1),
('8E374', '6ABB4', 'LAVADORAS', 1),
('98DC2', '26B14', 'MONITORES', 1),
('BEA11', '26B14', 'ACCESORIOS MONITORES', 1),
('E80A4', '98DC2', 'ACCESORIOS', 1),
('EC39C', '407EA', 'FFFF', 0),
('EF8D0', '2729E', 'INCUBADORAS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codig_pdfs`
--

CREATE TABLE IF NOT EXISTS `tbl_codig_pdfs` (
  `lp_pdf_id` varchar(5) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `nombre_pdf` varchar(45) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_pdf_id`),
  UNIQUE KEY `IDX_PDF_ID` (`lp_pdf_id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_codig_pdfs`
--

INSERT INTO `tbl_codig_pdfs` (`lp_pdf_id`, `nombre`, `nombre_pdf`, `descripcion`, `visibilidad`) VALUES
('0009', 'hhh', 'tttt.pdf', 'hhh', 1),
('03D14', 'UUU', '03D14.pdf', 'UUU', 1),
('08EF6', 'nombre', 'accessories_catalog_compl_9066485_en.pdf', 'caka', 1),
('1', 'zzz', 'zzzz.pdf', 'zzzz', 1),
('17712', 'EEE', '17712.pdf', 'EEE', 1),
('1B33D', 'VINOTINTO', '1B33D.pdf', 'VINOTINTO', 1),
('2CE07', '099999', 'material-sin-personalizar-agile.pdf', '09090ttt', 1),
('41CDF', 'CATALOGO MINDRAY MAQ. ANESTESIA', '41CDF.pdf', 'CATALOGO MINDRAY MAQ. ANESTESIA', 1),
('463E4', 'NOMBRE DE CATALOGO', 'DERupdated.pdf', 'EQUIS', 1),
('4AA11', 'kkkk bbbb', '4AA11.pdf', 'JJJ', 1),
('4E996', 'CATáLOGO MASCARILLA REDONDA', 'orsupply-catalog.pdf', 'CATáLOGO MASCARILLA REDONDA ', 1),
('4F34F', 'SSS', '4F34F.pdf', 'SSS', 1),
('64000', 'WWW', '64000.pdf', 'WWW', 1),
('77D7C', 'DD', 'JQuery_DataTables.pdf', 'DDD', 1),
('78C07', '000', '78C07.pdf', '000', 1),
('84A4F', 'MáQUINA ANESTESIA DRäGER', 'dre_integra_sp_II_mri_comp.pdf', 'CATáLOGO MáQUINA ANESTESIA DRäGER', 1),
('868B9', 'caka22', '868B9.pdf', 'caka2233344', 1),
('89919', 'CATALOGO INCUBADORA DRäGER2', '89919.pdf', 'ABC DE LA INCUBADORA', 1),
('91BFF', 'GG', '91BFF.pdf', 'GG', 1),
('A2600', 'MáQUINA ANESTESIA DRäGER 2 ', 'A2600.pdf', 'MáQUINA ANESTESIA DRäGER 2 ', 1),
('A2BEE', 'CATALOGO INCUBADORA DRäGER', 'A2BEE.pdf', 'ABC DE LA INCUBADORA', 1),
('A4620', 'RTRT', 'A4620.pdf', 'YOYOYO', 1),
('AA901', 'N1N1N1 N1N1N1', 'AA901.pdf', 'N1N1N1 N1N1N1', 1),
('BF111', 'XXX', 'BF111.pdf', 'XXX', 1),
('D34A8', 'REALIZE', 'D34A8.pdf', 'REALIZE', 1),
('DF5F2', 'EQUIS', 'DF5F2.pdf', 'EEE', 1),
('E63AE', 'YYY', 'E63AE.pdf', 'YYY', 1),
('rtrt', 'ffff', 'dfdf.pdf', 'equis', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codig_tipos`
--

CREATE TABLE IF NOT EXISTS `tbl_codig_tipos` (
  `lp_tipo_id` varchar(5) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_tipo_id`),
  UNIQUE KEY `IDX_TIPO_ID` (`lp_tipo_id`),
  UNIQUE KEY `IDX_TIPO_NOMBRE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_codig_tipos`
--

INSERT INTO `tbl_codig_tipos` (`lp_tipo_id`, `nombre`, `visibilidad`) VALUES
('CB381', 'PARTE', 1),
('CCVVC', 'DESCARTABLE', 1),
('DDFFG', 'CONSUMIBLE', 1),
('ERHZG', 'EQUIPO', 1),
('FFRT4', 'RESPUESTO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_codig_unidad_venta`
--

CREATE TABLE IF NOT EXISTS `tbl_codig_unidad_venta` (
  `lp_unidad_venta_id` varchar(5) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_unidad_venta_id`),
  UNIQUE KEY `IDX_UNIDAD_VENTA_ID` (`lp_unidad_venta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_codig_unidad_venta`
--

INSERT INTO `tbl_codig_unidad_venta` (`lp_unidad_venta_id`, `nombre`, `visibilidad`) VALUES
('8ET23', 'KG', 1),
('FR54G', 'DOCENAS', 1),
('KJ89U', 'UNIDADES', 1),
('RR43G', 'LITROS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_direcciones`
--

CREATE TABLE IF NOT EXISTS `tbl_direcciones` (
  `lp_direccion_id` varchar(5) NOT NULL,
  `t_urban_barr` varchar(13) DEFAULT NULL,
  `urbarn_barrio` varchar(45) DEFAULT NULL,
  `t_calle_av` varchar(13) DEFAULT NULL,
  `calle_av` varchar(45) DEFAULT NULL,
  `tipovivienda` varchar(10) NOT NULL,
  `datovivienda` varchar(45) NOT NULL,
  `piso_numero` int(11) NOT NULL,
  `oficin_apart` varchar(20) DEFAULT NULL,
  `lf_direccion_ptoreferencia` varchar(5) NOT NULL,
  `referencia` varchar(45) NOT NULL,
  `codpostal` int(11) NOT NULL,
  `claveforeana` varchar(5) NOT NULL,
  `tabla_referen` varchar(45) NOT NULL,
  `lf_direccion_parroquia` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_direccion_id`),
  UNIQUE KEY `IDX_DIRECCION_ID` (`lp_direccion_id`),
  KEY `IDX_DIRECCION_PTOREFERENCIA` (`lf_direccion_ptoreferencia`),
  KEY `IDX_DIRECCION_PARROQUIA` (`lf_direccion_parroquia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_direcciones`
--

INSERT INTO `tbl_direcciones` (`lp_direccion_id`, `t_urban_barr`, `urbarn_barrio`, `t_calle_av`, `calle_av`, `tipovivienda`, `datovivienda`, `piso_numero`, `oficin_apart`, `lf_direccion_ptoreferencia`, `referencia`, `codpostal`, `claveforeana`, `tabla_referen`, `lf_direccion_parroquia`, `visibilidad`) VALUES
('194F8', 'BARRIO', '3223323', '', '', 'CASA', '232323', 223232, '', '11111', '23332', 2233, '68506', 'TBL_CLIENTES', '388', 1),
('354B4', 'BARRIO', '1322', '', '', 'CASA', '12212', 122213, '', 'DDDDD', '12123', 1212, '513AB', 'TBL_CLIENTES', '1', 1),
('44ECC', 'BARRIO', 'CHARANGA', '', '', 'EDIFICIO', '22', 22, '23', 'MMNNS', 'LAS ADJUNTAS\r\n', 33, '04469', 'TBL_USUAR_PERSONAS', '388', 1),
('45678', 'URBANIZACION', 'CATIA', 'AVENIDA', 'CATIA', 'EDIFICIO', 'CATIA', 333, '33', 'RRREE', 'CATIA', 45, '5XN2K', 'TBL_USUAR_PERSONAS', '580', 1),
('58D05', 'URBANIZACION', '33', '', '', 'EDIFICIO', '33', 33, '33', '11111', '33', 0, 'A999E', 'TBL_USUAR_PERSONAS', '10', 1),
('76767', 'URBANIZACION', 'COHCE', '', '', 'TORRE', 'COCHE', 5, '53', 'DDDDD', 'COCHE', 1020, '55316', 'TBL_CLIENTES', '19', 1),
('90C82', 'URBANIZACION', 'CATIA', 'AVENIDA', 'CATIA', 'EDIFICIO', 'CATIA', 333, '33', 'RRREE', 'CATIA', 45, 'AS33W', 'TBL_USUAR_PERSONAS', '580', 1),
('9C76C', 'URBANIZACION', 'CARICUAO', 'CALLE', 'PRINCIPAL', 'EDIFICIO', 'LA SABANA', 5, '57', 'RRREE', 'REDONDA', 1070, 'A7BAF', 'TBL_USUAR_PERSONAS', '580', 1),
('BD013', 'URBANIZACION', '33', '', '', 'CASA', '33', 33, '', '11111', '33', 0, '73BB2', 'TBL_USUAR_PERSONAS', '10', 1),
('C44EB', 'BARRIO', '3223232', '', '', 'CASA', '23233', 2323, '', '11111', '2323223', 3232, 'FD60D', 'TBL_CLIENTES', '1', 1),
('D1D4B', 'BARRIO', '233232', '', '', 'CASA', '2332', 323232, '', 'DDDDD', '233232', 3232, '52DE6', 'TBL_CLIENTES', '1', 1),
('EC63E', 'URBANIZACION', 'LA CALIFORNIA NORTE', 'AVENIDA', 'FRANCISCO DE MIRANDA', 'TORRE', 'CENTRO SEGUROS LA PAZ', 1, '1', 'DDDDD', 'LíDER', 1011, '9081B', 'TBL_UBICA_ALMACENES', '10', 1),
('ED912', 'BARRIO', '412241421', '', '', 'CASA', '12424124', 412142, '', 'DDDDD', '124142', 1241, '49A37', 'TBL_CLIENTES', '1', 1),
('ERERR', 'URBANIZACION', 'CATIA', 'AVENIDA', 'CATIA', 'EDIFICIO', 'CATIA', 333, '33', 'RRREE', 'CATIA', 45, 'EAD89', 'TBL_USUAR_PERSONAS', '697', 1),
('PPOOL', 'URBANIZACION', 'CATIA', 'AVENIDA', 'CATIA', 'EDIFICIO', 'CATIA', 333, '33', 'RRREE', 'CATIA', 45, '197B4', 'TBL_CLIENTES', '697', 1),
('QP98I', 'URBANIZACION', 'CATIA', 'AVENIDA', 'CATIA', 'EDIFICIO', 'CATIA', 333, '33', 'RRREE', 'CATIA', 45, '2233C', 'TBL_CLIENTES', '697', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_direccion_parroquias`
--

CREATE TABLE IF NOT EXISTS `tbl_direccion_parroquias` (
  `lp_parroquia_id` varchar(5) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `lf_parroquia_municipio` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_parroquia_id`),
  UNIQUE KEY `IDX_PARROQUIA_ID` (`lp_parroquia_id`),
  KEY `IDX_PARROQUIA_MUNICIPIO` (`lf_parroquia_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_direccion_parroquias`
--

INSERT INTO `tbl_direccion_parroquias` (`lp_parroquia_id`, `nombre`, `lf_parroquia_municipio`, `visibilidad`) VALUES
('1', 'ALTAGRACIA', '1', 1),
('10', 'SUCRE', '1', 1),
('100', 'PEÑALVER', '28', 1),
('1000', 'CACIQUE MARA', '307', 1),
('1001', 'CECILIO ACOSTA', '307', 1),
('1002', 'RAUL LEONI', '307', 1),
('1003', 'FRANCISCO EUGENIO B', '307', 1),
('1004', 'MANUEL DAGNINO', '307', 1),
('1005', 'LUIS HURTADO HIGUERA', '307', 1),
('1006', 'VENANCIO PULGAR', '307', 1),
('1007', 'ANTONIO BORJAS ROMERO', '307', 1),
('1008', 'SAN ISIDRO', '307', 1),
('1009', 'FARIA', '308', 1),
('101', 'EL RECREO', '28', 1),
('1010', 'SAN ANTONIO', '308', 1),
('1011', 'ANA MARIA CAMPOS', '308', 1),
('1012', 'SAN JOSE', '308', 1),
('1013', 'ALTAGRACIA', '308', 1),
('1014', 'GOAJIRA', '309', 1),
('1015', 'ELIAS SANCHEZ RUBIO', '309', 1),
('1016', 'SINAMAICA', '309', 1),
('1017', 'ALTA GUAJIRA', '309', 1),
('1018', 'SAN JOSE DE PERIJA', '310', 1),
('1019', 'BARTOLOME DE LAS CASAS', '310', 1),
('102', 'SN RAFAEL DE ATAMAICA', '28', 1),
('1020', 'LIBERTAD', '310', 1),
('1021', 'RIO NEGRO', '310', 1),
('1022', 'GIBRALTAR', '311', 1),
('1023', 'HERAS', '311', 1),
('1024', 'M.ARTURO CELESTINO A', '311', 1),
('1025', 'ROMULO GALLEGOS', '311', 1),
('1026', 'BOBURES', '311', 1),
('1027', 'EL BATEY', '311', 1),
('1028', 'ANDRES BELLO (KM 48)', '312', 1),
('1029', 'POTRERITOS', '312', 1),
('103', 'BIRUACA', '29', 1),
('1030', 'EL CARMELO', '312', 1),
('1031', 'CHIQUINQUIRA', '312', 1),
('1032', 'CONCEPCION', '312', 1),
('1033', 'ELEAZAR LOPEZ C', '313', 1),
('1034', 'ALONSO DE OJEDA', '313', 1),
('1035', 'VENEZUELA', '313', 1),
('1036', 'CAMPO LARA', '313', 1),
('1037', 'LIBERTAD', '313', 1),
('1038', 'UDON PEREZ', '314', 1),
('1039', 'ENCONTRADOS', '314', 1),
('104', 'CM. LAS DELICIAS', '30', 1),
('1040', 'DONALDO GARCIA', '315', 1),
('1041', 'SIXTO ZAMBRANO', '315', 1),
('1042', 'EL ROSARIO', '315', 1),
('1043', 'AMBROSIO', '316', 1),
('1044', 'GERMAN RIOS LINARES', '316', 1),
('1045', 'JORGE HERNANDEZ', '316', 1),
('1046', 'LA ROSA', '316', 1),
('1047', 'PUNTA GORDA', '316', 1),
('1048', 'CARMEN HERRERA', '316', 1),
('1049', 'SAN BENITO', '316', 1),
('105', 'CHORONI', '30', 1),
('1050', 'ROMULO BETANCOURT', '316', 1),
('1051', 'ARISTIDES CALVANI', '316', 1),
('1052', 'RAUL CUENCA', '317', 1),
('1053', 'LA VICTORIA', '317', 1),
('1054', 'RAFAEL URDANETA', '317', 1),
('1055', 'JOSE RAMON YEPEZ', '318', 1),
('1056', 'LA CONCEPCION', '318', 1),
('1057', 'SAN JOSE', '318', 1),
('1058', 'MARIANO PARRA LEON', '318', 1),
('1059', 'MONAGAS', '319', 1),
('106', 'MADRE MA DE SAN JOSE', '30', 1),
('1060', 'ISLA DE TOAS', '319', 1),
('1061', 'MARCIAL HERNANDEZ', '320', 1),
('1062', 'FRANCISCO OCHOA', '320', 1),
('1063', 'SAN FRANCISCO', '320', 1),
('1064', 'EL BAJO', '320', 1),
('1065', 'DOMITILA FLORES', '320', 1),
('1066', 'LOS CORTIJOS', '320', 1),
('1067', 'BARI', '321', 1),
('1068', 'JESUS M SEMPRUN', '321', 1),
('1069', 'SIMON RODRIGUEZ', '322', 1),
('107', 'JOAQUIN CRESPO', '30', 1),
('1070', 'CARLOS QUEVEDO', '322', 1),
('1071', 'FRANCISCO J PULGAR', '322', 1),
('1072', 'RAFAEL MARIA BARALT', '323', 1),
('1073', 'MANUEL MANRIQUE', '323', 1),
('1074', 'RAFAEL URDANETA', '323', 1),
('1075', 'FERNANDO GIRON TOVAR', '324', 1),
('1076', 'LUIS ALBERTO GOMEZ', '324', 1),
('1077', 'PARHUEÑA', '324', 1),
('1078', 'PLATANILLAL', '324', 1),
('1079', 'CM. SAN FERNANDO DE ATABA', '325', 1),
('108', 'PEDRO JOSE OVALLES', '30', 1),
('1080', 'UCATA', '325', 1),
('1081', 'YAPACANA', '325', 1),
('1082', 'CANAME', '325', 1),
('1083', 'CM. MAROA', '326', 1),
('1084', 'VICTORINO', '326', 1),
('1085', 'COMUNIDAD', '326', 1),
('1086', 'CM. SAN CARLOS DE RIO NEG', '327', 1),
('1087', 'SOLANO', '327', 1),
('1088', 'COCUY', '327', 1),
('1089', 'CM. ISLA DE RATON', '328', 1),
('109', 'JOSE CASANOVA GODOY', '30', 1),
('1090', 'SAMARIAPO', '328', 1),
('1091', 'SIPAPO', '328', 1),
('1092', 'MUNDUAPO', '328', 1),
('1093', 'GUAYAPO', '328', 1),
('1094', 'CM. SAN JUAN DE MANAPIARE', '329', 1),
('1095', 'ALTO VENTUARI', '329', 1),
('1096', 'MEDIO VENTUARI', '329', 1),
('1097', 'BAJO VENTUARI', '329', 1),
('1098', 'CM. LA ESMERALDA', '330', 1),
('1099', 'HUACHAMACARE', '330', 1),
('11', '23 DE ENERO', '1', 1),
('110', 'ANDRES ELOY BLANCO', '30', 1),
('1100', 'MARAWAKA', '330', 1),
('1101', 'MAVACA', '330', 1),
('1102', 'SIERRA PARIMA', '330', 1),
('1103', 'SAN JOSE', '331', 1),
('1104', 'VIRGEN DEL VALLE', '331', 1),
('1105', 'SAN RAFAEL', '331', 1),
('1106', 'JOSE VIDAL MARCANO', '331', 1),
('1107', 'LEONARDO RUIZ PINEDA', '331', 1),
('1108', 'MONS. ARGIMIRO GARCIA', '331', 1),
('1109', 'MCL.ANTONIO J DE SUCRE', '331', 1),
('111', 'LOS TACARIGUAS', '30', 1),
('1110', 'JUAN MILLAN', '331', 1),
('1111', 'PEDERNALES', '332', 1),
('1112', 'LUIS B PRIETO FIGUERO', '332', 1),
('1113', 'CURIAPO', '333', 1),
('1114', 'SANTOS DE ABELGAS', '333', 1),
('1115', 'MANUEL RENAUD', '333', 1),
('1116', 'PADRE BARRAL', '333', 1),
('1117', 'ANICETO LUGO', '333', 1),
('1118', 'ALMIRANTE LUIS BRION', '333', 1),
('1119', 'IMATACA', '334', 1),
('112', 'CM. TURMERO', '31', 1),
('1120', 'ROMULO GALLEGOS', '334', 1),
('1121', 'JUAN BAUTISTA ARISMEN', '334', 1),
('1122', 'MANUEL PIAR', '334', 1),
('1123', '5 DE JULIO', '334', 1),
('1124', 'CARABALLEDA', '335', 1),
('1125', 'CARAYACA', '335', 1),
('1126', 'CARUAO', '335', 1),
('1127', 'CATIA LA MAR', '335', 1),
('1128', 'LA GUAIRA', '335', 1),
('1129', 'MACUTO', '335', 1),
('113', 'SAMAN DE GUERE', '31', 1),
('1130', 'MAIQUETIA', '335', 1),
('1131', 'NAIGUATA', '335', 1),
('1132', 'EL JUNKO', '335', 1),
('1133', 'PQ RAUL LEONI', '335', 1),
('1134', 'PQ CARLOS SOUBLETTE', '335', 1),
('114', 'ALFREDO PACHECO M', '31', 1),
('115', 'CHUAO', '31', 1),
('116', 'AREVALO APONTE', '31', 1),
('117', 'CM. LA VICTORIA', '32', 1),
('118', 'ZUATA', '32', 1),
('119', 'PAO DE ZARATE', '32', 1),
('12', 'ANTIMANO', '1', 1),
('120', 'CASTOR NIEVES RIOS', '32', 1),
('121', 'LAS GUACAMAYAS', '32', 1),
('122', 'CM. SAN CASIMIRO', '33', 1),
('123', 'VALLE MORIN', '33', 1),
('124', 'GUIRIPA', '33', 1),
('125', 'OLLAS DE CARAMACATE', '33', 1),
('126', 'CM. SAN SEBASTIAN', '34', 1),
('127', 'CM. CAGUA', '35', 1),
('128', 'BELLA VISTA', '35', 1),
('129', 'CM. BARBACOAS', '36', 1),
('13', 'EL RECREO', '1', 1),
('130', 'SAN FRANCISCO DE CARA', '36', 1),
('131', 'TAGUAY', '36', 1),
('132', 'LAS PEÑITAS', '36', 1),
('133', 'CM. VILLA DE CURA', '37', 1),
('134', 'MAGDALENO', '37', 1),
('135', 'SAN FRANCISCO DE ASIS', '37', 1),
('136', 'VALLES DE TUCUTUNEMO', '37', 1),
('137', 'PQ AUGUSTO MIJARES', '37', 1),
('138', 'CM. PALO NEGRO', '38', 1),
('139', 'SAN MARTIN DE PORRES', '38', 1),
('14', 'EL VALLE', '1', 1),
('140', 'CM. SANTA CRUZ', '39', 1),
('141', 'CM. SAN MATEO', '40', 1),
('142', 'CM. LAS TEJERIAS', '41', 1),
('143', 'TIARA', '41', 1),
('144', 'CM. EL LIMON', '42', 1),
('145', 'CA A DE AZUCAR', '42', 1),
('146', 'CM. COLONIA TOVAR', '43', 1),
('147', 'CM. CAMATAGUA', '44', 1),
('148', 'CARMEN DE CURA', '44', 1),
('149', 'CM. EL CONSEJO', '45', 1),
('15', 'LA VEGA', '1', 1),
('150', 'CM. SANTA RITA', '46', 1),
('151', 'FRANCISCO DE MIRANDA', '46', 1),
('152', 'MONS FELICIANO G', '46', 1),
('153', 'OCUMARE DE LA COSTA', '47', 1),
('154', 'ARISMENDI', '48', 1),
('155', 'GUADARRAMA', '48', 1),
('156', 'LA UNION', '48', 1),
('157', 'SAN ANTONIO', '48', 1),
('158', 'ALFREDO A LARRIVA', '49', 1),
('159', 'BARINAS', '49', 1),
('16', 'MACARAO', '1', 1),
('160', 'SAN SILVESTRE', '49', 1),
('161', 'SANTA INES', '49', 1),
('162', 'SANTA LUCIA', '49', 1),
('163', 'TORUNOS', '49', 1),
('164', 'EL CARMEN', '49', 1),
('165', 'ROMULO BETANCOURT', '49', 1),
('166', 'CORAZON DE JESUS', '49', 1),
('167', 'RAMON I MENDEZ', '49', 1),
('168', 'ALTO BARINAS', '49', 1),
('169', 'MANUEL P FAJARDO', '49', 1),
('17', 'CARICUAO', '1', 1),
('170', 'JUAN A RODRIGUEZ D', '49', 1),
('171', 'DOMINGA ORTIZ P', '49', 1),
('172', 'ALTAMIRA', '50', 1),
('173', 'BARINITAS', '50', 1),
('174', 'CALDERAS', '50', 1),
('175', 'SANTA BARBARA', '51', 1),
('176', 'JOSE IGNACIO DEL PUMAR', '51', 1),
('177', 'RAMON IGNACIO MENDEZ', '51', 1),
('178', 'PEDRO BRICEÑO MENDEZ', '51', 1),
('179', 'EL REAL', '52', 1),
('18', 'EL JUNQUITO', '1', 1),
('180', 'LA LUZ', '52', 1),
('181', 'OBISPOS', '52', 1),
('182', 'LOS GUASIMITOS', '52', 1),
('183', 'CIUDAD BOLIVIA', '53', 1),
('184', 'IGNACIO BRICEÑO', '53', 1),
('185', 'PAEZ', '53', 1),
('186', 'JOSE FELIX RIBAS', '53', 1),
('187', 'DOLORES', '54', 1),
('188', 'LIBERTAD', '54', 1),
('189', 'PALACIO FAJARDO', '54', 1),
('19', 'COCHE', '1', 1),
('190', 'SANTA ROSA', '54', 1),
('191', 'CIUDAD DE NUTRIAS', '55', 1),
('192', 'EL REGALO', '55', 1),
('193', 'PUERTO DE NUTRIAS', '55', 1),
('194', 'SANTA CATALINA', '55', 1),
('195', 'RODRIGUEZ DOMINGUEZ', '56', 1),
('196', 'SABANETA', '56', 1),
('197', 'TICOPORO', '57', 1),
('198', 'NICOLAS PULIDO', '57', 1),
('199', 'ANDRES BELLO', '57', 1),
('2', 'CANDELARIA', '1', 1),
('20', 'SAN PEDRO', '1', 1),
('200', 'BARRANCAS', '58', 1),
('201', 'EL SOCORRO', '58', 1),
('202', 'MASPARRITO', '58', 1),
('203', 'EL CANTON', '59', 1),
('204', 'SANTA CRUZ DE GUACAS', '59', 1),
('205', 'PUERTO VIVAS', '59', 1),
('206', 'SIMON BOLIVAR', '60', 1),
('207', 'ONCE DE ABRIL', '60', 1),
('208', 'VISTA AL SOL', '60', 1),
('209', 'CHIRICA', '60', 1),
('21', 'SAN BERNARDINO', '1', 1),
('210', 'DALLA COSTA', '60', 1),
('211', 'CACHAMAY', '60', 1),
('212', 'UNIVERSIDAD', '60', 1),
('213', 'UNARE', '60', 1),
('214', 'YOCOIMA', '60', 1),
('215', 'POZO VERDE', '60', 1),
('216', 'CM. CAICARA DEL ORINOCO', '61', 1),
('217', 'ASCENSION FARRERAS', '61', 1),
('218', 'ALTAGRACIA', '61', 1),
('219', 'LA URBANA', '61', 1),
('22', 'EL PARAISO', '1', 1),
('220', 'GUANIAMO', '61', 1),
('221', 'PIJIGUAOS', '61', 1),
('222', 'CATEDRAL', '62', 1),
('223', 'AGUA SALADA', '62', 1),
('224', 'LA SABANITA', '62', 1),
('225', 'VISTA HERMOSA', '62', 1),
('226', 'MARHUANTA', '62', 1),
('227', 'JOSE ANTONIO PAEZ', '62', 1),
('228', 'ORINOCO', '62', 1),
('229', 'PANAPANA', '62', 1),
('23', 'ANACO', '2', 1),
('230', 'ZEA', '62', 1),
('231', 'CM. UPATA', '63', 1),
('232', 'ANDRES ELOY BLANCO', '63', 1),
('233', 'PEDRO COVA', '63', 1),
('234', 'CM. GUASIPATI', '64', 1),
('235', 'SALOM', '64', 1),
('236', 'CM. MARIPA', '65', 1),
('237', 'ARIPAO', '65', 1),
('238', 'LAS MAJADAS', '65', 1),
('239', 'MOITACO', '65', 1),
('24', 'SAN JOAQUIN', '2', 1),
('240', 'GUARATARO', '65', 1),
('241', 'CM. TUMEREMO', '66', 1),
('242', 'DALLA COSTA', '66', 1),
('243', 'SAN ISIDRO', '66', 1),
('244', 'CM. CIUDAD PIAR', '67', 1),
('245', 'SAN FRANCISCO', '67', 1),
('246', 'BARCELONETA', '67', 1),
('247', 'SANTA BARBARA', '67', 1),
('248', 'CM. SANTA ELENA DE UAIREN', '68', 1),
('249', 'IKABARU', '68', 1),
('25', 'CM. ARAGUA DE BARCELONA', '3', 1),
('250', 'CM. EL CALLAO', '69', 1),
('251', 'CM. EL PALMAR', '70', 1),
('252', 'BEJUMA', '71', 1),
('253', 'CANOABO', '71', 1),
('254', 'SIMON BOLIVAR', '71', 1),
('255', 'GUIGUE', '72', 1),
('256', 'BELEN', '72', 1),
('257', 'TACARIGUA', '72', 1),
('258', 'MARIARA', '73', 1),
('259', 'AGUAS CALIENTES', '73', 1),
('26', 'CACHIPO', '3', 1),
('260', 'GUACARA', '74', 1),
('261', 'CIUDAD ALIANZA', '74', 1),
('262', 'YAGUA', '74', 1),
('263', 'MONTALBAN', '75', 1),
('264', 'MORON', '76', 1),
('265', 'URAMA', '76', 1),
('266', 'DEMOCRACIA', '77', 1),
('267', 'FRATERNIDAD', '77', 1),
('268', 'GOAIGOAZA', '77', 1),
('269', 'JUAN JOSE FLORES', '77', 1),
('27', 'EL CARMEN', '4', 1),
('270', 'BARTOLOME SALOM', '77', 1),
('271', 'UNION', '77', 1),
('272', 'BORBURATA', '77', 1),
('273', 'PATANEMO', '77', 1),
('274', 'SAN JOAQUIN', '78', 1),
('275', 'CANDELARIA', '79', 1),
('276', 'CATEDRAL', '79', 1),
('277', 'EL SOCORRO', '79', 1),
('278', 'MIGUEL PEÑA', '79', 1),
('279', 'SAN BLAS', '79', 1),
('28', 'SAN CRISTOBAL', '4', 1),
('280', 'SAN JOSE', '79', 1),
('281', 'SANTA ROSA', '79', 1),
('282', 'RAFAEL URDANETA', '79', 1),
('283', 'NEGRO PRIMERO', '79', 1),
('284', 'MIRANDA', '80', 1),
('285', 'U LOS GUAYOS', '81', 1),
('286', 'NAGUANAGUA', '82', 1),
('287', 'URB SAN DIEGO', '83', 1),
('288', 'U TOCUYITO', '84', 1),
('289', 'U INDEPENDENCIA', '84', 1),
('29', 'BERGANTIN', '4', 1),
('290', 'COJEDES', '85', 1),
('291', 'JUAN DE MATA SUAREZ', '85', 1),
('292', 'TINAQUILLO', '86', 1),
('293', 'EL BAUL', '87', 1),
('294', 'SUCRE', '87', 1),
('295', 'EL PAO', '88', 1),
('296', 'LIBERTAD DE COJEDES', '89', 1),
('297', 'EL AMPARO', '89', 1),
('298', 'SAN CARLOS DE AUSTRIA', '90', 1),
('299', 'JUAN ANGEL BRAVO', '90', 1),
('3', 'CATEDRAL', '1', 1),
('30', 'CAIGUA', '4', 1),
('300', 'MANUEL MANRIQUE', '90', 1),
('301', 'GRL/JEFE JOSE L SILVA', '91', 1),
('302', 'MACAPO', '92', 1),
('303', 'LA AGUADITA', '92', 1),
('304', 'ROMULO GALLEGOS', '93', 1),
('305', 'SAN JUAN DE LOS CAYOS', '94', 1),
('306', 'CAPADARE', '94', 1),
('307', 'LA PASTORA', '94', 1),
('308', 'LIBERTADOR', '94', 1),
('309', 'SAN LUIS', '95', 1),
('31', 'EL PILAR', '4', 1),
('310', 'ARACUA', '95', 1),
('311', 'LA PEÑA', '95', 1),
('312', 'CAPATARIDA', '96', 1),
('313', 'BOROJO', '96', 1),
('314', 'SEQUE', '96', 1),
('315', 'ZAZARIDA', '96', 1),
('316', 'BARIRO', '96', 1),
('317', 'GUAJIRO', '96', 1),
('318', 'NORTE', '97', 1),
('319', 'CARIRUBANA', '97', 1),
('32', 'NARICUAL', '4', 1),
('320', 'PUNTA CARDON', '97', 1),
('321', 'SANTA ANA', '97', 1),
('322', 'LA VELA DE CORO', '98', 1),
('323', 'ACURIGUA', '98', 1),
('324', 'GUAIBACOA', '98', 1),
('325', 'MACORUCA', '98', 1),
('326', 'LAS CALDERAS', '98', 1),
('327', 'PEDREGAL', '99', 1),
('328', 'AGUA CLARA', '99', 1),
('329', 'AVARIA', '99', 1),
('33', 'CM. CLARINES', '5', 1),
('330', 'PIEDRA GRANDE', '99', 1),
('331', 'PURURECHE', '99', 1),
('332', 'PUEBLO NUEVO', '100', 1),
('333', 'ADICORA', '100', 1),
('334', 'BARAIVED', '100', 1),
('335', 'BUENA VISTA', '100', 1),
('336', 'JADACAQUIVA', '100', 1),
('337', 'MORUY', '100', 1),
('338', 'EL VINCULO', '100', 1),
('339', 'EL HATO', '100', 1),
('34', 'GUANAPE', '5', 1),
('340', 'ADAURE', '100', 1),
('341', 'CHURUGUARA', '101', 1),
('342', 'AGUA LARGA', '101', 1),
('343', 'INDEPENDENCIA', '101', 1),
('344', 'MAPARARI', '101', 1),
('345', 'EL PAUJI', '101', 1),
('346', 'MENE DE MAUROA', '102', 1),
('347', 'CASIGUA', '102', 1),
('348', 'SAN FELIX', '102', 1),
('349', 'SAN ANTONIO', '103', 1),
('35', 'SABANA DE UCHIRE', '5', 1),
('350', 'SAN GABRIEL', '103', 1),
('351', 'SANTA ANA', '103', 1),
('352', 'GUZMAN GUILLERMO', '103', 1),
('353', 'MITARE', '103', 1),
('354', 'SABANETA', '103', 1),
('355', 'RIO SECO', '103', 1),
('356', 'CABURE', '104', 1),
('357', 'CURIMAGUA', '104', 1),
('358', 'COLINA', '104', 1),
('359', 'TUCACAS', '105', 1),
('36', 'CM. ONOTO', '6', 1),
('360', 'BOCA DE AROA', '105', 1),
('361', 'PUERTO CUMAREBO', '106', 1),
('362', 'LA CIENAGA', '106', 1),
('363', 'LA SOLEDAD', '106', 1),
('364', 'PUEBLO CUMAREBO', '106', 1),
('365', 'ZAZARIDA', '106', 1),
('366', 'CM. DABAJURO', '107', 1),
('367', 'CHICHIRIVICHE', '108', 1),
('368', 'BOCA DE TOCUYO', '108', 1),
('369', 'TOCUYO DE LA COSTA', '108', 1),
('37', 'SAN PABLO', '6', 1),
('370', 'LOS TAQUES', '109', 1),
('371', 'JUDIBANA', '109', 1),
('372', 'PIRITU', '110', 1),
('373', 'SAN JOSE DE LA COSTA', '110', 1),
('374', 'STA.CRUZ DE BUCARAL', '111', 1),
('375', 'EL CHARAL', '111', 1),
('376', 'LAS VEGAS DEL TUY', '111', 1),
('377', 'CM. MIRIMIRE', '112', 1),
('378', 'JACURA', '113', 1),
('379', 'AGUA LINDA', '113', 1),
('38', 'CM. CANTAURA', '7', 1),
('380', 'ARAURIMA', '113', 1),
('381', 'CM. YARACAL', '114', 1),
('382', 'CM. PALMA SOLA', '115', 1),
('383', 'SUCRE', '116', 1),
('384', 'PECAYA', '116', 1),
('385', 'URUMACO', '117', 1),
('386', 'BRUZUAL', '117', 1),
('387', 'CM. TOCOPERO', '118', 1),
('388', 'VALLE DE LA PASCUA', '119', 1),
('389', 'ESPINO', '119', 1),
('39', 'LIBERTADOR', '7', 1),
('390', 'EL SOMBRERO', '120', 1),
('391', 'SOSA', '120', 1),
('392', 'CALABOZO', '121', 1),
('393', 'EL CALVARIO', '121', 1),
('394', 'EL RASTRO', '121', 1),
('395', 'GUARDATINAJAS', '121', 1),
('396', 'ALTAGRACIA DE ORITUCO', '122', 1),
('397', 'LEZAMA', '122', 1),
('398', 'LIBERTAD DE ORITUCO', '122', 1),
('399', 'SAN FCO DE MACAIRA', '122', 1),
('4', 'LA PASTORA', '1', 1),
('40', 'SANTA ROSA', '7', 1),
('400', 'SAN RAFAEL DE ORITUCO', '122', 1),
('401', 'SOUBLETTE', '122', 1),
('402', 'PASO REAL DE MACAIRA', '122', 1),
('403', 'TUCUPIDO', '123', 1),
('404', 'SAN RAFAEL DE LAYA', '123', 1),
('405', 'SAN JUAN DE LOS MORROS', '124', 1),
('406', 'PARAPARA', '124', 1),
('407', 'CANTAGALLO', '124', 1),
('408', 'ZARAZA', '125', 1),
('409', 'SAN JOSE DE UNARE', '125', 1),
('41', 'URICA', '7', 1),
('410', 'CAMAGUAN', '126', 1),
('411', 'PUERTO MIRANDA', '126', 1),
('412', 'UVERITO', '126', 1),
('413', 'SAN JOSE DE GUARIBE', '127', 1),
('414', 'LAS MERCEDES', '128', 1),
('415', 'STA RITA DE MANAPIRE', '128', 1),
('416', 'CABRUTA', '128', 1),
('417', 'EL SOCORRO', '129', 1),
('418', 'ORTIZ', '130', 1),
('419', 'SAN FCO. DE TIZNADOS', '130', 1),
('42', 'CM. SOLEDAD', '8', 1),
('420', 'SAN JOSE DE TIZNADOS', '130', 1),
('421', 'S LORENZO DE TIZNADOS', '130', 1),
('422', 'SANTA MARIA DE IPIRE', '131', 1),
('423', 'ALTAMIRA', '131', 1),
('424', 'CHAGUARAMAS', '132', 1),
('425', 'GUAYABAL', '133', 1),
('426', 'CAZORLA', '133', 1),
('427', 'FREITEZ', '134', 1),
('428', 'JOSE MARIA BLANCO', '134', 1),
('429', 'CATEDRAL', '135', 1),
('43', 'MAMO', '8', 1),
('430', 'LA CONCEPCION', '135', 1),
('431', 'SANTA ROSA', '135', 1),
('432', 'UNION', '135', 1),
('433', 'EL CUJI', '135', 1),
('434', 'TAMACA', '135', 1),
('435', 'JUAN DE VILLEGAS', '135', 1),
('436', 'AGUEDO F. ALVARADO', '135', 1),
('437', 'BUENA VISTA', '135', 1),
('438', 'JUAREZ', '135', 1),
('439', 'JUAN B RODRIGUEZ', '136', 1),
('44', 'CM. SAN MATEO', '9', 1),
('440', 'DIEGO DE LOZADA', '136', 1),
('441', 'SAN MIGUEL', '136', 1),
('442', 'CUARA', '136', 1),
('443', 'PARAISO DE SAN JOSE', '136', 1),
('444', 'TINTORERO', '136', 1),
('445', 'JOSE BERNARDO DORANTE', '136', 1),
('446', 'CRNEL. MARIANO PERAZA', '136', 1),
('447', 'BOLIVAR', '137', 1),
('448', 'ANZOATEGUI', '137', 1),
('449', 'GUARICO', '137', 1),
('45', 'EL CARITO', '9', 1),
('450', 'HUMOCARO ALTO', '137', 1),
('451', 'HUMOCARO BAJO', '137', 1),
('452', 'MORAN', '137', 1),
('453', 'HILARIO LUNA Y LUNA', '137', 1),
('454', 'LA CANDELARIA', '137', 1),
('455', 'CABUDARE', '138', 1),
('456', 'JOSE G. BASTIDAS', '138', 1),
('457', 'AGUA VIVA', '138', 1),
('458', 'TRINIDAD SAMUEL', '139', 1),
('459', 'ANTONIO DIAZ', '139', 1),
('46', 'SANTA INES', '9', 1),
('460', 'CAMACARO', '139', 1),
('461', 'CASTAÑEDA', '139', 1),
('462', 'CHIQUINQUIRA', '139', 1),
('463', 'ESPINOZA LOS MONTEROS', '139', 1),
('464', 'LARA', '139', 1),
('465', 'MANUEL MORILLO', '139', 1),
('466', 'MONTES DE OCA', '139', 1),
('467', 'TORRES', '139', 1),
('468', 'EL BLANCO', '139', 1),
('469', 'MONTA A VERDE', '139', 1),
('47', 'CM. PARIAGUAN', '10', 1),
('470', 'HERIBERTO ARROYO', '139', 1),
('471', 'LAS MERCEDES', '139', 1),
('472', 'CECILIO ZUBILLAGA', '139', 1),
('473', 'REYES VARGAS', '139', 1),
('474', 'ALTAGRACIA', '139', 1),
('475', 'SIQUISIQUE', '140', 1),
('476', 'SAN MIGUEL', '140', 1),
('477', 'XAGUAS', '140', 1),
('478', 'MOROTURO', '140', 1),
('479', 'PIO TAMAYO', '141', 1),
('48', 'ATAPIRIRE', '10', 1),
('480', 'YACAMBU', '141', 1),
('481', 'QBDA. HONDA DE GUACHE', '141', 1),
('482', 'SARARE', '142', 1),
('483', 'GUSTAVO VEGAS LEON', '142', 1),
('484', 'BURIA', '142', 1),
('485', 'GABRIEL PICON G.', '143', 1),
('486', 'HECTOR AMABLE MORA', '143', 1),
('487', 'JOSE NUCETE SARDI', '143', 1),
('488', 'PULIDO MENDEZ', '143', 1),
('489', 'PTE. ROMULO GALLEGOS', '143', 1),
('49', 'BOCA DEL PAO', '10', 1),
('490', 'PRESIDENTE BETANCOURT', '143', 1),
('491', 'PRESIDENTE PAEZ', '143', 1),
('492', 'CM. LA AZULITA', '144', 1),
('493', 'CM. CANAGUA', '145', 1),
('494', 'CAPURI', '145', 1),
('495', 'CHACANTA', '145', 1),
('496', 'EL MOLINO', '145', 1),
('497', 'GUAIMARAL', '145', 1),
('498', 'MUCUTUY', '145', 1),
('499', 'MUCUCHACHI', '145', 1),
('5', 'SAN AGUSTIN', '1', 1),
('50', 'EL PAO', '10', 1),
('500', 'ACEQUIAS', '146', 1),
('501', 'JAJI', '146', 1),
('502', 'LA MESA', '146', 1),
('503', 'SAN JOSE', '146', 1),
('504', 'MONTALBAN', '146', 1),
('505', 'MATRIZ', '146', 1),
('506', 'FERNANDEZ PEÑA', '146', 1),
('507', 'CM. GUARAQUE', '147', 1),
('508', 'MESA DE QUINTERO', '147', 1),
('509', 'RIO NEGRO', '147', 1),
('51', 'CM. MAPIRE', '11', 1),
('510', 'CM. ARAPUEY', '148', 1),
('511', 'PALMIRA', '148', 1),
('512', 'CM. TORONDOY', '149', 1),
('513', 'SAN CRISTOBAL DE T', '149', 1),
('514', 'ARIAS', '150', 1),
('515', 'SAGRARIO', '150', 1),
('516', 'MILLA', '150', 1),
('517', 'EL LLANO', '150', 1),
('518', 'JUAN RODRIGUEZ SUAREZ', '150', 1),
('519', 'JACINTO PLAZA', '150', 1),
('52', 'PIAR', '11', 1),
('520', 'DOMINGO PEÑA', '150', 1),
('521', 'GONZALO PICON FEBRES', '150', 1),
('522', 'OSUNA RODRIGUEZ', '150', 1),
('523', 'LASSO DE LA VEGA', '150', 1),
('524', 'CARACCIOLO PARRA P', '150', 1),
('525', 'MARIANO PICON SALAS', '150', 1),
('526', 'ANTONIO SPINETTI DINI', '150', 1),
('527', 'EL MORRO', '150', 1),
('528', 'LOS NEVADOS', '150', 1),
('529', 'CM. TABAY', '151', 1),
('53', 'SN DIEGO DE CABRUTICA', '11', 1),
('530', 'CM. TIMOTES', '152', 1),
('531', 'ANDRES ELOY BLANCO', '152', 1),
('532', 'PIÑANGO', '152', 1),
('533', 'LA VENTA', '152', 1),
('534', 'CM. STA CRUZ DE MORA', '153', 1),
('535', 'MESA BOLIVAR', '153', 1),
('536', 'MESA DE LAS PALMAS', '153', 1),
('537', 'CM. STA ELENA DE ARENALES', '154', 1),
('538', 'ELOY PAREDES', '154', 1),
('539', 'PQ R DE ALCAZAR', '154', 1),
('54', 'SANTA CLARA', '11', 1),
('540', 'CM. TUCANI', '155', 1),
('541', 'FLORENCIO RAMIREZ', '155', 1),
('542', 'CM. SANTO DOMINGO', '156', 1),
('543', 'LAS PIEDRAS', '156', 1),
('544', 'CM. PUEBLO LLANO', '157', 1),
('545', 'CM. MUCUCHIES', '158', 1),
('546', 'MUCURUBA', '158', 1),
('547', 'SAN RAFAEL', '158', 1),
('548', 'CACUTE', '158', 1),
('549', 'LA TOMA', '158', 1),
('55', 'UVERITO', '11', 1),
('550', 'CM. BAILADORES', '159', 1),
('551', 'GERONIMO MALDONADO', '159', 1),
('552', 'CM. LAGUNILLAS', '160', 1),
('553', 'CHIGUARA', '160', 1),
('554', 'ESTANQUES', '160', 1),
('555', 'SAN JUAN', '160', 1),
('556', 'PUEBLO NUEVO DEL SUR', '160', 1),
('557', 'LA TRAMPA', '160', 1),
('558', 'EL LLANO', '161', 1),
('559', 'TOVAR', '161', 1),
('56', 'ZUATA', '11', 1),
('560', 'EL AMPARO', '161', 1),
('561', 'SAN FRANCISCO', '161', 1),
('562', 'CM. NUEVA BOLIVIA', '162', 1),
('563', 'INDEPENDENCIA', '162', 1),
('564', 'MARIA C PALACIOS', '162', 1),
('565', 'SANTA APOLONIA', '162', 1),
('566', 'CM. STA MARIA DE CAPARO', '163', 1),
('567', 'CM. ARICAGUA', '164', 1),
('568', 'SAN ANTONIO', '164', 1),
('569', 'CM. ZEA', '165', 1),
('57', 'CM. PUERTO PIRITU', '12', 1),
('570', 'CAÑO EL TIGRE', '165', 1),
('571', 'CAUCAGUA', '166', 1),
('572', 'ARAGUITA', '166', 1),
('573', 'AREVALO GONZALEZ', '166', 1),
('574', 'CAPAYA', '166', 1),
('575', 'PANAQUIRE', '166', 1),
('576', 'RIBAS', '166', 1),
('577', 'EL CAFE', '166', 1),
('578', 'MARIZAPA', '166', 1),
('579', 'HIGUEROTE', '167', 1),
('58', 'SAN MIGUEL', '12', 1),
('580', 'CURIEPE', '167', 1),
('581', 'TACARIGUA', '167', 1),
('582', 'LOS TEQUES', '168', 1),
('583', 'CECILIO ACOSTA', '168', 1),
('584', 'PARACOTOS', '168', 1),
('585', 'SAN PEDRO', '168', 1),
('586', 'TACATA', '168', 1),
('587', 'EL JARILLO', '168', 1),
('588', 'ALTAGRACIA DE LA M', '168', 1),
('589', 'STA TERESA DEL TUY', '169', 1),
('59', 'SUCRE', '12', 1),
('590', 'EL CARTANAL', '169', 1),
('591', 'OCUMARE DEL TUY', '170', 1),
('592', 'LA DEMOCRACIA', '170', 1),
('593', 'SANTA BARBARA', '170', 1),
('594', 'RIO CHICO', '171', 1),
('595', 'EL GUAPO', '171', 1),
('596', 'TACARIGUA DE LA LAGUNA', '171', 1),
('597', 'PAPARO', '171', 1),
('598', 'SN FERNANDO DEL GUAPO', '171', 1),
('599', 'SANTA LUCIA', '172', 1),
('6', 'SAN JOSE', '1', 1),
('60', 'CM. EL TIGRE', '13', 1),
('600', 'GUARENAS', '173', 1),
('601', 'PETARE', '174', 1),
('602', 'LEONCIO MARTINEZ', '174', 1),
('603', 'CAUCAGUITA', '174', 1),
('604', 'FILAS DE MARICHES', '174', 1),
('605', 'LA DOLORITA', '174', 1),
('606', 'CUA', '175', 1),
('607', 'NUEVA CUA', '175', 1),
('608', 'GUATIRE', '176', 1),
('609', 'BOLIVAR', '176', 1),
('61', 'POZUELOS', '14', 1),
('610', 'CHARALLAVE', '177', 1),
('611', 'LAS BRISAS', '177', 1),
('612', 'SAN ANTONIO LOS ALTOS', '178', 1),
('613', 'SAN JOSE DE BARLOVENTO', '179', 1),
('614', 'CUMBO', '179', 1),
('615', 'SAN FCO DE YARE', '180', 1),
('616', 'S ANTONIO DE YARE', '180', 1),
('617', 'BARUTA', '181', 1),
('618', 'EL CAFETAL', '181', 1),
('619', 'LAS MINAS DE BARUTA', '181', 1),
('62', 'CM PTO. LA CRUZ', '14', 1),
('620', 'CARRIZAL', '182', 1),
('621', 'CHACAO', '183', 1),
('622', 'EL HATILLO', '184', 1),
('623', 'MAMPORAL', '185', 1),
('624', 'CUPIRA', '186', 1),
('625', 'MACHURUCUTO', '186', 1),
('626', 'CM. SAN ANTONIO', '187', 1),
('627', 'SAN FRANCISCO', '187', 1),
('628', 'CM. CARIPITO', '188', 1),
('629', 'CM. CARIPE', '189', 1),
('63', 'CM. SAN JOSE DE GUANIPA', '15', 1),
('630', 'TERESEN', '189', 1),
('631', 'EL GUACHARO', '189', 1),
('632', 'SAN AGUSTIN', '189', 1),
('633', 'LA GUANOTA', '189', 1),
('634', 'SABANA DE PIEDRA', '189', 1),
('635', 'CM. CAICARA', '190', 1),
('636', 'AREO', '190', 1),
('637', 'SAN FELIX', '190', 1),
('638', 'VIENTO FRESCO', '190', 1),
('639', 'CM. PUNTA DE MATA', '191', 1),
('64', 'GUANTA', '16', 1),
('640', 'EL TEJERO', '191', 1),
('641', 'CM. TEMBLADOR', '192', 1),
('642', 'TABASCA', '192', 1),
('643', 'LAS ALHUACAS', '192', 1),
('644', 'CHAGUARAMAS', '192', 1),
('645', 'EL FURRIAL', '193', 1),
('646', 'JUSEPIN', '193', 1),
('647', 'EL COROZO', '193', 1),
('648', 'SAN VICENTE', '193', 1),
('649', 'LA PICA', '193', 1),
('65', 'CHORRERON', '16', 1),
('650', 'ALTO DE LOS GODOS', '193', 1),
('651', 'BOQUERON', '193', 1),
('652', 'LAS COCUIZAS', '193', 1),
('653', 'SANTA CRUZ', '193', 1),
('654', 'SAN SIMON', '193', 1),
('655', 'CM. ARAGUA', '194', 1),
('656', 'CHAGUARAMAL', '194', 1),
('657', 'GUANAGUANA', '194', 1),
('658', 'APARICIO', '194', 1),
('659', 'TAGUAYA', '194', 1),
('66', 'PIRITU', '17', 1),
('660', 'EL PINTO', '194', 1),
('661', 'LA TOSCANA', '194', 1),
('662', 'CM. QUIRIQUIRE', '195', 1),
('663', 'CACHIPO', '195', 1),
('664', 'CM. BARRANCAS', '196', 1),
('665', 'LOS BARRANCOS DE FAJARDO', '196', 1),
('666', 'CM. AGUASAY', '197', 1),
('667', 'CM. SANTA BARBARA', '198', 1),
('668', 'CM. URACOA', '199', 1),
('669', 'CM. LA ASUNCION', '200', 1),
('67', 'SAN FRANCISCO', '17', 1),
('670', 'CM. SAN JUAN BAUTISTA', '201', 1),
('671', 'ZABALA', '201', 1),
('672', 'CM. SANTA ANA', '202', 1),
('673', 'GUEVARA', '202', 1),
('674', 'MATASIETE', '202', 1),
('675', 'BOLIVAR', '202', 1),
('676', 'SUCRE', '202', 1),
('677', 'CM. PAMPATAR', '203', 1),
('678', 'AGUIRRE', '203', 1),
('679', 'CM. JUAN GRIEGO', '204', 1),
('68', 'LECHERIAS', '18', 1),
('680', 'ADRIAN', '204', 1),
('681', 'CM. PORLAMAR', '205', 1),
('682', 'CM. BOCA DEL RIO', '206', 1),
('683', 'SAN FRANCISCO', '206', 1),
('684', 'CM. SAN PEDRO DE COCHE', '207', 1),
('685', 'VICENTE FUENTES', '207', 1),
('686', 'CM. PUNTA DE PIEDRAS', '208', 1),
('687', 'LOS BARALES', '208', 1),
('688', 'CM.LA PLAZA DE PARAGUACHI', '209', 1),
('689', 'CM. VALLE ESP SANTO', '210', 1),
('69', 'EL MORRO', '18', 1),
('690', 'FRANCISCO FAJARDO', '210', 1),
('691', 'CM. ARAURE', '211', 1),
('692', 'RIO ACARIGUA', '211', 1),
('693', 'CM. PIRITU', '212', 1),
('694', 'UVERAL', '212', 1),
('695', 'CM. GUANARE', '213', 1),
('696', 'CORDOBA', '213', 1),
('697', 'SAN JUAN GUANAGUANARE', '213', 1),
('698', 'VIRGEN DE LA COROMOTO', '213', 1),
('699', 'SAN JOSE DE LA MONTAÑA', '213', 1),
('7', 'SAN JUAN', '1', 1),
('70', 'VALLE GUANAPE', '19', 1),
('700', 'CM. GUANARITO', '214', 1),
('701', 'TRINIDAD DE LA CAPILLA', '214', 1),
('702', 'DIVINA PASTORA', '214', 1),
('703', 'CM. OSPINO', '215', 1),
('704', 'APARICION', '215', 1),
('705', 'LA ESTACION', '215', 1),
('706', 'CM. ACARIGUA', '216', 1),
('707', 'PAYARA', '216', 1),
('708', 'PIMPINELA', '216', 1),
('709', 'RAMON PERAZA', '216', 1),
('71', 'SANTA BARBARA', '19', 1),
('710', 'CM. BISCUCUY', '217', 1),
('711', 'CONCEPCION', '217', 1),
('712', 'SAN RAFAEL PALO ALZADO', '217', 1),
('713', 'UVENCIO A VELASQUEZ', '217', 1),
('714', 'SAN JOSE DE SAGUAZ', '217', 1),
('715', 'VILLA ROSA', '217', 1),
('716', 'CM. VILLA BRUZUAL', '218', 1),
('717', 'CANELONES', '218', 1),
('718', 'SANTA CRUZ', '218', 1),
('719', 'SAN ISIDRO LABRADOR', '218', 1),
('72', 'SANTA ANA', '20', 1),
('720', 'CM. CHABASQUEN', '219', 1),
('721', 'PEÑA BLANCA', '219', 1),
('722', 'CM. AGUA BLANCA', '220', 1),
('723', 'CM. PAPELON', '221', 1),
('724', 'CAÑO DELGADITO', '221', 1),
('725', 'CM. BOCONOITO', '222', 1),
('726', 'ANTOLIN TOVAR AQUINO', '222', 1),
('727', 'CM. SAN RAFAEL DE ONOTO', '223', 1),
('728', 'SANTA FE', '223', 1),
('729', 'THERMO MORLES', '223', 1),
('73', 'PUEBLO NUEVO', '20', 1),
('730', 'CM. EL PLAYON', '224', 1),
('731', 'FLORIDA', '224', 1),
('732', 'RIO CARIBE', '225', 1),
('733', 'SAN JUAN GALDONAS', '225', 1),
('734', 'PUERTO SANTO', '225', 1),
('735', 'EL MORRO DE PTO SANTO', '225', 1),
('736', 'ANTONIO JOSE DE SUCRE', '225', 1),
('737', 'EL PILAR', '226', 1),
('738', 'EL RINCON', '226', 1),
('739', 'GUARAUNOS', '226', 1),
('74', 'EL CHAPARRO', '21', 1),
('740', 'TUNAPUICITO', '226', 1),
('741', 'UNION', '226', 1),
('742', 'GRAL FCO. A VASQUEZ', '226', 1),
('743', 'SANTA CATALINA', '227', 1),
('744', 'SANTA ROSA', '227', 1),
('745', 'SANTA TERESA', '227', 1),
('746', 'BOLIVAR', '227', 1),
('747', 'MACARAPANA', '227', 1),
('748', 'YAGUARAPARO', '228', 1),
('749', 'LIBERTAD', '228', 1),
('75', 'TOMAS ALFARO CALATRAVA', '21', 1),
('750', 'PAUJIL', '228', 1),
('751', 'IRAPA', '229', 1),
('752', 'CAMPO CLARO', '229', 1),
('753', 'SORO', '229', 1),
('754', 'SAN ANTONIO DE IRAPA', '229', 1),
('755', 'MARABAL', '229', 1),
('756', 'CM. SAN ANT DEL GOLFO', '230', 1),
('757', 'CUMANACOA', '231', 1),
('758', 'ARENAS', '231', 1),
('759', 'ARICAGUA', '231', 1),
('76', 'BOCA UCHIRE', '22', 1),
('760', 'COCOLLAR', '231', 1),
('761', 'SAN FERNANDO', '231', 1),
('762', 'SAN LORENZO', '231', 1),
('763', 'CARIACO', '232', 1),
('764', 'CATUARO', '232', 1),
('765', 'RENDON', '232', 1),
('766', 'SANTA CRUZ', '232', 1),
('767', 'SANTA MARIA', '232', 1),
('768', 'ALTAGRACIA', '233', 1),
('769', 'AYACUCHO', '233', 1),
('77', 'BOCA DE CHAVEZ', '22', 1),
('770', 'SANTA INES', '233', 1),
('771', 'VALENTIN VALIENTE', '233', 1),
('772', 'SAN JUAN', '233', 1),
('773', 'GRAN MARISCAL', '233', 1),
('774', 'RAUL LEONI', '233', 1),
('775', 'GUIRIA', '234', 1),
('776', 'CRISTOBAL COLON', '234', 1),
('777', 'PUNTA DE PIEDRA', '234', 1),
('778', 'BIDEAU', '234', 1),
('779', 'MARIÑO', '235', 1),
('78', 'ACHAGUAS', '23', 1),
('780', 'ROMULO GALLEGOS', '235', 1),
('781', 'TUNAPUY', '236', 1),
('782', 'CAMPO ELIAS', '236', 1),
('783', 'SAN JOSE DE AREOCUAR', '237', 1),
('784', 'TAVERA ACOSTA', '237', 1),
('785', 'CM. MARIGUITAR', '238', 1),
('786', 'ARAYA', '239', 1),
('787', 'MANICUARE', '239', 1),
('788', 'CHACOPATA', '239', 1),
('789', 'CM. COLON', '240', 1),
('79', 'APURITO', '23', 1),
('790', 'RIVAS BERTI', '240', 1),
('791', 'SAN PEDRO DEL RIO', '240', 1),
('792', 'CM. SAN ANT DEL TACHIRA', '241', 1),
('793', 'PALOTAL', '241', 1),
('794', 'JUAN VICENTE GOMEZ', '241', 1),
('795', 'ISAIAS MEDINA ANGARIT', '241', 1),
('796', 'CM. CAPACHO NUEVO', '242', 1),
('797', 'JUAN GERMAN ROSCIO', '242', 1),
('798', 'ROMAN CARDENAS', '242', 1),
('799', 'CM. TARIBA', '243', 1),
('8', 'SANTA ROSALIA', '1', 1),
('80', 'EL YAGUAL', '23', 1),
('800', 'LA FLORIDA', '243', 1),
('801', 'AMENODORO RANGEL LAMU', '243', 1),
('802', 'CM. LA GRITA', '244', 1),
('803', 'EMILIO C. GUERRERO', '244', 1),
('804', 'MONS. MIGUEL A SALAS', '244', 1),
('805', 'CM. RUBIO', '245', 1),
('806', 'BRAMON', '245', 1),
('807', 'LA PETROLEA', '245', 1),
('808', 'QUINIMARI', '245', 1),
('809', 'CM. LOBATERA', '246', 1),
('81', 'GUACHARA', '23', 1),
('810', 'CONSTITUCION', '246', 1),
('811', 'LA CONCORDIA', '247', 1),
('812', 'PEDRO MARIA MORANTES', '247', 1),
('813', 'SN JUAN BAUTISTA', '247', 1),
('814', 'SAN SEBASTIAN', '247', 1),
('815', 'DR. FCO. ROMERO LOBO', '247', 1),
('816', 'CM. PREGONERO', '248', 1),
('817', 'CARDENAS', '248', 1),
('818', 'POTOSI', '248', 1),
('819', 'JUAN PABLO PEÑALOZA', '248', 1),
('82', 'MUCURITAS', '23', 1),
('820', 'CM. STA. ANA  DEL TACHIRA', '249', 1),
('821', 'CM. LA FRIA', '250', 1),
('822', 'BOCA DE GRITA', '250', 1),
('823', 'JOSE ANTONIO PAEZ', '250', 1),
('824', 'CM. PALMIRA', '251', 1),
('825', 'CM. MICHELENA', '252', 1),
('826', 'CM. ABEJALES', '253', 1),
('827', 'SAN JOAQUIN DE NAVAY', '253', 1),
('828', 'DORADAS', '253', 1),
('829', 'EMETERIO OCHOA', '253', 1),
('83', 'QUESERAS DEL MEDIO', '23', 1),
('830', 'CM. COLONCITO', '254', 1),
('831', 'LA PALMITA', '254', 1),
('832', 'CM. UREÑA', '255', 1),
('833', 'NUEVA ARCADIA', '255', 1),
('834', 'CM. QUENIQUEA', '256', 1),
('835', 'SAN PABLO', '256', 1),
('836', 'ELEAZAR LOPEZ CONTRERA', '256', 1),
('837', 'CM. CORDERO', '257', 1),
('838', 'CM.SAN RAFAEL DEL PINAL', '258', 1),
('839', 'SANTO DOMINGO', '258', 1),
('84', 'BRUZUAL', '24', 1),
('840', 'ALBERTO ADRIANI', '258', 1),
('841', 'CM. CAPACHO VIEJO', '259', 1),
('842', 'CIPRIANO CASTRO', '259', 1),
('843', 'MANUEL FELIPE RUGELES', '259', 1),
('844', 'CM. LA TENDIDA', '260', 1),
('845', 'BOCONO', '260', 1),
('846', 'HERNANDEZ', '260', 1),
('847', 'CM. SEBORUCO', '261', 1),
('848', 'CM. LAS MESAS', '262', 1),
('849', 'CM. SAN JOSE DE BOLIVAR', '263', 1),
('85', 'MANTECAL', '24', 1),
('850', 'CM. EL COBRE', '264', 1),
('851', 'CM. DELICIAS', '265', 1),
('852', 'CM. SAN SIMON', '266', 1),
('853', 'CM. SAN JOSECITO', '267', 1),
('854', 'CM. UMUQUENA', '268', 1),
('855', 'BETIJOQUE', '269', 1),
('856', 'JOSE G HERNANDEZ', '269', 1),
('857', 'LA PUEBLITA', '269', 1),
('858', 'EL CEDRO', '269', 1),
('859', 'BOCONO', '270', 1),
('86', 'QUINTERO', '24', 1),
('860', 'EL CARMEN', '270', 1),
('861', 'MOSQUEY', '270', 1),
('862', 'AYACUCHO', '270', 1),
('863', 'BURBUSAY', '270', 1),
('864', 'GENERAL RIVAS', '270', 1),
('865', 'MONSEÑOR JAUREGUI', '270', 1),
('866', 'RAFAEL RANGEL', '270', 1),
('867', 'SAN JOSE', '270', 1),
('868', 'SAN MIGUEL', '270', 1),
('869', 'GUARAMACAL', '270', 1),
('87', 'SAN VICENTE', '24', 1),
('870', 'LA VEGA DE GUARAMACAL', '270', 1),
('871', 'CARACHE', '271', 1),
('872', 'LA CONCEPCION', '271', 1),
('873', 'CUICAS', '271', 1),
('874', 'PANAMERICANA', '271', 1),
('875', 'SANTA CRUZ', '271', 1),
('876', 'ESCUQUE', '272', 1),
('877', 'SABANA LIBRE', '272', 1),
('878', 'LA UNION', '272', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_direc_parro_municipios`
--

CREATE TABLE IF NOT EXISTS `tbl_direc_parro_municipios` (
  `lp_municipio_id` varchar(5) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `lf_municipio_estado` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_municipio_id`),
  UNIQUE KEY `IDX_MUNICIPIO_ID` (`lp_municipio_id`),
  KEY `IDX_MUNICIPIO_ESTADO` (`lf_municipio_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_direc_parro_municipios`
--

INSERT INTO `tbl_direc_parro_municipios` (`lp_municipio_id`, `nombre`, `lf_municipio_estado`, `visibilidad`) VALUES
('1', 'LIBERTADOR', '1', 1),
('10', 'MIRANDA', '2', 1),
('100', 'FALCON', '9', 1),
('101', 'FEDERACION', '9', 1),
('102', 'MAUROA', '9', 1),
('103', 'MIRANDA', '9', 1),
('104', 'PETIT', '9', 1),
('105', 'SILVA', '9', 1),
('106', 'ZAMORA', '9', 1),
('107', 'DABAJURO', '9', 1),
('108', 'MONS. ITURRIZA', '9', 1),
('109', 'LOS TAQUES', '9', 1),
('11', 'MONAGAS', '2', 1),
('110', 'PIRITU', '9', 1),
('111', 'UNION', '9', 1),
('112', 'SAN FRANCISCO', '9', 1),
('113', 'JACURA', '9', 1),
('114', 'CACIQUE MANAURE', '9', 1),
('115', 'PALMA SOLA', '9', 1),
('116', 'SUCRE', '9', 1),
('117', 'URUMACO', '9', 1),
('118', 'TOCOPERO', '9', 1),
('119', 'INFANTE', '10', 1),
('12', 'PEÑALVER', '2', 1),
('120', 'MELLADO', '10', 1),
('121', 'MIRANDA', '10', 1),
('122', 'MONAGAS', '10', 1),
('123', 'RIBAS', '10', 1),
('124', 'ROSCIO', '10', 1),
('125', 'ZARAZA', '10', 1),
('126', 'CAMAGUAN', '10', 1),
('127', 'S JOSE DE GUARIBE', '10', 1),
('128', 'LAS MERCEDES', '10', 1),
('129', 'EL SOCORRO', '10', 1),
('13', 'SIMON RODRIGUEZ', '2', 1),
('130', 'ORTIZ', '10', 1),
('131', 'S MARIA DE IPIRE', '10', 1),
('132', 'CHAGUARAMAS', '10', 1),
('133', 'SAN GERONIMO DE G', '10', 1),
('134', 'CRESPO', '11', 1),
('135', 'IRIBARREN', '11', 1),
('136', 'JIMENEZ', '11', 1),
('137', 'MORAN', '11', 1),
('138', 'PALAVECINO', '11', 1),
('139', 'TORRES', '11', 1),
('14', 'SOTILLO', '2', 1),
('140', 'URDANETA', '11', 1),
('141', 'ANDRES E BLANCO', '11', 1),
('142', 'SIMON PLANAS', '11', 1),
('143', 'ALBERTO ADRIANI', '12', 1),
('144', 'ANDRES BELLO', '12', 1),
('145', 'ARZOBISPO CHACON', '12', 1),
('146', 'CAMPO ELIAS', '12', 1),
('147', 'GUARAQUE', '12', 1),
('148', 'JULIO CESAR SALAS', '12', 1),
('149', 'JUSTO BRICEÑO', '12', 1),
('15', 'GUANIPA', '2', 1),
('150', 'LIBERTADOR', '12', 1),
('151', 'SANTOS MARQUINA', '12', 1),
('152', 'MIRANDA', '12', 1),
('153', 'ANTONIO PINTO S.', '12', 1),
('154', 'OB. RAMOS DE LORA', '12', 1),
('155', 'CARACCIOLO PARRA', '12', 1),
('156', 'CARDENAL QUINTERO', '12', 1),
('157', 'PUEBLO LLANO', '12', 1),
('158', 'RANGEL', '12', 1),
('159', 'RIVAS DAVILA', '12', 1),
('16', 'GUANTA', '2', 1),
('160', 'SUCRE', '12', 1),
('161', 'TOVAR', '12', 1),
('162', 'TULIO F CORDERO', '12', 1),
('163', 'PADRE NOGUERA', '12', 1),
('164', 'ARICAGUA', '12', 1),
('165', 'ZEA', '12', 1),
('166', 'ACEVEDO', '13', 1),
('167', 'BRION', '13', 1),
('168', 'GUAICAIPURO', '13', 1),
('169', 'INDEPENDENCIA', '13', 1),
('17', 'PIRITU', '2', 1),
('170', 'LANDER', '13', 1),
('171', 'PAEZ', '13', 1),
('172', 'PAZ CASTILLO', '13', 1),
('173', 'PLAZA', '13', 1),
('174', 'SUCRE', '13', 1),
('175', 'URDANETA', '13', 1),
('176', 'ZAMORA', '13', 1),
('177', 'CRISTOBAL ROJAS', '13', 1),
('178', 'LOS SALIAS', '13', 1),
('179', 'ANDRES BELLO', '13', 1),
('18', 'M.L/DIEGO BAUTISTA U', '2', 1),
('180', 'SIMON BOLIVAR', '13', 1),
('181', 'BARUTA', '13', 1),
('182', 'CARRIZAL', '13', 1),
('183', 'CHACAO', '13', 1),
('184', 'EL HATILLO', '13', 1),
('185', 'BUROZ', '13', 1),
('186', 'PEDRO GUAL', '13', 1),
('187', 'ACOSTA', '14', 1),
('188', 'BOLIVAR', '14', 1),
('189', 'CARIPE', '14', 1),
('19', 'CARVAJAL', '2', 1),
('190', 'CEDEÑO', '14', 1),
('191', 'EZEQUIEL ZAMORA', '14', 1),
('192', 'LIBERTADOR', '14', 1),
('193', 'MATURIN', '14', 1),
('194', 'PIAR', '14', 1),
('195', 'PUNCERES', '14', 1),
('196', 'SOTILLO', '14', 1),
('197', 'AGUASAY', '14', 1),
('198', 'SANTA BARBARA', '14', 1),
('199', 'URACOA', '14', 1),
('2', 'ANACO', '2', 1),
('20', 'SANTA ANA', '2', 1),
('200', 'ARISMENDI', '15', 1),
('201', 'DIAZ', '15', 1),
('202', 'GOMEZ', '15', 1),
('203', 'MANEIRO', '15', 1),
('204', 'MARCANO', '15', 1),
('205', 'MARIÑO', '15', 1),
('206', 'PENIN. DE MACANAO', '15', 1),
('207', 'VILLALBA(I.COCHE)', '15', 1),
('208', 'TUBORES', '15', 1),
('209', 'ANTOLIN DEL CAMPO', '15', 1),
('21', 'MC GREGOR', '2', 1),
('210', 'GARCIA', '15', 1),
('211', 'ARAURE', '16', 1),
('212', 'ESTELLER', '16', 1),
('213', 'GUANARE', '16', 1),
('214', 'GUANARITO', '16', 1),
('215', 'OSPINO', '16', 1),
('216', 'PAEZ', '16', 1),
('217', 'SUCRE', '16', 1),
('218', 'TUREN', '16', 1),
('219', 'M.JOSE V DE UNDA', '16', 1),
('22', 'S JUAN CAPISTRANO', '2', 1),
('220', 'AGUA BLANCA', '16', 1),
('221', 'PAPELON', '16', 1),
('222', 'GENARO BOCONOITO', '16', 1),
('223', 'S RAFAEL DE ONOTO', '16', 1),
('224', 'SANTA ROSALIA', '16', 1),
('225', 'ARISMENDI', '17', 1),
('226', 'BENITEZ', '17', 1),
('227', 'BERMUDEZ', '17', 1),
('228', 'CAJIGAL', '17', 1),
('229', 'MARIÑO', '17', 1),
('23', 'ACHAGUAS', '3', 1),
('230', 'MEJIA', '17', 1),
('231', 'MONTES', '17', 1),
('232', 'RIBERO', '17', 1),
('233', 'SUCRE', '17', 1),
('234', 'VALDEZ', '17', 1),
('235', 'ANDRES E BLANCO', '17', 1),
('236', 'LIBERTADOR', '17', 1),
('237', 'ANDRES MATA', '17', 1),
('238', 'BOLIVAR', '17', 1),
('239', 'CRUZ S ACOSTA', '17', 1),
('24', 'MUÑOZ', '3', 1),
('240', 'AYACUCHO', '18', 1),
('241', 'BOLIVAR', '18', 1),
('242', 'INDEPENDENCIA', '18', 1),
('243', 'CARDENAS', '18', 1),
('244', 'JAUREGUI', '18', 1),
('245', 'JUNIN', '18', 1),
('246', 'LOBATERA', '18', 1),
('247', 'SAN CRISTOBAL', '18', 1),
('248', 'URIBANTE', '18', 1),
('249', 'CORDOBA', '18', 1),
('25', 'PAEZ', '3', 1),
('250', 'GARCIA DE HEVIA', '18', 1),
('251', 'GUASIMOS', '18', 1),
('252', 'MICHELENA', '18', 1),
('253', 'LIBERTADOR', '18', 1),
('254', 'PANAMERICANO', '18', 1),
('255', 'PEDRO MARIA UREÑA', '18', 1),
('256', 'SUCRE', '18', 1),
('257', 'ANDRES BELLO', '18', 1),
('258', 'FERNANDEZ FEO', '18', 1),
('259', 'LIBERTAD', '18', 1),
('26', 'PEDRO CAMEJO', '3', 1),
('260', 'SAMUEL MALDONADO', '18', 1),
('261', 'SEBORUCO', '18', 1),
('262', 'ANTONIO ROMULO C', '18', 1),
('263', 'FCO DE MIRANDA', '18', 1),
('264', 'JOSE MARIA VARGA', '18', 1),
('265', 'RAFAEL URDANETA', '18', 1),
('266', 'SIMON RODRIGUEZ', '18', 1),
('267', 'TORBES', '18', 1),
('268', 'SAN JUDAS TADEO', '18', 1),
('269', 'RAFAEL RANGEL', '19', 1),
('27', 'ROMULO GALLEGOS', '3', 1),
('270', 'BOCONO', '19', 1),
('271', 'CARACHE', '19', 1),
('272', 'ESCUQUE', '19', 1),
('273', 'TRUJILLO', '19', 1),
('274', 'URDANETA', '19', 1),
('275', 'VALERA', '19', 1),
('276', 'CANDELARIA', '19', 1),
('277', 'MIRANDA', '19', 1),
('278', 'MONTE CARMELO', '19', 1),
('279', 'MOTATAN', '19', 1),
('28', 'SAN FERNANDO', '3', 1),
('280', 'PAMPAN', '19', 1),
('281', 'S RAFAEL CARVAJAL', '19', 1),
('282', 'SUCRE', '19', 1),
('283', 'ANDRES BELLO', '19', 1),
('284', 'BOLIVAR', '19', 1),
('285', 'JOSE F M CAÑIZAL', '19', 1),
('286', 'JUAN V CAMPO ELI', '19', 1),
('287', 'LA CEIBA', '19', 1),
('288', 'PAMPANITO', '19', 1),
('289', 'BOLIVAR', '20', 1),
('29', 'BIRUACA', '3', 1),
('290', 'BRUZUAL', '20', 1),
('291', 'NIRGUA', '20', 1),
('292', 'SAN FELIPE', '20', 1),
('293', 'SUCRE', '20', 1),
('294', 'URACHICHE', '20', 1),
('295', 'PEÑA', '20', 1),
('296', 'JOSE ANTONIO PAEZ', '20', 1),
('297', 'LA TRINIDAD', '20', 1),
('298', 'COCOROTE', '20', 1),
('299', 'INDEPENDENCIA', '20', 1),
('3', 'ARAGUA', '2', 1),
('30', 'GIRARDOT', '4', 1),
('300', 'ARISTIDES BASTID', '20', 1),
('301', 'MANUEL MONGE', '20', 1),
('302', 'VEROES', '20', 1),
('303', 'BARALT', '21', 1),
('304', 'SANTA RITA', '21', 1),
('305', 'COLON', '21', 1),
('306', 'MARA', '21', 1),
('307', 'MARACAIBO', '21', 1),
('308', 'MIRANDA', '21', 1),
('309', 'PAEZ', '21', 1),
('31', 'SANTIAGO MARIÑO', '4', 1),
('310', 'MACHIQUES DE P', '21', 1),
('311', 'SUCRE', '21', 1),
('312', 'LA CAÑADA DE U.', '21', 1),
('313', 'LAGUNILLAS', '21', 1),
('314', 'CATATUMBO', '21', 1),
('315', 'M/ROSARIO DE PERIJA', '21', 1),
('316', 'CABIMAS', '21', 1),
('317', 'VALMORE RODRIGUEZ', '21', 1),
('318', 'JESUS E LOSSADA', '21', 1),
('319', 'ALMIRANTE P', '21', 1),
('32', 'JOSE FELIX RIVAS', '4', 1),
('320', 'SAN FRANCISCO', '21', 1),
('321', 'JESUS M SEMPRUN', '21', 1),
('322', 'FRANCISCO J PULG', '21', 1),
('323', 'SIMON BOLIVAR', '21', 1),
('324', 'ATURES', '22', 1),
('325', 'ATABAPO', '22', 1),
('326', 'MAROA', '22', 1),
('327', 'RIO NEGRO', '22', 1),
('328', 'AUTANA', '22', 1),
('329', 'MANAPIARE', '22', 1),
('33', 'SAN CASIMIRO', '4', 1),
('330', 'ALTO ORINOCO', '22', 1),
('331', 'TUCUPITA', '23', 1),
('332', 'PEDERNALES', '23', 1),
('333', 'ANTONIO DIAZ', '23', 1),
('334', 'CASACOIMA', '23', 1),
('335', 'VARGAS', '24', 1),
('34', 'SAN SEBASTIAN', '4', 1),
('35', 'SUCRE', '4', 1),
('36', 'URDANETA', '4', 1),
('37', 'ZAMORA', '4', 1),
('38', 'LIBERTADOR', '4', 1),
('39', 'JOSE ANGEL LAMAS', '4', 1),
('4', 'BOLIVAR', '2', 1),
('40', 'BOLIVAR', '4', 1),
('41', 'SANTOS MICHELENA', '4', 1),
('42', 'MARIO B IRAGORRY', '4', 1),
('43', 'TOVAR', '4', 1),
('44', 'CAMATAGUA', '4', 1),
('45', 'JOSE R REVENGA', '4', 1),
('46', 'FRANCISCO LINARES A.', '4', 1),
('47', 'M.OCUMARE D LA COSTA', '4', 1),
('48', 'ARISMENDI', '5', 1),
('49', 'BARINAS', '5', 1),
('5', 'BRUZUAL', '2', 1),
('50', 'BOLIVAR', '5', 1),
('51', 'EZEQUIEL ZAMORA', '5', 1),
('52', 'OBISPOS', '5', 1),
('53', 'PEDRAZA', '5', 1),
('54', 'ROJAS', '5', 1),
('55', 'SOSA', '5', 1),
('56', 'ALBERTO ARVELO T', '5', 1),
('57', 'A JOSE DE SUCRE', '5', 1),
('58', 'CRUZ PAREDES', '5', 1),
('59', 'ANDRES E. BLANCO', '5', 1),
('6', 'CAJIGAL', '2', 1),
('60', 'CARONI', '6', 1),
('61', 'CEDEÑO', '6', 1),
('62', 'HERES', '6', 1),
('63', 'PIAR', '6', 1),
('64', 'ROSCIO', '6', 1),
('65', 'SUCRE', '6', 1),
('66', 'SIFONTES', '6', 1),
('67', 'RAUL LEONI', '6', 1),
('68', 'GRAN SABANA', '6', 1),
('69', 'EL CALLAO', '6', 1),
('7', 'FREITES', '2', 1),
('70', 'PADRE PEDRO CHIEN', '6', 1),
('71', 'BEJUMA', '7', 1),
('72', 'CARLOS ARVELO', '7', 1),
('73', 'DIEGO IBARRA', '7', 1),
('74', 'GUACARA', '7', 1),
('75', 'MONTALBAN', '7', 1),
('76', 'JUAN JOSE MORA', '7', 1),
('77', 'PUERTO CABELLO', '7', 1),
('78', 'SAN JOAQUIN', '7', 1),
('79', 'VALENCIA', '7', 1),
('8', 'INDEPENDENCIA', '2', 1),
('80', 'MIRANDA', '7', 1),
('81', 'LOS GUAYOS', '7', 1),
('82', 'NAGUANAGUA', '7', 1),
('83', 'SAN DIEGO', '7', 1),
('84', 'LIBERTADOR', '7', 1),
('85', 'ANZOATEGUI', '8', 1),
('86', 'FALCON', '8', 1),
('87', 'GIRARDOT', '8', 1),
('88', 'MP PAO SN J BAUTISTA', '8', 1),
('89', 'RICAURTE', '8', 1),
('9', 'LIBERTAD', '2', 1),
('90', 'SAN CARLOS', '8', 1),
('91', 'TINACO', '8', 1),
('92', 'LIMA BLANCO', '8', 1),
('93', 'ROMULO GALLEGOS', '8', 1),
('94', 'ACOSTA', '9', 1),
('95', 'BOLIVAR', '9', 1),
('96', 'BUCHIVACOA', '9', 1),
('97', 'CARIRUBANA', '9', 1),
('98', 'COLINA', '9', 1),
('99', 'DEMOCRACIA', '9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_direc_parro_munic_estados`
--

CREATE TABLE IF NOT EXISTS `tbl_direc_parro_munic_estados` (
  `lp_estado_id` varchar(5) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `lf_estado_pais` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_estado_id`),
  UNIQUE KEY `IDX_ESTADO_ID` (`lp_estado_id`),
  KEY `IDX_ESTADO_PAIS` (`lf_estado_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_direc_parro_munic_estados`
--

INSERT INTO `tbl_direc_parro_munic_estados` (`lp_estado_id`, `nombre`, `lf_estado_pais`, `visibilidad`) VALUES
('1', 'DTTO. CAPITAL', 'VENVE', 1),
('10', 'GUARICO', 'VENVE', 1),
('11', 'LARA', 'VENVE', 1),
('12', 'MERIDA', 'VENVE', 1),
('13', 'MIRANDA', 'VENVE', 1),
('14', 'MONAGAS', 'VENVE', 1),
('15', 'NUEVA ESPARTA', 'VENVE', 1),
('16', 'PORTUGUESA', 'VENVE', 1),
('17', 'SUCRE', 'VENVE', 1),
('18', 'TACHIRA', 'VENVE', 1),
('19', 'TRUJILLO', 'VENVE', 1),
('2', 'ANZOATEGUI', 'VENVE', 1),
('20', 'YARACUY', 'VENVE', 1),
('21', 'ZULIA', 'VENVE', 1),
('22', 'AMAZONAS', 'VENVE', 1),
('23', 'DELTA AMACURO', 'VENVE', 1),
('24', 'VARGAS', 'VENVE', 1),
('3', 'APURE', 'VENVE', 1),
('4', 'ARAGUA', 'VENVE', 1),
('5', 'BARINAS', 'VENVE', 1),
('6', 'BOLIVAR', 'VENVE', 1),
('7', 'CARABOBO', 'VENVE', 1),
('8', 'COJEDES', 'VENVE', 1),
('9', 'FALCON', 'VENVE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_direc_parro_munic_estad_paises`
--

CREATE TABLE IF NOT EXISTS `tbl_direc_parro_munic_estad_paises` (
  `lp_pais_id` varchar(5) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_pais_id`),
  UNIQUE KEY `IDX_PAIS_ID` (`lp_pais_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_direc_parro_munic_estad_paises`
--

INSERT INTO `tbl_direc_parro_munic_estad_paises` (`lp_pais_id`, `nombre`, `visibilidad`) VALUES
('VENVE', 'VENEZUELA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_direc_ptoreferencias`
--

CREATE TABLE IF NOT EXISTS `tbl_direc_ptoreferencias` (
  `lp_ptoreferencia_id` varchar(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_ptoreferencia_id`),
  UNIQUE KEY `IDX_PTOREFERENCIA_ID` (`lp_ptoreferencia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_direc_ptoreferencias`
--

INSERT INTO `tbl_direc_ptoreferencias` (`lp_ptoreferencia_id`, `nombre`, `visibilidad`) VALUES
('11111', 'URBANIZACION', 1),
('DDDDD', 'CENTRO COMERCIAL', 1),
('EEEEE', 'CALLE', 1),
('ERTYU', 'EDIFICIO', 1),
('MMNNS', 'ESTACION DEL METRO', 1),
('NBVFG', 'PARCELA', 1),
('RFGHJ', 'LOCAL', 1),
('RRREE', 'ESQUINA', 1),
('RTTTT', 'CRUCE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movimientos`
--

CREATE TABLE IF NOT EXISTS `tbl_movimientos` (
  `lp_movimiento_id` varchar(5) NOT NULL,
  `ordcompra_cliente` varchar(45) DEFAULT 'N/A',
  `lf_transacion_pedido` varchar(5) NOT NULL,
  `lf_transacion_usuario` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `usar_crea` varchar(5) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_movimiento_id`),
  UNIQUE KEY `IDX_MOVIMIENTO_ID` (`lp_movimiento_id`),
  KEY `IDX_MOVIMIENTO_PEDIDO` (`lf_transacion_pedido`),
  KEY `IDX_MOVIMIENTO_USUARIO` (`lf_transacion_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movim_facturas`
--

CREATE TABLE IF NOT EXISTS `tbl_movim_facturas` (
  `lp_factura_id` varchar(5) NOT NULL,
  `lf_factura_transacion` varchar(5) NOT NULL,
  `lf_factura_usuario` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_factura_id`),
  UNIQUE KEY `IDX_FACTURA_ID` (`lp_factura_id`),
  KEY `IDX_FACTURA_TRANSACION` (`lf_factura_transacion`),
  KEY `IDX_FACTURA_USUARIO` (`lf_factura_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movim_ordsalidas`
--

CREATE TABLE IF NOT EXISTS `tbl_movim_ordsalidas` (
  `lp_ordsalida_id` varchar(5) NOT NULL,
  `lf_ordsalida_almacen` varchar(5) NOT NULL,
  `lf_ordsalida_transacion` varchar(5) NOT NULL,
  `lo_ordsalida_direccion` varchar(5) NOT NULL,
  `lf_ordsalida_usuario` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(45) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_ordsalida_id`),
  UNIQUE KEY `IDX_ORDSALIDA_ID` (`lp_ordsalida_id`),
  KEY `IDX_ORDSALIDA_ALMACEN` (`lf_ordsalida_almacen`),
  KEY `IDX_ORDSALIDA_USUARIO` (`lf_ordsalida_usuario`),
  KEY `IDX_ORDSALIDA_TRANSACION` (`lf_ordsalida_transacion`),
  KEY `IDX_ORDSALIDA_DIRECCION` (`lo_ordsalida_direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movim_ordsa_envios`
--

CREATE TABLE IF NOT EXISTS `tbl_movim_ordsa_envios` (
  `lp_envio_id` varchar(5) NOT NULL,
  `lf_envio_ordsalida` varchar(5) NOT NULL,
  `lf_envio_vehiculo` varchar(5) NOT NULL,
  `lf_envio_usuario` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_envio_id`),
  UNIQUE KEY `IDX_ENVIO_ID` (`lp_envio_id`),
  KEY `IDX_ENVIO_USUARIO` (`lf_envio_usuario`),
  KEY `IDX_ENVIO_ORDSALIDA` (`lf_envio_ordsalida`),
  KEY `IDX_ENVIO_VEHIVULO` (`lf_envio_vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movim_ordsa_envio_vehiculo`
--

CREATE TABLE IF NOT EXISTS `tbl_movim_ordsa_envio_vehiculo` (
  `lp_vehiculo_id` varchar(5) NOT NULL,
  `lf_vehiculo_tipo` varchar(5) NOT NULL,
  `lf_vehiculo_almacen` varchar(5) NOT NULL,
  `lf_vehiculo_persona` varchar(5) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `serialcarroc` varchar(50) NOT NULL,
  `modelo` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `serialmotor` varchar(50) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `ano` int(4) NOT NULL,
  `capacicarga` int(11) NOT NULL,
  `habilitar` tinyint(1) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_vehiculo_id`),
  UNIQUE KEY `IDX_VEHICULO_ID` (`lp_vehiculo_id`),
  UNIQUE KEY `IDX_VEHICULO_PLACA` (`placa`),
  UNIQUE KEY `IDX_VEHICULO_SERIALCARROC` (`serialcarroc`),
  KEY `fk_TBL_VEHICULO_TBL_VEHICULO_PERSONALES1_idx` (`lf_vehiculo_persona`),
  KEY `fk_TBL_VEHICULO_TBL_VEHICULO_ALMACEN_idx` (`lf_vehiculo_almacen`),
  KEY `fk_TBL_VEHICULO_TBL_VEHICULO_TIPO_idx` (`lf_vehiculo_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movim_ordsa_envio_vehiculo`
--

INSERT INTO `tbl_movim_ordsa_envio_vehiculo` (`lp_vehiculo_id`, `lf_vehiculo_tipo`, `lf_vehiculo_almacen`, `lf_vehiculo_persona`, `placa`, `serialcarroc`, `modelo`, `color`, `visibilidad`, `fech_crea`, `usuar_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `serialmotor`, `marca`, `ano`, `capacicarga`, `habilitar`, `ip_crea`, `host_crea`, `host_modfca`) VALUES
('E8E8A', '98725', '9081B', '5XN2K', 'O9ILK8', 'POI876TYIUJ8', 'CHEYENNE', 'BLANCO', 1, '2014-06-03 19:37:43', '28309', '2014-06-03 19:38:08', '28309', '::1', '09876TTHJNC', 'FORD', 2010, 2055, 1, '::1', 'BCARRASCO.LAPAZ.LOCAL', 'Bcarrasco.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movim_ordsa_envio_vehic_tipo`
--

CREATE TABLE IF NOT EXISTS `tbl_movim_ordsa_envio_vehic_tipo` (
  `lp_tipo_id` varchar(5) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ejes` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_tipo_id`),
  UNIQUE KEY `lp_tipo_id_UNIQUE` (`lp_tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movim_ordsa_envio_vehic_tipo`
--

INSERT INTO `tbl_movim_ordsa_envio_vehic_tipo` (`lp_tipo_id`, `nombre`, `ejes`, `visibilidad`, `usuar_crea`, `fech_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('12556', 'Camion', '4', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('27528', 'Camion tractor con semirremolque', '2S3', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('41658', 'Camion tractor con semirremolque', '2S1', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('51655', 'Camion con remolque balanceado', '2B1', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('53824', 'Camion', '2', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('56U5O', 'Camion con remolque balanceado', '2B2', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('5Y4GY', 'Camion con remolque', '4R4', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('65153', 'Camion con remolque balanceado', '3B3', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('65453', 'Camion con remolque', '2R3', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('68453', 'Camion con remolque', '2R2', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('84556', 'Camion tractor con semirremolque', '2S2', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('98725', 'Camion', '3', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('BL3SD', 'Camion con remolque', '3R3', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('CV341', 'Camion con remolque', '3R2', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('FR655', 'Camion tractor con semirremolque', '3S1', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('K3WS', 'Camion con remolque', '4R3', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('LLS32', 'Camion con remolque', '4R2', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('PPS3W', 'Camion con remolque balanceado', '3B1', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('T5U65', 'Camion con remolque balanceado', '3B2', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('TR56H', 'Camion tractor con semirremolque', '3S2', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('UU756', 'Camion con remolque', '3R4', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('W34R7', 'Camion tractor con semirremolque', '3S3', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', ''),
('YRE64', 'Camion con remolque', '4R4', 1, '28309', '2014-05-16 15:28:17', '2014-05-16 15:28:17', '28309', '::1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedidos`
--

CREATE TABLE IF NOT EXISTS `tbl_pedidos` (
  `lp_pedido_id` varchar(5) NOT NULL,
  `condicion` text NOT NULL,
  `observacion` text,
  `descuento` double DEFAULT '0',
  `impuestos` double DEFAULT '0',
  `subtotal` double NOT NULL,
  `total` double NOT NULL,
  `lf_pedido_usuario` varchar(5) NOT NULL,
  `lf_pedido_cliente` varchar(5) NOT NULL,
  `lf_pedido_cambio` varchar(5) NOT NULL,
  `lf_pedido_statu` varchar(5) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `tiempo_entrega` date DEFAULT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_pedido_id`),
  UNIQUE KEY `IDX_PEDIDO_ID` (`lp_pedido_id`),
  KEY `IDX_PEDIDO_USUARIO` (`lf_pedido_usuario`),
  KEY `IDX_PEDIDO_CAMBIO` (`lf_pedido_cambio`),
  KEY `IDX_PEDIDO_CLIENTE` (`lf_pedido_cliente`),
  KEY `IDX_PEDIDO_STATUS` (`lf_pedido_statu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pedidos`
--

INSERT INTO `tbl_pedidos` (`lp_pedido_id`, `condicion`, `observacion`, `descuento`, `impuestos`, `subtotal`, `total`, `lf_pedido_usuario`, `lf_pedido_cliente`, `lf_pedido_cambio`, `lf_pedido_statu`, `tipo`, `tiempo_entrega`, `visibilidad`, `fech_crea`, `usuar_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('88FF2', '1.- RRRRR\r\n2.- 9999999\r\n3.- 888IIII\r\n4.- 999999\r\n', '', 2, 1, 3714.34, 3677.1966, '28309', '49A37', '3B7F2', '3FG5Y', 'Cheque', '2014-07-05', 1, '2014-07-04 15:34:31', '28309', '2014-07-04 15:34:31', '28309', '::1', 'Bcarrasco.LAPAZ.LOCAL', '::1', 'Bcarrasco.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_cotizaciones`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_cotizaciones` (
  `lp_cotizacion_id` varchar(5) NOT NULL,
  `lf_cotizacion_pedido` varchar(5) NOT NULL,
  `lf_cotizacion_usuario` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_cotizacion_id`),
  UNIQUE KEY `IDX_COTIZACION_ID` (`lp_cotizacion_id`),
  KEY `IDX_COTIZACION_PEDIDO` (`lf_cotizacion_pedido`),
  KEY `IDX_COTIZACION_USUARIO` (`lf_cotizacion_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_esperado`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_esperado` (
  `lp_esperado_id` varchar(5) NOT NULL,
  `lf_esperado_recepcion` varchar(5) NOT NULL,
  `lf_esperado_pedido` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_esperado_id`),
  UNIQUE KEY `IDX_ESPERADO_ID` (`lp_esperado_id`),
  KEY `IDX_ESPERADO_RECEPCION` (`lf_esperado_recepcion`),
  KEY `IDX_ESPERADO_PEDIDO` (`lf_esperado_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_esper_recepciones`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_esper_recepciones` (
  `lp_recepcion_id` varchar(5) NOT NULL,
  `packinglist` varchar(10) NOT NULL,
  `lf_recepcion_usuario` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_recepcion_id`),
  UNIQUE KEY `IDX_RECEPCION_ID` (`lp_recepcion_id`),
  KEY `IDX_RECEPCION_USUARIO` (`lf_recepcion_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_mudanzas`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_mudanzas` (
  `lp_mudanza` varchar(5) NOT NULL,
  `lf_mudanza_pedido` varchar(5) NOT NULL,
  `lf_mudanza_usuario` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_mudanza`),
  UNIQUE KEY `IDX_MUDANZA_ID` (`lp_mudanza`),
  KEY `IDX_MUDANZA_PEDIDO` (`lf_mudanza_pedido`),
  KEY `IDX_MUDANZA_USUARIO` (`lf_mudanza_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_ordcompras`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_ordcompras` (
  `lp_ordcompra_id` varchar(5) NOT NULL,
  `factura` varchar(10) NOT NULL,
  `lf_ordcompra_pedido` varchar(5) NOT NULL,
  `lf_ordcompra_usuario` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_ordcompra_id`),
  UNIQUE KEY `IDX_ORDCOMPRA_ID` (`lp_ordcompra_id`),
  UNIQUE KEY `IDX_ORDCOMPRA_FACTURA` (`factura`),
  KEY `IDX_ORDCOMPRA_PEDIDO` (`lf_ordcompra_pedido`),
  KEY `IDX_ORDCOMPRA_USUARIO` (`lf_ordcompra_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pedid_ordcompras`
--

INSERT INTO `tbl_pedid_ordcompras` (`lp_ordcompra_id`, `factura`, `lf_ordcompra_pedido`, `lf_ordcompra_usuario`, `visibilidad`, `usuar_crea`, `fech_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('258A8', '258A8', '88FF2', '28309', 1, '28309', '2014-07-04 15:34:31', '2014-07-04 15:34:31', '28309', '::1', 'Bcarrasco.LAPAZ.LOCAL', '::1', 'Bcarrasco.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_ordcoxprodu`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_ordcoxprodu` (
  `lp_ordcoxprodu_id` varchar(5) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `lf_ordcoxprodu_ordcompra` varchar(5) NOT NULL,
  `lf_ordcoxprodu_producto` varchar(5) NOT NULL,
  `costo` double NOT NULL,
  `descuento` double NOT NULL,
  `impuesto` double NOT NULL,
  `cantidad_recibida` int(11) NOT NULL,
  `cantidad_disponible` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `bloqueo` tinyint(1) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_ordcoxprodu_id`),
  UNIQUE KEY `IDX_ORDCOMPRAXPRODUCTO_ID` (`lp_ordcoxprodu_id`),
  KEY `IDX_ORDCOMPRA_PEDIDO` (`lf_ordcoxprodu_ordcompra`),
  KEY `IDX_PRODUCTO` (`lf_ordcoxprodu_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pedid_ordcoxprodu`
--

INSERT INTO `tbl_pedid_ordcoxprodu` (`lp_ordcoxprodu_id`, `cantidad`, `lf_ordcoxprodu_ordcompra`, `lf_ordcoxprodu_producto`, `costo`, `descuento`, `impuesto`, `cantidad_recibida`, `cantidad_disponible`, `orden`, `bloqueo`, `visibilidad`, `usuar_crea`, `fech_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('A7B87', 1, '258A8', '90D07', 1221.66, 3, 2, 0, 0, 2, 0, 1, '28309', '2014-07-04 15:34:31', '2014-07-04 15:34:31', '28309', '::1', 'Bcarrasco.LAPAZ.LOCAL', '::1', 'Bcarrasco.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_ordco_condiciones`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_ordco_condiciones` (
  `lp_condicion_id` varchar(5) NOT NULL,
  `condicion` varchar(100) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_condicion_id`),
  UNIQUE KEY `IDX_ORDCOMPRA_ID` (`lp_condicion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pedid_ordco_condiciones`
--

INSERT INTO `tbl_pedid_ordco_condiciones` (`lp_condicion_id`, `condicion`, `visibilidad`, `usuar_crea`, `fech_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('02A0C', 'RRRRR', 1, '28309', '2014-06-25 14:35:23', '2014-06-25 14:35:23', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('318AD', 'IIIII', 0, '28309', '2014-06-25 14:38:44', '2014-06-25 16:23:33', '28309', '::1', 'Bcarrasco.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('43A1D', '9999999', 1, '28309', '2014-06-27 14:39:40', '2014-06-27 14:39:40', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('B3534', '888IIII', 1, '28309', '2014-06-25 15:49:44', '2014-06-25 15:49:44', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL'),
('DE178', '999999', 1, '28309', '2014-06-25 15:45:35', '2014-06-25 15:45:35', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_pakinglist`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_pakinglist` (
  `lp_pakinglist_id` varchar(5) NOT NULL,
  `lf_pakinglist_pedido` varchar(5) DEFAULT NULL,
  `fech_entrega` datetime NOT NULL,
  `fech_emision` datetime NOT NULL,
  `numero_paking` varchar(45) NOT NULL,
  `puerto_llegada` varchar(100) NOT NULL,
  `puerto_salida` varchar(100) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `bloquear` tinyint(1) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  PRIMARY KEY (`lp_pakinglist_id`),
  UNIQUE KEY `IDX_PAKINGLIST_ID` (`lp_pakinglist_id`),
  UNIQUE KEY `IDX_PAKINGLIST_NUMERO_PAKING` (`numero_paking`),
  KEY `fk_TBL_PEDID_PAKINGLIST_TBL_PEDIDOS` (`lf_pakinglist_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_pakingxordcoproduct`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_pakingxordcoproduct` (
  `lp_pakinxordcoproduct_id` varchar(5) NOT NULL,
  `lf_pakinxordcoproduct_ordcoproduct` varchar(5) DEFAULT NULL,
  `lf_pakinxordcoproduct_pakinglist` varchar(5) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `bloquear` tinyint(1) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  PRIMARY KEY (`lp_pakinxordcoproduct_id`),
  UNIQUE KEY `IDX_PAKINXORDCOPRODUCT_ID` (`lp_pakinxordcoproduct_id`),
  KEY `fk_TBL_PEDID_PAKINXORDCPRODUCT_TBL_PEDID_ORCOXPRODU` (`lf_pakinxordcoproduct_ordcoproduct`),
  KEY `fk_TBL_PEDID_PAKINXORDCPRODUCT_PEDID_PAKINGLIST` (`lf_pakinxordcoproduct_pakinglist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid_status`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid_status` (
  `lp_status_id` varchar(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`lp_status_id`),
  UNIQUE KEY `IDX_STATUS_ID` (`lp_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pedid_status`
--

INSERT INTO `tbl_pedid_status` (`lp_status_id`, `nombre`, `descripcion`, `visibilidad`) VALUES
('12FGH', 'CERRADO', 'CERRADO', 1),
('1HJNF', 'ANULADA', 'ANULADA', 1),
('3FG5Y', 'POR REVISAR', 'OC POR REVISAR', 1),
('5TGB7', 'EN TRÁNSITO', 'EN TRÁNSITO', 1),
('93RED', 'VERIFICADO', 'VERIFICADO', 1),
('9R54E', 'APROBADA', 'OC APROBADA', 1),
('M98UD', 'POR APROBAR', 'OC POR APROBAR', 1),
('O87Y5', 'RECIBIDO', 'RECIBIDO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pedid__mudan_mudados`
--

CREATE TABLE IF NOT EXISTS `tbl_pedid__mudan_mudados` (
  `lp_mudado_id` varchar(5) NOT NULL,
  `lf_mudado_producto` varchar(5) NOT NULL,
  `lf_mudado_mudanza` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_mudado_id`),
  UNIQUE KEY `IDX_MUDADO_ID` (`lp_mudado_id`),
  KEY `IDX_MUDADO_PRODUCTO` (`lf_mudado_producto`),
  KEY `IDX_MUDADO_MUDANZA` (`lf_mudado_mudanza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prodc_opcionfijas`
--

CREATE TABLE IF NOT EXISTS `tbl_prodc_opcionfijas` (
  `lp_opcionfija_id` varchar(5) NOT NULL,
  `costo` double NOT NULL,
  `pvp` double NOT NULL,
  `lf_opcionfija_codigo` varchar(5) NOT NULL,
  `lf_opcionfija_producto` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_opcionfija_id`),
  UNIQUE KEY `IDX_OPCIONFIJA_ID` (`lp_opcionfija_id`),
  KEY `IDX_OPCIONFIJA_CODIGO` (`lf_opcionfija_codigo`),
  KEY `IDX_OPCIONFIJA_PRODUCTO` (`lf_opcionfija_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productos`
--

CREATE TABLE IF NOT EXISTS `tbl_productos` (
  `lp_producto_id` varchar(5) NOT NULL,
  `lf_producto_producto_padre` varchar(5) NOT NULL,
  `lf_producto_codigo` varchar(5) NOT NULL,
  `fijo` tinyint(1) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`lp_producto_id`),
  UNIQUE KEY `IDX_PRODUCTO_ID` (`lp_producto_id`),
  KEY `IDX_PRODUCTO_PRODUCTO` (`lf_producto_producto_padre`),
  KEY `IDX_PRODUCTO_CODIGO` (`lf_producto_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_productos`
--

INSERT INTO `tbl_productos` (`lp_producto_id`, `lf_producto_producto_padre`, `lf_producto_codigo`, `fijo`, `visibilidad`, `fech_crea`, `usuar_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`, `cantidad`) VALUES
('1C3EE', '1C3EE', '7AE55', 1, 1, '2014-06-25 21:46:18', '28309', '2014-06-25 21:46:18', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1),
('21F57', '21F57', '07F0F', 1, 1, '2014-07-04 19:33:36', '28309', '2014-07-04 19:33:36', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1),
('2B21E', '2B21E', '124CA', 1, 1, '2014-06-30 19:24:56', 'SSDFE', '2014-06-30 19:24:56', 'SSDFE', '::1', 'RDELGADO.LAPAZ.LOCAL', '::1', 'RDELGADO.LAPAZ.LOCAL', 1),
('2CE05', '5EE23', '0B921', 1, 1, '2014-07-04 16:44:25', 'D2B7D', '2014-07-04 16:44:25', 'D2B7D', '::1', 'RDELGADO.LAPAZ.LOCAL', '::1', 'RDELGADO.LAPAZ.LOCAL', 2),
('5B0B5', '5B0B5', '0B921', 1, 1, '2014-06-25 21:48:22', '28309', '2014-06-25 21:48:22', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1),
('5EE23', '5EE23', '43647', 1, 1, '2014-06-26 12:58:55', '28309', '2014-06-26 12:58:55', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1),
('73026', '73026', 'A8289', 1, 1, '2014-06-25 21:51:43', '28309', '2014-06-25 21:51:43', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1),
('8387A', '9CFF2', 'A8289', 1, 1, '2014-07-04 19:52:43', 'D2B7D', '2014-07-04 19:52:43', 'D2B7D', '::1', 'RDELGADO.LAPAZ.LOCAL', '::1', 'RDELGADO.LAPAZ.LOCAL', 6),
('90D07', '90D07', '3CFEC', 1, 1, '2014-06-25 21:50:38', '28309', '2014-06-25 21:50:38', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1),
('9C997', '90D07', '7AE55', 1, 1, '2014-07-04 18:47:23', 'D2B7D', '2014-07-04 18:47:23', 'D2B7D', '::1', 'RDELGADO.LAPAZ.LOCAL', '::1', 'RDELGADO.LAPAZ.LOCAL', 8),
('9CFF2', '9CFF2', 'C494A', 1, 1, '2014-07-04 19:52:43', 'D2B7D', '2014-07-04 19:52:43', 'D2B7D', '::1', 'RDELGADO.LAPAZ.LOCAL', '::1', 'RDELGADO.LAPAZ.LOCAL', 1),
('AA2C3', '5B0B5', '3CFEC', 1, 1, '2014-07-04 16:55:09', 'D2B7D', '2014-07-04 16:55:09', 'D2B7D', '::1', 'RDELGADO.LAPAZ.LOCAL', '::1', 'RDELGADO.LAPAZ.LOCAL', 2),
('B551D', 'C50FE', '43647', 1, 1, '2014-07-04 16:25:39', 'D2B7D', '2014-07-04 16:25:39', 'D2B7D', '::1', 'RDELGADO.LAPAZ.LOCAL', '::1', 'RDELGADO.LAPAZ.LOCAL', 7),
('C50FE', 'C50FE', 'B30C2', 1, 1, '2014-06-25 21:49:22', '28309', '2014-06-25 21:49:22', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1),
('EWWSS', 'C50FE', '07F0F', 1, 1, '2014-06-25 21:49:22', '28309', '2014-06-25 21:49:22', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1),
('XXCCX', '90D07', '07F0F', 1, 1, '2014-06-25 21:49:22', '28309', '2014-06-25 21:49:22', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', '::1', 'BCARRASCO.LAPAZ.LOCAL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produc_fvencimientos`
--

CREATE TABLE IF NOT EXISTS `tbl_produc_fvencimientos` (
  `lp_fvencimiento` varchar(5) NOT NULL,
  `nlote` varchar(30) NOT NULL,
  `fech_vencer` datetime DEFAULT '2018-06-30 16:21:29',
  `lf_fvencimiento_producto` varchar(5) NOT NULL,
  `lf_fvencimiento_ubicaion` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_fvencimiento`),
  UNIQUE KEY `IDX_FVENCIMIENTO_ID` (`lp_fvencimiento`),
  KEY `IDX_FVENCIMIENTO_PRODUCTO` (`lf_fvencimiento_producto`),
  KEY `IDX_FVENCIMIENTO_UBICACION` (`lf_fvencimiento_ubicaion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produ_cotiz_cotizados`
--

CREATE TABLE IF NOT EXISTS `tbl_produ_cotiz_cotizados` (
  `lp_cotizado_id` varchar(5) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `pvp` double NOT NULL,
  `lf_cotizado_producto` varchar(5) NOT NULL,
  `lf_cotizado_cotizacion` varchar(5) NOT NULL,
  `visibiliad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_cotizado_id`),
  UNIQUE KEY `IDX_COTIZADO_ID` (`lp_cotizado_id`),
  KEY `IDX_COTIZADO_PRODUCTO` (`lf_cotizado_producto`),
  KEY `IDX_COTIZADO_COTIZACION` (`lf_cotizado_cotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produ_cotiz_cotiz_opcfijas`
--

CREATE TABLE IF NOT EXISTS `tbl_produ_cotiz_cotiz_opcfijas` (
  `lp_opcfija_id` varchar(5) NOT NULL,
  `pvp` double NOT NULL,
  `lf_opfija_cotizado` varchar(5) NOT NULL,
  `lf_opcfija_opcionfija` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_opcfija_id`),
  UNIQUE KEY `IDX_OPCFIJA_ID` (`lp_opcfija_id`),
  KEY `IDX_OPCFIJA_COTIZADO` (`lf_opfija_cotizado`),
  KEY `IDX_OPCFIJA_OPCIONFIJA` (`lf_opcfija_opcionfija`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produ_desarmados`
--

CREATE TABLE IF NOT EXISTS `tbl_produ_desarmados` (
  `lp_desarmado_id` varchar(5) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `lf_desarmado_serial` varchar(5) DEFAULT 'N/A',
  `status` varchar(10) NOT NULL,
  `usuar_solicitante` varchar(5) NOT NULL,
  `aprobado` tinyint(1) NOT NULL,
  `usuar_aprob` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_cre` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_desarmado_id`),
  UNIQUE KEY `IDX_DESARMADO_ID` (`lp_desarmado_id`),
  KEY `IDX_DESARMADO_SERIAL` (`lf_desarmado_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produ_desar_piezas`
--

CREATE TABLE IF NOT EXISTS `tbl_produ_desar_piezas` (
  `lp_pieza_id` varchar(5) NOT NULL,
  `codigo_pieza` varchar(5) NOT NULL,
  `lf_pieza_desarmado` varchar(5) NOT NULL,
  `lf_pieza_producto` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_pieza_id`),
  UNIQUE KEY `IDX_PIEZA_ID` (`lp_pieza_id`),
  KEY `IDX_PIEZA_DESARMADO` (`lf_pieza_desarmado`),
  KEY `IDX_PIEZA_PRODUCTO` (`lf_pieza_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produ_lotes`
--

CREATE TABLE IF NOT EXISTS `tbl_produ_lotes` (
  `lp_lote_id` varchar(5) NOT NULL,
  `lf_lote_recepcion` varchar(5) NOT NULL,
  `lf_lote_producto` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_lote_id`),
  UNIQUE KEY `IDX_LOTE_ID` (`lp_lote_id`),
  KEY `IDX_LOTE_RECEPCION` (`lf_lote_recepcion`),
  KEY `IDX_LOTE_PRODUCTO` (`lf_lote_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produ_seriales`
--

CREATE TABLE IF NOT EXISTS `tbl_produ_seriales` (
  `lp_serial_id` varchar(5) NOT NULL,
  `nserial` varchar(45) NOT NULL,
  `lf_serial_producto` varchar(5) NOT NULL,
  `lf_serial_ubicacion` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` date NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` date NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_serial_id`),
  UNIQUE KEY `IDX_SERIAL_ID` (`lp_serial_id`),
  UNIQUE KEY `IDX_SERIAL_NSERIAL` (`nserial`),
  KEY `IDX_SERIAL_PRODUCTO` (`lf_serial_producto`),
  KEY `IDX_SERIAL_UBICACACION` (`lf_serial_ubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ubicaciones`
--

CREATE TABLE IF NOT EXISTS `tbl_ubicaciones` (
  `lp_ubicacion_id` varchar(5) NOT NULL,
  `coordenada` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `lf_ubicacion_producto` varchar(5) NOT NULL,
  `lf_ubicacion_almacen` varchar(5) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_ubicacion_id`),
  UNIQUE KEY `IDX_UBICACION_ID` (`lp_ubicacion_id`),
  KEY `IDX_UBICACION_PRODUCTO` (`lf_ubicacion_producto`),
  KEY `IDX_UBICACION_ALMACEN` (`lf_ubicacion_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ubica_almacenes`
--

CREATE TABLE IF NOT EXISTS `tbl_ubica_almacenes` (
  `lp_almacen_id` varchar(5) NOT NULL,
  `tipo` varchar(13) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `lf_almacen_usuario` varchar(5) NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_almacen_id`),
  UNIQUE KEY `IDX_ALMACEN_ID` (`lp_almacen_id`),
  UNIQUE KEY `IDX_ALMACEN_NOMBRE` (`nombre`),
  KEY `IDX_ALMACEN_USUARIO` (`lf_almacen_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ubica_almacenes`
--

INSERT INTO `tbl_ubica_almacenes` (`lp_almacen_id`, `tipo`, `nombre`, `lf_almacen_usuario`, `habilitado`, `visibilidad`, `fech_crea`, `usuar_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('9081B', 'PRINCIPAL', 'CENTRO SEGUROS LA PAZ', '519DD', 1, 1, '2014-06-03 10:30:41', '28309', '2014-06-27 15:19:27', 'D2B7D', '::1', 'RDELGADO.LAPAZ.LOCAL', '172.16.0.165', 'BCARRASCO.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `lp_usuario_id` varchar(5) NOT NULL,
  `lf_usuario_persona` varchar(5) NOT NULL,
  `lf_usuario_rol` varchar(5) NOT NULL,
  `alias` varchar(30) NOT NULL,
  `clave` varchar(40) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `suspender` tinyint(1) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_usuario_id`),
  UNIQUE KEY `IDX_USUARIO_ID` (`lp_usuario_id`),
  UNIQUE KEY `IDX_USUARIO_ALIAS` (`alias`),
  KEY `IDX_USUARIO_PERSONA` (`lf_usuario_persona`),
  KEY `IDX_USUARIO_ROL` (`lf_usuario_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`lp_usuario_id`, `lf_usuario_persona`, `lf_usuario_rol`, `alias`, `clave`, `visibilidad`, `usuar_crea`, `fech_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `suspender`, `host_modfca`, `ip_crea`, `host_crea`) VALUES
('1LXZ1', '5XN2K', 'QQWW1', 'JJGoes', '3dabdef330a62fa807461b67ba913871', 1, '3HNGG', '2014-04-10 16:08:07', '2014-07-02 16:16:44', '28309', '::1', 1, 'Bcarrasco.LAPAZ.LOCAL', '::1', 'RDelgado.LAPAZ.LOCAL'),
('28309', 'EAD89', 'QQWW1', 'BECarrasco', '98f6f5eb5fbf271c35037e4a60e30c7a', 1, '57452', '2014-05-06 15:28:17', '2014-06-11 19:36:11', '28309', '::1', 1, 'Bcarrasco.LAPAZ.LOCAL', '::1', 'RDelgado.LAPAZ.LOCAL'),
('519DD', 'A7BAF', 'QQWW1', 'ESCABALLERO', '6dc06aa6f1ed8b42890d534ed8c7725b', 1, '1LXZ1', '2014-05-16 10:45:55', '2014-07-02 16:16:05', '28309', '::1', 1, 'Bcarrasco.LAPAZ.LOCAL', '::1', 'RDelgado.LAPAZ.LOCAL'),
('876B6', 'A999E', '90361', 'MMMM', 'd11c83b6ed51f85110eac7e1ad787921', 1, 'SSDFE', '2014-06-23 20:50:21', '2014-06-30 18:58:28', 'D2B7D', '::1', 1, 'Cvivas.LAPAZ.LOCAL', '::1', 'RDelgado.LAPAZ.LOCAL'),
('A3F33', '04469', 'EA1D7', 'JARUIZ', '87e9837555b6337639c4b3b2c557f0e4', 1, 'SSDFE', '2014-06-04 09:42:47', '2014-06-27 21:08:07', 'D2B7D', '::1', 1, 'Cvivas.LAPAZ.LOCAL', '172.16.0.50', 'ecaballero1.lapaz.local'),
('D2B7D', '73BB2', 'QQWW1', 'CAVIVAS', '827ccb0eea8a706c4c34a16891f84e7b', 1, 'SSDFE', '2014-06-23 20:55:12', '2014-06-23 20:55:12', 'SSDFE', '::1', 1, 'RDelgado.LAPAZ.LOCAL', '::1', 'RDelgado.LAPAZ.LOCAL'),
('SSDFE', 'AS33W', 'QQWW1', 'RADelgado', '202cb962ac59075b964b07152d234b70', 1, '12', '1922-03-03 10:10:10', '2014-06-04 19:11:19', 'SSDFE', '::1', 1, 'RDelgado.LAPAZ.LOCAL', '::1', 'RDelgado.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuar_personas`
--

CREATE TABLE IF NOT EXISTS `tbl_usuar_personas` (
  `lp_persona_id` varchar(5) NOT NULL,
  `tipo_document` varchar(5) NOT NULL,
  `ndocumento` varchar(10) NOT NULL,
  `prim_nombre` varchar(15) NOT NULL,
  `seg_nombre` varchar(15) NOT NULL,
  `prim_apellido` varchar(15) NOT NULL,
  `seg_apellido` varchar(15) NOT NULL,
  `celular` varchar(13) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL DEFAULT '1',
  `usuar_crea` varchar(5) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  `nacionalidad` varchar(11) NOT NULL,
  `rif` varchar(12) DEFAULT '00000000',
  `emp_labro` varchar(50) DEFAULT 'N/A',
  `cargo` varchar(50) DEFAULT 'N/A',
  `ip_crea` varchar(15) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_persona_id`),
  UNIQUE KEY `IDX_PERSONA_ID` (`lp_persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_usuar_personas`
--

INSERT INTO `tbl_usuar_personas` (`lp_persona_id`, `tipo_document`, `ndocumento`, `prim_nombre`, `seg_nombre`, `prim_apellido`, `seg_apellido`, `celular`, `telefono`, `email`, `visibilidad`, `usuar_crea`, `fech_crea`, `fech_modfca`, `usuar_modfca`, `ip_modfca`, `host_modfca`, `nacionalidad`, `rif`, `emp_labro`, `cargo`, `ip_crea`, `host_crea`) VALUES
('04469', 'C.I', '999888', 'JUAN', 'ALBERTO', 'RUIZ', 'LOPEZ', '455-555.55.55', '555-555.55.55', 'RD@HOTMAIL.COM', 1, 'SSDFE', '2014-06-04 08:06:49', '2014-06-23 13:55:16', 'SSDFE', '::1', 'RDELGADO.LAPAZ.LOCAL', 'V', '000000000', '', '', '172.16.0.162', 'RDELGADO.LAPAZ.LOCAL'),
('25AB6', 'C.I', '555444', 'RAUL5', 'RAUL', 'PEREZ', 'PEREZ', '444-444.44.44', '333-333.33.33', 'DS@HOTMAIL.COM', 1, 'SSDFE', '2014-05-14 17:10:59', '2014-06-02 13:34:00', 'SSDFE', '172.16.0.162', 'RDELGADO.LAPAZ.LOCAL', 'V', '0000000000', '', '', '::1', ''),
('5XN2K', 'C.I', '123', 'JOHN', 'A', 'DE GOES', 'BRICEñO', '888-888.88.88', '999-999.99.99', 'JHON.GOES@CONTIMEDICA.COM', 1, 'SSDFE', '2010-04-14 15:29:03', '2014-05-30 20:23:05', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', 'V', '0000000000', ' ', ' ', '::1', 'RDELGADO.LAPAZ.LOCAL'),
('73BB2', 'C.I', '17176888', 'CHRISTIAN', 'ALEXANDER', 'VIVAS', 'SSANTIAGO', '123-454.56.46', '123-456.78.99', 'CHRISTIAN.VIVAS@CONTIMEDICA.COM', 1, 'SSDFE', '2014-06-23 20:54:59', '2014-06-23 20:54:59', 'SSDFE', '::1', 'RDELGADO.LAPAZ.LOCAL', 'V', '000000000', '', '', '::1', 'RDELGADO.LAPAZ.LOCAL'),
('A7BAF', 'C.I', '9972981', 'ENRIQUE', 'S', 'CABALLERO', 'SAINT ELLIS', '414-285.31.40', '212-822.04.77', 'ENRIQUE.CABALLERO@CONTIMEDICA.COM', 1, '1LXZ1', '2014-05-16 10:45:26', '2014-05-30 20:24:26', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', 'V', '0099729817', 'CONTINENTAL', 'GERENTE IT', '::1', 'RDELGADO.LAPAZ.LOCAL'),
('A999E', 'C.I', '70023322', 'MM', 'MM', 'MM', 'MM', '345-345.34.53', '456-121.21.54', '345@HOT.COM', 1, 'SSDFE', '2014-06-23 20:49:15', '2014-06-23 20:49:15', 'SSDFE', '::1', 'RDELGADO.LAPAZ.LOCAL', 'V', '000000000', '', '', '::1', 'RDELGADO.LAPAZ.LOCAL'),
('AS33W', 'C.I', '17146576', 'ROBERTO', 'ANTONIO', 'DELGADO', 'NIEVES', '222-222.22.22', '333-333.33.33', 'DEL@HOTMAIL.COM', 1, '12', '1922-03-03 10:10:10', '2014-05-30 20:24:44', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', 'V', '0000000023', ' ', ' ', '::1', 'RDELGADO.LAPAZ.LOCAL'),
('EAD89', 'C.I', '19453820', 'BELKIS', 'ELENA', 'CARRASCO', 'SOSA', '111-111.11.11', '888-888.88.88', 'BELKIS.CARRASCO@CONTIMEDICA.COM', 1, 'SSDFE', '2014-05-05 13:10:14', '2014-06-02 18:12:24', '28309', '::1', 'BCARRASCO.LAPAZ.LOCAL', 'V', '1111111111', ' ', ' ', '::1', 'RDELGADO.LAPAZ.LOCAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuar_roles`
--

CREATE TABLE IF NOT EXISTS `tbl_usuar_roles` (
  `lp_rol_id` varchar(5) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `visibilidad` tinyint(1) NOT NULL,
  `crear_usuar` tinyint(1) NOT NULL,
  `leer_usuar` tinyint(1) NOT NULL,
  `update_usuar` tinyint(1) NOT NULL,
  `elimin_usuar` tinyint(1) NOT NULL,
  `usuar_suspe` tinyint(1) NOT NULL,
  `crear_person` tinyint(1) NOT NULL,
  `leer_person` tinyint(1) NOT NULL,
  `update_person` tinyint(1) NOT NULL,
  `elimin_person` tinyint(1) NOT NULL,
  `crear_jerarq` tinyint(1) NOT NULL,
  `leer_jerarq` tinyint(1) NOT NULL,
  `elimin_jerarq` tinyint(1) NOT NULL,
  `leer_codigos` tinyint(1) NOT NULL,
  `update_codigo` tinyint(1) NOT NULL,
  `elimin_codigo` tinyint(1) NOT NULL,
  `crear_codigo` tinyint(1) NOT NULL,
  `crear_procompuest` tinyint(1) NOT NULL,
  `crear_rol` tinyint(1) NOT NULL,
  `update_rol` tinyint(1) NOT NULL,
  `leer_rol` tinyint(1) NOT NULL,
  `elimin_rol` tinyint(1) NOT NULL,
  `crear_moneda` tinyint(1) NOT NULL,
  `update_moneda` tinyint(1) NOT NULL,
  `elimin_moneda` tinyint(1) NOT NULL,
  `leer_moneda` tinyint(1) NOT NULL,
  `crear_cliente` tinyint(1) NOT NULL,
  `update_cliente` tinyint(1) NOT NULL,
  `elimin_cliente` tinyint(1) NOT NULL,
  `leer_cliente` tinyint(1) NOT NULL,
  `crear_almacen` tinyint(1) NOT NULL,
  `update_almacen` tinyint(1) NOT NULL,
  `elimin_almacen` tinyint(1) NOT NULL,
  `leer_almacen` tinyint(1) NOT NULL,
  `habi_almacen` tinyint(1) NOT NULL,
  `reset_pass_usuar` tinyint(1) NOT NULL,
  `crear_vehiculo` tinyint(1) NOT NULL,
  `update_vehiculo` tinyint(1) NOT NULL,
  `elimin_vehiculo` tinyint(1) NOT NULL,
  `leer_vehiculo` tinyint(1) NOT NULL,
  `incorp_vehiculo` tinyint(1) NOT NULL,
  `suspen_rol` tinyint(1) NOT NULL,
  `bloque_codigo` tinyint(1) NOT NULL,
  `admin_aparien` tinyint(1) NOT NULL,
  `admin_logo` tinyint(1) NOT NULL,
  `crear_emisor` tinyint(1) NOT NULL,
  `crear_condicion` tinyint(1) NOT NULL,
  `update_condicion` tinyint(1) NOT NULL,
  `elimin_condicion` tinyint(1) NOT NULL,
  `leer_condicion` tinyint(1) NOT NULL,
  `crear_orden_compra` tinyint(1) NOT NULL,
  `update_orden_compra` tinyint(1) NOT NULL,
  `elimin_orden_compra` tinyint(1) NOT NULL,
  `leer_orden_compra` tinyint(1) NOT NULL,
  `revisar_orden_compra` tinyint(1) NOT NULL,
  `aprobar_orden_compra` tinyint(1) NOT NULL,
  `suspender` tinyint(1) NOT NULL,
  `host_crea` varchar(50) NOT NULL,
  `ip_crea` varchar(15) NOT NULL,
  `usuar_crea` varchar(5) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `usuar_modfca` varchar(5) NOT NULL,
  `ip_modfca` varchar(15) NOT NULL,
  `fech_modfca` datetime NOT NULL,
  `host_modfca` varchar(50) NOT NULL,
  PRIMARY KEY (`lp_rol_id`),
  UNIQUE KEY `IDX_ROL_ID` (`lp_rol_id`),
  UNIQUE KEY `IDX_ROL_NOMBRE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_usuar_roles`
--

INSERT INTO `tbl_usuar_roles` (`lp_rol_id`, `nombre`, `descripcion`, `visibilidad`, `crear_usuar`, `leer_usuar`, `update_usuar`, `elimin_usuar`, `usuar_suspe`, `crear_person`, `leer_person`, `update_person`, `elimin_person`, `crear_jerarq`, `leer_jerarq`, `elimin_jerarq`, `leer_codigos`, `update_codigo`, `elimin_codigo`, `crear_codigo`, `crear_procompuest`, `crear_rol`, `update_rol`, `leer_rol`, `elimin_rol`, `crear_moneda`, `update_moneda`, `elimin_moneda`, `leer_moneda`, `crear_cliente`, `update_cliente`, `elimin_cliente`, `leer_cliente`, `crear_almacen`, `update_almacen`, `elimin_almacen`, `leer_almacen`, `habi_almacen`, `reset_pass_usuar`, `crear_vehiculo`, `update_vehiculo`, `elimin_vehiculo`, `leer_vehiculo`, `incorp_vehiculo`, `suspen_rol`, `bloque_codigo`, `admin_aparien`, `admin_logo`, `crear_emisor`, `crear_condicion`, `update_condicion`, `elimin_condicion`, `leer_condicion`, `crear_orden_compra`, `update_orden_compra`, `elimin_orden_compra`, `leer_orden_compra`, `revisar_orden_compra`, `aprobar_orden_compra`, `suspender`, `host_crea`, `ip_crea`, `usuar_crea`, `fech_crea`, `usuar_modfca`, `ip_modfca`, `fech_modfca`, `host_modfca`) VALUES
('90361', 'VISITANTE', 'VISITANTE', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'RDELGADO.LAPAZ.LOCAL', '172.16.0.162', 'SSDFE', '2014-06-03 09:13:03', 'SSDFE', '172.16.0.162', '2014-06-03 09:13:03', 'RDELGADO.LAPAZ.LOCAL'),
('EA1D7', 'DISENADOR', 'DISENADOR', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'ECABALLERO1.LAPAZ.LOCAL', '172.16.0.50', 'SSDFE', '2014-06-04 09:36:32', 'D2B7D', '::1', '2014-06-27 19:06:39', 'Cvivas.LAPAZ.LOCAL'),
('POI9I', 'ADMIN', 'ADMIN', 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '67', '67', '12', '1922-03-03 10:10:10', 'D2B7D', '::1', '2014-06-27 21:08:32', 'Cvivas.LAPAZ.LOCAL'),
('QQWW1', 'SUPER USUARIO', 'ADMINISTRADOR', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '67', '67', '12', '1922-03-03 10:10:10', 'SSDFE', '::1', '2014-07-02 14:34:15', 'RDELGADO.LAPAZ.LOCAL');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_atribxcodig`
--
ALTER TABLE `tbl_atribxcodig`
  ADD CONSTRAINT `fk_TBL_ATRIBXCODIG_TBL_ATRIBUTOS1` FOREIGN KEY (`lf_atribxcodig_atributo`) REFERENCES `tbl_atributos` (`lp_atributo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_ATRIBXCODIG_TBL_CODIGOS1` FOREIGN KEY (`lf_atribxcodig_codigo`) REFERENCES `tbl_codigos` (`lp_codigo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_atribxprodu`
--
ALTER TABLE `tbl_atribxprodu`
  ADD CONSTRAINT `fk_TBL_ATRIBXPRODU_TBL_ATRIBUTOS1` FOREIGN KEY (`lf_atribxprodu_atributo`) REFERENCES `tbl_atributos` (`lp_atributo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_ATRIBXPRODU_TBL_PRODUCTOS1` FOREIGN KEY (`lf_atribxprodu_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD CONSTRAINT `fk_TBL_CLIEN_TPEMPRESA` FOREIGN KEY (`lf_cliente_tipo`) REFERENCES `tbl_clien_tpempresas` (`lp_tpempresa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_USUAR_PERSONAS` FOREIGN KEY (`lf_cliente_persona`) REFERENCES `tbl_usuar_personas` (`lp_persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_codigos`
--
ALTER TABLE `tbl_codigos`
  ADD CONSTRAINT `fk_TBL_CODIGOS_TBL_CODIG_JERARQUIAS1` FOREIGN KEY (`lf_codigo_jerarquia`) REFERENCES `tbl_codig_jerarquias` (`lp_jerarquia_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_CODIGOS_TBL_CODIG_TIPOS1` FOREIGN KEY (`lf_codigo_tipo`) REFERENCES `tbl_codig_tipos` (`lp_tipo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_codigoxpdf`
--
ALTER TABLE `tbl_codigoxpdf`
  ADD CONSTRAINT `fk_TBL_CODIGOXPDF_TBL_CODIGOS` FOREIGN KEY (`lf_codigoxpdf_codigo`) REFERENCES `tbl_codigos` (`lp_codigo_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_CODIGOXPDF_TBL_PDF` FOREIGN KEY (`lf_codigoxpdf_pdf`) REFERENCES `tbl_codig_pdfs` (`lp_pdf_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_codig_codigbarras`
--
ALTER TABLE `tbl_codig_codigbarras`
  ADD CONSTRAINT `fk_TBL_CODIG_CODIGBARRAS_TBL_CODIGOS` FOREIGN KEY (`lf_codig_codigo_barras`) REFERENCES `tbl_codigos` (`lp_codigo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_codig_compatibilidades`
--
ALTER TABLE `tbl_codig_compatibilidades`
  ADD CONSTRAINT `fk_TBL_CODIG_COMPATIBILIDAD_TBL_CODIGOS1` FOREIGN KEY (`lf_compat_codigo_padre`) REFERENCES `tbl_codigos` (`lp_codigo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_CODIG_COMPATIBILIDAD_TBL_CODIGOS2` FOREIGN KEY (`lf_compat_codigo_hijo`) REFERENCES `tbl_codigos` (`lp_codigo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_codig_jerarquias`
--
ALTER TABLE `tbl_codig_jerarquias`
  ADD CONSTRAINT `fk_TBL_CODIG_JERARQUIAS_TBL_CODIG_JERARQUIAS1` FOREIGN KEY (`lf_jerarquia_jerarquia`) REFERENCES `tbl_codig_jerarquias` (`lp_jerarquia_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  ADD CONSTRAINT `fk_TBL_DIRECCIONES_TBL_DIRECCION_PARROQUIAS1` FOREIGN KEY (`lf_direccion_parroquia`) REFERENCES `tbl_direccion_parroquias` (`lp_parroquia_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_DIRECCIONES_TBL_DIREC_PTOREFERENCIAS1` FOREIGN KEY (`lf_direccion_ptoreferencia`) REFERENCES `tbl_direc_ptoreferencias` (`lp_ptoreferencia_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_direccion_parroquias`
--
ALTER TABLE `tbl_direccion_parroquias`
  ADD CONSTRAINT `fk_TBL_DIRECCION_PARROQUIAS_TBL_DIREC_PARRO_MUNICIPIOS1` FOREIGN KEY (`lf_parroquia_municipio`) REFERENCES `tbl_direc_parro_municipios` (`lp_municipio_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_direc_parro_municipios`
--
ALTER TABLE `tbl_direc_parro_municipios`
  ADD CONSTRAINT `fk_TBL_DIREC_PARRO_MUNICIPIOS_TBL_DIREC_PARRO_MUNIC_ESTADOS1` FOREIGN KEY (`lf_municipio_estado`) REFERENCES `tbl_direc_parro_munic_estados` (`lp_estado_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_direc_parro_munic_estados`
--
ALTER TABLE `tbl_direc_parro_munic_estados`
  ADD CONSTRAINT `fk_TBL_DIREC_PARRO_MUNIC_ESTADOS_TBL_DIREC_PARRO_MUNIC_ESTAD_1` FOREIGN KEY (`lf_estado_pais`) REFERENCES `tbl_direc_parro_munic_estad_paises` (`lp_pais_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_movimientos`
--
ALTER TABLE `tbl_movimientos`
  ADD CONSTRAINT `fk_TBL_TRANSACIONES_TBL_PEDIDOS1` FOREIGN KEY (`lf_transacion_pedido`) REFERENCES `tbl_pedidos` (`lp_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_TRANSACIONES_TBL_USUARIOS1` FOREIGN KEY (`lf_transacion_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_movim_facturas`
--
ALTER TABLE `tbl_movim_facturas`
  ADD CONSTRAINT `fk_TBL_TRANS_FACTURAS_TBL_TRANSACIONES1` FOREIGN KEY (`lf_factura_transacion`) REFERENCES `tbl_movimientos` (`lp_movimiento_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_TRANS_FACTURAS_TBL_USUARIOS1` FOREIGN KEY (`lf_factura_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_movim_ordsalidas`
--
ALTER TABLE `tbl_movim_ordsalidas`
  ADD CONSTRAINT `fk_TBL_TRANS_ORDSALIDAS_TBL_DIRECCIONES1` FOREIGN KEY (`lo_ordsalida_direccion`) REFERENCES `tbl_direcciones` (`lp_direccion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_TRANS_ORDSALIDAS_TBL_TRANSACIONES1` FOREIGN KEY (`lf_ordsalida_transacion`) REFERENCES `tbl_movimientos` (`lp_movimiento_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_TRANS_ORDSALIDAS_TBL_UBICA_ALMACENES1` FOREIGN KEY (`lf_ordsalida_almacen`) REFERENCES `tbl_ubica_almacenes` (`lp_almacen_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_TRANS_ORDSALIDAS_TBL_USUARIOS1` FOREIGN KEY (`lf_ordsalida_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_movim_ordsa_envios`
--
ALTER TABLE `tbl_movim_ordsa_envios`
  ADD CONSTRAINT `fk_TBL_TRANS_ORDSA_ENVIOS_TBL_TRANS_ORDSALIDAS1` FOREIGN KEY (`lf_envio_ordsalida`) REFERENCES `tbl_movim_ordsalidas` (`lp_ordsalida_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_TRANS_ORDSA_ENVIOS_TBL_TRANS_ORDSA_ENVIO_VEHICULO1` FOREIGN KEY (`lf_envio_vehiculo`) REFERENCES `tbl_movim_ordsa_envio_vehiculo` (`lp_vehiculo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_TRANS_ORDSA_ENVIOS_TBL_USUARIOS1` FOREIGN KEY (`lf_envio_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_movim_ordsa_envio_vehiculo`
--
ALTER TABLE `tbl_movim_ordsa_envio_vehiculo`
  ADD CONSTRAINT `fk_TBL_VEHICULO_TBL_VEHICULO_ALMACEN` FOREIGN KEY (`lf_vehiculo_almacen`) REFERENCES `tbl_ubica_almacenes` (`lp_almacen_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_VEHICULO_TBL_VEHICULO_PERSONALES1` FOREIGN KEY (`lf_vehiculo_persona`) REFERENCES `tbl_usuar_personas` (`lp_persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_VEHICULO_TBL_VEHICULO_TIPO` FOREIGN KEY (`lf_vehiculo_tipo`) REFERENCES `tbl_movim_ordsa_envio_vehic_tipo` (`lp_tipo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD CONSTRAINT `fk_TBL_PEDIDOS_TBL_CAMBIOS1` FOREIGN KEY (`lf_pedido_cambio`) REFERENCES `tbl_cambios` (`lp_cambio_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PEDIDOS_TBL_EMPRESAS1` FOREIGN KEY (`lf_pedido_cliente`) REFERENCES `tbl_clientes` (`lp_cliente_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PEDIDOS_TBL_PEDID_STATUS1` FOREIGN KEY (`lf_pedido_statu`) REFERENCES `tbl_pedid_status` (`lp_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PEDIDOS_TBL_USUARIOS1` FOREIGN KEY (`lf_pedido_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid_cotizaciones`
--
ALTER TABLE `tbl_pedid_cotizaciones`
  ADD CONSTRAINT `fk_TBL_PEDID_COTIZACIONES_TBL_PEDIDOS1` FOREIGN KEY (`lf_cotizacion_pedido`) REFERENCES `tbl_pedidos` (`lp_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PEDID_COTIZACIONES_TBL_USUARIOS1` FOREIGN KEY (`lf_cotizacion_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid_esperado`
--
ALTER TABLE `tbl_pedid_esperado`
  ADD CONSTRAINT `fk_TBL_PEDID_ESPERADO_TBL_PEDIDOS1` FOREIGN KEY (`lf_esperado_pedido`) REFERENCES `tbl_pedidos` (`lp_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PEDID_ESPERADO_TBL_PEDID_ESPER_RECEPCIONES1` FOREIGN KEY (`lf_esperado_recepcion`) REFERENCES `tbl_pedid_esper_recepciones` (`lp_recepcion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid_esper_recepciones`
--
ALTER TABLE `tbl_pedid_esper_recepciones`
  ADD CONSTRAINT `fk_TBL_PEDID_ESPER_RECEPCIONES_TBL_USUARIOS1` FOREIGN KEY (`lf_recepcion_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid_mudanzas`
--
ALTER TABLE `tbl_pedid_mudanzas`
  ADD CONSTRAINT `fk_TBL_PRODU_MUDANZAS_TBL_PEDIDOS1` FOREIGN KEY (`lf_mudanza_pedido`) REFERENCES `tbl_pedidos` (`lp_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODU_MUDANZAS_TBL_USUARIOS1` FOREIGN KEY (`lf_mudanza_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid_ordcompras`
--
ALTER TABLE `tbl_pedid_ordcompras`
  ADD CONSTRAINT `fk_TBL_PEDID_ORDCOMPRAS_TBL_PEDIDOS1` FOREIGN KEY (`lf_ordcompra_pedido`) REFERENCES `tbl_pedidos` (`lp_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PEDID_ORDCOMPRAS_TBL_USUARIOS1` FOREIGN KEY (`lf_ordcompra_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid_ordcoxprodu`
--
ALTER TABLE `tbl_pedid_ordcoxprodu`
  ADD CONSTRAINT `fk_TBL_PEDID_ORDCOXPRODU_TBL_PEDID_ORDCOMPRAS` FOREIGN KEY (`lf_ordcoxprodu_ordcompra`) REFERENCES `tbl_pedid_ordcompras` (`lp_ordcompra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PEDID_ORDCOXPRODU_TBL_PRODUCTOS` FOREIGN KEY (`lf_ordcoxprodu_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid_pakinglist`
--
ALTER TABLE `tbl_pedid_pakinglist`
  ADD CONSTRAINT `fk_TBL_PEDID_PAKINGLIST_TBL_PEDIDOS` FOREIGN KEY (`lf_pakinglist_pedido`) REFERENCES `tbl_pedidos` (`lp_pedido_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid_pakingxordcoproduct`
--
ALTER TABLE `tbl_pedid_pakingxordcoproduct`
  ADD CONSTRAINT `fk_TBL_PEDID_PAKINXORDCPRODUCT_PEDID_PAKINGLIST` FOREIGN KEY (`lf_pakinxordcoproduct_pakinglist`) REFERENCES `tbl_pedid_pakinglist` (`lp_pakinglist_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PEDID_PAKINXORDCPRODUCT_TBL_PEDID_ORCOXPRODU` FOREIGN KEY (`lf_pakinxordcoproduct_ordcoproduct`) REFERENCES `tbl_pedid_ordcoxprodu` (`lp_ordcoxprodu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_pedid__mudan_mudados`
--
ALTER TABLE `tbl_pedid__mudan_mudados`
  ADD CONSTRAINT `fk_TBL_PRODU_MUDADOS_TBL_PRODUCTOS1` FOREIGN KEY (`lf_mudado_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODU_MUDADOS_TBL_PRODU_MUDANZAS1` FOREIGN KEY (`lf_mudado_mudanza`) REFERENCES `tbl_pedid_mudanzas` (`lp_mudanza`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_prodc_opcionfijas`
--
ALTER TABLE `tbl_prodc_opcionfijas`
  ADD CONSTRAINT `fk_TBL_PRODC_OPCIONFIJAS_TBL_CODIGOS1` FOREIGN KEY (`lf_opcionfija_codigo`) REFERENCES `tbl_codigos` (`lp_codigo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODC_OPCIONFIJAS_TBL_PRODUCTOS1` FOREIGN KEY (`lf_opcionfija_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD CONSTRAINT `fk_TBL_PRODUCTOS_TBL_CODIGOS1` FOREIGN KEY (`lf_producto_codigo`) REFERENCES `tbl_codigos` (`lp_codigo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODUCTOS_TBL_PRODUCTOS1` FOREIGN KEY (`lf_producto_producto_padre`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_produc_fvencimientos`
--
ALTER TABLE `tbl_produc_fvencimientos`
  ADD CONSTRAINT `fk_TBL_PRODUC_FVENCIMIENTOS_TBL_PRODUCTOS1` FOREIGN KEY (`lf_fvencimiento_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODUC_FVENCIMIENTOS_TBL_UBICACIONES1` FOREIGN KEY (`lf_fvencimiento_ubicaion`) REFERENCES `tbl_ubicaciones` (`lp_ubicacion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_produ_cotiz_cotizados`
--
ALTER TABLE `tbl_produ_cotiz_cotizados`
  ADD CONSTRAINT `fk_TBL_PRODU_COTIZADOS_TBL_PEDID_COTIZACIONES1` FOREIGN KEY (`lf_cotizado_cotizacion`) REFERENCES `tbl_pedid_cotizaciones` (`lp_cotizacion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODU_COTIZADOS_TBL_PRODUCTOS1` FOREIGN KEY (`lf_cotizado_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_produ_cotiz_cotiz_opcfijas`
--
ALTER TABLE `tbl_produ_cotiz_cotiz_opcfijas`
  ADD CONSTRAINT `fk_TBL_PRODU_COTZ_OPCFIJAS_TBL_PRODC_OPCIONFIJAS1` FOREIGN KEY (`lf_opcfija_opcionfija`) REFERENCES `tbl_prodc_opcionfijas` (`lp_opcionfija_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODU_COTZ_OPCFIJAS_TBL_PRODU_COTIZADOS1` FOREIGN KEY (`lf_opfija_cotizado`) REFERENCES `tbl_produ_cotiz_cotizados` (`lp_cotizado_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_produ_desarmados`
--
ALTER TABLE `tbl_produ_desarmados`
  ADD CONSTRAINT `fk_TBL_PRODU_DESARMADOS_TBL_PRODU_SERIALES1` FOREIGN KEY (`lf_desarmado_serial`) REFERENCES `tbl_produ_seriales` (`lp_serial_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_produ_desar_piezas`
--
ALTER TABLE `tbl_produ_desar_piezas`
  ADD CONSTRAINT `fk_TBL_PRODU_DESAR_PIEZAS_TBL_PRODUCTOS1` FOREIGN KEY (`lf_pieza_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODU_DESAR_PIEZAS_TBL_PRODU_DESARMADOS1` FOREIGN KEY (`lf_pieza_desarmado`) REFERENCES `tbl_produ_desarmados` (`lp_desarmado_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_produ_lotes`
--
ALTER TABLE `tbl_produ_lotes`
  ADD CONSTRAINT `fk_TBL_PRODU_LOTES_TBL_PEDID_ESPER_RECEPCIONES1` FOREIGN KEY (`lf_lote_recepcion`) REFERENCES `tbl_pedid_esper_recepciones` (`lp_recepcion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODU_LOTES_TBL_PRODUCTOS1` FOREIGN KEY (`lf_lote_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_produ_seriales`
--
ALTER TABLE `tbl_produ_seriales`
  ADD CONSTRAINT `fk_TBL_PRODU_SERIALES_TBL_PRODUCTOS1` FOREIGN KEY (`lf_serial_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_PRODU_SERIALES_TBL_UBICACIONES1` FOREIGN KEY (`lf_serial_ubicacion`) REFERENCES `tbl_ubicaciones` (`lp_ubicacion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_ubicaciones`
--
ALTER TABLE `tbl_ubicaciones`
  ADD CONSTRAINT `fk_TBL_UBICACIONES_TBL_PRODUCTOS1` FOREIGN KEY (`lf_ubicacion_producto`) REFERENCES `tbl_productos` (`lp_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_UBICACIONES_TBL_UBICA_ALMACENES1` FOREIGN KEY (`lf_ubicacion_almacen`) REFERENCES `tbl_ubica_almacenes` (`lp_almacen_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_ubica_almacenes`
--
ALTER TABLE `tbl_ubica_almacenes`
  ADD CONSTRAINT `fk_TBL_UBICA_ALMACENES_TBL_USUARIOS1` FOREIGN KEY (`lf_almacen_usuario`) REFERENCES `tbl_usuarios` (`lp_usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `fk_TBL_USUARIOS_TBL_USUAR_PERSONALES1` FOREIGN KEY (`lf_usuario_persona`) REFERENCES `tbl_usuar_personas` (`lp_persona_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_USUARIOS_TBL_USUAR_ROLES` FOREIGN KEY (`lf_usuario_rol`) REFERENCES `tbl_usuar_roles` (`lp_rol_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
