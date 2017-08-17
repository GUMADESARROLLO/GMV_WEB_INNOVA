<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'login_controller';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
/*

*´¨) 
¸.•´¸.•*´¨) ¸.•*¨) 
(¸.•´ (¸.•` ¤ Alder Hernandez 2017

*/
/******** MIS RUTAS **********/
// LOGIN
$route['login'] = 'login_controller/Acreditar';
$route['salir'] = 'login_controller/Salir';
$route['cambiarPass'] = 'login_controller/cambiarPass';
// FIN LOGIN

// RUTAS MENU
$route['Main'] = 'main_controller';
$route['ajaxGrafica']='pedidos_controller/ajaxGrafica';
$route['ajaxGraficaColum']='pedidos_controller/ajaxGraficaColum';
$route['ajaxGraficaLogaritmica']='pedidos_controller/ajaxGraficaLogaritmica';

/* PEDIDOS */
$route['pedidos'] = 'pedidos_controller';
$route['detallepedido/(:any)'] = 'pedidos_controller/detallePedido/$1';
$route['ajaxDetallePedido']='pedidos_controller/cabeceraPedido';
$route['ajaxPedido/(:any)']='pedidos_controller/DetallePedido/$1';
$route['ajaxUpdatePedido/(:any)/(:any)']='pedidos_controller/UpdateEstado/$1/$2';
$route['ajaxPedidoComen/(:any)']='pedidos_controller/ajaxPedidoComen/$1';
$route['ajaxPedidoComenAnu/(:any)']='pedidos_controller/ajaxPedidoComenAnu/$1';
$route['ajaxAnulacion']='pedidos_controller/ajaxAnulacion';
$route['ajaxConfirmacion']='pedidos_controller/ajaxConfirmacion';
$route['ajaxPedidoSearch']='pedidos_controller/ajaxPedidoSearch';

/* COBROS */
$route['cobros'] = 'cobros_controller';
$route['searchCobros/(:any)/(:any)']='cobros_controller/searchCobros/$1/$2';
$route['searchCobros']='cobros_controller/searchCobros';

/* GRUPOS */
$route['grupos'] = 'grupos_controller';
$route['nuevoGrupo'] = 'grupos_controller/nuevoGrupo';
$route['getVendedoresGrupo/(:any)'] = 'grupos_controller/getVendedoresGrupo/$1';
$route['getVendedoresGrupoAct/(:any)'] = 'grupos_controller/getVendedoresGrupoAct/$1';
$route['editarGrupo'] = 'grupos_controller/editarGrupo';

/* CLIENTES */
$route['ClientesWeb'] = 'clientes_controller';
$route['ajaxConfirmarCliente'] = 'clientes_controller/ajaxConfirmarCliente';

/*USUARIOS*/
$route['Usuarios'] = 'usuario_controller'; 

/*AGENDA*/
$route['ajaxCalendario/(:any)'] = 'agenda_controller/ajaxCalendario/$1';
$route['guardarComentario'] = 'agenda_controller/guardarComentario';
$route['traerComentario'] = 'agenda_controller/traerComentario';

/*CARGA DATOS*/
$route['carga'] = 'datos_controller';
$route['subirPlan'] = 'datos_controller/subirPlan';

// RUTA REPORTES
$route['reportes'] = 'reportes_controller';
$route['pedidos_por_vendedor/(:any)/(:any)'] = 'reportes_controller/pedidos_por_vendedor/$1/$2';

/*RUTAS DE DATOS*/
$route['datos'] = 'datos_controller/index';

/*RUTAS MONITOREO*/
$route['monitoreo'] = 'monitoreo_controller/index';
$route['detalleMonitoreo/(:any)/(:any)'] = 'monitoreo_controller/detalleMonitoreo/$1/$2';

/**********************************RUTAS DE SERVICIO REST**********************************/


$route['ARTICULOS'] = 'Servicio_controllers/articulos';
$route['descuentos'] = 'Servicio_controllers/descuentos';

$route['Clientes'] = 'Servicio_controllers/Clientes';
$route['allClientes'] = 'Servicio_controllers/allClientes';
$route['updateClientes'] = 'Servicio_controllers/updateClientes';
$route['NuevosClientes'] = 'Servicio_controllers/NuevosClientes';

$route['Puntos'] = 'Servicio_controllers/Puntos';
$route['InsertCobros'] = 'Servicio_controllers/InsertCobros';
$route['inVisitas'] = 'Servicio_controllers/InsertVisitas';
$route['LoginRest'] = 'Servicio_controllers/LoginUsuario';
$route['url_pedidos'] = 'Servicio_controllers/insertPedidos';
$route['updatePedidos'] = 'Servicio_controllers/updatePedidos';
$route['Actividades'] = 'Servicio_controllers/Actividades';
$route['pruebaJson'] = 'Servicio_controllers/pruebaJson';
$route['unAgenda'] = 'Servicio_controllers/InsertAgenda';

$route['Historial'] = 'Servicio_controllers/Historial';
$route['allHistorial'] = 'Servicio_controllers/allHistorial';

$route['insertRazones'] = 'Servicio_controllers/insertRazones';
$route['CONSECUTIVO'] = 'Servicio_controllers/CONSECUTIVO';

$route['LOTES'] = 'Servicio_controllers/lotes';
$route['uCumple'] = 'Servicio_controllers/cumple';
$route['prueba'] = 'Servicio_controllers/prueba';

$route['imVendedores'] = 'Servicio_controllers/imVendedores';
