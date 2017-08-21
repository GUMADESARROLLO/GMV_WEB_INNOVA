<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Servicio_controllers extends CI_Controller {

	public $miSumaPayaso;
	public function __construct(){
        parent::__construct();
        $this->load->model('servicios_model');        
    }
	
	public function Actividades()
	{
		$this->servicios_model->Actividades();
	}
	public function articulos()
	{
		$this->servicios_model->Articulos();
	}
	public function descuentos()
	{
		$this->servicios_model->descuentos();
	}
	public function cumple()
	{
		$this->servicios_model->uptCumple();
	}
	public function ClientesMora()
	{
		$this->servicios_model->ClienteMora($_POST['mVendedor']);
	}
	public function ClientesIndicadores()
	{
		$this->servicios_model->ClienteIndicadores($_POST['mVendedor']);
	}
	public function Clientes()
	{
		$this->servicios_model->Clientes($_POST['mVendedor']);
		//$this->servicios_model->Clientes("47");
	}

	public function allClientes()
	{
		$this->servicios_model->allClientes();
	}
	public function Historial()
	{
		$this->servicios_model->Historial($_POST['mVendedor']);
		//$this->servicios_model->Historial("50");
	}

	public function allHistorial()
	{
		$this->servicios_model->allHistorial();
	}
	public function Puntos()
	{
		//$this->servicios_model->Puntos("50");
		$this->servicios_model->Puntos($_POST['mVendedor']);
	}
	public function Agenda()
	{
		$this->servicios_model->Agenda($_POST['mVendedor']);
	}
	public function InsertCobros()
	{
		//$cobros = '[{"mCliente":"00998","mFecha":"2017-06-20 18:04:47","mIdCobro":"F09-C200617201","mImporte":"15000","mObservacion":"COBRO EXCESIVO","mRuta":"F09","mTipo":"EFECTIVO"},{"mCliente":"03408","mFecha":"2017-06-20 18:05:04","mIdCobro":"F09-C200617202","mImporte":"160","mObservacion":"EKISDE","mRuta":"F09","mTipo":"EFECTIVO"}]';
		$this->servicios_model->InsertCobros($_POST['pCobros']);
		//$this->servicios_model->InsertCobros($cobros);
	}
	public function InsertVisitas()
	{
		$this->servicios_model->InsertVisitas($_POST['mVisitas']);
	}
	public function InsertAgenda()
	{
		$this->servicios_model->InsertAgenda($_POST['mAgenda']);
	}
	public function LoginUsuario()
	{
		$this->servicios_model->LoginUsuario($_POST['usuario'],$_POST['pass']);
		//$this->servicios_model->LoginUsuario("KMARINA","KM6352");
	}
	public function insertPedidos()
	{		
		//$PEDIDOS = '[{"detalles":{"nameValuePairs":{"ID0":"52P2","ARTICULO0":"6IN00002","DESC0":"PH PAPIEL ECO PLUS B 24/1","CANT0":"2.0","TOTAL0":"349.41","IVA0":"0","DESCUE0":"10"}},"mCliente":"CL005491","mComentario":" 1 Articulo","mEstado":"1","mFecha":"2017-07-13 19:20:45","mIdPedido":"52P2","mNombre":"ASMINIA CHAVARRIA BAEZ","mNuevo":"0","mPrecio":"698.82","mVendedor":"52"},{"detalles":{"nameValuePairs":{"ID1":"52P3","ARTICULO1":"6IN00046","DESC1":"PH NATURAL PLUS - 24/1","CANT1":"3.0","TOTAL1":"192","IVA1":"0","DESCUE1":"0"}},"mCliente":"CL000217","mComentario":" 1 Articulo","mEstado":"1","mFecha":"2017-07-13 19:21:00","mIdPedido":"52P3","mNombre":"BENIGNO OCON MACHADO","mNuevo":"0","mPrecio":"576.0","mVendedor":"52"},{"detalles":{"nameValuePairs":{"ID2":"52P4","ARTICULO2":"6IN00010","DESC2":"PH PAPIEL ECO PLUS B 6/4","CANT2":"12.0","TOTAL2":"338.82","IVA2":"0","DESCUE2":"10"}},"mCliente":"CL000120","mComentario":"ASDASDASDASD 1 Articulo","mEstado":"1","mFecha":"2017-07-13 19:22:32","mIdPedido":"52P4","mNombre":"ANDRES IVAN FLORES RIOS","mNuevo":"0","mPrecio":"4065.84","mVendedor":"52"},{"detalles":{"nameValuePairs":{"ID3":"54P2","ARTICULO3":"6IN00002","DESC3":"PH PAPIEL ECO PLUS B 24/1","CANT3":"2.0","TOTAL3":"349.41","IVA3":"0","DESCUE3":"10"}},"mCliente":"CL007710","mComentario":" 1 Articulo","mEstado":"1","mFecha":"2017-07-13 19:27:13","mIdPedido":"54P2","mNombre":"ALVARO ISAAC PINEDA VALLEJO","mNuevo":"0","mPrecio":"698.82","mVendedor":"54"}]';
		$this->servicios_model->insertPedidos($_POST['PEDIDOS']);
		//$this->servicios_model->insertPedidos($PEDIDOS);
	}
	public function updatePedidos()
	{
		$this->servicios_model->updatePedidos($_POST['PEDIDOS']);
	}
	public function insertRazones()
	{
		$this->servicios_model->insertRazones($_POST['RAZONES']);
	}
	public function lotes()
	{
		$this->servicios_model->lotes();
	}
	public function CONSECUTIVO()
	{
		$this->servicios_model->CONSECUTIVO($_POST['usuario']);
		//$this->servicios_model->CONSECUTIVO("F09");
	}

	public function NuevosClientes()
	{
		//$PEDIDOS = '[{"mCliente":"NV-1","mCorreo":"ALKDER@GNAISD.COM","mCredito":"999999","mDepartamento":"LEON","mDireccion":"AS J SFD SE LA EKISDE 2C AL SUR F","mDisponible":"999999","mEstado":"0","mMoroso":"N","mMunicipio":"JINOTEPE","mNombre":"ALDER 1","mPuntos":"0","mRuc":"2121212121","mSaldo":"999999","mTelefono":"51578633","mVendedor":"F09","mMes":0},{"mCliente":"NV-2","mCorreo":"ADADA@GOMAICL.COM","mCredito":"999999","mDepartamento":"CARAZO","mDireccion":"ADSA ASD AD ASD ASSAD SA","mDisponible":"999999","mEstado":"0","mMoroso":"N","mMunicipio":"SAN FELIPE","mNombre":"ALDER 2","mPuntos":"0","mRuc":"545455454","mSaldo":"999999","mTelefono":"2145154515","mVendedor":"F09","mMes":0}]';
		$this->servicios_model->NuevosClientes($_POST['mCliente']);
		//$this->servicios_model->NuevosClientes($PEDIDOS);
	}
	public function updateClientes()
	{
		//$POST = '[{"mCliente":"NV-1","mNombre":"ALDER 1","mVendedor":"F09","mMes":0},{"mCliente":"NV-2","mNombre":"ALDER 2 ","mVendedor":"F09","mMes":0}]';
		$this->servicios_model->updateClientes($_POST['CLIENTES']);
		//$this->servicios_model->updateClientes($POST);		
	}

	public function prueba()
	{
		

		echo substr("NV-50-10",0,-((strlen("NV-50-10"))-3))."<br>";
		echo substr("NV-50-10",0,-5)."<br>";

		//echo strlen("NV-50-10")-3;

		/*for ($i=0; $i <3 ; $i++) { 
	    	list($h, $m, $s) = explode(':', "00:15:05"); 
	    	$miMunutos =   ($h * 3600) + ($m * 60) + $s; 	
	    	$this->miSumaPayaso += $miMunutos;
	    }
	    echo $this->conversorSegundosHoras($this->miSumaPayaso);*/
	}
	function segundos_a_hora($hora) { 
	    list($h, $m, $s) = explode(':', $hora); 
	    return ($h * 3600) + ($m * 60) + $s; 
	} 


	function conversorSegundosHoras($tiempo_en_segundos) {
		$horas = floor($tiempo_en_segundos / 3600);
		$minutos = floor(($tiempo_en_segundos - ($horas * 3600)) / 60);
		$segundos = $tiempo_en_segundos - ($horas * 3600) - ($minutos * 60);
 
		return $horas . ':' . $minutos . ":" . $segundos;
	}

	function imVendedores(){
		$this->servicios_model->imVendedores($_POST['mVendedor']);

	}
}