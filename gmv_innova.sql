/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : gmv_innova

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-07-10 11:04:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for actividad
-- ----------------------------
DROP TABLE IF EXISTS `actividad`;
CREATE TABLE `actividad` (
  `IDACTIVIDAD` text,
  `ACTIVIDAD` text,
  `IDCATEGORIA` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of actividad
-- ----------------------------
INSERT INTO `actividad` VALUES ('1', 'IMPULSAR PRODUCTO UMK', '1');
INSERT INTO `actividad` VALUES ('2', 'IMPULSAR PRODUCTO NO UMK', '1');
INSERT INTO `actividad` VALUES ('3', 'MOSTRAR CATALOGO DE PRODUCTOS', '1');
INSERT INTO `actividad` VALUES ('4', 'PROMOVER PRODUCTO QUE HO HA VENDIDO ANTES', '1');
INSERT INTO `actividad` VALUES ('5', 'OFRECER SERVICIOS DE VALOR AGREGADO', '1');
INSERT INTO `actividad` VALUES ('6', 'VERIFICAR RECEPCION DE PEDIDO', '2');
INSERT INTO `actividad` VALUES ('7', 'VALIDAR COMPLETITUD DE PEDIDO RECIBIBO', '2');
INSERT INTO `actividad` VALUES ('8', 'LLENAR FORMATO FALTANTE', '3');
INSERT INTO `actividad` VALUES ('9', 'SOLICITUD DE DOCUMENTACION', '3');
INSERT INTO `actividad` VALUES ('10', 'PROMOVER PROGRAMA DE PUNTOS', '4');
INSERT INTO `actividad` VALUES ('11', 'MOSTRAR CATALOGO DE CANJES', '4');
INSERT INTO `actividad` VALUES ('12', 'LLENAR FORMATO DE CANJE', '4');
INSERT INTO `actividad` VALUES ('13', 'RECOPILAR BOUCHERS', '4');
INSERT INTO `actividad` VALUES ('14', 'RETIRAR PRODUCTO VENCIDO', '5');
INSERT INTO `actividad` VALUES ('15', 'RETIRAR PRODUCTO NO VENCIDO', '5');
INSERT INTO `actividad` VALUES ('16', 'CIERRE DE CAMPAÑA', '6');
INSERT INTO `actividad` VALUES ('17', 'PROMOVER CAMPAÑA', '6');
INSERT INTO `actividad` VALUES ('18', 'FIESTA DE ANIVERSARIO', '7');
INSERT INTO `actividad` VALUES ('19', 'LLENAR ENCUESTA', '8');

-- ----------------------------
-- Table structure for anulaciones
-- ----------------------------
DROP TABLE IF EXISTS `anulaciones`;
CREATE TABLE `anulaciones` (
  `IDPEDIDO` varchar(20) DEFAULT NULL,
  `IDUSER` varchar(255) DEFAULT NULL,
  `COMENTARIO` varchar(300) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anulaciones
-- ----------------------------

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `IDCATEGORIA` text,
  `CATEGORIA` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'GESTION DE VENTAS');
INSERT INTO `categoria` VALUES ('2', 'SEGUIMIENTO A PEDIDOS');
INSERT INTO `categoria` VALUES ('3', 'ACTUALIZACION DE DATOS');
INSERT INTO `categoria` VALUES ('4', 'PROGRAMA DE PUNTOS');
INSERT INTO `categoria` VALUES ('5', 'PRODUCTO');
INSERT INTO `categoria` VALUES ('6', 'CAMPAÑA');
INSERT INTO `categoria` VALUES ('7', 'INVITACION');
INSERT INTO `categoria` VALUES ('8', 'ENCUESTA');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `IDCLIENTE` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `DIRECCION` varchar(255) DEFAULT NULL,
  `TELEFONO` int(11) DEFAULT NULL,
  `CORREO` varchar(255) DEFAULT NULL,
  `DEPARTAMENTO` varchar(255) DEFAULT NULL,
  `MUNICIPIO` varchar(255) DEFAULT NULL,
  `VENDEDOR` varchar(255) DEFAULT NULL,
  `RUC` varchar(255) DEFAULT NULL,
  `ESTADO` varchar(255) DEFAULT NULL,
  `FECHA_INGRESO` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('NV-50-1', 'ALDER NUEVO 1', 'SNA FELIPE DE DA', '85045001', 'ALDER@GMAIL.COM', 'CARAZO', 'JINOTEPE', '50', '451215', '0', '2017-07-06 17:07:57');

-- ----------------------------
-- Table structure for cobros
-- ----------------------------
DROP TABLE IF EXISTS `cobros`;
CREATE TABLE `cobros` (
  `IDCOBRO` varchar(16) DEFAULT NULL,
  `CLIENTE` varchar(10) DEFAULT NULL,
  `RUTA` varchar(5) DEFAULT NULL,
  `IMPORTE` varchar(200) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `OBSERVACION` varchar(400) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cobros
-- ----------------------------

-- ----------------------------
-- Table structure for descuentos
-- ----------------------------
DROP TABLE IF EXISTS `descuentos`;
CREATE TABLE `descuentos` (
  `CLASIFICACION` varchar(255) DEFAULT NULL,
  `CODIGO` varchar(255) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `PRECIO` varchar(255) DEFAULT NULL,
  `IVA` varchar(255) DEFAULT NULL,
  `MINIMO` varchar(255) DEFAULT NULL,
  `MAXIMO` varchar(255) DEFAULT NULL,
  `DESCUENTO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of descuentos
-- ----------------------------
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '349.41', '0', '1', '30', '10');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '349.41', '0', '31', '99', '12');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '349.41', '0', '100', '9999999', '15');
INSERT INTO `descuentos` VALUES ('CENTROLAC', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '349.41', '0', '1', '9999999', '20');
INSERT INTO `descuentos` VALUES ('DISTRIBUIDORES', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '349.41', '0', '1', '9999999', '18');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '338.82', '0', '1', '30', '10');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '338.82', '0', '31', '99', '12');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '338.82', '0', '100', '9999999', '15');
INSERT INTO `descuentos` VALUES ('CENTROLAC', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '338.82', '0', '1', '30', '20');
INSERT INTO `descuentos` VALUES ('DISTRIBUIDORES', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '338.82', '0', '1', '9999999', '18');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00043', 'PH PAPIEL PROFESIONAL B 6 400 MT', '280.75', '15', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('DISTRIBUIDORES', '6IN00044', 'PT LYMPION PROFECIONAL B3 (toalla)', '340.41', '15', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00044', 'PT LYMPION PROFECIONAL B3 (toalla)', '340.41', '15', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00051', 'PH PAPIEL PROFECCIONAL 500 MT B6', '370.98', '0', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00054', 'PH CHOLIN 250 HD B 32/1', '155', '0', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('DISTRIBUIDORES', '6IN00054', 'PH CHOLIN 250 HD B 32/1', '155', '0', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00059', 'CHOLIN 1000 HS 8/6', '600', '0', '1', '25', '7');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '6IN00059', 'CHOLIN 1000 HS 8/6', '600', '0', '26', '50', '10');
INSERT INTO `descuentos` VALUES ('CENTROLAC', '6IN00059', 'CHOLIN 1000 HS 8/6', '600', '0', '0', '0', '20');
INSERT INTO `descuentos` VALUES ('DISTRIBUIDORES', '6IN00059', 'CHOLIN 1000 HS 8/6', '600', '0', '0', '0', '18');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '7IN00023', 'CHOLIN 900 HS 24/1', '275.29', '0', '1', '30', '10');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '7IN00023', 'CHOLIN 900 HS 24/1', '275.29', '0', '31', '99', '12');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '7IN00023', 'CHOLIN 900 HS 24/1', '275.29', '0', '100', '9999999', '15');
INSERT INTO `descuentos` VALUES ('CENTROLAC', '7IN00023', 'CHOLIN 900 HS 24/1', '275.29', '0', '0', '0', '20');
INSERT INTO `descuentos` VALUES ('DISTRIBUIDORES', '7IN00023', 'CHOLIN 900 HS 24/1', '275.29', '0', '0', '0', '18');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '7IN00018', 'PH GENERICO 24/1', '218.18', '0', '1', '500', '6');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '7IN00018', 'PH GENERICO 24/1', '218.18', '0', '500', '500', '6');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '7IN00018', 'PH GENERICO 24/1', '218.18', '0', '800', '800', '8');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '7IN00018', 'PH GENERICO 24/1', '218.18', '0', '1300', '1300', '9');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '2IN00083', 'DISPENSADOR PAPEL PROFESIONAL 26 CM', '320', '15', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('CENTROLAC', '2IN00083', 'DISPENSADOR PAPEL PROFESIONAL 26 CM', '320', '15', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('DISTRIBUIDORES', '2IN00083', 'DISPENSADOR PAPEL PROFESIONAL 26 CM', '320', '15', '0', '0', '0');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '2IN00084', 'PAPEL SERVILLETA KLEENN B 24/1', '213', '15', '1', '30', '6');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '2IN00084', 'PAPEL SERVILLETA KLEENN B 24/1', '213', '15', '31', '99', '8');
INSERT INTO `descuentos` VALUES ('MAYORISTAS', '2IN00084', 'PAPEL SERVILLETA KLEENN B 24/1', '213', '15', '100', '9999999', '10');
INSERT INTO `descuentos` VALUES ('CENTROLAC', '2IN00084', 'PAPEL SERVILLETA KLEENN B 24/1', '213', '15', '0', '0', '20');
INSERT INTO `descuentos` VALUES ('DISTRIBUIDORES', '2IN00084', 'PAPEL SERVILLETA KLEENN B 24/1', '213', '15', '0', '0', '18');

-- ----------------------------
-- Table structure for grupos
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos` (
  `IdGrupo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'llave principal del grupo',
  `NombreGrupo` varchar(50) DEFAULT NULL COMMENT 'nombre del grupo',
  `IdResponsable` int(11) DEFAULT NULL COMMENT 'id del usuario que es dueño del grupo',
  `Estado` int(11) DEFAULT NULL COMMENT 'estado 0= inactivo 1= activo',
  `FechaCreada` datetime DEFAULT NULL,
  PRIMARY KEY (`IdGrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grupos
-- ----------------------------
INSERT INTO `grupos` VALUES ('1', 'SAC02', '5', '1', '2017-05-22 08:19:18');
INSERT INTO `grupos` VALUES ('2', 'SAC03', '18', '1', '2017-05-22 08:19:29');
INSERT INTO `grupos` VALUES ('3', 'SAC04', '19', '1', '2017-05-22 08:19:41');

-- ----------------------------
-- Table structure for grupo_asignacion
-- ----------------------------
DROP TABLE IF EXISTS `grupo_asignacion`;
CREATE TABLE `grupo_asignacion` (
  `IdGrupo` int(11) DEFAULT NULL,
  `IdVendedor` varchar(10) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `FechaCreada` datetime DEFAULT NULL,
  `FechaBaja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grupo_asignacion
-- ----------------------------
INSERT INTO `grupo_asignacion` VALUES ('3', '7', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('3', '9', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('3', '14', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('3', '3', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('3', '11', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('1', '8', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('1', '10', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('1', '23', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('1', '21', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('1', '12', '', '2017-06-01 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('2', '25', '', '2017-06-06 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('2', '20', '', '2017-06-06 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('2', '15', '', '2017-06-06 00:00:00', null);
INSERT INTO `grupo_asignacion` VALUES ('2', '16', '', '2017-06-06 00:00:00', null);

-- ----------------------------
-- Table structure for llaves
-- ----------------------------
DROP TABLE IF EXISTS `llaves`;
CREATE TABLE `llaves` (
  `RUTA` varchar(20) DEFAULT NULL,
  `PEDIDO` varchar(12) DEFAULT NULL,
  `COBRO` varchar(12) DEFAULT NULL,
  `RAZON` varchar(12) DEFAULT NULL,
  `CLIENTE` varchar(10) DEFAULT NULL COMMENT 'Consecutivo para la insercion de cliente nuevo'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of llaves
-- ----------------------------
INSERT INTO `llaves` VALUES ('SCASTILLO', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('OFICINAS', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('CMOREIRA', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('JDELGADO', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('MROJAS', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('DESPINOZA', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('CMORAN', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('EXPORTACION', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('HMORALES', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('GANTONIO', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('KMARINA', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for pedido
-- ----------------------------
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `IDPEDIDO` varchar(255) DEFAULT NULL,
  `VENDEDOR` varchar(255) DEFAULT NULL,
  `RESPONSABLE` varchar(10) DEFAULT NULL COMMENT 'RESPONSABLE QUE RECEPCIONA EL PEDIDO EN ESE MOMENTO',
  `CLIENTE` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `MONTO` varchar(255) DEFAULT NULL,
  `ESTADO` int(1) DEFAULT NULL,
  `FECHA_CREADA` datetime DEFAULT NULL,
  `FECHA_GRABADA` datetime DEFAULT NULL,
  `FECHA_ULTIMA_ACTUALIZACION` datetime DEFAULT NULL,
  `COMENTARIO` varchar(1000) DEFAULT NULL,
  `COMENTARIO_CONFIR` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pedido
-- ----------------------------

-- ----------------------------
-- Table structure for pedido_detalle
-- ----------------------------
DROP TABLE IF EXISTS `pedido_detalle`;
CREATE TABLE `pedido_detalle` (
  `IDPEDIDO` varchar(255) DEFAULT NULL,
  `ARTICULO` varchar(255) DEFAULT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `CANTIDAD` varchar(255) DEFAULT NULL,
  `TOTAL` varchar(255) DEFAULT NULL,
  `BONIFICADO` varchar(255) DEFAULT NULL,
  `IVA` varchar(5) DEFAULT NULL,
  `DESCUENTO` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pedido_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for razon
-- ----------------------------
DROP TABLE IF EXISTS `razon`;
CREATE TABLE `razon` (
  `IdRazon` longtext,
  `Vendedor` longtext,
  `Cliente` longtext,
  `Nombre` longtext,
  `Fecha` datetime DEFAULT NULL,
  `Observacion` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of razon
-- ----------------------------

-- ----------------------------
-- Table structure for razon_detalle
-- ----------------------------
DROP TABLE IF EXISTS `razon_detalle`;
CREATE TABLE `razon_detalle` (
  `IdRazon` longtext,
  `IdAE` longtext,
  `Actividad` longtext,
  `Categoria` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of razon_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) DEFAULT NULL,
  `Cod_Vendedor` varchar(255) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Password` varchar(35) DEFAULT NULL,
  `Rol` int(1) DEFAULT NULL COMMENT '1- VENDEDOR\r\n2- SAC \r\n3- ADMIN SAC \r\n4- SUPERVISOR \r\n5- ADMINISTRADOR',
  `Activo` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdUser`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('2', 'SCASTILLO', '51', 'Silvio Ernesto Castillo Zeledo', 'SC5421', '1', '');
INSERT INTO `usuario` VALUES ('3', 'OFICINAS', '24', 'OFICINAS INNOVA', 'OFI2165', '1', '');
INSERT INTO `usuario` VALUES ('4', 'CMOREIRA', '23', 'CESIA MOREIRA', 'CM5485', '1', '');
INSERT INTO `usuario` VALUES ('5', 'alder', null, 'ALDER HERNANDEZ', 'a7m1425.', '5', '');
INSERT INTO `usuario` VALUES ('6', 'JDELGADO', '53', 'JUNIOR DELGADO', 'JD4871', '1', '');
INSERT INTO `usuario` VALUES ('7', 'MROJAS', '46', 'MARIA ROJAS', 'MR5241', '1', '');
INSERT INTO `usuario` VALUES ('8', 'DESPINOZA', '47', 'DAVID ESPINOZA', 'DE1245', '1', '');
INSERT INTO `usuario` VALUES ('9', 'CMORAN', '48', 'CARLOS JOSE MORAN CASTILLO', 'CM5263', '1', '');
INSERT INTO `usuario` VALUES ('10', 'EXPORTACION', '49', 'EXPORTACION', 'ES2635', '1', '');
INSERT INTO `usuario` VALUES ('11', 'HMORALES', '50', 'HINDLEY MORALES OSUNA', 'HM6352', '1', '');
INSERT INTO `usuario` VALUES ('12', 'GANTONIO', '52', 'GERARDO ANTONIO CARIAS ESPINOZA', 'GA4178', '1', '');
INSERT INTO `usuario` VALUES ('13', 'KMARINA', '54', 'KATHERINE MARINA PEREZ GONZALES', 'KM6352', '1', '');

-- ----------------------------
-- Table structure for visitas
-- ----------------------------
DROP TABLE IF EXISTS `visitas`;
CREATE TABLE `visitas` (
  `IdPlan` varchar(15) DEFAULT NULL,
  `IdCliente` varchar(10) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Lati` varchar(10) DEFAULT NULL,
  `Logi` varchar(10) DEFAULT NULL,
  `Local` varchar(5) DEFAULT NULL,
  `Inicio` time DEFAULT NULL,
  `Fin` time DEFAULT NULL,
  `Observacion` varchar(500) DEFAULT NULL,
  `Accion` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitas
-- ----------------------------

-- ----------------------------
-- View structure for actividades
-- ----------------------------
DROP VIEW IF EXISTS `actividades`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `actividades` AS select `a`.`IDACTIVIDAD` AS `IDACTIVIDAD`,`a`.`ACTIVIDAD` AS `ACTIVIDAD`,`a`.`IDCATEGORIA` AS `IDCATEGORIA`,`c`.`CATEGORIA` AS `CATEGORIA` from (`actividad` `a` join `categoria` `c` on((`a`.`IDCATEGORIA` = `c`.`IDCATEGORIA`))) order by `c`.`CATEGORIA`,`a`.`ACTIVIDAD` ;

-- ----------------------------
-- View structure for view_count_pedidos
-- ----------------------------
DROP VIEW IF EXISTS `view_count_pedidos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_count_pedidos` AS SELECT VENDEDOR AS RUTA ,COUNT(IDPEDIDO) AS CANTIDAD, CAST(FECHA_CREADA AS DATE) AS FECHA FROM pedido
	WHERE FECHA_CREADA BETWEEN  DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE()
		GROUP BY CAST(FECHA_CREADA AS DATE),VENDEDOR ;

-- ----------------------------
-- View structure for view_grupoasignacion
-- ----------------------------
DROP VIEW IF EXISTS `view_grupoasignacion`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_grupoasignacion` AS SELECT
grupos.IdGrupo,
grupos.NombreGrupo,
grupos.IdResponsable,
usuario.Usuario AS ResponsableUsuario,
usuario.Nombre AS ResponsableNombre,
grupos.Estado,
grupo_asignacion.IdVendedor,
t1.Usuario AS Ruta,
t1.Nombre AS NombreRuta,
grupo_asignacion.Estado AS EstadoVendedor
FROM
grupos
INNER JOIN grupo_asignacion ON grupo_asignacion.IdGrupo = grupos.IdGrupo
INNER JOIN usuario AS t1 ON t1.IdUser = grupo_asignacion.IdVendedor
INNER JOIN usuario ON usuario.IdUser = grupos.IdResponsable 
WHERE grupos.Estado = '1' ;

-- ----------------------------
-- View structure for view_mispedidos
-- ----------------------------
DROP VIEW IF EXISTS `view_mispedidos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_mispedidos` AS SELECT
	pedido.IDPEDIDO,
	pedido.ESTADO,
	IFNULL(
		CONCAT(anulaciones.COMENTARIO,' \n\n- FECHA ANULACION: ',DATE_FORMAT(anulaciones.FECHA,'%m/%d/%Y %h:%i %p')),
		'NO HAY COMENTARIO'
	) COMENTARIO,
	IFNULL(pedido.COMENTARIO_CONFIR,'NO HAY COMENTARIO') CONFIRMACION
FROM
	pedido
LEFT JOIN anulaciones ON pedido.IDPEDIDO = anulaciones.IDPEDIDO ;

-- ----------------------------
-- View structure for view_misrutas
-- ----------------------------
DROP VIEW IF EXISTS `view_misrutas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_misrutas` AS SELECT
	group_concat(
		'\'',
		`view_grupoasignacion`.`Ruta`,
		'\'' SEPARATOR ','
	) AS `RUTA`,
	`view_grupoasignacion`.`IdResponsable` AS `IdResponsable`
FROM
	`view_grupoasignacion`
GROUP BY
	`view_grupoasignacion`.`IdResponsable` ;

-- ----------------------------
-- View structure for view_usuario
-- ----------------------------
DROP VIEW IF EXISTS `view_usuario`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_usuario` AS SELECT
usuario.IdUser,
usuario.Cod_Vendedor Usuario,
usuario.Nombre,
usuario.`Password`,
usuario.Rol,
usuario.Activo,
llaves.RUTA,
llaves.PEDIDO,
llaves.COBRO,
llaves.RAZON,
llaves.CLIENTE
FROM
usuario
INNER JOIN llaves ON usuario.Usuario = llaves.RUTA ;

-- ----------------------------
-- View structure for vtsplanes
-- ----------------------------
DROP VIEW IF EXISTS `vtsplanes`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `vtsplanes` AS SELECT 
T0.IdPlan,
T0.Vendedor,
T0.Ruta,
T0.Inicia,
T0.Termina,
T0.Zona,
T0.Estado,
T1.Lunes,
T1.Martes,
T1.Miercoles,
T1.Jueves,
T1.Viernes,
T1.Obervaciones
FROM agenda T0  INNER JOIN vclientes T1 ON T0.IdPlan=T1.IdPlan ;

-- ----------------------------
-- Procedure structure for curdemo
-- ----------------------------
DROP PROCEDURE IF EXISTS `curdemo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `curdemo`()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE a CHAR(99);
	DECLARE b CHAR(99);

	declare mispedidos char(99);
    DECLARE cur1 CURSOR FOR SELECT IDPEDIDO,VENDEDOR FROM pedido;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cur1;
  
  read_loop: LOOP
		FETCH cur1 INTO a,b;
            IF done THEN
      LEAVE read_loop;
    END IF;

		SET mispedidos = a;

	SELECT a;	
    
  END LOOP;
	
  CLOSE cur1;
  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SP_Detalle_pedidos
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_Detalle_pedidos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Detalle_pedidos`(
	IN IDPEDIDO2 CHAR (30),
	IN ARTICULOP CHAR (30),
	IN DESCRIPCIONP CHAR (250),
	IN CANTIDADP CHAR (50),
	IN TOTALP FLOAT (10,4),
	IN BONIFICADOP CHAR (10)
)
BEGIN




BEGIN
	INSERT INTO pedido_detalle (IDPEDIDO, ARTICULO, DESCRIPCION, CANTIDAD, TOTAL, BONIFICADO)
VALUES
	(IDPEDIDO2, ARTICULOP,DESCRIPCIONP,CANTIDADP,TOTALP,BONIFICADOP) ;
END ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_Grafica_Pedido_Vendedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_Grafica_Pedido_Vendedor`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Grafica_Pedido_Vendedor`()
BEGIN
  SELECT COUNT(IDPEDIDO) AS CANTIDAD,VENDEDOR AS RUTA FROM pedido
	WHERE FECHA_CREADA BETWEEN  DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE()
	GROUP BY VENDEDOR;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for SP_pedidos
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_pedidos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_pedidos`(IN IDPEDIDO2 CHAR (30),
	IN IDVENDEDOR CHAR (30),
	IN IDCLIENTE CHAR (30),
	IN NOMBRECLIENTE CHAR (50),
	IN FECHA CHAR (30),
	IN MONTOP FLOAT (10,4),
	IN ESTADO INT,
	IN RESPONSABLE2 CHAR(30),
	IN COMENT VARCHAR(1000))
BEGIN
IF EXISTS (SELECT IDPEDIDO FROM pedido WHERE IDPEDIDO = IDPEDIDO2 AND ESTADO IN (0,1)) THEN
BEGIN
	UPDATE pedido SET Estado = ESTADO,
		MONTO= MONTOP,
		CLIENTE = IDCLIENTE,
		NOMBRE = NOMBRECLIENTE,
		COMENTARIO = COMENT
	WHERE IDPEDIDO= IDPEDIDO2 ;
	END ;
ELSE

BEGIN
	INSERT INTO pedido (IDPEDIDO, VENDEDOR, CLIENTE, NOMBRE, FECHA_CREADA, MONTO, ESTADO,FECHA_GRABADA,RESPONSABLE,COMENTARIO)
VALUES
	(IDPEDIDO2, IDVENDEDOR,IDCLIENTE,NOMBRECLIENTE,FECHA,MONTOP,1,NOW(),RESPONSABLE2,COMENT) ;
END ;
END IF ;
END
;;
DELIMITER ;
