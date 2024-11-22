-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2024 a las 05:12:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `super`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_compras`
--

CREATE TABLE `carrito_compras` (
  `Carfecha_hora` datetime DEFAULT NULL,
  `ClientesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito_compras`
--

INSERT INTO `carrito_compras` (`Carfecha_hora`, `ClientesID`) VALUES
('2024-09-10 18:13:05', 0),
('2024-09-09 18:13:05', 0),
('2024-09-03 18:13:49', 0),
('2024-09-02 18:13:49', 0),
('2024-09-24 18:17:02', 0),
('2024-09-04 18:17:44', 0),
('2024-09-14 18:17:44', 0),
('2024-09-15 18:18:18', 0),
('2024-08-31 18:18:18', 0),
('2024-09-09 20:36:42', 0),
('2024-08-01 20:57:24', 0),
('2024-08-02 20:57:24', 0),
('2024-08-03 20:58:01', 0),
('2024-08-04 20:58:01', 0),
('2024-08-05 20:58:27', 0),
('2024-08-06 20:58:27', 0),
('2024-08-07 20:59:26', 0),
('2024-08-08 20:59:26', 0),
('2024-08-08 20:59:55', 0),
('2024-08-09 20:59:55', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CatID` int(11) NOT NULL,
  `CatNombre` varchar(50) DEFAULT NULL,
  `Catestado` enum('Activo','Agotado') NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CatID`, `CatNombre`, `Catestado`) VALUES
(1, 'Bebidas', 'Activo'),
(2, 'Cereales', 'Activo'),
(3, 'Chocolates y Bombones', 'Activo'),
(4, 'Enlatados y conservantes', 'Activo'),
(5, 'Esparcibles', 'Activo'),
(6, 'Frutas', 'Activo'),
(7, 'Galletas', 'Activo'),
(8, 'Granos', 'Activo'),
(9, 'Hierbas', 'Activo'),
(10, 'Lácteos', 'Activo'),
(11, 'Pastas y Quinoas', 'Activo'),
(12, 'Pulpas', 'Agotado'),
(13, 'Salsas y Aderezos', 'Activo'),
(14, 'Snacks', 'Activo'),
(15, 'Verduras', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ClientesID` int(11) NOT NULL,
  `Clienombre` varchar(50) DEFAULT NULL,
  `Cliapellido` varchar(50) DEFAULT NULL,
  `Clidirec` varchar(50) DEFAULT NULL,
  `Clitel` varchar(10) DEFAULT NULL,
  `CorreoCli` varchar(50) DEFAULT NULL,
  `ContraCli` varchar(50) DEFAULT NULL,
  `Cliestado` enum('Activo','Inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ClientesID`, `Clienombre`, `Cliapellido`, `Clidirec`, `Clitel`, `CorreoCli`, `ContraCli`, `Cliestado`) VALUES
(1, 'Jimin Alexandro', 'Park Cazano', 'Calle 114 #7-67', '3115678454', 'Jimingaticomalo@gmail.com', '¬¿8È\nÄl©¼³W˜Ù¶\Zœ', 'Activo'),
(2, 'Pucharcela Anastacia', 'fomenque Mariachi', 'Calle 125 #9-02', '3158943354', 'Pucharcelabetty@gmail.com', '¹ ÝFFé|Ñ1ó4ð<:i=1q£1ªââ‚áF\nWß', 'Activo'),
(3, 'James David', 'Clavijo Torres', 'Calle 5 #5-98', '3205687845', 'jamesmor@gmail.com', 'À4ÈP˜óË‹´øú¼ÅÒ×ñÔüY)	Qùe', 'Inactivo'),
(4, 'Eliana Maria', 'Martinez Cruz', 'Carrera 4 #6-95', '3568974125', 'eligutlinda@outlook.com', 'gü«‹°\ZiàNoØ-8Å', 'Activo'),
(5, 'Martin Jungkook', 'Jeon Martinez', 'Calle 75 #8-78', '3124567658', 'jungkookm@gmail.com', 'yÿùÝ´ÝK_Óß¬šdÕ–ÿúÙŸ¤¾j¨†Úå', 'Inactivo'),
(6, 'Damian ', 'Muak', 'Calle 127 #7-05', '3145927543', 'damianmuak@outlook.com', '4Þ¹¦ú¦b»–­±', 'Activo'),
(7, 'Paula Luna', 'Campos Linares', 'Kra 4 #4-76', '3456783213', 'camposlin@gmail.com', 'æf”ãNÇHvvÙÊÅN', 'Activo'),
(8, 'David Alfonso', 'SantaFe Romero', 'calle 34 # 46', '3213456765', 'davirod@outlook.es', 'ÌVöh ‡déd1Ö«ˆ˜l', 'Activo'),
(9, 'Joan Stiven', 'Julio Castellanos', 'Av 23 #4-67', '3112421221', 'joanstiven@gmail.com', '8iÉ‹ñºÝW½ë–»žÅÒ×ñÔüY)	Qùe', 'Inactivo'),
(10, 'Juan David', 'Lopez Artunduaga', 'Av 13 #45-54', '3214325676', 'juanda@outllok.es', 'Ø¡˜ëAb8s<ðÃè¥RÝ²ÖK 6vv£ˆ›(~{\\Íà', 'Inactivo'),
(11, 'Valeria ', 'Iglesias', 'Calle 54 #65-76', '3053067008', 'vale_linda@gmail.com', 'ý‡ÁÚQð‘9–çÃx', 'Activo'),
(12, 'Juan Sebastian', 'Tovar Rodriguez', 'Calle 45 #8', '3456547898', 'juan@gmail.com', 'åºS)ÊpóçødQÛSÕúö·–ùŸÿ»EæÙ²¡¸', 'Activo'),
(13, 'Daniel', 'Galindo', 'Calle 5 #5-76', '3044056787', 'daniwini@gmail.com', 'U¦S±ó >C™žÙ|$¢', 'Activo'),
(14, 'Benjamin', 'Franklin', 'Kra 4 #4-5', '3056879065', 'benja@gmail.com', '-jÏÈ(2VåXYPÔ\Zß•j', 'Inactivo'),
(15, 'Maikol Estevan', 'Trujillo Cardenas', 'calle 100 #1-3', '3065768767', 'maikolino@outllok.es', 'õ‡Û9gíÄBSÍ¼=f', 'Activo'),
(16, 'Maria Antonieta', 'Bridgerton Federinton', 'av 2 #4-5', '3079876543', 'maridecap@gmail.com', '+\"¥¼>Sk^ŠÇ\"1È	', 'Activo'),
(17, 'Cristian David', 'Valencia Velandia', 'calle 114 # 6-78', '3103212456', 'cristianlindo@gmail.com', '÷Sàx­\"àZsÑ2Û\"ÅÒ×ñÔüY)	Qùe', 'Inactivo'),
(18, 'Yeri', 'Mua', 'calle 34 #4-5', '3456542321', 'yerimua@gmail.com', 'bÒ%½ÿì½}MØ1ÕrÌY ÅÒ×ñÔüY)	Qùe', 'Inactivo'),
(19, 'Damian David', 'Guzman Martinez', 'Av 4 #4-5', '3114567676', 'damiancito@outlook.es', 'æÈó@šâå1.ð½2ªÛµ', 'Activo'),
(20, 'Mia Daniela', 'Duran Martinez', 'av 3 #2-4', '3214536597', 'miala@gmail.com', 'žŽ¶ÃE&IgHëYz', 'Activo'),
(21, 'Danni', 'Queen', 'Calle 3 # 45-65', '3023054565', 'danniqueen@gmail.com', '¬Õ)ÐÊÑœ¾T§°Ëó', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_envio`
--

CREATE TABLE `detalle_envio` (
  `Detalle_envioID` int(11) NOT NULL,
  `EnvioID` int(11) DEFAULT NULL,
  `envio_pedido` int(11) NOT NULL,
  `envio_pedido_ClientesID` int(11) NOT NULL,
  `cantidad_Enviada` int(11) DEFAULT NULL,
  `DeEnprecio_uni` decimal(10,2) DEFAULT NULL,
  `DeEn_estado` enum('Salida','Proceso','Llegada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_envio`
--

INSERT INTO `detalle_envio` (`Detalle_envioID`, `EnvioID`, `envio_pedido`, `envio_pedido_ClientesID`, `cantidad_Enviada`, `DeEnprecio_uni`, `DeEn_estado`) VALUES
(1, 1, 2, 1, 78, 110000.00, 'Salida'),
(2, 3, 3, 5, 11, 23000.00, 'Proceso'),
(3, 4, 5, 9, 23, 40000.00, 'Llegada'),
(4, 5, 16, 9, 34, 78000.00, 'Salida'),
(5, 14, 13, 6, 12, 40000.00, 'Proceso'),
(6, 12, 3, 9, 22, 20000.00, 'Llegada'),
(7, 10, 2, 10, 1, 1000.00, 'Salida'),
(8, 15, 1, 15, 21, 21000.00, 'Proceso'),
(9, 6, 15, 6, 12, 15000.00, 'Salida'),
(10, 6, 13, 8, 43, 50000.00, 'Proceso'),
(11, 6, 3, 6, 4, 5000.00, 'Llegada'),
(12, 15, 16, 8, 9, 120000.00, 'Salida'),
(13, 20, 16, 4, 7, 80000.00, 'Proceso'),
(14, 8, 16, 8, 13, 20000.00, 'Llegada'),
(15, 6, 16, 4, 34, 200000.00, 'Salida'),
(16, 4, 2, 19, 41, 560000.00, 'Proceso'),
(17, 9, 17, 17, 2, 89000.00, 'Proceso'),
(18, 18, 11, 17, 10, 20000.00, 'Llegada'),
(19, 9, 17, 4, 3, 25000.00, 'Salida'),
(20, 1, 16, 17, 27, 70000.00, 'Proceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `detalle_pedidoID` int(11) NOT NULL,
  `PedidoID` int(11) DEFAULT NULL,
  `ProdID` int(11) DEFAULT NULL,
  `DePecantidad` int(11) DEFAULT NULL,
  `DePedprecio_uni` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`detalle_pedidoID`, `PedidoID`, `ProdID`, `DePecantidad`, `DePedprecio_uni`) VALUES
(1, 1, 1, 56, 54000.00),
(2, 12, 13, 21, 34400.00),
(3, 13, 14, 15, 32000.00),
(4, 14, 15, 1, 1000.00),
(5, 15, 16, 12, 21000.00),
(6, 17, 4, 3, 15000.00),
(7, 3, 10, 23, 56000.00),
(8, 10, 18, 4, 11000.00),
(9, 18, 5, 7, 6000.00),
(10, 10, 5, 5, 60000.00),
(11, 11, 5, 67, 90000.00),
(12, 7, 19, 10, 20000.00),
(13, 1, 1, 21, 80000.00),
(14, 3, 16, 45, 80000.00),
(15, 13, 15, 8, 16500.00),
(16, 10, 11, 9, 22000.00),
(17, 4, 13, 6, 3000.00),
(18, 8, 6, 12, 14650.00),
(19, 11, 10, 32, 68000.00),
(20, 5, 6, 4, 5000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
  `EnvioID` int(11) NOT NULL,
  `PedidoID` int(11) DEFAULT NULL,
  `pedido_ClientesID` int(11) NOT NULL,
  `Enfecha_envio` date DEFAULT NULL,
  `direc_En` varchar(50) DEFAULT NULL,
  `metodo_En` varchar(50) DEFAULT NULL,
  `costo_En` decimal(10,2) DEFAULT NULL,
  `En_estado` enum('Salida','Proceso','Llegada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `envio`
--

INSERT INTO `envio` (`EnvioID`, `PedidoID`, `pedido_ClientesID`, `Enfecha_envio`, `direc_En`, `metodo_En`, `costo_En`, `En_estado`) VALUES
(1, 1, 1, '2024-09-01', 'calle 122 # 5-6', 'PowerFull', 11000.00, 'Salida'),
(2, 15, 10, '2024-09-02', NULL, 'Calle 4 #4-4', 11000.00, 'Proceso'),
(3, 5, 12, '2024-09-03', 'Avenida 45 # 4-5', 'Power Full', 34000.00, 'Llegada'),
(4, 13, 20, '2024-09-04', 'Kra 3 #4-78', 'PowerFull', 11000.00, 'Salida'),
(5, 14, 9, '2024-09-05', 'Kra 32 #5-7', 'Power Full', 11000.00, 'Proceso'),
(6, 12, 15, '2024-09-06', 'Calle 34 # 54-6', 'Power Full', 11000.00, 'Llegada'),
(7, 13, 18, '2024-09-07', 'Calle 34 # 4-6', 'Power Full', 11000.00, 'Proceso'),
(8, 18, 10, '2024-09-08', 'Calle 78 # 45-54', 'Power Full', 11000.00, 'Llegada'),
(9, 18, 14, '2024-09-09', 'Calle 114 # 7-54', 'Power Full', 11000.00, 'Salida'),
(10, 14, 10, '2024-09-10', 'Calle # 89-87', 'Power Full', 11000.00, 'Proceso'),
(11, 3, 3, '2024-09-11', 'Kra 4 #6-7', 'Power Full', 11000.00, 'Proceso'),
(12, 16, 10, '2024-09-11', 'Avenida 4 #2-2', 'Power Full', 11000.00, 'Llegada'),
(13, 16, 3, '2024-09-12', 'Kra 5 #4-8', 'Power Full', 11000.00, 'Salida'),
(14, 13, 5, '2024-09-13', 'Avenida 14 #4-5', 'Power Full', 11000.00, 'Proceso'),
(15, 3, 16, '2024-09-14', 'Calle 4 # 5-6', 'Power Full', 11000.00, 'Llegada'),
(16, 11, 6, '2024-09-15', 'Kra 15 #7-8', 'Power Full', 11000.00, 'Salida'),
(17, 15, 4, '2024-08-03', 'Kra 3 #4-6', 'Power Full', 11000.00, 'Salida'),
(18, 14, 2, '2024-08-02', 'Kra 4 #8-9', 'Power Full', 11000.00, 'Proceso'),
(19, 2, 6, '2024-08-01', 'Calle100 # 5-6', 'Power Full', 11000.00, 'Proceso'),
(20, 17, 17, '2024-08-02', 'Kra 10 # 4-5', 'Power Full', 11000.00, 'Llegada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `InvenID` int(11) NOT NULL,
  `ProdID` int(11) DEFAULT NULL,
  `productos_CatID` int(11) NOT NULL,
  `productos_ProveID` int(11) NOT NULL,
  `fecha_ultimo_ingreso` date DEFAULT NULL,
  `fecha_ultimo_egreso` date DEFAULT NULL,
  `IvenEstado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`InvenID`, `ProdID`, `productos_CatID`, `productos_ProveID`, `fecha_ultimo_ingreso`, `fecha_ultimo_egreso`, `IvenEstado`, `stock`) VALUES
(1, NULL, 0, 0, '2024-09-10', '2024-09-16', 'Activo', 67),
(2, NULL, 0, 0, '2024-09-03', '2024-09-14', 'Activo', 87),
(3, NULL, 0, 0, '2024-09-13', '2024-09-16', 'Activo', 54),
(4, NULL, 0, 0, NULL, NULL, 'Activo', 1),
(5, NULL, 0, 0, '2024-09-01', '2024-09-02', 'Activo', 45),
(6, NULL, 0, 0, '2024-09-02', '2024-09-03', 'Activo', 120),
(7, NULL, 0, 0, '2024-09-03', '2024-09-04', 'Activo', 899),
(8, NULL, 0, 0, '2024-09-05', '2024-09-06', 'Activo', 123),
(9, NULL, 0, 0, '2024-08-01', '2024-08-01', 'Activo', 89),
(10, NULL, 0, 0, '2024-08-02', '2024-08-02', 'Activo', 9),
(11, NULL, 0, 0, '2024-08-03', '2024-08-04', 'Activo', 98),
(12, NULL, 0, 0, '2024-08-05', '2024-08-06', 'Activo', 86),
(13, NULL, 0, 0, '2024-08-06', '2024-08-07', 'Activo', 65),
(14, NULL, 0, 0, '2024-08-08', '2024-08-09', 'Inactivo', 76),
(15, NULL, 0, 0, '2024-09-10', '2024-09-11', 'Activo', 90),
(16, NULL, 0, 0, '2024-09-11', '2024-09-12', 'Activo', 34),
(17, NULL, 0, 0, '2024-09-13', '2024-09-14', 'Inactivo', 12),
(18, NULL, 0, 0, '2024-09-14', '2024-09-15', 'Activo', 23),
(19, NULL, 0, 0, '2024-08-10', '2024-08-11', 'Inactivo', 32),
(20, NULL, 0, 0, '2024-08-12', '2024-08-13', 'Inactivo', 43),
(21, NULL, 0, 0, '2024-09-15', '2024-09-16', 'Activo', 56),
(22, NULL, 0, 0, '2024-09-16', '2024-09-17', 'Activo', 78);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodos_pago`
--

CREATE TABLE `metodos_pago` (
  `Nombre_metodos_pago` varchar(10) DEFAULT NULL,
  `Metdescripcion` text DEFAULT NULL,
  `pagos_PedidoID` int(11) NOT NULL,
  `pagos_ClientesID` int(11) NOT NULL,
  `pagos_ProveID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `metodos_pago`
--

INSERT INTO `metodos_pago` (`Nombre_metodos_pago`, `Metdescripcion`, `pagos_PedidoID`, `pagos_ClientesID`, `pagos_ProveID`) VALUES
('nequi', 'nequi', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0),
('nequi', 'nequi', 0, 0, 0),
('daviplata', 'daviplata', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `fecha_Pago` date DEFAULT NULL,
  `monto_Pago` decimal(10,2) DEFAULT NULL,
  `estado_Pago` enum('Realizado','Proceso','Error falta comprobante') DEFAULT NULL,
  `PedidoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`fecha_Pago`, `monto_Pago`, `estado_Pago`, `PedidoID`) VALUES
('2024-08-01', 54000.00, 'Realizado', 1),
('2024-08-02', 80000.00, 'Proceso', 12),
('2024-08-03', 89000.00, 'Error falta comprobante', 13),
('2024-08-04', 120000.00, 'Realizado', 14),
('2024-07-07', 34000.00, 'Error falta comprobante', 14),
('2024-08-08', 26000.00, 'Realizado', 15),
('2024-08-07', 45650.00, 'Proceso', 16),
('2024-08-08', 21000.00, 'Realizado', 17),
('2024-08-09', 23450.00, 'Proceso', 18),
('2024-08-10', 32100.00, 'Error falta comprobante', 19),
('2024-08-11', 45000.00, 'Proceso', 11),
('2024-08-12', 150000.00, 'Realizado', 10),
('2024-08-13', 80000.00, 'Error falta comprobante', 2),
('2024-08-14', 78900.00, 'Proceso', 3),
('2024-08-15', 54790.00, 'Error falta comprobante', 4),
('2024-08-16', 54000.00, 'Proceso', 5),
('2024-08-17', 43000.00, 'Realizado', 6),
('2024-08-18', 32000.00, 'Realizado', 7),
('2024-08-19', 21000.00, 'Proceso', 9),
('2024-08-20', 12000.00, 'Realizado', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `PedidoID` int(11) NOT NULL,
  `Pedfecha` date NOT NULL,
  `Pedestado` enum('Realizado','Error') NOT NULL,
  `carrito_compras_ClientesID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`PedidoID`, `Pedfecha`, `Pedestado`, `carrito_compras_ClientesID`) VALUES
(1, '2024-09-01', 'Error', '0'),
(2, '2024-09-02', 'Realizado', '0'),
(3, '2024-09-03', 'Realizado', '0'),
(4, '2024-09-04', 'Realizado', '0'),
(5, '2024-09-05', 'Error', '0'),
(6, '2024-09-06', 'Realizado', '0'),
(7, '2024-09-07', 'Realizado', '0'),
(8, '2024-09-08', 'Error', '0'),
(9, '2024-09-09', 'Realizado', '0'),
(10, '2024-09-10', 'Realizado', '0'),
(11, '2024-09-11', 'Error', '0'),
(12, '2024-09-12', 'Realizado', '0'),
(13, '2024-09-13', 'Error', '0'),
(14, '2024-09-14', 'Realizado', '0'),
(15, '2024-09-14', 'Realizado', '0'),
(16, '2024-09-15', 'Realizado', '0'),
(17, '2024-08-01', 'Error', '0'),
(18, '2024-08-02', 'Error', '0'),
(19, '2024-08-03', 'Realizado', '0'),
(20, '2024-09-04', 'Error', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ProdID` int(11) NOT NULL,
  `ProdNombre` varchar(50) DEFAULT NULL,
  `Proddescripcion` text DEFAULT NULL,
  `Prod_precio` decimal(10,2) DEFAULT NULL,
  `Prodestado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `CatID` int(11) DEFAULT NULL,
  `CatNombre` varchar(50) DEFAULT NULL,
  `ProveID` int(11) NOT NULL,
  `InvenID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ProdID`, `ProdNombre`, `Proddescripcion`, `Prod_precio`, `Prodestado`, `CatID`, `CatNombre`, `ProveID`, `InvenID`) VALUES
(1, 'Coca-Cola', 'Coca-Cola, para refrescarte con su inconfundible sabor original pero ahora sin azúcar.', 21.20, 'Activo', 1, 'Bebidas', 0, 0),
(2, 'Chocolatina Mini Jet Lyne 9 G X24 Unds', 'Jet Lyne tiene el rico sabor de Jet con menos calorías y sin azúcar. No te detengas ante la tentación del chocolate con Jet Lyne.', 14.19, 'Activo', 3, 'Chocolates y Bombones', 0, 0),
(3, 'Snack Surtido Fritolay Mega Lonchera', 'El Surtido Mega Lonchera trae todos tus snacks favoritos. Ya sea como un refrigerio para llevar al trabajo, al colegio o para disfrutar en una tarde de picnic, El Surtido Mega Lonchera tiene algo para todos los gustos. Con una variedad de sabores, texturas y tamaños, este surtido es la elección perfecta para mantener tus papilas gustativas emocionadas ¡No dejes pasar la oportunidad de probar esta variedad de sabores en un solo paquete!', 25.30, 'Activo', 14, 'Snacks', 0, 0),
(4, 'Papas Rizadas Fritas Mayonesa 105 G', 'Papas Rizadas Fritas Mayonesa 105 G', 6.49, 'Activo', 14, 'Snacks', 0, 0),
(5, 'Helado Colombina Cookies & Cream 1 Lt', 'Este helado combina la suavidad de la crema con trozos crujientes de galletas, creando una experiencia de sabor única y satisfactoria. Perfecto para compartir en familia o para consentirte en cualquier momento, este helado es ideal para satisfacer tus antojos de algo dulce y refrescante.', 38.50, 'Inactivo', 10, 'Lácteos', 0, 0),
(6, 'Pasaboca Doritos Mega Queso 200 G', 'Estos chips están elaborados con maíz y tienen un sabor intenso a queso que es tanto cremoso como salado. Su textura es crujiente y su forma triangular los hace ideales para disfrutar solos o acompañados de salsas.', 9.29, 'Activo', 14, 'Snacks', 0, 0),
(7, 'Snack Papas Margarita Limon 105 Gr', 'Su presentación de 105 gramos es perfecta para un snack individual o para compartir en reuniones y eventos sociales. Además, el empaque compacto facilita llevarlos en una mochila o bolso para disfrutar en cualquier momento.', 6.19, 'Activo', 14, 'Snacks', 0, 0),
(8, 'Arepa Don Maíz Antioqueña con Sal X8 Unds', 'La presentación de 8 unidades es ideal para familias o para quienes desean tener una reserva de arepas listas para disfrutar en diferentes comidas. Su conveniencia también las hace perfectas para ser calentadas rápidamente en el horno o en una sartén.', 9.49, 'Inactivo', 2, 'Cereales', 0, 0),
(9, 'Leche Colanta Deslactosada 1,1 Lt', 'Esta leche es producida por Colanta, una marca reconocida en Colombia, y está especialmente diseñada para ser más fácil de digerir para personas con intolerancia a la lactosa.', 4.89, 'Activo', 10, 'Lácteos', 0, 0),
(10, 'Pan Olimpica Ocañera Mogollitas 600 G X12 Unds', 'Estas mogollitas, que son pequeños panes suaves y esponjosos, están elaboradas por Pan Olímpica, una marca conocida por su tradición en la producción de pan en Colombia.', 6.90, 'Activo', 2, 'Cereales', 0, 0),
(11, 'Bon Yurt Zucaritas 170 G', ' Es una opción ideal para quienes buscan un snack o desayuno rápido y delicioso.', 4.29, 'Activo', 10, 'Lácteos', 0, 0),
(12, 'Mango Tommy', 'El Mango Tommy es muy popular en muchas regiones tropicales y subtropicales por su sabor y versatilidad. Si estás buscando un mango dulce y jugoso, esta variedad es una excelente elección.', 4.15, 'Activo', 6, 'Frutas', 0, 0),
(13, 'Papaya Común Unidades Zapote', 'La papaya es rica en vitamina C, vitamina A y antioxidantes, lo que la convierte en una opción saludable para incluir en la dieta. Es ideal para quienes buscan una fruta refrescante y nutritiva.\r\n\r\n\r\n\r\n', 2.15, 'Activo', 6, 'Frutas', 0, 0),
(14, 'Brócoli', 'El brócoli es un alimento nutritivo y beneficioso que puede formar parte de una dieta saludable y equilibrada, y es fácil de preparar en diferentes estilos de cocina.', 11.67, 'Inactivo', 15, 'Verduras', 0, 0),
(15, 'Espinaca', 'La espinaca es una opción nutritiva y versátil que puede añadir un impulso de vitaminas y minerales a una variedad de comidas, además de ser fácil de preparar y disfrutar en diferentes formas.', 5.83, 'Activo', 15, 'Verduras', 0, 0),
(16, 'Tomate Río Grande/Ciruelo', 'es una variedad versátil y sabrosa que es ideal tanto para preparaciones frescas como cocidas. Su sabor concentrado y textura firme lo hacen adecuado para una amplia gama de aplicaciones culinarias.', 5.48, 'Activo', 15, 'Verduras', 0, 0),
(17, 'Condimento El Rey Finas Hierbas 15 G', 'es una excelente opción para quienes buscan añadir un toque de sabor herbal y aromático a sus comidas de manera rápida y fácil.', 2.99, 'Inactivo', NULL, NULL, 0, 0),
(18, 'Condimento Olimpica Orégano 10 G', 'es un excelente complemento para mejorar el sabor de tus comidas con un toque de hierbas secas, ideal para una variedad de preparaciones culinarias.', 1.35, 'Activo', 9, 'Hierbas', 0, 0),
(19, 'Condimento Olimpica Pimienta 60 G', 'es una opción esencial en cualquier cocina, ideal para añadir un toque de picante y profundidad a una amplia gama de preparaciones culinarias.', 1.85, 'Activo', 9, 'Hierbas', 0, 0),
(20, 'Condimento Saysa Finas Hierbas 15 G', NULL, 1.95, 'Inactivo', 9, 'Hierbas', 0, 0),
(21, NULL, NULL, NULL, 'Activo', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ProveID` int(11) NOT NULL,
  `ProveNombre` varchar(50) DEFAULT NULL,
  `DirecProve` varchar(50) DEFAULT NULL,
  `TelProve` varchar(10) DEFAULT NULL,
  `CorreoProve` varchar(50) DEFAULT NULL,
  `Proveestado` enum('Activo','Inactivo') NOT NULL,
  `NombreEmpresa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ProveID`, `ProveNombre`, `DirecProve`, `TelProve`, `CorreoProve`, `Proveestado`, `NombreEmpresa`) VALUES
(1, 'Maria Machado', 'Kra 12 #3-54', '3203456789', 'mmachado@colanta.com', 'Activo', 'Colanta'),
(2, 'Juan Gonzales', 'Calle 113 #4-76', '3024025687', 'juan_gonzales@doritos.com', 'Activo', 'Doritos'),
(3, 'Jimena Jimenez', 'Calle 113 #4-89', '3098796776', 'jimenaj@margarita.com', 'Inactivo', 'Papas Margarita'),
(4, 'Mirian Gonzales', 'Av 76 #34-65', '3211234544', 'mirian_gon@cocacola.com', 'Activo', 'CocaCola'),
(5, 'Daniel Florez', 'Calle 113 #45-54', '3067899878', 'daniel.florez@corbeta.com', 'Inactivo', 'Corbeta'),
(6, 'Yoel Lopez', 'Kra 4 #54-56', '3045645456', 'yoellopez89@alqueria.com', 'Activo', 'Alqueria'),
(7, 'Diana Ruiz', 'Avenida 67 # 5-6', '3119043212', 'diana_ruiz@diana.com', 'Inactivo', 'Diana'),
(8, 'Helen Quiroga', 'Calle 23 #4-5', '3333045676', 'helen.quiroga@roa.es', 'Activo', 'Roa'),
(9, 'Libardo Isaza', 'Avenida 3 #4-5', '3103245676', 'libardo89@cifrut.co', 'Activo', 'Cifrut'),
(10, 'Paola Useche', 'Calle 112 a sur', '3154659806', 'jpuseche@cielo.com', 'Inactivo', 'Cielo'),
(11, 'Estella Artunduaga', 'Avenida 45 #9-89', '3224563212', 'estella@midia.com', 'Activo', 'Mi Día'),
(12, 'Esteban Quintero', 'Avenida 1 #30-65', '3085647583', 'estebanquin@jet.com', 'Activo', 'Jet'),
(13, 'Daniela Salgado', 'Calle 12 # 4-6', '3012346544', 'daniela.salgado@sanmateo.com', 'Inactivo', 'Leche San Mateo'),
(14, 'Mirian Benavides', 'Calle 34 #2-1', '3076758767', 'mirian.bena@todorico.com', 'Activo', 'Todo Rico'),
(15, 'Ive Queen', 'Kra 12 #4-5', '3174563212', 'ivequeen@detodito.com', 'Activo', 'De Todito'),
(16, 'Cristian Ramirez', 'Kra 34 # 1-4', '3042145687', 'cristian_ra@florhuila.es', 'Inactivo', 'FlorHuila'),
(17, 'Leidy Chacon', 'Calle 21 #4-7', '3221232154', 'leidy.cha@pomar.com', 'Activo', 'Pomar'),
(18, 'Janeth Arango', 'Calle 123 #2-4', '3145647268', 'janeth_arango@muñeca.com', 'Activo', 'Pastas Muñeca'),
(19, 'Alberto Useche', 'calle 115 #67-32', '1067895467', 'alberto@pepsi.com', 'Activo', 'Pepsi'),
(20, 'Jesus Morales', 'Avenida 45 #4-0', '3023214565', 'jesus_mor@nestle.com', 'Activo', 'Nestle');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CatID`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ClientesID`);

--
-- Indices de la tabla `detalle_envio`
--
ALTER TABLE `detalle_envio`
  ADD PRIMARY KEY (`Detalle_envioID`),
  ADD KEY `id_envio` (`EnvioID`),
  ADD KEY `envio_pedido_PedidoID` (`envio_pedido`),
  ADD KEY `envio_pedido_carrito_compras_clientes_ClientesID` (`envio_pedido_ClientesID`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`detalle_pedidoID`),
  ADD KEY `id_pedido` (`PedidoID`),
  ADD KEY `id_productos` (`ProdID`);

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`EnvioID`),
  ADD KEY `id_pedido` (`PedidoID`),
  ADD KEY `pedido_carrito_compras_clientes_ClientesID` (`pedido_ClientesID`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`InvenID`),
  ADD UNIQUE KEY `stock` (`stock`),
  ADD KEY `ProdID` (`ProdID`),
  ADD KEY `productos_categoria_CatID` (`productos_CatID`),
  ADD KEY `productos_proveedores_ProveID` (`productos_ProveID`);

--
-- Indices de la tabla `metodos_pago`
--
ALTER TABLE `metodos_pago`
  ADD KEY `pagos_pedido_PedidoID` (`pagos_PedidoID`),
  ADD KEY `pagos_pedido_clientes_ClientesID` (`pagos_ClientesID`),
  ADD KEY `pagos_pedido_proveedores_ProveID` (`pagos_ProveID`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD KEY `pedido_PedidoID` (`PedidoID`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`PedidoID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ProdID`),
  ADD KEY `CatID` (`CatID`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ProveID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `CatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `detalle_envio`
--
ALTER TABLE `detalle_envio`
  MODIFY `Detalle_envioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `detalle_pedidoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `envio`
--
ALTER TABLE `envio`
  MODIFY `EnvioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `InvenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `PedidoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ProdID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ProveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_envio`
--
ALTER TABLE `detalle_envio`
  ADD CONSTRAINT `detalle_envio_ibfk_1` FOREIGN KEY (`EnvioID`) REFERENCES `envio` (`EnvioID`),
  ADD CONSTRAINT `envio_pedido_PedidoID` FOREIGN KEY (`envio_pedido`) REFERENCES `envio` (`PedidoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `envio_pedido_carrito_compras_clientes_ClientesID` FOREIGN KEY (`envio_pedido_ClientesID`) REFERENCES `envio` (`EnvioID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`PedidoID`) REFERENCES `pedido` (`PedidoID`),
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`ProdID`) REFERENCES `productos` (`ProdID`);

--
-- Filtros para la tabla `envio`
--
ALTER TABLE `envio`
  ADD CONSTRAINT `envio_ibfk_1` FOREIGN KEY (`PedidoID`) REFERENCES `pedido` (`PedidoID`),
  ADD CONSTRAINT `pedido_carrito_compras_clientes_ClientesID` FOREIGN KEY (`pedido_ClientesID`) REFERENCES `pedido` (`PedidoID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pedido_PedidoID` FOREIGN KEY (`PedidoID`) REFERENCES `pedido` (`PedidoID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `categoria_CatID` FOREIGN KEY (`CatID`) REFERENCES `categoria` (`CatID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
