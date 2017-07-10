<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clientes_controller extends CI_Controller
{
    public function __construct(){
        parent::__construct();
        $this->load->library('session');

        if($this->session->userdata('logged')==0){ //No aceptar a usuarios sin loguearse
            redirect(base_url().'index.php/login','refresh');
        }
        $this->load->model('clientes_model');
    }
    
    public function index()
    {
        $data['clientes'] = $this->clientes_model->index();
        
        $this->load->view('header/header');
        $this->load->view('pages/menu');
        $this->load->view('pages/clientes/clientes',$data);
        $this->load->view('footer/footer');
        $this->load->view('jsview/js_clientes');
    }

    public function ajaxConfirmarCliente()
    {        
        $this->clientes_model->ajaxConfirmarCliente($this->input->post('id'),$this->input->post('vendedor'));
    }
}
?>