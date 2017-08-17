<header class="demo-header mdl-layout__header ">
    <div class="row center ColorHeader"><span class=" title">MONITOREO<i class="material-icons right">timeline</i></span></div>
</header>
<!--  CONTENIDO PRINCIPAL -->
<main class="mdl-layout__content mdl-color--grey-100">
<div class="contenedor">        
    <div class="noMargen row TextColor center"><div class="col s12 m8 l12 offset-m1">MONITOREO</div></div>
    
    <div class="noMargen Buscar row column">
        <div class="input-field col s6 m3 l3 offset-l4 center">
            <input  id="searchDatos" type="text"class="validate">
            <label for="searchDatos">BUSCAR</label>
        </div>
        <div class="noMargen col s6 m2 l2">
            <select id="cmbVendedor">
              <option value="" selected>VENDEDOR</option>
                <?php if (!($datos)) {}
                        else{
                            foreach ($datos as $key) {
                                echo 
                                "<option value=".$key['VENDEDOR'].">".utf8_encode($key['NOMBRE'])."</option>";
                            }
                        }
                ?>
            </select>
        </div>
    </div>
            
    <div class="row" id="monitoreo1" style="overflow-y:scroll;">
        <table id="tblmonitoreo" class=" TblDatos">
            <thead>
                <tr>
                    <th>COD. VENDEDOR</th>
                    <th>VENDEDOR</th>
                    <th># CLIENTES</th>
                    <th>TOTAL VENTA</th>
                    <th>PROM ITEM</th>
                    <th>PROM POR FACTURA</th>
                    <th>VENTAS X ARTICULO</th>
                    <th>VENTAS X CLIENTE</th>
                    
                </tr>
            </thead>
            <tbody class="center">
                <?php if (!($datos)) {}
                        else{
                            foreach ($datos as $key) {
                                echo 
                                "<tr>
                                    <td class='negra'>".$key['VENDEDOR']."</td>
                                    <td class='negra'>".utf8_encode($key['NOMBRE'])."</td>
                                    <td>".$key['NUM_CLIENTE']."</td>
                                    <td>C$ ".number_format($key['TOTAL_VENTA'],4)."</td>
                                    <td>".number_format($key['PROM_ITEM'],4)."</td>
                                    <td>C$ ".number_format($key['PROMEDIO_FACTURA'],4)."</td>
                                    <td>".$key['VTAS_ARTICULO']."</td>
                                    <td>".$key['VTAS_CLIENTE']."</td>
                                </tr>";
                            }
                        }
                 ?>
            </tbody>
        </table>
    </div>
    <div class="row" id="monitoreo2" style="display:none;">
        <table id="tblmonitoreo2" class=" TblDatos">
            <thead>
                <tr>
                    <th class="buscarr">COD. VENDEDOR</th>
                    <th>VENDEDOR</th>
                    <th>COD. CLIENTE</th>
                    <th>CLIENTE</th>
                    <th>META VENTA</th>
                    <th>META ITEM FACTURA</th>
                    <th>META MONTO FACTURA</th>
                    <th>META PROM X FACTURA</th>
                </tr>
            </thead>
            <tbody class="center">
                <tr>
                    <td>Garrett Winters</td>
                    <td>Accountant</td>
                    <td>Tokyo</td>
                    <td>63</td>
                    <td>2011/07/25</td>
                    <td>ekisde</td>
                    <td>ekisde</td>
                    <td>ekisde</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
</main>  
<!-- FIN CONTENIDO PRINCIPAL -->

<!-- Modal #1 de cliente-->
<div id="modalMonClientes" class="modal">
    <div class="modal-content">
            <div class="right row noMargen">
                <a href="#!" class=" BtnClose modal-action modal-close noHover">
                    <i class="material-icons">highlight_off</i>
                </a>
            </div>
            <div class="row center">
                <span id="titulC" class="Mcolor">DETALLE</span>
            </div>
            <div class="row center">            
            <div class="noMargen Buscar row column">
                <div class="col s1 m1 l1 offset-l3 offset-s1 offset-m2">
                    <i class="material-icons ColorS">search</i>
                </div>

                <div class="input-field col s5 m4 l4">
                    <input  id="searchClientes" type="text" placeholder="Buscar" class="validate">
                    <label for="searchClientes"></label>
                </div>
            </div>
            <div class="row">
              <ul id="tabs-swipe-demo" class="tabs">
                <li class="tab mitabactive col s3 negra"><a class="active" href="#test-swipe-1" >META DE COBRO</a></li>
                <li class="tab mitab col s3 negra"><a href="#test-swipe-2">VENTA EN VALORES</a></li>
                <li class="tab mitab col s3 negra"><a href="#test-swipe-3"># ITEM FACTURADOS</a></li>
                <li class="tab mitab col s3 negra"><a href="#test-swipe-4">MONTO POR FACTURA</a></li>
                <li class="tab mitab col s3 negra"><a href="#test-swipe-5">PROMEDIO ITEM X FACTURA</a></li>
              </ul>
              <div id="test-swipe-1" class="swipe col s12">
                <div class="row">
                    <div id="load1" style="display:none" class="preloader-wrapper big active">
                        <div class="spinner-layer spinner-blue-only">
                            <div class="circle-clipper left"><div class="circle"></div></div>
                            <div class="gap-patch"><div class="circle"></div></div>
                            <div class="circle-clipper right"><div class="circle"></div></div>
                        </div>
                    </div>
                    </div>
                <div class="row" id="metaCobro">

                </div>
                </div>
              </div>
              <div id="test-swipe-2" class="swipe col s12">
                <div class="row">
                    <div id="load2" style="display:none" class="preloader-wrapper big active">
                        <div class="spinner-layer spinner-blue-only">
                            <div class="circle-clipper left"><div class="circle"></div></div>
                            <div class="gap-patch"><div class="circle"></div></div>
                            <div class="circle-clipper right"><div class="circle"></div></div>
                        </div>
                    </div>
                </div>
                <div class="row" id="ventaEnValores">
                    <div class="row" id="metaCobro">
                    
                </div>                    
                </div> 
              </div>
              <div id="test-swipe-3" class="swipe col s12">
                <div class="row">
                    <div id="load3" style="display:none" class="preloader-wrapper big active">
                        <div class="spinner-layer spinner-blue-only">
                            <div class="circle-clipper left"><div class="circle"></div></div>
                            <div class="gap-patch"><div class="circle"></div></div>
                            <div class="circle-clipper right"><div class="circle"></div></div>
                        </div>
                    </div>
                </div>
                <div class="row" id="itemsFacturados">
                    
                </div>
              </div>
              <div id="test-swipe-4" class="swipe col s12">
                <div class="row">
                    <div id="load4" style="display:none" class="preloader-wrapper big active">
                        <div class="spinner-layer spinner-blue-only">
                            <div class="circle-clipper left"><div class="circle"></div></div>
                            <div class="gap-patch"><div class="circle"></div></div>
                            <div class="circle-clipper right"><div class="circle"></div></div>
                        </div>
                    </div>
                </div>
                <div class="row" id="montoFactura">
                    
                </div>
              </div>
              <div id="test-swipe-5" class="swipe col s12">
                <div class="row">
                    <div id="load5" style="display:none" class="preloader-wrapper big active">
                        <div class="spinner-layer spinner-blue-only">
                            <div class="circle-clipper left"><div class="circle"></div></div>
                            <div class="gap-patch"><div class="circle"></div></div>
                            <div class="circle-clipper right"><div class="circle"></div></div>
                        </div>
                    </div>
                </div>
                <div class="row" id="promItemFact">
                    
                </div>
              </div>
            </div>
    </div>
</div>
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
            <div class="noMargen Buscar row column">
                <div class="col s1 m1 l1 offset-l3 offset-s1 offset-m2">
                    <i class="material-icons ColorS">search</i>
                </div>

                <div class="input-field col s5 m4 l4">
                    <input  id="searchView" type="text" placeholder="Buscar" class="validate">
                    <label for="searchView"></label>
                </div>
            </div>
            <div class="row center">
            <div id="loadDetalle" style="display:none" class="preloader-wrapper big active">
                    <div class="spinner-layer spinner-blue-only">
                        <div class="circle-clipper left"><div class="circle"></div></div>
                        <div class="gap-patch"><div class="circle"></div></div>
                        <div class="circle-clipper right"><div class="circle"></div></div>
                    </div>
                </div>
            </div>
       <div class="row" id="view">
           
       </div>
    </div>
</div>
