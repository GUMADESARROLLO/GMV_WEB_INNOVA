<header class="demo-header mdl-layout__header ">
    <div class="row center ColorHeader"><span class=" title">CLIENTES<i class="material-icons right">group_add</i></span></div>
</header>
<!--  CONTENIDO PRINCIPAL -->
<main class="mdl-layout__content mdl-color--grey-100">
<div class="contenedor">        
    <div class="noMargen row TextColor center"><div class="col s12 m8 l12 offset-m1">CLIENTES</div></div>
    
    <div class="noMargen Buscar row column">
        <div class="input-field col s5 m3 l3 offset-l4 center">
            <input  id="searchDatos" type="text"class="validate">
            <label for="searchDatos">BUSCAR</label>
        </div>
        <div class="input-field col s1 center">
           <a href="#" id="searchC"><i class="material-icons">search</i></a>
        </div>
    </div>
    <div class="row" id="monitoreo1">
        <table id="tblClientes" class=" TblDatos">
            <thead>
                <tr>
                    <th>IDCLIENTE</th>
                    <th>NOMBRE</th>
                    <th>VENDEDOR</th>
                    <th>DIRECCION</th>
                    <th>TELEFONO</th>
                    <th>RUC</th>
                    <th>CORREO</th>
                    <th>DEPARTAMENTO</th>
                    <th>ESTADO</th>
                    <th>ESTADO</th>
                </tr>
            </thead>
            <tbody class="center">
                <?php if (!($clientes)) {}
                        else{
                            foreach ($clientes as $key) {
                                switch ($key['ESTADO']) {
                                        case '0':
                                            $estado2 = '<i class="red-text material-icons">check</i>';
                                            break;
                                        case '1':
                                            $estado2 = '<i class="green-text material-icons">done_all</i>';
                                            break;
                                        default:
                                            $estado2 = 'ERROR AL OBTENER ESTADO';
                                            break;
                                    }
                                echo 
                                "<tr>
                                    <td class='negra'>".$key['IDCLIENTE']."</td>
                                    <td>".$key['NOMBRE']."</td>
                                    <td>".$key['VENDEDOR']."</td>
                                    <td>".$key['DIRECCION']."</td>
                                    <td>".$key['TELEFONO']."</td>
                                    <td>".$key['RUC']."</td>
                                    <td>".$key['CORREO']."</td>
                                    <td>".$key['DEPARTAMENTO']."</td>
                                    <td>".$estado2."</td>
                                    <td><a  onclick='getview(".'"'.$key['IDCLIENTE'].'"'.",".'"'.$key['NOMBRE'].'"'.",".'"'.$key['VENDEDOR'].'"'.",".'"'.$key['DIRECCION'].'"'.",".
                                                               '"'.$key['TELEFONO'].'"'.",".'"'.$key['CORREO'].'"'.",".'"'.$key['DEPARTAMENTO'].'"'.",".
                                                               '"'.$key['MUNICIPIO'].'"'.",".
                                                               '"'.$key['RUC'].'"'.",".
                                                               '"'.$key['ESTADO'].'"'.")' href='#' class='noHover'><i class='material-icons'>&#xE417;</i></a></td>
                                </tr>";
                            }
                        }
                 ?>
            </tbody>
        </table>
    </div>
</div>
</main>  
<!-- FIN CONTENIDO PRINCIPAL -->
<!-- Modal #1 de detalles-->
<div id="modalView" class="modal">
    <div class="modal-content">
            <div class="right row noMargen">
                <a href="#!" class=" BtnClose modal-action modal-close noHover">
                    <i class="material-icons">highlight_off</i>
                </a>
            </div>
            <div class="row center">
                <span id="titulM" class="Mcolor">DETALLE</span>
            </div>

            <div class="row">
                <div class="col l4">
                    <h6  class="TextColor noMargen negra breadcrumbs-title">PEDIDO: <span class="bold" id="codCliente">0.00</span></h6>
                    <h6  class="TextColor noMargen negra breadcrumbs-title">CLIENTE: <span class="bold" id="nombreCl">0.00</span></h6>
                    <h6  class="TextColor noMargen negra breadcrumbs-title">VENDEDOR: <span class="bold" id="vendedor">0.00</span></h6>
                    <h6  class="TextColor noMargen negra breadcrumbs-title">TELEFONO: <span class="bold" id="telefono"></span></h6>
                </div>
                <div class="col l4 offset-l1">
                    <h6  class="TextColor noMargen negra breadcrumbs-title">RUC: <span class="bold" id="ruc">0.00</span></h6>
                    <h6  class="TextColor noMargen negra breadcrumbs-title">CORREO: <span class="bold" id="correo">0.00</span></h6>
                    <h6  class="TextColor noMargen negra breadcrumbs-title">DEPARTAMENTO: <span class="bold" id="departamento">0.00</span></h6>
                    <h6  class="TextColor noMargen negra breadcrumbs-title">MUNICIPIO: <span class="bold" id="municipio"></span></h6>
                </div><br>
                <div class="col l12">
                    <textarea id="direccion" disabled="" class="negra mayuscula materialize-textarea observaciones"></textarea>
                </div>
            </div>
            <div class="row center ">            
            <?php 
            if ($this->session->userdata('RolUser') == '2' || $this->session->userdata('RolUser') == '5' || $this->session->userdata('RolUser') == '3') {
                echo'
                        <a href="#" id="btnProcesar" class="Procesar waves-effect btn">procesar</a>
                    ';
                }
            ?>          
        </div>
       
    </div>
</div>
