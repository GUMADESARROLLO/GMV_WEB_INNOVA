/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : gmv_innova

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-17 09:07:19
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
INSERT INTO `anulaciones` VALUES ('50P2', '14', 'pedido anulado por existencia', '2017-07-14 11:56:41');
INSERT INTO `anulaciones` VALUES ('50P10', '14', 'No hay existencia del producto', '2017-07-14 16:21:25');
INSERT INTO `anulaciones` VALUES ('53P2', '14', 'Pedido duplicado y mal elavorado', '2017-07-17 13:14:41');
INSERT INTO `anulaciones` VALUES ('53P10', '14', 'pedido se modifica se enviara en el próximo envió por una cantidad mayor ', '2017-07-18 15:20:10');
INSERT INTO `anulaciones` VALUES ('50P12', '14', 'pedido de prueba', '2017-08-03 09:08:08');
INSERT INTO `anulaciones` VALUES ('50P13', '14', 'pedido de prueba', '2017-08-03 09:08:29');
INSERT INTO `anulaciones` VALUES ('50P14', '14', 'pedido de prueba', '2017-08-03 09:08:49');
INSERT INTO `anulaciones` VALUES ('48P13', '14', 'pedido duplicado se procedera a anularlo, vendedor ya maneja el caso', '2017-08-04 11:55:18');

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
INSERT INTO `clientes` VALUES ('NV50-5', 'distribuidora prueba', 'de la iglesia 2 c al sur ', '58471235', 'prueba@gnail.com', 'CARAZO', 'jinotepe', '50', '764422', '1', '2017-07-14 16:20:24');
INSERT INTO `clientes` VALUES ('NV51-1', 'JUDITH GEOCONDA GONZALEZ RAYO', 'MADRIZ, SAN JUAN RIO COCO, CEMENTERIO 100 METROS ESTE.', '88570523', '', 'MADRIZ', 'SAN JUAN RIO COCO', '51', '4911008800005J', '1', '2017-07-28 09:41:00');
INSERT INTO `clientes` VALUES ('NV46-1', 'Luis  Manue Gutierrez  Aburto', 'Antigua mansion Luis somoza 2 1/2 cuadra  norte', '88777730', 'Igutierrez8228@gmail.com', 'MANAGUA', 'Managua', '46', '0011910820051 J', '1', '2017-07-28 09:40:22');

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
  `CODIGO` varchar(5) DEFAULT NULL,
  `RUTA` varchar(20) DEFAULT NULL,
  `PEDIDO` varchar(12) DEFAULT NULL,
  `COBRO` varchar(12) DEFAULT NULL,
  `RAZON` varchar(12) DEFAULT NULL,
  `CLIENTE` varchar(10) DEFAULT NULL COMMENT 'Consecutivo para la insercion de cliente nuevo'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of llaves
-- ----------------------------
INSERT INTO `llaves` VALUES ('51', 'SCASTILLO', '30', '1', '1', '2');
INSERT INTO `llaves` VALUES ('24', 'OFICINAS', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('23', 'CMOREIRA', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('53', 'JDELGADO', '31', '1', '1', '1');
INSERT INTO `llaves` VALUES ('46', 'MROJAS', '13', '1', '1', '2');
INSERT INTO `llaves` VALUES ('47', 'DESPINOZA', '8', '1', '1', '1');
INSERT INTO `llaves` VALUES ('48', 'CMORAN', '14', '1', '1', '1');
INSERT INTO `llaves` VALUES ('49', 'EXPORTACION', '1', '1', '1', '1');
INSERT INTO `llaves` VALUES ('50', 'HMORALES', '14', '1', '1', '6');
INSERT INTO `llaves` VALUES ('52', 'GANTONIO', '13', '1', '2', '3');
INSERT INTO `llaves` VALUES ('99999', 'gerencia', '5', '1', '1', '1');
INSERT INTO `llaves` VALUES ('54', 'KMARINA', '18', '1', '1', '1');

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
  `COMENTARIO_CONFIR` varchar(1000) DEFAULT NULL,
  `NUEVO` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pedido
-- ----------------------------
INSERT INTO `pedido` VALUES ('53P3', '53', 'NINGUNO', 'CL000178', 'JUAN CARLOS HERRERA HUERTA', '5188.2001953125', '3', '2017-07-14 15:44:26', '2017-07-14 16:43:10', '2017-07-17 08:41:02', ' 2 Articulo', 'basado en pedido #23407', '0');
INSERT INTO `pedido` VALUES ('53P4', '53', 'NINGUNO', 'CL005751', 'WILLIAM DE JESUS PEREZ RAYO', '34941', '3', '2017-07-17 06:09:02', '2017-07-17 06:09:13', '2017-07-17 08:38:39', ' 1 Articulo', 'basado en pedido #23406', '0');
INSERT INTO `pedido` VALUES ('53P2', '53', 'NINGUNO', 'CL000126', 'BAYARDO ANTONIO DUARTE', '34941', '4', '2017-07-14 15:42:39', '2017-07-17 11:18:46', null, ' 1 Articulo', null, '0');
INSERT INTO `pedido` VALUES ('53P5', '53', 'NINGUNO', 'CL000126', 'BAYARDO ANTONIO DUARTE', '34941', '3', '2017-07-17 11:18:37', '2017-07-17 11:18:46', '2017-07-17 13:13:28', ' 1 Articulo', 'basado en pedido #23408', '0');
INSERT INTO `pedido` VALUES ('53P6', '53', 'NINGUNO', 'CL000039', 'FELIX PEDRO RIZO ZAMORA', '69882', '3', '2017-07-18 13:40:17', '2017-07-18 13:41:41', '2017-07-18 14:06:53', ' 1 Articulo', 'basado en pedido #23414', '0');
INSERT INTO `pedido` VALUES ('53P7', '53', 'NINGUNO', 'CL005084', 'SALVADOR PICADO MORAZÁN', '34941', '3', '2017-07-18 13:41:29', '2017-07-18 13:41:41', '2017-07-18 14:08:19', ' 1 Articulo', 'basado en pedido #23415', '0');
INSERT INTO `pedido` VALUES ('53P8', '53', 'NINGUNO', 'CL007850', 'MARIA AURORA HERRERA AGUIRE', '34941', '3', '2017-07-18 13:55:04', '2017-07-18 13:55:31', '2017-07-18 14:09:52', ' 1 Articulo', 'basado en pedido #23416', '0');
INSERT INTO `pedido` VALUES ('48P2', '48', 'NINGUNO', 'CL000013', 'JOSE MATILDE TORRES', '27529', '3', '2017-07-18 12:45:11', '2017-07-18 14:40:05', '2017-07-18 14:51:39', 'enviar el jueves por la mañana 1 Articulo 1 Articulo 1 Articulo', 'basado en pedido #23418', '0');
INSERT INTO `pedido` VALUES ('53P9', '53', 'NINGUNO', 'CL000064', 'ALEJANDRO ANDINO CRUZ', '10376.400390625', '3', '2017-07-18 14:44:52', '2017-07-18 14:55:29', '2017-07-18 15:26:05', ' 2 Articulo', 'basado en pedido #23419', '0');
INSERT INTO `pedido` VALUES ('53P10', '53', 'NINGUNO', 'CL001590', 'ROLANDO URBINA MENDEZ', '10482.2998046875', '4', '2017-07-18 14:55:19', '2017-07-18 14:55:29', null, ' 1 Articulo', null, '0');
INSERT INTO `pedido` VALUES ('51P2', '51', 'NINGUNO', 'CL008388', 'SANTOS BISMARCK MORALES ESPINOZA', '6879.35009765625', '3', '2017-07-17 13:57:33', '2017-07-18 17:44:01', '2017-07-20 08:55:57', ' 3 Articulo 3 Articulo', 'basado en pedido #23425,23426,23427', '0');
INSERT INTO `pedido` VALUES ('51P3', '51', 'NINGUNO', 'CL000342', 'BELKI JAHAIRA RUIZ LOPEZ', '12741.1005859375', '3', '2017-07-18 11:14:37', '2017-07-18 17:44:01', '2017-07-20 08:52:53', ' 3 Articulo', 'basado en pedido #23423, 23424', '0');
INSERT INTO `pedido` VALUES ('53P11', '53', 'NINGUNO', 'CL005753', 'VICTOR CEFERINO MENDEZ LEIVA', '3388.2001953125', '3', '2017-07-18 15:29:04', '2017-07-20 20:01:33', '2017-07-21 08:06:55', ' 1 Articulo', 'basado en pedido #23438', '0');
INSERT INTO `pedido` VALUES ('53P12', '53', 'NINGUNO', 'CL000068', 'MARIA DEL CARMEN ZELAYA GONZALES', '44089.140625', '3', '2017-07-20 20:01:23', '2017-07-20 20:01:33', '2017-07-21 08:14:45', ' 2 Articulo', 'basado en pedido #23439,23440', '0');
INSERT INTO `pedido` VALUES ('53P13', '53', 'NINGUNO', 'CL000183', 'JULIO FONSECA MATAMOROS', '69882', '3', '2017-07-21 09:03:30', '2017-07-21 09:03:48', '2017-07-21 10:17:14', ' 1 Articulo', 'basado en pedido #23450', '0');
INSERT INTO `pedido` VALUES ('48P3', '48', 'NINGUNO', 'CL000010', 'FELIX ERNESTO CHAVARRIA TORREZ', '34154.828125', '3', '2017-07-21 16:43:51', '2017-07-21 16:44:25', '2017-07-21 16:51:23', ' 1 Articulo', 'basado en pedido #23462', '0');
INSERT INTO `pedido` VALUES ('46P2', '46', 'NINGUNO', 'CL008412', 'JORGE LUIS GONZALEZ RIVERA', '23399.650390625', '3', '2017-07-21 16:50:27', '2017-07-21 16:50:53', '2017-07-21 16:52:39', 'Entregarse el lunes por la mañana 1 Articulo', 'basado en pedido #23463', '0');
INSERT INTO `pedido` VALUES ('46P3', '46', 'NINGUNO', 'CL000373', 'JOVANNY ANTONIO PEREZ FLORES', '29699.849609375', '3', '2017-07-21 16:52:04', '2017-07-21 16:52:24', '2017-07-21 16:55:07', ' 1 Articulo', 'basado en pedido #23464', '0');
INSERT INTO `pedido` VALUES ('47P2', '47', 'NINGUNO', 'CL000008', 'EVERT ZAMIR ORTEGA CUEVAS', '29699.849609375', '3', '2017-07-21 16:44:51', '2017-07-21 18:02:16', '2017-07-24 07:38:24', ' 1 Articulo', 'basado en pedido #23465', '0');
INSERT INTO `pedido` VALUES ('53P15', '53', 'NINGUNO', 'CL008365', 'SALVADOR IGNACIO GURDIAN ESPINOZA', '29699.849609375', '3', '2017-07-24 14:33:11', '2017-07-24 14:34:30', '2017-07-24 16:25:12', ' 1 Articulo', 'basado en pedido #23469', '0');
INSERT INTO `pedido` VALUES ('48P4', '48', 'NINGUNO', 'CL008132', 'PAUBLINO ALBERTO HERRERA GALINDO', '23399.650390625', '3', '2017-07-24 16:45:28', '2017-07-24 16:46:21', '2017-07-25 07:59:06', 'enviar el dia lunes 31 julio pedido de contado al cliente le saldra c$ 213.40 por bulto en total  c$ 21,340.00 por los 100 bultos. 1 Articulo', 'basado en pedido #23470', '0');
INSERT INTO `pedido` VALUES ('48P5', '48', 'NINGUNO', 'CL006774', 'DANIEL SAAVEDRA', '34154.828125', '3', '2017-07-25 11:22:00', '2017-07-25 11:22:16', '2017-07-25 14:23:42', 'este pedido es de credito  1 Articulo', 'basado en pedido #23477', '0');
INSERT INTO `pedido` VALUES ('51P4', '51', 'NINGUNO', 'CL008265', 'CEYLIN AMERTIN REYES HERRERA', '7509.9111328125', '3', '2017-07-24 14:02:42', '2017-07-25 11:37:00', '2017-07-25 14:30:12', ' 1 Articulo', 'basado en pedido #23481', '0');
INSERT INTO `pedido` VALUES ('51P5', '51', 'NINGUNO', 'CL000270', 'GUSTAVO ALBERTO SAAVEDRA CRUZ', '29699.849609375', '3', '2017-07-24 14:03:48', '2017-07-25 11:37:00', '2017-07-25 14:31:15', ' 1 Articulo', 'basado en pedido #23482', '0');
INSERT INTO `pedido` VALUES ('48P6', '48', 'NINGUNO', 'CL000149', 'OSCAR MOLINARES CASTELLON', '102544.6015625', '3', '2017-07-25 12:28:19', '2017-07-25 12:28:34', '2017-07-25 14:27:53', 'por favor enviar el lunes 310717 por la mañana 1 Articulo', 'basado en pedido #23479', '0');
INSERT INTO `pedido` VALUES ('48P7', '48', 'NINGUNO', 'CL000023', 'RAMON ORLANDO REYES YAQUETIS', '29699.849609375', '3', '2017-07-25 12:30:48', '2017-07-25 12:31:02', '2017-07-25 14:29:07', 'enviar el viernes 280717 con precio especial. 1 Articulo', 'basado en pedido #23480', '0');
INSERT INTO `pedido` VALUES ('46P4', '46', 'NINGUNO', 'CL000347', 'GRISELA LETICIA SANCHEZ GARCIA', '89099.546875', '3', '2017-07-21 16:57:30', '2017-07-25 13:30:39', '2017-07-25 14:24:47', 'Cliente tiene precio nuevo de 275 1 Articulo', 'basado en pedido #23435', '0');
INSERT INTO `pedido` VALUES ('46P5', '46', 'NINGUNO', 'CL008298', 'JENNY DEL SOCORRO BLANCO', '59399.69921875', '3', '2017-07-25 13:30:29', '2017-07-25 13:30:39', '2017-07-25 14:26:05', 'Entregar el dia  03/08/ 17    1 Articulo', 'basado en pedido #23478', '0');
INSERT INTO `pedido` VALUES ('54P6', '54', 'NINGUNO', 'CL000142', 'MARIANELA AREVALO SANDINO', '43649.8515625', '3', '2017-07-25 15:21:19', '2017-07-25 15:28:10', '2017-07-25 16:42:53', 'cholin con Promocion 10%  MAS 25+1  2 Articulo', 'basado en pedido #23483, 23484', '0');
INSERT INTO `pedido` VALUES ('54P7', '54', 'NINGUNO', 'CL000142', 'MARIANELA AREVALO SANDINO', '23399.650390625', '3', '2017-07-25 15:27:49', '2017-07-25 15:28:10', '2017-07-25 16:44:39', '10 agosto  1 Articulo', 'basado en pedido #23485', '0');
INSERT INTO `pedido` VALUES ('54P8', '54', 'NINGUNO', 'CL000166', 'JENNY MENDIETA GONZALEZ', '54000', '3', '2017-07-25 15:32:21', '2017-07-25 15:33:31', '2017-07-25 16:48:26', ' 1 Articulo', 'basado en pedido #23487', '0');
INSERT INTO `pedido` VALUES ('48P8', '48', 'NINGUNO', 'CL000013', 'JOSE MATILDE TORRES', '34154.828125', '3', '2017-07-25 15:43:10', '2017-07-25 15:43:31', '2017-07-25 16:46:06', 'enviar por fa mañana por la mañana con el precio especial 1 Articulo', 'basado en pedido #23486', '0');
INSERT INTO `pedido` VALUES ('48P9', '48', 'NINGUNO', 'CL007595', 'EDDYSON MERCADO PARRALES', '29699.849609375', '3', '2017-07-25 16:49:26', '2017-07-25 16:49:43', '2017-07-26 08:17:44', 'este cliente le aprobaron el credito para que le pregunte a lic cristian, va con precio especial enviarlo jueves por fa 1 Articulo', 'basado en pedido #23489', '0');
INSERT INTO `pedido` VALUES ('53P16', '53', 'NINGUNO', 'CL000187', 'WALTER ANTONIO RAMOS ZAMORA', '29699.849609375', '3', '2017-07-25 17:31:04', '2017-07-25 17:41:03', '2017-07-26 08:18:46', ' 1 Articulo', 'basado en pedido #23490', '0');
INSERT INTO `pedido` VALUES ('53P17', '53', 'NINGUNO', 'CL000181', 'EULALIO ARTURO HERNANDEZ', '29699.849609375', '3', '2017-07-25 17:32:47', '2017-07-25 17:41:03', '2017-07-26 08:21:08', ' 1 Articulo', 'basado en pedido #23491', '0');
INSERT INTO `pedido` VALUES ('53P18', '53', 'NINGUNO', 'CL007850', 'MARIA AURORA HERRERA AGUIRE', '35639.8203125', '3', '2017-07-25 17:35:49', '2017-07-25 17:41:03', '2017-07-26 08:22:18', ' 1 Articulo', 'basado en pedido #23492', '0');
INSERT INTO `pedido` VALUES ('48P10', '48', 'NINGUNO', 'CL008235', 'ROGER ALBERTO ROBELO JUAREZ', '23399.650390625', '3', '2017-07-26 11:12:29', '2017-07-26 11:12:42', '2017-07-26 13:27:51', 'por favor entregar por la mañana el 280717 con precio especial .gracias ya cancelo fact  12209 con rec # 0583 por 6,340.08 buen dia .saludes 1 Articulo', 'basado en pedido #23494', '0');
INSERT INTO `pedido` VALUES ('54P9', '54', 'NINGUNO', 'CL000036', 'JULISSA GUADALUPE MENA VIGIL', '13950', '3', '2017-07-26 12:23:25', '2017-07-26 12:23:39', '2017-07-26 13:29:56', ' 1 Articulo', 'basado en pedido #23495', '0');
INSERT INTO `pedido` VALUES ('53P19', '53', 'NINGUNO', 'CL000058', 'ERICK RAMON CASTRO', '13950', '3', '2017-07-26 15:22:11', '2017-07-26 15:22:21', '2017-07-26 15:55:30', ' 1 Articulo', 'Basado en pedido #23500', '0');
INSERT INTO `pedido` VALUES ('48P11', '48', 'NINGUNO', 'CL002141', 'SUPERMERCADOS CEREALES Y VEGETALES', '4560.5498046875', '3', '2017-07-26 16:19:02', '2017-07-26 16:19:17', '2017-07-26 16:59:43', ' 2 Articulo', 'basado en pedido #23501', '0');
INSERT INTO `pedido` VALUES ('51P6', '51', 'NINGUNO', 'CL000204', 'ELITH TORUÑO RODRIGUEZ', '21989.44140625', '3', '2017-07-26 12:40:23', '2017-07-26 16:24:26', '2017-07-26 17:07:23', ' 2 Articulo', 'basado en pedido #23507', '0');
INSERT INTO `pedido` VALUES ('51P7', '51', 'NINGUNO', 'CL000358', 'MANUEL DE JESUS ARMAS CRUZ', '12299.232421875', '3', '2017-07-26 12:41:34', '2017-07-26 16:24:26', '2017-07-26 17:08:37', ' 1 Articulo', 'basado en pedido #23508', '0');
INSERT INTO `pedido` VALUES ('51P8', '51', 'NINGUNO', 'CL000095', 'RAUL ARIEL ARMAS PERALTA', '23399.650390625', '3', '2017-07-26 12:43:59', '2017-07-26 16:24:26', '2017-07-26 17:09:58', 'precio final con la promocion c$ 220 el bulto 1 Articulo', 'basado en pedido #23509', '0');
INSERT INTO `pedido` VALUES ('51P9', '51', 'NINGUNO', 'CL000092', 'CELSON PEREZ DIAZ', '14040', '3', '2017-07-26 12:45:47', '2017-07-26 16:24:26', '2017-07-26 17:11:43', 'bonificacion 1 bulto de cholin 6000h  1 Articulo', 'basado en pedido #23510', '0');
INSERT INTO `pedido` VALUES ('51P10', '51', 'NINGUNO', 'CL000239', 'EDUARDO RAMON ROQUE LOPEZ', '14040', '3', '2017-07-26 12:47:29', '2017-07-26 16:24:26', '2017-07-26 17:01:04', 'bonificado 1 bulto de cholin 6000h 1 Articulo', 'basado en pedido #23502', '0');
INSERT INTO `pedido` VALUES ('51P11', '51', 'NINGUNO', 'CL000340', 'NORMAN MAXIMILIANO QUINTERO CARRASCO', '24225.697265625', '3', '2017-07-26 12:48:20', '2017-07-26 16:24:26', '2017-07-26 17:02:13', ' 2 Articulo', 'basado en pedido #23503', '0');
INSERT INTO `pedido` VALUES ('51P12', '51', 'NINGUNO', 'CL001059', 'COOPERATIVA DE SERVICIO MULTIPLE 20 DE ABRIL', '6098.76025390625', '3', '2017-07-26 12:49:11', '2017-07-26 16:24:26', '2017-07-26 17:03:46', ' 1 Articulo', 'basado en pedido #23504', '0');
INSERT INTO `pedido` VALUES ('51P13', '51', 'NINGUNO', 'CL008400', 'CRISTIAN RAFAEL PALMA GONZALEZ', '28799.69921875', '3', '2017-07-26 14:58:03', '2017-07-26 16:24:26', '2017-07-26 17:04:58', 'precio de promocion 278.36 via nota de credito 1 Articulo', 'basado en pedido #23505', '0');
INSERT INTO `pedido` VALUES ('51P14', '51', 'NINGUNO', 'CL008306', 'GREYSI YANGERI BELTRAN LOPEZ', '44549.7734375', '3', '2017-07-26 16:20:39', '2017-07-26 16:24:26', '2017-07-26 17:06:07', 'precio promocion 283.51  1 Articulo', 'basado en pedido #23506', '0');
INSERT INTO `pedido` VALUES ('51P15', '51', 'NINGUNO', 'CL000406', 'ZULEMA ESPERANZA TORREZ QUIÑONES', '11926.46484375', '3', '2017-07-26 16:22:20', '2017-07-26 16:24:26', '2017-07-26 17:12:49', ' 1 Articulo', 'basado en pedido #23511', '0');
INSERT INTO `pedido` VALUES ('47P3', '47', 'NINGUNO', 'CL000050', 'JUAN CARLOS HERNANDEZ MACAREÑO', '89099.546875', '3', '2017-07-26 17:11:54', '2017-07-26 17:13:25', '2017-07-26 17:25:44', ' 1 Articulo', 'basado en pedido #23512', '0');
INSERT INTO `pedido` VALUES ('47P4', '47', 'NINGUNO', 'CL000022', 'NELSON ALEJANDRO PADILLA REYES', '258106.9375', '3', '2017-07-26 17:12:53', '2017-07-26 17:13:25', '2017-07-26 17:28:51', ' 1 Articulo', 'basado en pedido #23513', '0');
INSERT INTO `pedido` VALUES ('53P20', '53', 'NINGUNO', 'CL000067', 'MARIA AUXILIADORA NUÑES MELGARA', '23399.650390625', '3', '2017-07-27 10:50:40', '2017-07-27 10:50:52', '2017-07-27 11:32:39', ' 1 Articulo', 'basado en pedido #23518', '0');
INSERT INTO `pedido` VALUES ('53P21', '53', 'NINGUNO', 'CL000058', 'ERICK RAMON CASTRO', '29699.849609375', '3', '2017-07-27 10:51:48', '2017-07-27 10:52:08', '2017-07-27 11:33:43', ' 1 Articulo', 'basado en pedido #23519', '0');
INSERT INTO `pedido` VALUES ('54P10', '54', 'NINGUNO', 'CL000327', 'JOSE LUIS LUNA', '54000', '3', '2017-07-27 11:18:16', '2017-07-27 11:18:38', '2017-07-27 11:35:38', '100+5 1 Articulo', 'basado en pedido #23520', '0');
INSERT INTO `pedido` VALUES ('54P11', '54', 'NINGUNO', 'CL000280', 'JAIRO ROMAN OLIVAREZ LOPEZ', '37349.6484375', '3', '2017-07-27 15:19:56', '2017-07-27 15:20:14', '2017-07-27 16:15:03', '220 precio 900 y cholin 6000 25+1 mas descuento enviar lo mas pronto 2 Articulo', 'basado en pedido #23524, 23525', '0');
INSERT INTO `pedido` VALUES ('46P6', '46', 'NINGUNO', 'CL000373', 'JOVANNY ANTONIO PEREZ FLORES', '29699.849609375', '3', '2017-07-27 16:24:10', '2017-07-27 16:24:29', '2017-07-28 09:02:15', ' 1 Articulo', 'basado en pedido #23527', '0');
INSERT INTO `pedido` VALUES ('46P7', '46', 'NINGUNO', 'NV46-1', 'Luis  Manue Gutierrez  Aburto', '62470', '3', '2017-07-27 16:26:55', '2017-07-27 16:27:13', '2017-07-28 09:11:22', ' 2 Articulo', 'basado en pedido #23528,23529', '1');
INSERT INTO `pedido` VALUES ('51P16', '51', 'NINGUNO', 'CL008243', 'ANNER JOSUE MONTENEGRO LOPEZ', '81899.1953125', '3', '2017-07-27 11:21:13', '2017-07-27 16:32:59', '2017-07-28 09:47:37', 'cholin 900h precio 220, eco plus 1x24 283.51, eco plus 1x4 278.36 3 Articulo', 'basado en pedido#23536,23537,23538', '0');
INSERT INTO `pedido` VALUES ('51P17', '51', 'NINGUNO', 'CL006514', 'HERNAN TORUÑO LOPEZ', '59399.69921875', '3', '2017-07-27 14:10:13', '2017-07-27 16:33:00', '2017-07-28 09:48:41', ' 1 Articulo', 'basado en pedido #23539', '0');
INSERT INTO `pedido` VALUES ('51P18', '51', 'NINGUNO', 'CL000314', 'SUPER DEL HOGAR', '11926.46484375', '3', '2017-07-27 16:32:45', '2017-07-27 16:33:00', '2017-07-28 09:51:16', ' 1 Articulo', 'basado en pedido #23540', '0');
INSERT INTO `pedido` VALUES ('53P22', '53', 'NINGUNO', 'CL000069', 'PEDRO ALEJANDRO MARTINEZ OROZCO', '53099.5', '3', '2017-07-28 08:07:15', '2017-07-28 08:09:50', '2017-07-28 09:16:39', ' 2 Articulo', 'basado en pedido #23533,23534', '0');
INSERT INTO `pedido` VALUES ('53P23', '53', 'NINGUNO', 'CL008365', 'SALVADOR IGNACIO GURDIAN ESPINOZA', '3875', '3', '2017-07-28 08:09:27', '2017-07-28 08:09:51', '2017-07-28 09:17:41', ' 1 Articulo', 'basado en pedido #23535', '0');
INSERT INTO `pedido` VALUES ('46P8', '46', 'NINGUNO', 'CL000014', 'JOSE NARCISO TRUJILLO RIVAS', '23399.650390625', '3', '2017-07-28 09:02:51', '2017-07-28 09:03:11', '2017-07-28 09:12:33', ' 1 Articulo', 'basado en pedido #23530', '0');
INSERT INTO `pedido` VALUES ('48P12', '48', 'NINGUNO', 'CL000346', 'JACSON URBINA URBINA', '57554.4765625', '3', '2017-07-28 09:03:37', '2017-07-28 09:03:51', '2017-07-28 09:14:07', 'entregar lunes por la mañana con precio especial 2 Articulo', 'basado en pedido #23531,23532', '0');
INSERT INTO `pedido` VALUES ('51P19', '51', 'NINGUNO', 'CL000092', 'CELSON PEREZ DIAZ', '7750', '3', '2017-07-28 12:08:53', '2017-07-28 12:09:01', '2017-07-28 14:47:37', ' 1 Articulo', 'basado en pedido #23545', '0');
INSERT INTO `pedido` VALUES ('46P9', '46', 'NINGUNO', 'CL008274', 'ERLING CASTILLO ROJAS', '29699.849609375', '3', '2017-07-28 13:49:07', '2017-07-28 13:49:29', '2017-07-28 14:44:07', 'Entregarse el dia martes 1/ 8/ 17 1 Articulo', 'basado en pedido #23544', '0');
INSERT INTO `pedido` VALUES ('47P5', '47', 'NINGUNO', 'CL000053', 'SANDRA ELENA VARGAS RUIZ', '160580.484375', '3', '2017-07-27 12:04:46', '2017-07-28 17:10:56', '2017-07-28 17:15:07', ' 1 Articulo', 'basado en pedido #23551', '0');
INSERT INTO `pedido` VALUES ('47P6', '47', 'NINGUNO', 'CL008295', 'YADER MARCELINO MEJIA TERCERO', '58499.125', '3', '2017-07-27 15:50:07', '2017-07-28 17:10:56', '2017-07-28 17:16:37', ' 1 Articulo', 'basado en pedido #23552', '0');
INSERT INTO `pedido` VALUES ('47P7', '47', 'NINGUNO', 'CL008410', 'GIOVANI ALVARADO MALDONADO', '15000', '3', '2017-07-31 10:21:05', '2017-07-31 10:22:16', '2017-07-31 10:24:41', ' 1 Articulo', 'basado en pedido #23553', '0');
INSERT INTO `pedido` VALUES ('46P10', '46', 'NINGUNO', 'CL000345', 'VICTOR MANUEL MEDRANO', '4650', '3', '2017-07-31 11:18:19', '2017-07-31 11:18:27', '2017-07-31 13:15:37', ' 1 Articulo', 'basado en pedido #23554', '0');
INSERT INTO `pedido` VALUES ('53P24', '53', 'NINGUNO', 'CL000126', 'BAYARDO ANTONIO DUARTE', '34941', '3', '2017-07-31 14:59:48', '2017-07-31 14:59:59', '2017-07-31 16:22:13', ' 1 Articulo', 'basado en pedido #23568', '0');
INSERT INTO `pedido` VALUES ('47P8', '47', 'NINGUNO', 'CL008280', 'JONATHAN FRANCISCO MENDOZA DAVILA', '24776.1015625', '3', '2017-07-31 15:49:16', '2017-07-31 15:49:27', '2017-07-31 16:18:16', 'Nota, estenpedido realmente es de 1,000 bolsones de Cholin 900 hojas. 1 Articulo', 'basado en pedido #23565', '0');
INSERT INTO `pedido` VALUES ('51P20', '51', 'NINGUNO', 'CL000208', 'FREDYS ROBERTO BUSTILLOS PREYTES', '34941', '3', '2017-07-31 15:50:11', '2017-07-31 15:50:22', '2017-07-31 16:20:54', 'Osman el sistema no me deja pasar 100 cholin 900h precio 220 el bulto para que los factures por favor 1 Articulo', 'basado en pedido #23566,23567', '0');
INSERT INTO `pedido` VALUES ('53P25', '53', 'NINGUNO', 'CL000039', 'FELIX PEDRO RIZO ZAMORA', '69882', '3', '2017-07-31 15:55:17', '2017-07-31 16:10:56', '2017-07-31 16:23:35', ' 1 Articulo', 'basado en pedido #23569', '0');
INSERT INTO `pedido` VALUES ('53P26', '53', 'NINGUNO', 'CL000038', 'LUCAS ANTONIO BALTODANO AGUIRRE', '34941', '3', '2017-07-31 18:42:53', '2017-07-31 18:44:38', '2017-08-01 08:47:50', ' 1 Articulo', 'basado en pedido #23570', '0');
INSERT INTO `pedido` VALUES ('54P12', '54', 'NINGUNO', 'CL000322', 'FRANKLIN OMAR BENAVIDEZ BERMUDEZ', '15000', '3', '2017-08-01 14:32:15', '2017-08-01 15:47:50', '2017-08-02 07:38:57', 'promocion 1 Articulo', 'basado en pedido #23573', '0');
INSERT INTO `pedido` VALUES ('54P13', '54', 'NINGUNO', 'CL004989', 'SABAS JOSE NAVARRO GARCIA', '34941', '3', '2017-08-01 15:56:02', '2017-08-01 15:56:28', '2017-08-02 07:39:58', ' 1 Articulo', 'basado en pedido #23574', '0');
INSERT INTO `pedido` VALUES ('54P14', '54', 'NINGUNO', 'CL000322', 'FRANKLIN OMAR BENAVIDEZ BERMUDEZ', '34941', '3', '2017-08-01 16:30:05', '2017-08-01 16:30:12', '2017-08-02 07:41:33', ' 1 Articulo', 'basado en pedido #23575', '0');
INSERT INTO `pedido` VALUES ('51P21', '51', 'NINGUNO', 'CL000096', 'FELIX PEDRO PALMA MONTOYA', '34941', '3', '2017-08-02 14:31:26', '2017-08-02 14:31:40', '2017-08-02 14:59:42', ' 1 Articulo', 'basado en pedido #23578', '0');
INSERT INTO `pedido` VALUES ('46P11', '46', 'NINGUNO', 'CL000020', 'MEYRA LINA CELESTE BLANDON MENDIETA', '69882', '3', '2017-08-02 16:31:20', '2017-08-02 16:31:31', '2017-08-02 17:30:49', 'Entregarse el dia jueves 3 /8/17 1 Articulo', 'basado en pedido #23580', '0');
INSERT INTO `pedido` VALUES ('50P12', '50', 'NINGUNO', 'CL000250', 'ALBA IMELDA MEDINA POZO', '8855.591796875', '4', '2017-07-27 11:17:56', '2017-08-03 07:53:50', null, 'Comentario para alba medina 3 Articulo', null, '0');
INSERT INTO `pedido` VALUES ('50P13', '50', 'NINGUNO', 'CL000343', 'ADRIAN FIGUEROA RIVERA', '29154.12109375', '4', '2017-07-27 19:05:36', '2017-08-03 07:53:50', null, 'Procesar urgente 3 Articulo 3 Articulo', null, '0');
INSERT INTO `pedido` VALUES ('50P14', '50', 'NINGUNO', 'CL008328', 'GLORIA ELENEA RAMOS REYES', '20616.6171875', '4', '2017-07-27 19:06:33', '2017-08-03 07:53:50', null, ' 4 Articulo', null, '0');
INSERT INTO `pedido` VALUES ('51P22', '51', 'NINGUNO', 'CL000092', 'CELSON PEREZ DIAZ', '34941', '3', '2017-08-03 10:41:28', '2017-08-04 07:15:43', '2017-08-04 07:29:45', 'precio especial C$ 283.51 1 Articulo', 'basado en pedido #23585', '0');
INSERT INTO `pedido` VALUES ('51P23', '51', 'NINGUNO', 'CL000092', 'CELSON PEREZ DIAZ', '34941', '3', '2017-08-03 10:44:12', '2017-08-04 07:15:43', '2017-08-04 07:31:39', 'precio especial C$ 283.51 bajar en la Distribuidora # 2  1 Articulo', 'basado en pedido #23585', '0');
INSERT INTO `pedido` VALUES ('51P24', '51', 'NINGUNO', 'CL008381', 'NOEL ANTONIO GONZALEZ', '6988.2001953125', '3', '2017-08-03 14:21:18', '2017-08-04 07:15:43', '2017-08-04 07:33:04', ' 1 Articulo', 'basado en pedido #23586', '0');
INSERT INTO `pedido` VALUES ('51P25', '51', 'NINGUNO', 'CL000404', 'LUISA AMANDA ESPINAL MONCADA', '41929.19921875', '3', '2017-08-04 07:15:29', '2017-08-04 07:15:43', '2017-08-04 07:34:13', 'precio especial C$ 283.51 1 Articulo', 'basado en pedido #23587', '0');
INSERT INTO `pedido` VALUES ('53P27', '53', 'NINGUNO', 'CL000060', 'JOSE EDUARDO GADEA HERRERA', '34941', '3', '2017-08-04 08:10:11', '2017-08-04 08:13:20', '2017-08-04 08:57:08', ' 1 Articulo', 'basado en pedido #23588', '0');
INSERT INTO `pedido` VALUES ('53P28', '53', 'NINGUNO', 'CL005752', 'MARINA DE DOLORES ZELEDON BLANDON', '3000', '3', '2017-08-04 08:11:39', '2017-08-04 08:13:21', '2017-08-04 08:59:04', ' 1 Articulo', 'basado en pedido #23589', '0');
INSERT INTO `pedido` VALUES ('53P29', '53', 'NINGUNO', 'CL000061', 'JOSE RAMON CHAVARRIA ALTAMIRANO', '36141', '3', '2017-08-04 08:13:08', '2017-08-04 08:13:21', '2017-08-04 09:00:49', ' 2 Articulo', 'basado en pedido #23590,23591', '0');
INSERT INTO `pedido` VALUES ('51P26', '51', 'NINGUNO', 'CL000097', 'ELIEZER ENRIQUE SANCHEZ CARDENAS', '11926.46484375', '3', '2017-08-04 09:48:45', '2017-08-04 09:49:39', '2017-08-04 09:50:52', ' 1 Articulo', 'basado en pedido #23592', '0');
INSERT INTO `pedido` VALUES ('51P27', '51', 'NINGUNO', 'CL000404', 'LUISA AMANDA ESPINAL MONCADA', '11926.46484375', '3', '2017-08-04 09:49:27', '2017-08-04 09:49:39', '2017-08-04 10:23:48', ' 1 Articulo', 'basado en pedido #23593', '0');
INSERT INTO `pedido` VALUES ('54P15', '54', 'NINGUNO', 'CL008218', 'LARRY JOSE GARCIA LUGO (Miselanea San Jose)', '34941', '3', '2017-08-03 10:09:47', '2017-08-04 11:13:28', '2017-08-04 11:38:38', ' 1 Articulo', 'basado en pedido #23594', '0');
INSERT INTO `pedido` VALUES ('46P12', '46', 'NINGUNO', 'CL000310', 'CARLOS ALBERTO RUIZ JARQUIN', '34941', '3', '2017-08-04 11:18:47', '2017-08-04 11:19:01', '2017-08-04 11:40:16', ' 1 Articulo', 'basado en pedido #23595', '0');
INSERT INTO `pedido` VALUES ('48P13', '48', 'NINGUNO', 'CL000024', 'RANDOL JOSE NOVOA RAMIREZ', '18448.84765625', '4', '2017-08-04 11:48:34', '2017-08-04 11:50:21', null, 'enviar el 070817 por la mañana, gracias 1 Articulo', null, '0');
INSERT INTO `pedido` VALUES ('54P16', '54', 'NINGUNO', 'CL000327', 'JOSE LUIS LUNA', '46799.30078125', '3', '2017-08-07 15:18:27', '2017-08-07 15:18:57', '2017-08-08 08:47:38', ' 1 Articulo', 'basado en pedido #23602', '0');
INSERT INTO `pedido` VALUES ('51P28', '51', 'NINGUNO', 'CL000366', 'JAVIER GADEA BERMUDES', '23459.232421875', '3', '2017-08-07 15:28:20', '2017-08-07 15:28:30', '2017-08-08 08:44:11', ' 3 Articulo', 'basado en pedido #23599,23600,23601', '0');
INSERT INTO `pedido` VALUES ('46P13', '46', 'NINGUNO', 'CL008367', 'JUANA ALBERTINA GUEVARA MENDOZA', '29699.849609375', '3', '2017-08-07 17:20:44', '2017-08-07 17:20:50', '2017-08-08 08:39:17', 'Entregar el dia miercoles 1 Articulo', 'basado en pedido #23598', '0');
INSERT INTO `pedido` VALUES ('51P29', '51', 'NINGUNO', 'CL008130', 'TEODORA JIMENEZ RIVERA', '58499.125', '3', '2017-08-08 10:07:36', '2017-08-08 11:23:52', '2017-08-08 11:56:32', ' 1 Articulo', 'basado en pedido #23605', '0');
INSERT INTO `pedido` VALUES ('51P30', '51', 'NINGUNO', 'CL007630', 'JUSPHEAN CAROLINA ESPINOZA LOPEZ', '21989.44140625', '3', '2017-08-08 11:17:46', '2017-08-08 11:23:52', '2017-08-08 11:57:52', ' 2 Articulo', 'basado en pedido #23606,23607', '0');
INSERT INTO `pedido` VALUES ('54P17', '54', 'NINGUNO', 'CL000036', 'JULISSA GUADALUPE MENA VIGIL', '116998.25', '3', '2017-08-08 14:25:01', '2017-08-08 14:26:57', '2017-08-08 15:24:49', 'enviar mañana o viernes 1 Articulo', 'basado en pedido #23608', '0');
INSERT INTO `pedido` VALUES ('54P18', '54', 'NINGUNO', 'CL000036', 'JULISSA GUADALUPE MENA VIGIL', '13950', '3', '2017-08-08 14:26:46', '2017-08-08 14:26:57', '2017-08-08 15:26:16', '21 +1 1 Articulo', 'basado en pedido #23609', '0');
INSERT INTO `pedido` VALUES ('53P30', '53', 'NINGUNO', 'CL000182', 'JOSE ABRAHAM FONSECA', '82799.3515625', '3', '2017-08-09 06:55:52', '2017-08-09 10:48:53', '2017-08-09 10:51:57', ' 2 Articulo', 'basado en pedido #23613,23614', '0');
INSERT INTO `pedido` VALUES ('53P31', '53', 'NINGUNO', 'CL000329', 'CESAR ENRRIQUE VALLE PALACIOS', '29699.849609375', '3', '2017-08-09 06:56:55', '2017-08-09 10:48:53', '2017-08-09 10:53:04', ' 1 Articulo', 'basado en pedido #23615', '0');
INSERT INTO `pedido` VALUES ('48P14', '48', 'NINGUNO', 'CL007595', 'IVANIA DEL CARMEN LOPEZ Y/O EDDYSON MERCADO', '23399.650390625', '1', '2017-08-09 11:07:57', '2017-08-09 11:08:11', null, 'envierlo lunes 140817 despues de cancelar fact # 12417 que la cancelara  110817 1 Articulo', null, '0');

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
INSERT INTO `pedido_detalle` VALUES ('53P3', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '10.0', '349.41', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P3', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '5.0', '338.82', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P3', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P4', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P2', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P2', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '10.0', '349.41', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P2', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '5.0', '338.82', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P5', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P6', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '200.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P7', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P8', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P2', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P9', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '20.0', '349.41', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P9', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '10.0', '338.82', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P10', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '30.0', '349.41', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('51P2', '6IN00056', 'CHOLIN 250 HD 32/1', '10.0', '155.00', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('51P2', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '2.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('51P2', '7IN00023', 'CHOLIN 900 HS 24/1', '15.0', '275.29', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('51P3', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '20.0', '349.41', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('51P3', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '5.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('51P3', '7IN00023', 'CHOLIN 900 HS 24/1', '10.0', '275.29', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P11', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '10.0', '338.82', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P12', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P12', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '27.0', '338.82', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('53P13', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '200.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P3', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '115.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('46P2', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('46P3', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('47P2', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P15', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P4', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P5', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '115.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P4', '7IN00023', 'CHOLIN 900 HS 24/1', '31.0', '275.29', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P5', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P6', '7IN00018', 'P.H  GENERICO', '500.0', '218.18', null, '0', '6');
INSERT INTO `pedido_detalle` VALUES ('48P7', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('46P4', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '300.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('46P5', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '200.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P6', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P6', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '25.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('54P7', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P8', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '100.0', '600.00', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('48P8', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '115.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P9', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P16', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P17', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P18', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '120.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P10', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P9', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '25.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('53P19', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '25.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('48P11', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '5.0', '190.39', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('48P11', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '20.0', '180.43', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('51P6', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '40.0', '349.41', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P6', '7IN00023', 'CHOLIN 900 HS 24/1', '40.0', '275.29', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P7', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '40.0', '349.41', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P8', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P9', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '26.0', '600.00', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('51P10', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '26.0', '600.00', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('51P11', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '40.0', '349.41', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P11', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '40.0', '338.82', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P12', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '20.0', '338.82', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('51P13', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '100.0', '338.82', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P14', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '150.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P15', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '40.0', '338.82', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('47P3', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '300.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('47P4', '7IN00018', 'P.H  GENERICO', '1300.0', '218.18', null, '0', '9');
INSERT INTO `pedido_detalle` VALUES ('53P20', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P21', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P10', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '100.0', '600.00', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('54P11', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P11', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '25.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('46P6', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('46P7', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('46P7', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('51P16', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P16', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '100.0', '338.82', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P16', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P17', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '200.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P18', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '40.0', '338.82', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('53P22', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P22', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P23', '6IN00056', 'CHOLIN 250 HD 32/1', '25.0', '155.00', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('46P8', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P12', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '115.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P12', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P19', '6IN00056', 'CHOLIN 250 HD 32/1', '50.0', '155.00', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('46P9', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('47P5', '7IN00018', 'P.H  GENERICO', '800.0', '218.18', null, '0', '8');
INSERT INTO `pedido_detalle` VALUES ('47P6', '7IN00023', 'CHOLIN 900 HS 24/1', '250.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('47P7', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '25.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('46P10', '6IN00056', 'CHOLIN 250 HD 32/1', '30.0', '155.00', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('53P24', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('47P8', '7IN00023', 'CHOLIN 900 HS 24/1', '90.0', '275.29', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P20', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P25', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '200.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P26', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P12', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '25.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('54P13', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P14', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P21', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('46P11', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '200.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('50P12', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '23.0', '349.41', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('50P12', '6IN00046', 'PH NATURAL PLUS - 24/1', '2.0', '192.00', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('50P12', '7IN00023', 'CHOLIN 900 HS 24/1', '5.0', '275.29', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('50P13', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '45.0', '349.41', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('50P13', '6IN00046', 'PH NATURAL PLUS - 24/1', '23.0', '192.00', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('50P13', '7IN00023', 'CHOLIN 900 HS 24/1', '45.0', '275.29', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('50P14', '6IN00044', 'PT LYMPION PROFESIONAL B3', '34.0', '370.98', null, '15', '0');
INSERT INTO `pedido_detalle` VALUES ('50P14', '6IN00047', 'P.H PAPIEL INSTITUCIONAL NATURAL  6/1', '10.0', '210.90', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('50P14', '7IN00023', 'CHOLIN 900 HS 24/1', '10.0', '275.29', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('50P14', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '5.0', '338.82', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('51P22', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P23', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P24', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '20.0', '349.41', null, '0', '10');
INSERT INTO `pedido_detalle` VALUES ('51P25', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '120.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P27', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P28', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '5.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('53P29', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P29', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '2.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('51P26', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '40.0', '338.82', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P27', '6IN00010', 'PH PAPIEL ECO PLUS B 6/4', '40.0', '338.82', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('54P15', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('46P12', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P13', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '60.0', '349.41', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('54P16', '7IN00023', 'CHOLIN 900 HS 24/1', '200.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P28', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '40.0', '349.41', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P28', '6IN00056', 'CHOLIN 250 HD 32/1', '18.0', '155.00', null, '0', '0');
INSERT INTO `pedido_detalle` VALUES ('51P28', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '15.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('46P13', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P29', '7IN00023', 'CHOLIN 900 HS 24/1', '250.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('51P30', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '40.0', '349.41', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('51P30', '7IN00023', 'CHOLIN 900 HS 24/1', '40.0', '275.29', null, '0', '12');
INSERT INTO `pedido_detalle` VALUES ('54P17', '7IN00023', 'CHOLIN 900 HS 24/1', '500.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('54P18', '6IN00059', 'PH CHOLIN 1000 HS 8/6', '25.0', '600.00', null, '0', '7');
INSERT INTO `pedido_detalle` VALUES ('53P30', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '200.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P30', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('53P31', '6IN00002', 'PH PAPIEL ECO PLUS B 24/1', '100.0', '349.41', null, '0', '15');
INSERT INTO `pedido_detalle` VALUES ('48P14', '7IN00023', 'CHOLIN 900 HS 24/1', '100.0', '275.29', null, '0', '15');

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
INSERT INTO `razon` VALUES ('52R1307172', '52', 'CL001378', null, '2017-07-13 19:22:15', '');

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
INSERT INTO `razon_detalle` VALUES ('52R1307172', '16', 'CIERRE DE CAMPAÑA', 'CAMPAÑA');
INSERT INTO `razon_detalle` VALUES ('52R1307172', '17', 'PROMOVER CAMPAÑA', 'CAMPAÑA');
INSERT INTO `razon_detalle` VALUES ('52R1307172', '19', 'LLENAR ENCUESTA', 'ENCUESTA');

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('14', 'osanchez', null, 'OSMAN SAC', 'OS1379', '3', '');
INSERT INTO `usuario` VALUES ('2', 'SCASTILLO', '51', 'Silvio Ernesto Castillo Zeledo', 'SC5421', '1', '');
INSERT INTO `usuario` VALUES ('3', 'OFICINAS', '24', 'OFICINAS INNOVA', 'OFI2165', '1', '');
INSERT INTO `usuario` VALUES ('4', 'CMOREIRA', '23', 'CESIA MOREIRA', 'CM5485', '1', '');
INSERT INTO `usuario` VALUES ('5', 'admin', null, 'ALDER HERNANDEZ', 'a7m1425.', '5', '');
INSERT INTO `usuario` VALUES ('6', 'JDELGADO', '53', 'JUNIOR DELGADO', 'Jd7853', '1', '');
INSERT INTO `usuario` VALUES ('7', 'MROJAS', '46', 'MARIA ROJAS', 'MR4571', '1', '');
INSERT INTO `usuario` VALUES ('8', 'DESPINOZA', '47', 'DAVID ESPINOZA', 'DE6248', '1', '');
INSERT INTO `usuario` VALUES ('9', 'CMORAN', '48', 'CARLOS JOSE MORAN CASTILLO', 'CM9347', '1', '');
INSERT INTO `usuario` VALUES ('10', 'EXPORTACION', '49', 'EXPORTACION', 'ES2635', '1', '');
INSERT INTO `usuario` VALUES ('11', 'HMORALES', '50', 'HINDLEY MORALES OSUNA', 'HM5746', '1', '');
INSERT INTO `usuario` VALUES ('12', 'GANTONIO', '52', 'GERARDO ANTONIO CARIAS ESPINOZA', 'EP9731', '1', '');
INSERT INTO `usuario` VALUES ('13', 'KMARINA', '54', 'KATHERINE MARINA PEREZ GONZALES', 'EC2843', '1', '');
INSERT INTO `usuario` VALUES ('15', 'gventas', '99999', 'Alejandro Paredes', 'gv123', '1', '');
INSERT INTO `usuario` VALUES ('16', 'gerencia', '7777', 'Fabricio', 'gerencia!2017', '6', '');

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
INSERT INTO `visitas` VALUES ('0', 'NV50-5', '2017-07-14', '12.1727196', '-86.106136', 'NOLOC', '15:54:46', '16:01:23', 'TIPO VISITA: PEDIDO: 50P10', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008246', '2017-07-14', '12.1727196', '-86.106136', 'LOCAL', '16:04:42', '16:13:29', 'TIPO VISITA: PEDIDO: 50P11', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000126', '2017-07-14', '12.1727196', '-86.106136', 'LOCAL', '15:41:48', '15:42:39', 'TIPO VISITA: PEDIDO: 53P2', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000178', '2017-07-14', '12.1727196', '-86.106136', 'LOCAL', '15:43:58', '15:44:26', 'TIPO VISITA: PEDIDO: 53P3', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000178', '2017-07-14', '12.1727196', '-86.106136', 'NOLOC', '16:41:24', '16:42:18', 'TIPO VISITA: PEDIDO: 53P2', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000126', '2017-07-14', '12.1727196', '-86.106136', 'NOLOC', '16:42:34', '16:43:00', 'TIPO VISITA: PEDIDO: 53P3', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL005751', '2017-07-17', '11.9777654', '-86.096545', 'NOLOC', '06:08:25', '06:09:02', 'TIPO VISITA: PEDIDO: 53P4', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000126', '2017-07-17', '12.9292973', '-85.918844', 'NOLOC', '11:18:23', '11:18:38', 'TIPO VISITA: PEDIDO: 53P5', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000039', '2017-07-18', '12.9352122', '-85.912168', 'NOLOC', '13:39:49', '13:40:17', 'TIPO VISITA: PEDIDO: 53P6', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL005084', '2017-07-18', '12.9352122', '-85.912168', 'LOCAL', '13:41:07', '13:41:29', 'TIPO VISITA: PEDIDO: 53P7', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL007850', '2017-07-18', '12.9342417', '-85.913047', 'NOLOC', '13:54:43', '13:55:04', 'TIPO VISITA: PEDIDO: 53P8', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000013', '2017-07-18', '12.1334354', '-86.235039', 'LOCAL', '12:43:03', '12:45:11', 'TIPO VISITA: PEDIDO: 48P2', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000064', '2017-07-18', '12.9214248', '-85.923906', 'LOCAL', '14:44:10', '14:44:52', 'TIPO VISITA: PEDIDO: 53P9', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL001590', '2017-07-18', '12.919234', '-85.925704', 'LOCAL', '14:54:02', '14:55:19', 'TIPO VISITA: PEDIDO: 53P10', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008388', '2017-07-17', '12.8568621', '-86.095949', 'NOLOC', '13:55:11', '13:57:33', 'TIPO VISITA: PEDIDO: 51P2', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000342', '2017-07-18', '12.8568621', '-86.095949', 'NOLOC', '11:13:23', '11:14:37', 'TIPO VISITA: PEDIDO: 51P3', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL005753', '2017-07-18', '12.9220157', '-85.923819', 'NOLOC', '15:28:32', '15:29:04', 'TIPO VISITA: PEDIDO: 53P11', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000068', '2017-07-20', '12.0742966', '-86.100373', 'NOLOC', '20:00:29', '20:01:23', 'TIPO VISITA: PEDIDO: 53P12', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000183', '2017-07-21', '12.0742966', '-86.100373', 'NOLOC', '09:03:11', '09:03:30', 'TIPO VISITA: PEDIDO: 53P13', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000010', '2017-07-21', '12.1727196', '-86.106136', 'LOCAL', '16:43:29', '16:43:51', 'TIPO VISITA: PEDIDO: 48P3', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008412', '2017-07-21', '12.1727196', '-86.106136', 'LOCAL', '16:49:42', '16:50:28', 'TIPO VISITA: PEDIDO: 46P2', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000373', '2017-07-21', '12.1727294', '-86.106137', 'LOCAL', '16:51:49', '16:52:04', 'TIPO VISITA: PEDIDO: 46P3', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000008', '2017-07-21', '12.1727294', '-86.106137', 'LOCAL', '16:44:19', '16:44:51', 'TIPO VISITA: PEDIDO: 47P2', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008365', '2017-07-24', '12.1021388', '-86.264259', 'NOLOC', '14:32:39', '14:33:11', 'TIPO VISITA: PEDIDO: 53P15', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008365', '2017-07-24', '12.1021388', '-86.264259', 'NOLOC', '14:32:39', '14:33:11', 'TIPO VISITA: PEDIDO: 53P15', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008132', '2017-07-24', '12.131086', '-86.217388', 'LOCAL', '16:42:21', '16:45:28', 'TIPO VISITA: PEDIDO: 48P4', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL006774', '2017-07-25', '12.1309085', '-86.217447', 'LOCAL', '11:20:38', '11:22:00', 'TIPO VISITA: PEDIDO: 48P5', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008265', '2017-07-24', '12.1727196', '-86.106136', 'LOCAL', '14:01:37', '14:02:42', 'TIPO VISITA: PEDIDO: 51P4', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000270', '2017-07-24', '12.1727196', '-86.106136', 'NOLOC', '14:03:26', '14:03:48', 'TIPO VISITA: PEDIDO: 51P5', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000149', '2017-07-25', '12.1334354', '-86.235039', 'LOCAL', '12:25:05', '12:28:19', 'TIPO VISITA: PEDIDO: 48P6', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000023', '2017-07-25', '12.1334354', '-86.235039', 'LOCAL', '12:28:55', '12:30:48', 'TIPO VISITA: PEDIDO: 48P7', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000347', '2017-07-21', '12.1727196', '-86.106136', 'LOCAL', '16:54:22', '16:57:30', 'TIPO VISITA: PEDIDO: 46P4', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008298', '2017-07-25', '12.1473826', '-86.263966', 'LOCAL', '13:28:14', '13:30:29', 'TIPO VISITA: PEDIDO: 46P5', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000142', '2017-07-25', '11.7585127', '-86.046572', 'LOCAL', '15:18:10', '15:21:19', 'TIPO VISITA: PEDIDO: 54P6', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000142', '2017-07-25', '11.7567835', '-86.046939', 'NOLOC', '15:24:29', '15:27:49', 'TIPO VISITA: PEDIDO: 54P7', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000166', '2017-07-25', '11.7567835', '-86.046939', 'NOLOC', '15:31:44', '15:32:21', 'TIPO VISITA: PEDIDO: 54P8', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000013', '2017-07-25', '12.1396086', '-86.250586', 'LOCAL', '15:41:42', '15:43:10', 'TIPO VISITA: PEDIDO: 48P8', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL007595', '2017-07-25', '12.1262016', '-86.243506', 'LOCAL', '16:47:50', '16:49:26', 'TIPO VISITA: PEDIDO: 48P9', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008365', '2017-07-24', '12.1021388', '-86.264259', 'NOLOC', '14:32:39', '14:33:11', 'TIPO VISITA: PEDIDO: 53P15', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000187', '2017-07-25', '12.9197191', '-85.929656', 'NOLOC', '17:30:41', '17:31:04', 'TIPO VISITA: PEDIDO: 53P16', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000181', '2017-07-25', '12.9271739', '-85.924225', 'NOLOC', '17:32:19', '17:32:47', 'TIPO VISITA: PEDIDO: 53P17', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL007850', '2017-07-25', '12.9203776', '-85.925823', 'NOLOC', '17:35:32', '17:35:49', 'TIPO VISITA: PEDIDO: 53P18', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008235', '2017-07-26', '12.1306364', '-86.216286', 'LOCAL', '11:08:46', '11:12:29', 'TIPO VISITA: PEDIDO: 48P10', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000166', '2017-07-25', '11.7567835', '-86.046939', 'NOLOC', '15:31:44', '15:32:21', 'TIPO VISITA: PEDIDO: 54P8', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000036', '2017-07-26', '11.9719405', '-86.086182', 'LOCAL', '12:22:22', '12:23:25', 'TIPO VISITA: PEDIDO: 54P9', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000058', '2017-07-26', '13.0942439', '-85.998706', 'LOCAL', '15:20:18', '15:22:11', 'TIPO VISITA: PEDIDO: 53P19', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL002141', '2017-07-26', '12.1321873', '-86.264296', 'LOCAL', '16:16:18', '16:19:02', 'TIPO VISITA: PEDIDO: 48P11', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000204', '2017-07-26', '12.1021388', '-86.264259', 'NOLOC', '12:39:06', '12:40:23', 'TIPO VISITA: PEDIDO: 51P6', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000358', '2017-07-26', '13.6334959', '-86.476782', 'NOLOC', '12:41:04', '12:41:34', 'TIPO VISITA: PEDIDO: 51P7', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000095', '2017-07-26', '13.6282054', '-86.475280', 'NOLOC', '12:42:30', '12:43:59', 'TIPO VISITA: PEDIDO: 51P8', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000092', '2017-07-26', '13.6282054', '-86.475280', 'NOLOC', '12:44:31', '12:45:47', 'TIPO VISITA: PEDIDO: 51P9', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000239', '2017-07-26', '13.6282054', '-86.475280', 'NOLOC', '12:46:17', '12:47:29', 'TIPO VISITA: PEDIDO: 51P10', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000340', '2017-07-26', '13.6282054', '-86.475280', 'NOLOC', '12:47:48', '12:48:20', 'TIPO VISITA: PEDIDO: 51P11', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL001059', '2017-07-26', '13.6372571', '-86.478990', 'NOLOC', '12:48:37', '12:49:11', 'TIPO VISITA: PEDIDO: 51P12', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008400', '2017-07-26', '13.6334959', '-86.476782', 'LOCAL', '14:56:31', '14:58:03', 'TIPO VISITA: PEDIDO: 51P13', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008306', '2017-07-26', '13.6334994', '-86.476791', 'NOLOC', '16:01:28', '16:20:39', 'TIPO VISITA: PEDIDO: 51P14', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000406', '2017-07-26', '13.4814565', '-86.581250', 'LOCAL', '16:21:45', '16:22:20', 'TIPO VISITA: PEDIDO: 51P15', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000050', '2017-07-26', '12.5764452', '-87.027352', 'LOCAL', '17:10:57', '17:11:54', 'TIPO VISITA: PEDIDO: 47P3', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000022', '2017-07-26', '12.5767384', '-87.027164', 'LOCAL', '17:12:27', '17:12:53', 'TIPO VISITA: PEDIDO: 47P4', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000067', '2017-07-27', '12.9336748', '-85.912285', 'LOCAL', '10:49:48', '10:50:40', 'TIPO VISITA: PEDIDO: 53P20', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000058', '2017-07-27', '12.9336748', '-85.912285', 'NOLOC', '10:51:31', '10:51:48', 'TIPO VISITA: PEDIDO: 53P21', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000327', '2017-07-27', '11.9833956', '-86.097881', 'LOCAL', '11:16:52', '11:18:16', 'TIPO VISITA: PEDIDO: 54P10', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000327', '2017-07-27', '11.9833956', '-86.097881', 'LOCAL', '11:16:52', '11:18:16', 'TIPO VISITA: PEDIDO: 54P10', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000280', '2017-07-27', '11.8486296', '-86.198381', 'LOCAL', '15:18:19', '15:19:56', 'TIPO VISITA: PEDIDO: 54P11', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000373', '2017-07-27', '12.1446097', '-86.261271', 'LOCAL', '16:23:49', '16:24:10', 'TIPO VISITA: PEDIDO: 46P6', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'NV46-1', '2017-07-27', '12.1446279', '-86.261297', 'LOCAL', '16:25:47', '16:26:55', 'TIPO VISITA: PEDIDO: 46P7', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008243', '2017-07-27', '13.0976896', '-86.349049', 'LOCAL', '11:17:21', '11:21:13', 'TIPO VISITA: PEDIDO: 51P16', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL006514', '2017-07-27', '13.0774968', '-86.367285', 'LOCAL', '14:09:37', '14:10:13', 'TIPO VISITA: PEDIDO: 51P17', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000314', '2017-07-27', '13.0776499', '-86.367495', 'LOCAL', '16:32:21', '16:32:45', 'TIPO VISITA: PEDIDO: 51P18', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000069', '2017-07-28', '11.9411091', '-85.948841', 'NOLOC', '08:05:45', '08:07:15', 'TIPO VISITA: PEDIDO: 53P22', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008365', '2017-07-28', '11.9411091', '-85.948841', 'NOLOC', '08:08:13', '08:09:27', 'TIPO VISITA: PEDIDO: 53P23', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000014', '2017-07-28', '12.1021388', '-86.264259', 'LOCAL', '09:01:57', '09:02:51', 'TIPO VISITA: PEDIDO: 46P8', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000346', '2017-07-28', '12.1307747', '-86.217447', 'LOCAL', '09:01:57', '09:03:37', 'TIPO VISITA: PEDIDO: 48P12', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000092', '2017-07-28', '12.8499841', '-86.098964', 'NOLOC', '12:08:31', '12:08:53', 'TIPO VISITA: PEDIDO: 51P19', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008274', '2017-07-28', '12.1470081', '-86.277805', 'LOCAL', '13:47:52', '13:49:07', 'TIPO VISITA: PEDIDO: 46P9', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000053', '2017-07-27', '12.6310373', '-87.127685', 'LOCAL', '12:03:58', '12:04:46', 'TIPO VISITA: PEDIDO: 47P5', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008295', '2017-07-27', '12.6234541', '-87.126692', 'LOCAL', '15:49:04', '15:50:07', 'TIPO VISITA: PEDIDO: 47P6', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008410', '2017-07-31', '12.4253782', '-86.876169', 'NOLOC', '10:19:56', '10:21:05', 'TIPO VISITA: PEDIDO: 47P7', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000345', '2017-07-31', '12.1473343', '-86.263848', 'LOCAL', '11:17:12', '11:18:19', 'TIPO VISITA: PEDIDO: 46P10', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000126', '2017-07-31', '12.9248385', '-85.918926', 'NOLOC', '14:59:34', '14:59:48', 'TIPO VISITA: PEDIDO: 53P24', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008280', '2017-07-31', '12.6311798', '-87.123798', 'LOCAL', '15:48:03', '15:49:16', 'TIPO VISITA: PEDIDO: 47P8', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000208', '2017-07-31', '13.0893012', '-86.349884', 'LOCAL', '15:44:28', '15:50:11', 'TIPO VISITA: PEDIDO: 51P20', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000039', '2017-07-31', '12.933522', '-85.916878', 'LOCAL', '15:55:02', '15:55:17', 'TIPO VISITA: PEDIDO: 53P25', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000038', '2017-07-31', '12.9192165', '-85.925746', 'NOLOC', '18:42:10', '18:42:53', 'TIPO VISITA: PEDIDO: 53P26', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000322', '2017-08-01', '11.4393634', '-85.831639', 'LOCAL', '14:31:34', '14:32:15', 'TIPO VISITA: PEDIDO: 54P12', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL004989', '2017-08-01', '11.4416443', '-85.831895', 'LOCAL', '15:51:31', '15:56:02', 'TIPO VISITA: PEDIDO: 54P13', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000322', '2017-08-01', '11.4391695', '-85.831669', 'LOCAL', '16:29:38', '16:30:05', 'TIPO VISITA: PEDIDO: 54P14', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000096', '2017-08-02', '13.922202', '-86.122978', 'LOCAL', '14:31:05', '14:31:26', 'TIPO VISITA: PEDIDO: 51P21', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000020', '2017-08-02', '12.1446189', '-86.261291', 'LOCAL', '16:30:24', '16:31:20', 'TIPO VISITA: PEDIDO: 46P11', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000092', '2017-08-03', '13.6374692', '-86.478377', 'LOCAL', '10:40:43', '10:41:28', 'TIPO VISITA: PEDIDO: 51P22', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000092', '2017-08-03', '13.6374692', '-86.478377', 'LOCAL', '10:41:30', '10:44:12', 'TIPO VISITA: PEDIDO: 51P23', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008381', '2017-08-03', '13.6374692', '-86.478377', 'LOCAL', '14:21:00', '14:21:18', 'TIPO VISITA: PEDIDO: 51P24', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000404', '2017-08-04', '12.1205248', '-86.206150', 'NOLOC', '07:14:38', '07:15:29', 'TIPO VISITA: PEDIDO: 51P25', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000060', '2017-08-04', '12.92782', '-85.916150', 'NOLOC', '08:09:54', '08:10:11', 'TIPO VISITA: PEDIDO: 53P27', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL005752', '2017-08-04', '12.92782', '-85.916150', 'NOLOC', '08:11:02', '08:11:39', 'TIPO VISITA: PEDIDO: 53P28', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000061', '2017-08-04', '12.92782', '-85.916150', 'NOLOC', '08:12:38', '08:13:08', 'TIPO VISITA: PEDIDO: 53P29', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000097', '2017-08-04', '12.1728025', '-86.106086', 'NOLOC', '09:48:12', '09:48:45', 'TIPO VISITA: PEDIDO: 51P26', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000404', '2017-08-04', '12.1728025', '-86.106086', 'NOLOC', '09:49:11', '09:49:27', 'TIPO VISITA: PEDIDO: 51P27', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008218', '2017-08-03', '11.9315251', '-85.955218', 'LOCAL', '10:09:30', '10:09:48', 'TIPO VISITA: PEDIDO: 54P15', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008218', '2017-08-03', '11.9315251', '-85.955218', 'LOCAL', '10:09:30', '10:09:48', 'TIPO VISITA: PEDIDO: 54P15', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000310', '2017-08-04', '12.1729188', '-86.106127', 'LOCAL', '11:18:29', '11:18:47', 'TIPO VISITA: PEDIDO: 46P12', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000024', '2017-08-04', '12.1728025', '-86.106086', 'LOCAL', '11:47:06', '11:48:34', 'TIPO VISITA: PEDIDO: 48P13', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000327', '2017-08-07', '12.1728025', '-86.106086', 'NOLOC', '15:17:02', '15:18:28', 'TIPO VISITA: PEDIDO: 54P16', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000366', '2017-08-07', '12.8509617', '-86.094509', 'LOCAL', '15:27:22', '15:28:20', 'TIPO VISITA: PEDIDO: 51P28', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008367', '2017-08-07', '12.1408684', '-86.303432', 'LOCAL', '17:20:03', '17:20:44', 'TIPO VISITA: PEDIDO: 46P13', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL008130', '2017-08-08', '13.0985963', '-86.356563', 'LOCAL', '10:06:57', '10:07:36', 'TIPO VISITA: PEDIDO: 51P29', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL007630', '2017-08-08', '12.9684537', '-86.234281', 'NOLOC', '11:17:17', '11:17:46', 'TIPO VISITA: PEDIDO: 51P30', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000036', '2017-08-08', '11.9718256', '-86.086272', 'LOCAL', '14:22:56', '14:25:02', 'TIPO VISITA: PEDIDO: 54P17', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000036', '2017-08-08', '11.9718256', '-86.086272', 'LOCAL', '14:25:04', '14:26:46', 'TIPO VISITA: PEDIDO: 54P18', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000182', '2017-08-09', '12.9228804', '-85.922113', 'LOCAL', '06:54:52', '06:55:52', 'TIPO VISITA: PEDIDO: 53P30', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL000329', '2017-08-09', '12.9230032', '-85.921650', 'LOCAL', '06:56:42', '06:56:55', 'TIPO VISITA: PEDIDO: 53P31', 'PEDIDO');
INSERT INTO `visitas` VALUES ('0', 'CL007595', '2017-08-09', '12.1462023', '-86.300518', 'LOCAL', '11:05:01', '11:07:57', 'TIPO VISITA: PEDIDO: 48P14', 'PEDIDO');

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
	IN COMENT VARCHAR(1000),
	IN NEWW VARCHAR(2))
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
	INSERT INTO pedido (IDPEDIDO, VENDEDOR, CLIENTE, NOMBRE, FECHA_CREADA, MONTO, ESTADO,FECHA_GRABADA,RESPONSABLE,COMENTARIO,NUEVO)
VALUES
	(IDPEDIDO2, IDVENDEDOR,IDCLIENTE,NOMBRECLIENTE,FECHA,MONTOP,1,NOW(),RESPONSABLE2,COMENT,NEWW) ;
END ;
END IF ;
END
;;
DELIMITER ;
