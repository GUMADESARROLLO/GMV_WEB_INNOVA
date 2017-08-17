<?php
class Monitoreo_model extends CI_Model
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

    public function monitereo(){
        $conn = $this->OPen_database_odbcSAp();
        $query = 'SELECT * from '.$this->BD.'.GMV_INDICADOR_FINAL';
        $resultado =  @odbc_exec($conn,$query);
        $json = array();
        $i=0;

        while ($fila = @odbc_fetch_array($resultado)){
            $json[$i]['VENDEDOR'] = $fila['VENDEDOR'];
            $json[$i]['NOMBRE'] = $fila['NOMBRE'];
            $json[$i]['NUM_CLIENTE'] = $fila['NUM_CLIENTE'];
            $json[$i]['TOTAL_VENTA'] = $fila['TOTAL_VENTA'];
            $json[$i]['PROM_ITEM'] = $fila['PROM_ITEM'];
            $json[$i]['PROMEDIO_FACTURA'] = $fila['PROMEDIO_FACTURA'];
            $json[$i]['VTAS_ARTICULO'] = "<a  onclick='getDetalle(".'"'.$fila['VENDEDOR'].'",'.'"VENTAS POR ARTICULO"'.','.'"1"'.")' href='#' class='noHover'><i class='material-icons'>&#xE417;</i></a>";
            $json[$i]['VTAS_CLIENTE'] = "<a  onclick='getDetalle(".'"'.$fila['VENDEDOR'].'",'.'"VENTAS POR CLIENTE"'.','.'"2"'.")' href='#' class='noHover'><i class='material-icons'>&#xE417;</i></a>";
            $i++;
        }
        return $json;
    }
    public function detalleMonitoreo($VENDEDOR,$TIPO){
        $conn = $this->OPen_database_odbcSAp();
        $json = array();
        $i=0;

        
        if ($TIPO=="1"){
            $query = 'SELECT "COD_VENDEDOR","VENDEDOR","ARTICULO","DESCRIPCION",
                        SUM("TOTAL_VENTA") AS "VENTA",COUNT(DISTINCT "FACTURA") AS "FACTURAS"
                        FROM "SBO_INNOVA_INDUSTRIAS"."GMV_INDICADOR_VENDEDORES"
                        WHERE "COD_VENDEDOR" = '."'".$VENDEDOR."'".'
                        GROUP BY "ARTICULO","COD_VENDEDOR","VENDEDOR","DESCRIPCION"
                        ORDER BY "COD_VENDEDOR"';

            //echo $query;
            $resultado =  @odbc_exec($conn,$query);
            if (count($query)>0) {
             while ($fila = @odbc_fetch_array($resultado)){
                $json['data'][$i]['COD_VENDEDOR'] = $fila['COD_VENDEDOR'];
                $json['data'][$i]['VENDEDOR'] = utf8_encode($fila['VENDEDOR']);
                $json['data'][$i]['ARTICULO'] = utf8_encode($fila['ARTICULO']);
                $json['data'][$i]['DESCRIPCION'] = utf8_encode($fila['DESCRIPCION']);
                $json['data'][$i]['VENTA'] = $fila['VENTA'];
                $json['data'][$i]['FACTURAS'] = $fila['FACTURAS'];
                $i++;
            }
                $json['columns'][0]['data'] = "COD_VENDEDOR";
                $json['columns'][0]['name'] = "COD VENDEDOR";
                $json['columns'][1]['data'] = "VENDEDOR";
                $json['columns'][1]['name'] = "VENDEDOR";
                $json['columns'][2]['data'] = "ARTICULO";
                $json['columns'][2]['name'] = "ARTICULO";
                $json['columns'][3]['data'] = "DESCRIPCION";
                $json['columns'][3]['name'] = "DESCRIPCION";
                $json['columns'][4]['data'] = "VENTA";
                $json['columns'][4]['name'] = "VENTA";
                $json['columns'][5]['data'] = "FACTURAS";
                $json['columns'][5]['name'] = "FACTURAS";
                echo json_encode($json);
            }
        }
        if ($TIPO=="2"){

                $query = 'SELECT "COD_VENDEDOR","VENDEDOR","COD_CLIENTE","CLIENTE",SUM("TOTAL_VENTA") AS VENTA,COUNT(DISTINCT "FACTURA") AS FACTURAS
                            FROM "SBO_INNOVA_INDUSTRIAS"."GMV_INDICADOR_VENDEDORES"
                            WHERE "COD_VENDEDOR"= '."'".$VENDEDOR."'".'
                            GROUP BY "COD_CLIENTE","CLIENTE","COD_VENDEDOR","VENDEDOR"
                            ORDER BY "COD_VENDEDOR"';

                $resultado =  @odbc_exec($conn,$query);
            if (count($query)>0) {
             while ($fila = @odbc_fetch_array($resultado)){
                $json['data'][$i]['COD_VENDEDOR'] = $fila['COD_VENDEDOR'];
                $json['data'][$i]['VENDEDOR'] = utf8_encode($fila['VENDEDOR']);
                $json['data'][$i]['COD_CLIENTE'] = $fila['COD_CLIENTE'];
                $json['data'][$i]['CLIENTE'] = utf8_encode($fila['CLIENTE']);
                $json['data'][$i]['VENTA'] = $fila['VENTA'];
                $json['data'][$i]['FACTURAS'] = $fila['FACTURAS'];
                $i++;
            }
                $json['columns'][0]['data'] = "COD_VENDEDOR";
                $json['columns'][0]['name'] = "COD VENDEDOR";
                $json['columns'][1]['data'] = "VENDEDOR";
                $json['columns'][1]['name'] = "VENDEDOR";
                $json['columns'][2]['data'] = "COD_CLIENTE";
                $json['columns'][2]['name'] = "COD CLIENTE";
                $json['columns'][3]['data'] = "CLIENTE";
                $json['columns'][3]['name'] = "CLIENTE";
                $json['columns'][4]['data'] = "VENTA";
                $json['columns'][4]['name'] = "VENTA";
                $json['columns'][5]['data'] = "FACTURAS";
                $json['columns'][5]['name'] = "FACTURAS";
                echo json_encode($json);
            }
        }
        if (count($query)==0){
                    $json['data'][0]['ID'] = "0";
                    $json['data'][0]['EKISDE'] = "NO HAY DATOS";
                    $json['columns'][0]['data'] = "ID";
                    $json['columns'][0]['name'] = "RESULTADOS";
                    $json['columns'][1]['data'] = "EKISDE";
                    $json['columns'][1]['name'] = "MENSAJE";
                    echo json_encode($json);
        }
        
    }
}
?>