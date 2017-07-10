<script>
	$(document).ready(function() {
	$('#tblPedidos').DataTable({
            "scrollCollapse": true,
            //"paging":         false,
            //"order": [5,'desc'],
            "info":    false,            
            "lengthMenu": [[20,30,50,100,-1], [20,30,50,100,"Todo"]],
            "language": {
                "zeroRecords": "NO HAY RESULTADOS",
                "paginate": {
                    "first":      "Primera",
                    "last":       "Última ",
                    "next":       "Siguiente",
                    "previous":   "Anterior"                    
                },
                "lengthMenu": "MOSTRAR _MENU_",
                "emptyTable": "NO HAY DATOS DISPONIBLES",
                "search":     "BUSCAR"
            }
    });
});
    $('#searchDatos').on( 'keyup', function () {
            var table = $('#tblPedidos').DataTable();
            table.search(this.value).draw();
        });
    function getview(id,cliente,vendedor,estado) {
        var estadoText;
        switch(estado){
            case "1":
                estadoText = "RECIBIDO";
                break;
            case "2":
                estadoText = "VISUALIZADO";
                break;
            case "3":
                estadoText = "PROCESADO";
                break;
            default:
                estadoText = "ANULADO";
        }
        $("#spanEstado").text(estadoText);

        $("#btnProcesar").show();
        $("#btnAnular").show();
        if (estado >= 3) {
            $("#btnProcesar").hide();
            $("#btnAnular").hide();
        }
        
        $('#modalDetalleFact').openModal();
        $("#datosPedido").hide();
        $('#loadIMG').show();
        $('#codPedido').text(id);
        $('#codCliente').text(cliente);
        $('#codVendedor').text(vendedor);
        $('#total').text("Espere...");
        limpiarTabla(TbDetalleFactura);
        $('#TbDetalleFactura').DataTable({
                "order": [[ 1, "desc" ]],
                ajax: "detallepedido/"+ id,
                "searching": false,
                "info":    false,
                "bPaginate": false,
                "paging": false,
                "pagingType": "full_numbers",
                "lengthMenu": [[10, -1], [10, "Todo"]],
                "language": {
                    "emptyTable": "No hay datos disponibles en la tabla",
                    "lengthMenu": '_MENU_ ',
                    "search": '<i class=" material-icons">search</i>',
                    "loadingRecords": "cargando...",
                    "paginate": {
                        "first": "Primera",
                        "last": "Última ",
                        "next":       "Siguiente",
                        "previous":   "Anterior"
                    }
                },
               columns: [
                    { "data": "ARTICULO" },
                    { "data": "DESCRIPCION" },
                    { "data": "CANTIDAD" },
                    { "data": "PRECIO" },
                    { "data": "TOTAL" },
                    { "data": "BONIFICADO" }
              ]
            });
            $('#TbDetalleFactura').on( 'init.dt', function () {
                $('#TbDetalleFactura').show();
                $('#loadIMG').hide();
                $("#datosPedido").show();
                var total=0;
                    obj = $('#TbDetalleFactura').DataTable();
                    obj.rows().data().each( function (index,value) {                        
                        var subtotal = obj.row(value).data().TOTAL.replace(",", "");
                        subtotal = parseFloat(obj.row(value).data().TOTAL.replace(",", ""));
                        //total += obj.row(value).data().TOTAL.replace(",", "");
                        total += subtotal;
                    });
                $('#total').text(" C$ "+addCommas(total));
            }).dataTable();
            $.ajax({
                url: "ajaxPedidoComen/"+id,
                async:true,
                success:
                function(comen){
                    $("#observaciones").html(comen);
                }
            });
            $.ajax({
                url: "ajaxPedidoComenAnu/"+id,
                async:true,
                success:
                function(comen){
                    $("#anulacion").html(comen);
                }
            });
    }
    $("#btnProcesar").click(function(){
        if ($("#codPedido").text().length>10 && $("#codPedido").text()!=""){
            swal({
              title: "Se marcara el pedido como procesado!",
              text: "Ingrese un comentario",
              //type: "warning",
              type: "input",
              showCancelButton: true,
              confirmButtonColor: "#DD6B55",
              confirmButtonText: "Procesar!",
              cancelButtonText: "Cancelar!",
              closeOnConfirm: false,
              closeOnCancel: true,
              animation: "slide-from-top",
              inputPlaceholder: "Comentario"
            },
            function(inputValue){
              if (inputValue === false) return false;
              
              if (inputValue === "") {
                swal.showInputError("Necesita escribir una razon!");
                return false
              }
              swal("Procesado!", "Esperee..: " + inputValue, "success");
              var form_data = {
                    comentario: inputValue,
                    idPedido: $("#codPedido").text()
              };
              $.ajax({
                    url: "ajaxConfirmacion",
                    type: "post",
                    async:true,
                    data: form_data,
                    success:
                    function(clsAplicados){
                        swal("Procesado!", "El pedido ha sido marcado como procesado.", "success");
                        setInterval(function(){ $(location).attr('href',"pedidos"); }, 1400);                    
                        }
                    });
            });


            /*,
            function(isConfirm){
              if (isConfirm) {
                $.ajax({
                url: "ajaxUpdatePedido/3/"+ $("#codPedido").text(),
                type: "post",
                async:true,
                success:
                function(clsAplicados){
                    swal("Procesado!", "El pedido ha sido marcado como procesado.", "success");
                    setInterval(function(){ $(location).attr('href',"pedidos"); }, 1500);                    
                    }
                });
              }
            });*/
        }
    });
    $("#btnAnular").click(function(){
        swal({
          title: "ANULACION",
          text: "Escriba una razon:",
          type: "input",
          showCancelButton: true,
          closeOnConfirm: false,
          animation: "slide-from-top",
          inputPlaceholder: "Razon de la anulacion"
        },
        function(inputValue){
          if (inputValue === false) return false;
          
          if (inputValue === "") {
            swal.showInputError("Necesita escribir una razon!");
            return false
          }
          swal("Anulado!", "Esperee..: " + inputValue, "success");
          var form_data = {
                comentario: inputValue,
                idPedido: $("#codPedido").text()
          };
          $.ajax({
                url: "ajaxAnulacion",
                type: "post",
                async:true,
                data: form_data,
                success:
                function(clsAplicados){
                    swal("Anulado!", "El pedido ha sido marcado como anulado.", "success");
                    setInterval(function(){ $(location).attr('href',"pedidos"); }, 1400);                    
                    }
                });
        });
    });
    function addCommas(nStr){
        nStr += '';
        x = nStr.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }
        return x1 + x2;
    }
    function limpiarTabla (idTabla) {
        idTabla = $(idTabla).DataTable();
        idTabla.destroy();
        idTabla.clear();
        idTabla.draw();
    }
    $( "#selectRuta" ).change(function() {
        var table = $('#tblPedidos').DataTable();
        table.columns(1).search($(this).val()).draw();
    });
    $("#idBuscar").click(function(){
        limpiarTabla(tblPedidos);
        var f1 = $("#fecha1").val();
        var f2 = $("#fecha2").val();
        var tipo = $("#selectBuscar").val();
        $("#loadPedido").show();
        $('#tblPedidos').DataTable({
            "ajax": {
                'type': 'POST',
                'url': 'ajaxPedidoSearch',
                'data': {
                   f1: f1,
                   f2: f2,
                   tipo: tipo
                },
            },
            async:'false',
            "info":    false,
                "bPaginate": false,
                "paging": true,
                "pagingType": "full_numbers",
                "lengthMenu": [[20,30,50,100,-1], [20,30,50,100,"Todo"]],
                "language": {
                    "emptyTable": "No hay datos disponibles en la tabla",
                    "lengthMenu": '_MENU_ ',
                    "search": '<i class=" material-icons">search</i>',
                    "loadingRecords": "",
                    "paginate": {
                        "first": "Primera",
                        "last": "Última ",
                        "next":       "Siguiente",
                        "previous":   "Anterior"
                    }
                },
            columns: [
                { "data": "IDPEDIDO" },
                { "data": "VENDEDOR" },
                { "data": "RESPONSABLE" },
                { "data": "CLIENTE" },
                { "data": "NOMBRE" },
                { "data": "FECHA" },
                { "data": "MONTO" },
                { "data": "ESTADO" },
                { "data": "ICONO" },
                { "data": "VER" }
            ],
            "fnInitComplete": function () {
                    $('#tblPedidos').on( 'init.dt', function () {
                        $('#loadPedido').hide();                     
                    }).dataTable();
                }
        });
    });
</script>