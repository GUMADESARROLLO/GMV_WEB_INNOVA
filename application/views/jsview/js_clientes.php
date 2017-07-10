<script>
	$(document).ready(function() {

	$('#tblClientes,#PtosCliente,#tblModal1').DataTable(
        {
            "info":    false,
            "bLengthChange": false,
            "lengthMenu": [[10,20,32,100,-1], [10,20,32,100,"Todo"]],
            "language": {
                "paginate": {
                    "first":      "Primera",
                    "last":       "Última ",
                    "next":       "Siguiente",
                    "previous":   "Anterior"
                },
                "lengthMenu":"MOSTRAR _MENU_",
                "emptyTable": "No hay datos disponibles en la tabla",
                "search":     "<i class='material-icons'>search</i>" 
            }
        }
    );

    
});

    function getview(id,nombre,vendedor,direccion,telefono,correo,departamento,municipio,ruc,estado) {
        $('#modalView').openModal();
        $("#btnProcesar").show();
        
        if (estado > 0) {
            $("#btnProcesar").hide();
        }
        
        $('#loadIMG').show();

        $('#codCliente').text(id);
        $('#nombreCl').text(nombre);
        $('#vendedor').text(vendedor);
        $('#telefono').text(id);
        $('#ruc').text(id);
        $('#correo').text(correo);
        $('#departamento').text(id);
        $('#municipio').text(id);
        $('#direccion').text(direccion);        
    }
    $("#btnProcesar").click(function(){
        if ($("#codCliente").text()!="" && $("#nombreCl").text()!=""){
            swal({
              title: "Esta seguro?",
              text: "Se marcara el cliente como ingresado!",
              type: "warning",
              showCancelButton: true,
              confirmButtonColor: "#DD6B55",
              confirmButtonText: "PROCESAR",
              cancelButtonText: "CANCELAR",
              confirmButtonColor: "green",
              closeOnConfirm: false
            },
            function(){
              swal("Procesado!", "Espere....", "success");
              var form_data = {
                    id: $("#codCliente").text(),
                    vendedor: $("#vendedor").text()
              };
              $.ajax({
                    url: "ajaxConfirmarCliente",
                    type: "post",
                    async:true,
                    data: form_data,
                    success:
                    function(clsAplicados){
                        swal("Procesado!", "El cliente se ha marcado como ingresado.", "success");
                        setInterval(function(){ $(location).attr('href',"ClientesWeb"); }, 1300);                    
                        }
                    });
            });
            
        }
    });
</script>