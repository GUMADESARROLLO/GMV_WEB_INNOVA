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
		//$this->servicios_model->Clientes($_POST['mVendedor']);
		$this->servicios_model->Clientes("50");
	}
	public function Historial()
	{
		$this->servicios_model->Historial($_POST['mVendedor']);
		//$this->servicios_model->Historial("50");
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
		//$PEDIDOS = '[{"detalles":{"nameValuePairs":{"ID0":"50P0507172","ARTICULO0":"6IN00002","DESC0":"PH PAPIEL ECO PLUS B 24/1","CANT0":"34.0","TOTAL0":"349.41","IVA0":"0","DESCUE0":"12","ID1":"50P0507172","ARTICULO1":"6IN00046","DESC1":"PH NATURAL PLUS - 24/1","CANT1":"12.0","TOTAL1":"192","IVA1":"0","DESCUE1":"0","ID2":"50P0507172","ARTICULO2":"6IN00047","DESC2":"P.H PAPIEL INSTITUCIONAL NATURAL  6/1","CANT2":"5.0","TOTAL2":"210.9","IVA2":"0","DESCUE2":"0"}},"mCliente":"CL008411","mComentario":"","mEstado":"0","mFecha":"2017-07-05 16:07:15","mIdPedido":"50P0507172","mNombre":"IZAYANA SUYEN VALLE LOPEZ","mPrecio":"15238.44","mVendedor":"50"}]';
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
}