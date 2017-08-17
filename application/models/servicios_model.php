<?php
class servicios_model extends CI_Model
{
    public function __construct(){
        parent::__construct();
        $this->load->database();
    }
    public $BD = 'SBO_INNOVA_INDUSTRIAS';

    public  function OPen_database_odbcSAp(){//CONEXION A HANA INNOVA      
         $conn = @odbc_connect("HANA","SYSTEM","B1Adminhana", SQL_CUR_USE_ODBC);
         if(!$conn){
            echo '<div class="row errorConexion white-text center">
                    ¡ERROR DE CONEXION CON EL SERVIDOR!
                </div>';
         } else {
           return $conn;
         }        
    }

    public function Articulos()
    {
        $conn = $this->OPen_database_odbcSAp();
        $filtro = 0;   

        $query = 'SELECT * from '.$this->BD.'.GMV_ARTICULOS WHERE "EXISTENCIA" > '.$filtro.'';
        $resultado =  @odbc_exec($conn,$query);
        $rtnCliente=array();
        $i=0;

        while ($key = @odbc_fetch_array($resultado)){
            
            $rtnCliente['results'][$i]['mCodigo']       = utf8_encode($key['ARTICULO']);
            $rtnCliente['results'][$i]['mName']       = utf8_encode($key['NOMBRE']);
            $rtnCliente['results'][$i]['mExistencia']   = number_format($key['EXISTENCIA'],2,'.','');
            $rtnCliente['results'][$i]['mUnidad']       = $key['UNIDAD'];
            $rtnCliente['results'][$i]['mNlp1']         = number_format($key['NLP1'],2,'.','');
            $rtnCliente['results'][$i]['mNlp2']         = number_format($key['NLP2'],2,'.','');
            $rtnCliente['results'][$i]['mNlp3']         = number_format($key['NLP3'],2,'.','');
            $rtnCliente['results'][$i]['mNlp4']         = number_format($key['NLP4'],2,'.','');

            $i++;
        }
        echo json_encode($rtnCliente);
    }


    public function descuentos()
    {
        $i=0;
        $rtndescuento=array();
        $query = $this->db->get('descuentos');
        foreach($query->result_array() as $key){
            $rtndescuento['results'][$i]['mClasificacion']  = $key['CLASIFICACION'];
            $rtndescuento['results'][$i]['mCodigo']         = $key['CODIGO'];
            $rtndescuento['results'][$i]['mName']           = $key['DESCRIPCION'];
            $rtndescuento['results'][$i]['mPrecio']         = $key['PRECIO'];
            $rtndescuento['results'][$i]['mIva']            = $key['IVA'];
            $rtndescuento['results'][$i]['mMinimo']         = $key['MINIMO'];
            $rtndescuento['results'][$i]['mMaximo']         = $key['MAXIMO'];
            $rtndescuento['results'][$i]['mDescuento']      = $key['DESCUENTO'];
            $i++;
        }
        echo json_encode($rtndescuento);
    }


    public function nombreVem($Vendedor)
    {
        $conn = $this->OPen_database_odbcSAp();        
        $query = 'SELECT TOP 1 "NOMBRE" from '.$this->BD.'.SPINN_VENDEDORES WHERE "CODIGO" = '."'".$Vendedor."'".'';
        
        $resultado =  @odbc_exec($conn,$query);

        while ($key = @odbc_fetch_array($resultado)){
            return utf8_encode($key['NOMBRE']);
        }
    }
    public function Clientes($Vendedor)
    {

        $conn = $this->OPen_database_odbcSAp();        
        $query = 'SELECT * from '.$this->BD.'.GMV_CLIENTES WHERE "COD_VENDEDOR" = '."'".$Vendedor."'".'';
        //$query = 'SELECT * from '.$this->BD.'.GMV_CLIENTES ';

        $resultado =  @odbc_exec($conn,$query);
        $rtnCliente=array();
        $i=0;

        while ($key = @odbc_fetch_array($resultado)){
            $rtnCliente['results'][$i]['mCliente']      = $key['CODIGO'];
            $rtnCliente['results'][$i]['mNombre']       = utf8_encode($key['NOMBRE']);
            $rtnCliente['results'][$i]['mDireccion']    = utf8_encode($key['DIRECCION']);
            $rtnCliente['results'][$i]['mRuc']          = utf8_encode($key['RUC']);
            $rtnCliente['results'][$i]['mGrupo']        = utf8_encode($key['GRUPO']);
            $rtnCliente['results'][$i]['mLista']        = utf8_encode($key['LISTA']);
            $rtnCliente['results'][$i]['mCredito']      = number_format($key['CREDITO'],2, '.', '');
            $rtnCliente['results'][$i]['mSaldo']        = number_format($key['SALDO'],2, '.', '');
            $rtnCliente['results'][$i]['mDisponible']   = number_format($key['DISPONIBLE'],2, '.', '');

            $i++;
        }
        echo json_encode($rtnCliente);
    }

    public function allClientes()
    {
        $conn = $this->OPen_database_odbcSAp();        
        $query = 'SELECT * from '.$this->BD.'.GMV_CLIENTES';
        //$query = 'SELECT * from '.$this->BD.'.GMV_CLIENTES ';

        $resultado =  @odbc_exec($conn,$query);
        $rtnCliente=array();
        $i=0;

        while ($key = @odbc_fetch_array($resultado)){
            $rtnCliente['results'][$i]['mCliente']      = $key['CODIGO'];
            $rtnCliente['results'][$i]['mNombre']       = utf8_encode($key['NOMBRE']);
            $rtnCliente['results'][$i]['mDireccion']    = utf8_encode($key['DIRECCION']);
            $rtnCliente['results'][$i]['mRuc']          = utf8_encode($key['RUC']);
            $rtnCliente['results'][$i]['mGrupo']        = utf8_encode($key['GRUPO']);
            $rtnCliente['results'][$i]['mLista']        = utf8_encode($key['LISTA']);
            $rtnCliente['results'][$i]['mCredito']      = number_format($key['CREDITO'],2, '.', '');
            $rtnCliente['results'][$i]['mSaldo']        = number_format($key['SALDO'],2, '.', '');
            $rtnCliente['results'][$i]['mDisponible']   = number_format($key['DISPONIBLE'],2, '.', '');

            $i++;
        }
        echo json_encode($rtnCliente);
    }
    public function porcentaje($actual,$meta)
    {
        if ($meta != 0) {
            return number_format((($actual/$meta)*100),0,',','');
        }return 0;
    }
    public function formatFechaPHP($fecha){ //funcion para formatear la fecha en d-m-Y para mostrarlo en vistas
        $fecha = strtotime(str_replace(" 00:00:00.000000000", "", $fecha));
        $newFecha = date('Y-m-d',$fecha);
        return $newFecha;
    }
    public function Historial($Vendedor)
    {
        $i=0;
        $rtnCliente=array();
        $conn = $this->OPen_database_odbcSAp();        
        $query = 'SELECT * from '.$this->BD.'.GMV_HTSCOMPRA_3M WHERE "CODVENDEDOR" = '."'".$Vendedor."'".'';
        
        $resultado =  @odbc_exec($conn,$query);

        while ($key = @odbc_fetch_array($resultado)){
            $rtnCliente['results'][$i]['mArticulo']    = $key['CODARTICULO'];
            $rtnCliente['results'][$i]['mNombre']      = utf8_encode($key['NOMBRE']);
            $rtnCliente['results'][$i]['mCantidad']    = number_format($key['CANTIDAD'],0);
            $rtnCliente['results'][$i]['mFecha']      = $this->formatFechaPHP($key['FECHA']);
            $rtnCliente['results'][$i]['mCliente']     = utf8_encode($key['CODCLIENTE']);
            $rtnCliente['results'][$i]['mVendedor']    = $key['CODVENDEDOR'];
            $i++;
        }
        echo json_encode($rtnCliente);
        $this->sqlsrv->close();
    }

    public function allHistorial()
    {
        $i=0;
        $rtnCliente=array();
        $conn = $this->OPen_database_odbcSAp();        
        $query = 'SELECT * from '.$this->BD.'.GMV_HTSCOMPRA_3M';
        
        $resultado =  @odbc_exec($conn,$query);

        while ($key = @odbc_fetch_array($resultado)){
            $rtnCliente['results'][$i]['mArticulo']    = $key['CODARTICULO'];
            $rtnCliente['results'][$i]['mNombre']      = utf8_encode($key['NOMBRE']);
            $rtnCliente['results'][$i]['mCantidad']    = number_format($key['CANTIDAD'],0);
            $rtnCliente['results'][$i]['mFecha']      = $this->formatFechaPHP($key['FECHA']);
            $rtnCliente['results'][$i]['mCliente']     = utf8_encode($key['CODCLIENTE']);
            $rtnCliente['results'][$i]['mVendedor']    = $key['CODVENDEDOR'];
            $i++;
        }
        echo json_encode($rtnCliente);
    }
    private function Cumple($Codigo)
    {
        $i=0;
        $rtnCliente="00-00-0000";
        $query = $this->sqlsrv->fetchArray("SELECT convert(varchar, Fecha, 105) as Fecha FROM tblcumplenero WHERE Codigo='".$Codigo."'",SQLSRV_FETCH_ASSOC);
        foreach($query as $key){
            $rtnCliente = $key['Fecha'];
            $i++;
        }
        return  $rtnCliente;
        $this->sqlsrv->close();
    }
    /*public function ClienteMora($Vendedor)
    {
        $i=0;
        $rtnCliente=array();
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_ClientesPerMora WHERE VENDEDOR='".$Vendedor."'",SQLSRV_FETCH_ASSOC);
        foreach($query as $key){
            $rtnCliente['results'][$i]['mCliente']   = $key['CLIENTE'];
            $rtnCliente['results'][$i]['mNombre']    = $key['NOMBRE'];
            $rtnCliente['results'][$i]['mVencidos']  = number_format($key['NoVencidos'],2,'.','');
            $rtnCliente['results'][$i]['mD30']       = number_format($key['Dias30'],2,'.','');
            $rtnCliente['results'][$i]['mD60']       = number_format($key['Dias60'],2,'.','');
            $rtnCliente['results'][$i]['mD90']       = number_format($key['Dias90'],2,'.','');
            $rtnCliente['results'][$i]['mD120']      = number_format($key['Dias120'],2,'.','');
            $rtnCliente['results'][$i]['mMd120']     = number_format($key['Mas120'],2,'.','');
            $i++;
        }
        echo json_encode($rtnCliente);
        $this->sqlsrv->close();
    }*/
    /*public function ClienteIndicadores($Vendedor)
    {
        $i=0;
        $rtnCliente=array();
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_indicadores_clientes WHERE VENDEDOR='".$Vendedor."'",SQLSRV_FETCH_ASSOC);
        foreach($query as $key){
            $rtnCliente['results'][$i]['mCliente']           = $key['CLIENTE'];
            $rtnCliente['results'][$i]['mNombre']            = $key['NombreCliente'];
            $rtnCliente['results'][$i]['mVendedor']          = $key['VENDEDOR'];
            $rtnCliente['results'][$i]['mMetas']             = number_format($key['MetaVentaEnValores'],2,'.','');
            $rtnCliente['results'][$i]['mVentasActual']      = number_format($key['VentaEnValoresAct'],2,'.','');
            $rtnCliente['results'][$i]['mPromedioVenta3M']   = number_format($key['VentaEnValores3MAnt'],2,'.','');
            $rtnCliente['results'][$i]['mCantidadItems3M']   = number_format($key['NumItemFac3MAnt'],2,'.','');
            $rtnCliente['results'][$i]['mCumplimiento']      = $this->porcentaje($key['VentaEnValoresAct'],$key['MetaVentaEnValores']);
            $i++;
        }
        echo json_encode($rtnCliente);
        $this->sqlsrv->close();
    }*/
    public function Puntos($Vendedor){
        $conn = $this->OPen_database_odbcSAp();
        $codigos = "";
        $consulta = 'SELECT "CardCode" from '.$this->BD.'.OCRD WHERE "SlpCode" = '."'".$Vendedor."'".'';

        $resultado =  @odbc_exec($conn,$consulta);
        while ($fila = @odbc_fetch_array($resultado)){
            $codigos .= "'".$fila['CardCode']."',";            
        }
        //echo substr($codigos,0, -1);
        //$query = 'SELECT * from '.$this->BD.'.SPINN_TTFACTURAS_PUNTOS WHERE "COD_VENDEDOR" = '."'".$Vendedor."'".'';
        $query = 'SELECT * from '.$this->BD.'.SPINN_TTFACTURAS_PUNTOS WHERE "COD_CLIENTE" IN ('.substr($codigos,0, -1).')';

        //echo 'SELECT * from '.$this->BD.'.SPINN_TTFACTURAS_PUNTOS WHERE "COD_CLIENTE" IN ('.substr($codigos,0, -1).')';
        $resultado =  @odbc_exec($conn,$query);
        $i=0;
        $rtnCliente=array();

     while ($fila = @odbc_fetch_array($resultado)){

        $remanente = $this->getSaldoParcial($fila['FACTURA'],$fila['DISPONIBLE']);
        if ($remanente>0) {
            $rtnCliente['results'][$i]['mFecha']        = $this->formatFechaPHP($fila['FECHA']);
            $rtnCliente['results'][$i]['mFactura']      = $fila['FACTURA'];
            $rtnCliente['results'][$i]['mCliente']      = $fila['COD_CLIENTE'];
            $rtnCliente['results'][$i]['mPuntos']       = $fila['ACUMULADO'];
            //$rtnCliente['results'][$i]['mRemanente']    = $this->getSaldoParcial($fila['FACTURA'],$fila['DISPONIBLE']);
            $rtnCliente['results'][$i]['mRemanente']    = $remanente;
            $i++;            
            }
        }
        echo json_encode($rtnCliente);
        $this->sqlsrv->close();
    }
    public function getSaldoParcial($id,$pts){
        $link = @mysql_connect('localhost', 'root', 'a7m1425.')or die('No se pudo conectar: ' . mysql_error());            
        mysql_select_db('spinn') or die('No se pudo seleccionar la base de datos');
        //$query = "SELECT Puntos FROM rfactura WHERE Puntos <> 0 AND Factura = '".$id."'";
        $query = "SELECT Puntos FROM rfactura WHERE Factura = '".$id."'";

        $result = mysql_query($query) or die('Consulta fallida: ' . mysql_error());
        $line = mysql_fetch_array($result, MYSQL_ASSOC);
        $rows_factura = $line['Puntos'];
            
        if($rows_factura == "" ){
            $rows_factura_ajx = $pts;
        } else {
            $rows_factura_ajx = $rows_factura;
        }
        return $rows_factura_ajx;

    }
    public function FacturaSaldo($id,$pts){        
        $this->db->where('Factura',$id);
        $this->db->select('Puntos');
        $query = $this->db->get('visys.rfactura');
        if($query->num_rows() > 0){
            $parcial = $query->result_array()[0]['Puntos'];
        } else {
            $parcial = $pts;
        }
        return $parcial;
    }
    public function LoginUsuario($usuario,$pass){
       $i=0;
        $rtnUsuario = array();

        $this->db->where('RUTA',$usuario);
        $this->db->where('Activo',"1");
        $this->db->where('Password',$pass);
        $query = $this->db->get('view_usuario');
            
        if ($query->num_rows() > 0) {            
            foreach ($query->result_array() as $key) {
                $rtnUsuario['results'][$i]['mUsuario'] = $key['Usuario'];
                $rtnUsuario['results'][$i]['mNombre'] = $key['Nombre'];
                $rtnUsuario['results'][$i]['mIdUser'] = $key['IdUser'];
                $rtnUsuario['results'][$i]['mPass'] = $key['Password'];
                $rtnUsuario['results'][$i]['mPedido'] = $key['PEDIDO'];
                $rtnUsuario['results'][$i]['mCobro'] = $key['COBRO'];
                $rtnUsuario['results'][$i]['mRazon'] = $key['RAZON'];
                $rtnUsuario['results'][$i]['mCliente'] = $key['CLIENTE'];
            }
        }else{
            $rtnUsuario['results'][$i]['mIdUser'] = "";
        }
        echo json_encode($rtnUsuario);
    }
    public function uptCumple(){
        $query = $this->db->get('cumpleanero.tblcumplenero');
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $key) {
                $tmp = new Cumpleannos();
                $cu = substr($key['cedula'],4,strlen($key['cedula']));
                $cu = substr($cu,0,strpos($cu, "-"));
                $tmp->setCodigo($this->Strg_ID_CLIENTE($key['Codigo']));
                $tmp->setCedula($this->getDateString($cu));
                $tmp->setRuta($key['ruta']);
                $this->db->where('Codigo', $key['Codigo']);
                $this->db->update('cumpleanero.tblcumplenero', $tmp);
            }

        }
    }
    public function getDateString($str){
        if($str!=""){
            return substr($str,0,2)."-".substr($str,2,2)."-19".substr($str,4,2);
        }
        return "";
    }
    public function Strg_ID_CLIENTE($str){
        switch (strlen($str)) {
            case '1':
                $varreturn="0000".$str;
                break;
            case '2':
                $varreturn="000".$str;
                break;
            case '3':
                $varreturn="00".$str;
                break;
            case '4':
                $varreturn="0".$str;
                break;
            case '5':
                $varreturn=$str;
                break;
            default;
                $varreturn=$str;
                break;

        }
        return $varreturn;
    }
    
    /*public function Agenda($Ruta){
        $i=0;
        $rtnAgenda = array();
        $this->db->where('Ruta',$Ruta);
        $this->db->where('Estado',1);
        $query = $this->db->get('vtsplanes');


        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $key) {
                $rtnAgenda['results'][$i]['mIdPlan']        = $key['IdPlan'];
                $rtnAgenda['results'][$i]['mVendedor']      = $key['Vendedor'];
                $rtnAgenda['results'][$i]['mRuta']          = $key['Ruta'];
                $rtnAgenda['results'][$i]['mInicia']        = $key['Inicia'];
                $rtnAgenda['results'][$i]['mTermina']       = $key['Termina'];
                $rtnAgenda['results'][$i]['mZona']          = $key['Zona'];
                $rtnAgenda['results'][$i]['mEstado']        = $key['Estado'];
                $rtnAgenda['results'][$i]['mLunes']         = $key['Lunes'];
                $rtnAgenda['results'][$i]['mMartes']        = $key['Martes'];
                $rtnAgenda['results'][$i]['mMiercoles']     = $key['Miercoles'];
                $rtnAgenda['results'][$i]['mJueves']        = $key['Jueves'];
                $rtnAgenda['results'][$i]['mViernes']       = $key['Viernes'];
            }
        }
        echo json_encode($rtnAgenda);
    }*/

  public function InsertCobros($json){
    $cobros = '';
    $jsonCobro = array();
    $i = 0;
        foreach(json_decode($json, true) as $key){
            $cobros .= "'".$key['mIdCobro']."',";
            $Cobros = array(
                'IDCOBRO'     => $key['mIdCobro'],
                'CLIENTE'     => $key['mCliente'],
                'RUTA'        => $key['mRuta'],
                'TIPO'        => $key['mTipo'],
                'IMPORTE'     => $key['mImporte'],
                'OBSERVACION' => $key['mObservacion'],
                'FECHA'       => $key['mFecha']);
           $query = $this->db->insert('cobros', $Cobros);
        }
        $query22 = $this->db->query("SELECT IDCOBRO FROM cobros WHERE IDCOBRO IN (".substr($cobros, 0,-1).")");
        if ($query22->num_rows()>0)
        {
            $cobros = '';
            foreach ($query22->result_array() as $key)
            {
                $cobros .= "'".$key['IDCOBRO']."',";
            }
            $jsonCobro['results'][$i]['mIdCobro'] = substr($cobros, 0,-1);
        }
        echo json_encode($jsonCobro);
    }
    public function InsertVisitas($json){
        foreach(json_decode($json, true) as $key){
            $Visitas = array(
                'IdPlan'       => $key['mIdPlan'],
                'IdCliente'    => $key['mIdCliente'],
                'Fecha'        => $key['mFecha'],
                'Lati'         => $key['mLati'],
                'Logi'         => $key['mLogi'],
                'Local'        => $key['mLocal'],
                'Inicio'       => $key['mInicio'],
                'Fin'          => $key['mFin'],
                'Observacion'  => $key['mObservacion'],
                'Accion'       => $key['mTipo']);
            $query = $this->db->insert('visitas', $Visitas);
        }
        echo json_encode($query);
    }

    public function InsertAgenda($json){
        foreach(json_decode($json, true) as $key){
            $AgendaTop = array(
                'IdPlan'      => $key['mIdPlan'],
                'Vendedor'    => $key['mVendedor'],
                'Ruta'        => $key['mRuta'],
                'Inicia'      => $key['mInicia'],
                'Termina'     => $key['mTermina'],
                'Zona'        => $key['mZona']);
            $this->db->insert('agenda', $AgendaTop);

            $AgendaTop = array(
                'IdPlan'       => $key['mIdPlan'],
                'Lunes'        => $key['mLunes'],
                'Martes'       => $key['mMartes'],
                'Miercoles'    => $key['mMiercoles'],
                'Jueves'       => $key['mJueves'],
                'Viernes'      => $key['mViernes']);
            $query = $this->db->insert('vclientes', $AgendaTop);
        }
        echo json_encode($query);
    }

    public function insertPedidos($Data){
        $i = 0;
        $rtnPedidos = array();
        $cadena = "";

        foreach(json_decode($Data, true) as $key){
            $resp = "NINGUNO";
            $responsable = $this->db->query("SELECT ResponsableUsuario FROM view_grupoasignacion WHERE Ruta = '".$key['mVendedor']."'");
            if ($responsable->num_rows()>0) {
                $resp = $responsable->result_array()[0]['ResponsableUsuario'];
            }

            $query = $this->db->query("SELECT IDPEDIDO FROM pedido WHERE IDPEDIDO = '".$key['mIdPedido']."'");
            
            $cadena .= "'".$key['mIdPedido']."',";

            if ($query->num_rows() == 0){
                $this->db->query("UPDATE llaves SET pedido = pedido+1 WHERE CODIGO ='".$key['mVendedor']."'");

                $insert = $this->db->query('CALL SP_pedidos ("'.$key['mIdPedido'].'","'.$key['mVendedor'].'","'.$key['mCliente'].'",
                                            "'.str_replace("'", "", $key['mNombre']).'","'.$key['mFecha'].'","'.$key['mPrecio'].'","'.$key['mEstado'].'",
                                            "'.$resp.'","'.$key['mComentario'].'","'.$key['mNuevo'].'")');


                for ($e=0; $e <(count($key['detalles']['nameValuePairs']))/7; $e++){
                    $datos = array('IDPEDIDO'   => $key['detalles']['nameValuePairs']['ID'.$i],
                                   'ARTICULO'   => $key['detalles']['nameValuePairs']['ARTICULO'.$i],
                                   'DESCRIPCION'=> str_replace("'", "", $key['detalles']['nameValuePairs']['DESC'.$i]),
                                   'CANTIDAD'   => $key['detalles']['nameValuePairs']['CANT'.$i],
                                   'TOTAL'      => number_format(str_replace(",", "", $key['detalles']['nameValuePairs']['TOTAL'.$i]),2),
                                   'IVA' => $key['detalles']['nameValuePairs']['IVA'.$i],
                                   'DESCUENTO' => $key['detalles']['nameValuePairs']['DESCUE'.$i]
                                );
                    $this->db->insert('pedido_detalle',$datos);
                    $i++;
                }
            }else{
                for ($e=0; $e <(count($key['detalles']['nameValuePairs']))/7; $e++){
                    $i++;
                }
            }
        }
        $query22 = $this->db->query("SELECT IDPEDIDO,ESTADO,COMENTARIO,IFNULL(COMENTARIO_CONFIR,'') COMENTARIO_CONFIR FROM pedido WHERE IDPEDIDO IN (".substr($cadena, 0,-1).")");
        
        if ($query22->num_rows()>0)
        {
            $i = 0;
            foreach ($query22->result_array() as $key)
            {
                $rtnPedidos['results'][$i]['mIdPedido'] = $key['IDPEDIDO'];
                $rtnPedidos['results'][$i]['mEstado'] = $key['ESTADO'];
                $rtnPedidos['results'][$i]['mComentario'] = $key['COMENTARIO'];
                $rtnPedidos['results'][$i]['mConfirmacion'] = $key['COMENTARIO_CONFIR'];
                $i++;
            }
        }else{
            $rtnPedidos['results'][$i]['mIdPedido'] = "";
            $rtnPedidos['results'][$i]['mEstado'] = "";
            $rtnPedidos['results'][$i]['mComentario'] = "";
            $rtnPedidos['results'][$i]['mConfirmacion'] = "";
        }
        echo json_encode($rtnPedidos);
    }

    public function insertRazones($Post){
        $i = 0;
        $rtnUsuario = array();
        $cadena = "";

        foreach(json_decode($Post, true) as $key){
            $cadena = "'".$key['mIdRazon']."',";

                $datos = array('IdRazon' => $key['mIdRazon'],
                                'Vendedor' => $key['mVendedor'],
                                'Cliente' => $key['mCliente'],
                                'Fecha' => $key['mFecha'],
                                'Observacion' => $key['mObservacion']
                            );
                $insert= $this->db->insert('RAZON',$datos);

                if ($insert) {
                    $this->db->query("UPDATE llaves SET RAZON = RAZON+1 WHERE CODIGO ='".$key['mVendedor']."'");
                }
                for ($e=0; $e <(count($key['detalles']['nameValuePairs']))/4; $e++){
                    $datos2 = array('IdRazon'   => $key['detalles']['nameValuePairs']['IdRazon'.$i],
                                   'IdAE'   => $key['detalles']['nameValuePairs']['IdAE'.$i],
                                   'Actividad'=> $key['detalles']['nameValuePairs']['Actividad'.$i],
                                   'Categoria'   => $key['detalles']['nameValuePairs']['Categoria'.$i]
                                );
                    $this->db->insert('razon_detalle',$datos2);
                    $i++;
                }                
            }
        
        $query = $this->db->query("SELECT IdRazon FROM RAZON WHERE IdRazon IN (".substr($cadena, 0,-1).")");
        if ($query->num_rows()>0) {
            $rtnUsuario['results'][0]['mEstado'] = "RAZONEZ ENVIADAS...";
        }else{
            $rtnUsuario['results'][0]['mEstado'] = "ERROR EN RAZONES, INTENTELO MAS TARDE";
        }
        echo json_encode($rtnUsuario);
    }

    public function updatePedidos($Post){
        $i = 0;
        $rtnPedido = array();
        foreach(json_decode($Post, true) as $key){
            $this->db->where('IDPEDIDO',$key['mIdPedido']);
            $this->db->select('IDPEDIDO,ESTADO,COMENTARIO,CONFIRMACION');
            $query = $this->db->get('view_mispedidos');
            if ($query->num_rows()>0) {
                foreach ($query->result_array() as $key) {
                    $rtnPedido['results'][$i]['mIdPedido']  = $key['IDPEDIDO'];
                    $rtnPedido['results'][$i]['mEstado']    = $key['ESTADO'];
                    $rtnPedido['results'][$i]['mAnulacion']    = $key['COMENTARIO'];
                    $rtnPedido['results'][$i]['mConfirmacion']    = $key['CONFIRMACION'];
                    $i++;
                }
            }else{
                    $rtnPedido['results'][$i]['mIdPedido']  = "";
                    $rtnPedido['results'][$i]['mEstado']    = "";
                    $rtnPedido['results'][$i]['mAnulacion'] = "";
                    $rtnPedido['results'][$i]['mConfirmacion'] = "";
            }
        }
        echo json_encode($rtnPedido);
    }

    public function Actividades(){
        $i=0;
        $rtnActividad = array();
        $query=$this->db->get('actividades');

        if ($query->num_rows()>0)
        {
            foreach ($query->result_array() as $key)
            {
                $rtnActividad['results'][$i]['mIdAE'] = $key['IDACTIVIDAD'];
                $rtnActividad['results'][$i]['mCategoria'] = $key['CATEGORIA'];
                $rtnActividad['results'][$i]['mActividad'] = $key['ACTIVIDAD'];
                $i++;
            }
        }
        echo json_encode($rtnActividad);
    }
    public function lotes(){
        $i=0;
        $rtnCliente=array();
        $query = $this->sqlsrv->fetchArray("SELECT * FROM GMV_LOTES",SQLSRV_FETCH_ASSOC);
        foreach($query as $key){
            $rtnCliente['results'][$i]['mCodigo']          = $key['ARTICULO'];
            $rtnCliente['results'][$i]['mLote']              = $key['LOTE'];
            $rtnCliente['results'][$i]['mUnidad']          = number_format($key['CANT_DISPONIBLE'],2,'.','');
            $rtnCliente['results'][$i]['mFecha']              = $key['FECHA_VENCIMIENTO'];
            
            $i++;
        }
        echo json_encode($rtnCliente);
        $this->sqlsrv->close();
    }
    public function CONSECUTIVO($usuario)
    {
        $i=0;
        $array = array();
        $query = $this->db->query("SELECT * FROM llaves WHERE RUTA = '".$usuario."'");

        if ($query->num_rows()>0)
        {
            foreach ($query->result_array() as $key)
            {
                $array['results'][$i]['mPedido'] = $key['PEDIDO'];
                $array['results'][$i]['mCobro'] = $key['COBRO'];
                $array['results'][$i]['mRazon'] = $key['RAZON'];
                $array['results'][$i]['mCliente'] = $key['CLIENTE'];
                $i++;
            }
        }
        echo json_encode($array);

    }

    public function NuevosClientes($post)
    {
        $cobros = '';
        $jsonCliente = array();
        $i = 0;
        $bandera = false;


        foreach(json_decode($post, true) as $key){
            $this->db->where('IDCLIENTE',$key['mCliente']);
            $this->db->where('VENDEDOR',$key['mVendedor']);
            $consulta = $this->db->get('clientes');            
            if ($consulta->num_rows() == 0) {
                $Clientes = array(
                    'IDCLIENTE'     => $key['mCliente'],
                    'NOMBRE'        => $key['mNombre'],
                    'DIRECCION'     => $key['mDireccion'],
                    'TELEFONO'      => $key['mTelefono'],
                    'CORREO'        => $key['mCorreo'],
                    'DEPARTAMENTO'  => $key['mDepartamento'],
                    'MUNICIPIO'     => $key['mMunicipio'],
                    'VENDEDOR'      => $key['mVendedor'],
                    'RUC'           => $key['mRuc'],
                    'ESTADO'        => $key['mEstado'],
                    'FECHA_INGRESO' => $key['mFecha']
                );
                $query = $this->db->insert('clientes', $Clientes);
                if ($query) {
                    /*$consulta = $this->db->query("SELECT CLIENTE FROM llaves WHERE RUTA ='".$key['mVendedor']."'");
                    $datos = array('CLIENTE' => $consulta->result_array()[0]['CLIENTE']+1);
                    $this->db->where('RUTA',$key['mVendedor']);
                    $this->db->update('llaves',$datos);*/
                    $query = $this->db->query("UPDATE llaves SET CLIENTE = CLIENTE+1 WHERE CODIGO ='".$key['mVendedor']."'");
                    $bandera = $query;
                }                
            }
        }
        echo json_encode($bandera);
    }
    public function updateClientes($Post)
    {
        $i = 0;
        $rtnClientes = array();
        foreach(json_decode($Post, true) as $key){
            
            $this->db->where('IDCLIENTE',$key['mCliente']);
            $this->db->where('VENDEDOR',$key['mVendedor']);
            $this->db->where('ESTADO', 1);
            $query = $this->db->get('clientes');

            if ($query->num_rows()>0) {
                foreach ($query->result_array() as $key) {
                    $rtnClientes['results'][$i]['mCliente']  = $key['IDCLIENTE'];
                    $rtnClientes['results'][$i]['mEstado']   = $key['ESTADO'];
                    $rtnClientes['results'][$i]['mVendedor'] = $key['VENDEDOR'];
                    $i++;
                }
            }
        }
        echo json_encode($rtnClientes);
    }
    public function imVendedores($Vendedor)
    {
        $i=0;
        $rtnIndicadores=array();
        $conn = $this->OPen_database_odbcSAp();
        $queryVendedor = 'SELECT * from '.$this->BD.'.GMV_INDICADOR_FINAL WHERE "VENDEDOR" = '."'".$Vendedor."'".'';
        $queryDetalle = 'SELECT * from '.$this->BD.'.GMV_INDICADOR_VENDEDORES WHERE "COD_VENDEDOR" = '."'".$Vendedor."'".'';

        $rVendedor =  @odbc_exec($conn,$queryVendedor);

        while ($key = @odbc_fetch_array($rVendedor)){
            $rtnIndicadores['results'][$i]['mVendedor1']           = $key['VENDEDOR'];
            $rtnIndicadores['results'][$i]['mNombre']             = $key['NOMBRE'];
            $rtnIndicadores['results'][$i]['mNumCliente']         = $key['NUM_CLIENTE'];
            $rtnIndicadores['results'][$i]['mTotalVenta1']         = number_format($key['TOTAL_VENTA'],2,'.','');
            $rtnIndicadores['results'][$i]['mPromItem']           = number_format($key['PROM_ITEM'],2,'.','');
            $rtnIndicadores['results'][$i]['mPRomedioFactura']    = number_format($key['PROMEDIO_FACTURA'],2,'.','');
            $i++;


        }
        $i=1;
        $rDetalles =  @odbc_exec($conn,$queryDetalle);
        while ($k2 = @odbc_fetch_array($rDetalles)){
            $rtnIndicadores['results'][$i]['mFecha']              = $k2['FECHA'];
            $rtnIndicadores['results'][$i]['mFactura']            = $k2['FACTURA'];
            $rtnIndicadores['results'][$i]['mCodCliente']         = $k2['COD_CLIENTE'];
            $rtnIndicadores['results'][$i]['mCantidad']           = $k2['CANTIDAD'];
            $rtnIndicadores['results'][$i]['mTotalVenta2']         = number_format($k2['TOTAL_VENTA'],2,'.','');
            $rtnIndicadores['results'][$i]['mCliente']            = utf8_encode($k2['CLIENTE']);
            $rtnIndicadores['results'][$i]['mArticulo']           = $k2['ARTICULO'];
            $rtnIndicadores['results'][$i]['mDescripcion']        = $k2['DESCRIPCION'];
            $rtnIndicadores['results'][$i]['mCodVendedor']        = $k2['COD_VENDEDOR'];
            $rtnIndicadores['results'][$i]['mVendedor2']           = $k2['VENDEDOR'];
            $i++;
        }
        echo json_encode($rtnIndicadores);

    }
}
?>
