<?php
class Clientes_model extends CI_Model
{
	
    public function __construct(){
        parent::__construct();
        $this->load->database();
    }

    public function index()
    {
        $query = $this->db->get('clientes');
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

    public function ajaxConfirmarCliente($idCLiente,$vendedor) {
        $datos = array('ESTADO' => 1,
                      'FECHA_INGRESO' => date('Y-m-d H:i:s')
                      );
        $this->db->where('vendedor',$vendedor);
        $this->db->where('IDCLIENTE',$idCLiente);
        echo $this->db->update('clientes',$datos);
    }
}