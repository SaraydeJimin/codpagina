-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2024 a las 19:49:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
-- Base de datos: `supermercado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_compras`
--

CREATE TABLE `carrito_compras` (
    `Carfecha_hora` datetime DEFAULT NULL,
    `ClientesID` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
    `CatID` int(11) NOT NULL,
    `CatNombre` varchar(50) DEFAULT NULL,
    `Catestado` enum('Activo', 'Agotado') NOT NULL DEFAULT 'Activo'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO
    `categoria` (
        `CatID`,
        `CatNombre`,
        `Catestado`
    )
VALUES (1, 'Bebidas', 'Activo'),
    (2, 'Cereales', 'Activo'),
    (
        3,
        'Chocolates y Bombones',
        'Activo'
    ),
    (
        4,
        'Enlatados y conservantes',
        'Activo'
    ),
    (5, 'Esparcibles', 'Activo'),
    (6, 'Frutas', 'Activo'),
    (7, 'Galletas', 'Activo'),
    (8, 'Granos', 'Activo'),
    (9, 'Hierbas', 'Activo'),
    (10, 'Lácteos', 'Activo'),
    (
        11,
        'Pastas y Quinoas',
        'Activo'
    ),
    (12, 'Pulpas', 'Agotado'),
    (
        13,
        'Salsas y Aderezos',
        'Activo'
    ),
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
    `Clitel` varchar(50) DEFAULT NULL,
    `CorreoCli` varchar(50) DEFAULT NULL,
    `ContraCli` varchar(50) DEFAULT NULL,
    `Cliestado` enum('Activo', 'Inactivo') DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO
    `clientes` (
        `ClientesID`,
        `Clienombre`,
        `Cliapellido`,
        `Clidirec`,
        `Clitel`,
        `CorreoCli`,
        `ContraCli`,
        `Cliestado`
    )
VALUES (
        1,
        'Jimin Alexandro',
        'Park Cazano',
        'Calle 114 #7-67',
        '3115678454',
        'Jimingaticomalo@gmail.com',
        'jimintupapamivida',
        'Activo'
    ),
    (
        2,
        'Pucharcela Anastacia',
        'fomenque Mariachi',
        'Calle 125 #9-02',
        '3158943354',
        'Pucharcelabetty@gmail.com',
        'Pucharcelalamejordetodas',
        'Activo'
    ),
    (
        3,
        'James David',
        'Clavijo Torres',
        'Calle 5 #5-98',
        '3205687845',
        'jamesmor@gmail.com',
        'jamesjamesjamess',
        'Inactivo'
    ),
    (
        4,
        'Eliana Maria',
        'Martinez Cruz',
        'Carrera 4 #6-95',
        '3568974125',
        'eligutlinda@outlook.com',
        'mividaesnadie',
        'Activo'
    ),
    (
        5,
        'Martin Jungkook',
        'Jeon Martinez',
        'Calle 75 #8-78',
        '3124567658',
        'jungkookm@gmail.com',
        'Yosolosequenadase',
        'Inactivo'
    ),
    (
        6,
        'Damian ',
        'Muak',
        'Calle 127 #7-05',
        '3145927543',
        'damianmuak@outlook.com',
        'tuvidaymivida',
        'Activo'
    );

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
    `DeEnprecio_uni` decimal(10, 2) DEFAULT NULL,
    `DeEn_estado` enum(
        'Salida',
        'Proceso',
        'Llegada'
    ) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
    `detalle_pedidoID` int(11) NOT NULL,
    `PedidoID` int(11) DEFAULT NULL,
    `ProdID` int(11) DEFAULT NULL,
    `DePecantidad` int(11) DEFAULT NULL,
    `DePedprecio_uni` decimal(10, 2) DEFAULT NULL,
    `DePedestado` enum(
        'Realizado',
        'Error',
        'No realizado'
    ) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

CREATE TABLE `envio` (
    `EnvioID` int(11) NOT NULL,
    `PedidoID` int(11) DEFAULT NULL,
    `pedido_ClientesID` int(11) NOT NULL,
    `Enfecha_envio` date DEFAULT NULL,
    `direc_En` varchar(100) DEFAULT NULL,
    `metodo_En` varchar(100) DEFAULT NULL,
    `costo_En` decimal(10, 2) DEFAULT NULL,
    `En_estado` enum(
        'Salida',
        'Proceso',
        'Llegada'
    ) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

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
    `IvenEstado` enum('Activo', 'Inactivo') NOT NULL DEFAULT 'Activo',
    `stock` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodos_pago`
--

CREATE TABLE `metodos_pago` (
    `Nombre_metodos_pago` varchar(100) DEFAULT NULL,
    `Metdescripcion` text DEFAULT NULL,
    `pagos_PedidoID` int(11) NOT NULL,
    `pagos_ClientesID` int(11) NOT NULL,
    `pagos_ProveID` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
    `fecha_Pago` date DEFAULT NULL,
    `monto_Pago` decimal(10, 2) DEFAULT NULL,
    `estado_Pago` enum(
        'Realizado',
        'Proceso',
        'Error falta comprobante'
    ) DEFAULT NULL,
    `PedidoID` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
    `PedidoID` int(11) NOT NULL,
    `Pedfecha` date NOT NULL,
    `Pedestado` enum('Realizado', 'Error') NOT NULL,
    `carrito_compras_ClientesID` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
    `ProdID` int(11) NOT NULL,
    `ProdNombre` varchar(100) DEFAULT NULL,
    `Proddescripcion` text DEFAULT NULL,
    `Prod_precio` decimal(10, 2) DEFAULT NULL,
    `Prodestado` enum('Activo', 'Inactivo') NOT NULL DEFAULT 'Activo',
    `CatID` int(11) DEFAULT NULL,
    `CatNombre` varchar(50) DEFAULT NULL,
    `ProveID` int(11) NOT NULL,
    `InvenID` int(11) NOT NULL,
    `stock` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO
    `productos` (
        `ProdID`,
        `ProdNombre`,
        `Proddescripcion`,
        `Prod_precio`,
        `Prodestado`,
        `CatID`,
        `CatNombre`,
        `ProveID`,
        `InvenID`,
        `stock`
    )
VALUES (
        1,
        'Coca-Cola',
        'Coca-Cola, para refrescarte con su inconfundible sabor original pero ahora sin azúcar.',
        21.20,
        'Activo',
        1,
        'Bebidas',
        0,
        0,
        30
    ),
    (
        2,
        'Chocolatina Mini Jet Lyne 9 G X24 Unds',
        'Jet Lyne tiene el rico sabor de Jet con menos calorías y sin azúcar. No te detengas ante la tentación del chocolate con Jet Lyne.',
        14.19,
        'Activo',
        3,
        'Chocolates y Bombones',
        0,
        0,
        15
    ),
    (
        3,
        'Snack Surtido Fritolay Mega Lonchera',
        'El Surtido Mega Lonchera trae todos tus snacks favoritos. Ya sea como un refrigerio para llevar al trabajo, al colegio o para disfrutar en una tarde de picnic, El Surtido Mega Lonchera tiene algo para todos los gustos. Con una variedad de sabores, texturas y tamaños, este surtido es la elección perfecta para mantener tus papilas gustativas emocionadas ¡No dejes pasar la oportunidad de probar esta variedad de sabores en un solo paquete!',
        25.30,
        'Activo',
        14,
        'Snacks',
        0,
        0,
        25
    ),
    (
        4,
        'Papas Rizadas Fritas Mayonesa 105 G',
        'Papas Rizadas Fritas Mayonesa 105 G',
        6.49,
        'Activo',
        14,
        'Snacks',
        0,
        0,
        10
    ),
    (
        5,
        'Helado Colombina Cookies & Cream 1 Lt',
        'Este helado combina la suavidad de la crema con trozos crujientes de galletas, creando una experiencia de sabor única y satisfactoria. Perfecto para compartir en familia o para consentirte en cualquier momento, este helado es ideal para satisfacer tus antojos de algo dulce y refrescante.',
        38.50,
        'Inactivo',
        10,
        'Lácteos',
        0,
        0,
        0
    ),
    (
        6,
        'Pasaboca Doritos Mega Queso 200 G',
        'Estos chips están elaborados con maíz y tienen un sabor intenso a queso que es tanto cremoso como salado. Su textura es crujiente y su forma triangular los hace ideales para disfrutar solos o acompañados de salsas.',
        9.29,
        'Activo',
        14,
        'Snacks',
        0,
        0,
        40
    ),
    (
        7,
        'Snack Papas Margarita Limon 105 Gr',
        'Su presentación de 105 gramos es perfecta para un snack individual o para compartir en reuniones y eventos sociales. Además, el empaque compacto facilita llevarlos en una mochila o bolso para disfrutar en cualquier momento.',
        6.19,
        'Activo',
        14,
        'Snacks',
        0,
        0,
        NULL
    ),
    (
        8,
        'Arepa Don Maíz Antioqueña con Sal X8 Unds',
        'La presentación de 8 unidades es ideal para familias o para quienes desean tener una reserva de arepas listas para disfrutar en diferentes comidas. Su conveniencia también las hace perfectas para ser calentadas rápidamente en el horno o en una sartén.',
        9.49,
        'Inactivo',
        2,
        'Cereales',
        0,
        0,
        7
    ),
    (
        9,
        'Leche Colanta Deslactosada 1,1 Lt',
        'Esta leche es producida por Colanta, una marca reconocida en Colombia, y está especialmente diseñada para ser más fácil de digerir para personas con intolerancia a la lactosa.',
        4.89,
        'Activo',
        10,
        'Lácteos',
        0,
        0,
        NULL
    ),
    (
        10,
        'Pan Olimpica Ocañera Mogollitas 600 G X12 Unds',
        'Estas mogollitas, que son pequeños panes suaves y esponjosos, están elaboradas por Pan Olímpica, una marca conocida por su tradición en la producción de pan en Colombia.',
        6.90,
        'Activo',
        2,
        'Cereales',
        0,
        0,
        0
    ),
    (
        11,
        'Bon Yurt Zucaritas 170 G',
        ' Es una opción ideal para quienes buscan un snack o desayuno rápido y delicioso.',
        4.29,
        'Activo',
        10,
        'Lácteos',
        0,
        0,
        30
    ),
    (
        12,
        'Mango Tommy',
        'El Mango Tommy es muy popular en muchas regiones tropicales y subtropicales por su sabor y versatilidad. Si estás buscando un mango dulce y jugoso, esta variedad es una excelente elección.',
        4.15,
        'Activo',
        6,
        'Frutas',
        0,
        0,
        NULL
    ),
    (
        13,
        'Papaya Común Unidades Zapote',
        'La papaya es rica en vitamina C, vitamina A y antioxidantes, lo que la convierte en una opción saludable para incluir en la dieta. Es ideal para quienes buscan una fruta refrescante y nutritiva.\r\n\r\n\r\n\r\n',
        2.15,
        'Activo',
        6,
        'Frutas',
        0,
        0,
        0
    ),
    (
        14,
        'Brócoli',
        'El brócoli es un alimento nutritivo y beneficioso que puede formar parte de una dieta saludable y equilibrada, y es fácil de preparar en diferentes estilos de cocina.',
        11.67,
        'Inactivo',
        15,
        'Verduras',
        0,
        0,
        NULL
    ),
    (
        15,
        'Espinaca',
        'La espinaca es una opción nutritiva y versátil que puede añadir un impulso de vitaminas y minerales a una variedad de comidas, además de ser fácil de preparar y disfrutar en diferentes formas.',
        5.83,
        'Activo',
        15,
        'Verduras',
        0,
        0,
        15
    ),
    (
        16,
        'Tomate Río Grande/Ciruelo',
        'es una variedad versátil y sabrosa que es ideal tanto para preparaciones frescas como cocidas. Su sabor concentrado y textura firme lo hacen adecuado para una amplia gama de aplicaciones culinarias.',
        5.48,
        'Activo',
        15,
        'Verduras',
        0,
        0,
        15
    ),
    (
        17,
        'Condimento El Rey Finas Hierbas 15 G',
        'es una excelente opción para quienes buscan añadir un toque de sabor herbal y aromático a sus comidas de manera rápida y fácil.',
        2.99,
        'Inactivo',
        NULL,
        NULL,
        0,
        0,
        NULL
    ),
    (
        18,
        'Condimento Olimpica Orégano 10 G',
        'es un excelente complemento para mejorar el sabor de tus comidas con un toque de hierbas secas, ideal para una variedad de preparaciones culinarias.',
        1.35,
        'Activo',
        9,
        'Hierbas',
        0,
        0,
        50
    ),
    (
        19,
        'Condimento Olimpica Pimienta 60 G',
        'es una opción esencial en cualquier cocina, ideal para añadir un toque de picante y profundidad a una amplia gama de preparaciones culinarias.',
        1.85,
        'Activo',
        9,
        'Hierbas',
        0,
        0,
        30
    ),
    (
        20,
        'Condimento Saysa Finas Hierbas 15 G',
        NULL,
        1.95,
        'Inactivo',
        9,
        'Hierbas',
        0,
        0,
        NULL
    );

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
    `ProveID` int(11) NOT NULL,
    `ProveNombre` varchar(50) DEFAULT NULL,
    `DirecProve` varchar(100) DEFAULT NULL,
    `TelProve` varchar(20) DEFAULT NULL,
    `CorreoProve` varchar(50) DEFAULT NULL,
    `Proveestado` enum('Activo', 'Inactivo') NOT NULL,
    `NombreEmpresa` varchar(20) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
ADD KEY `clientes_ClientesID` (`ClientesID`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria` ADD PRIMARY KEY (`CatID`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes` ADD PRIMARY KEY (`ClientesID`);

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
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido` ADD PRIMARY KEY (`PedidoID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
ADD PRIMARY KEY (`ProdID`),
ADD KEY `CatID` (`CatID`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores` ADD PRIMARY KEY (`ProveID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
MODIFY `CatID` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
MODIFY `ClientesID` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 7;

--
-- AUTO_INCREMENT de la tabla `detalle_envio`
--
ALTER TABLE `detalle_envio`
MODIFY `Detalle_envioID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
MODIFY `detalle_pedidoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `envio`
--
ALTER TABLE `envio` MODIFY `EnvioID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
MODIFY `InvenID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
MODIFY `PedidoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
MODIFY `ProdID` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 21;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
MODIFY `ProveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
ADD CONSTRAINT `clientes_ClientesID` FOREIGN KEY (`ClientesID`) REFERENCES `clientes` (`ClientesID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

-- Filtros para la tabla `metodos_pago`
--
ALTER TABLE `metodos_pago`
ADD CONSTRAINT `pagos_pedido_PedidoID` FOREIGN KEY (`pagos_PedidoID`) REFERENCES `pagos` (`PedidoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `pagos_pedido_clientes_ClientesID` FOREIGN KEY (`pagos_ClientesID`) REFERENCES `pagos` (`PagosID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `pagos_pedido_proveedores_ProveID` FOREIGN KEY (`pagos_ProveID`) REFERENCES `pagos` (`PagosID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMIT;
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

ADD CONSTRAINT `proveedores_ProveID` FOREIGN KEY (`ProveID`) REFERENCES `proveedores` (`ProveID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ADD CONSTRAINT `inventario_IvenID` FOREIGN KEY (`IvenID`) REFERENCES `inventario` (`IvenID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;