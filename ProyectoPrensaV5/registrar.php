<?php 
include_once 'php/conexion.php';
include 'php/SelectList.php';
session_start();
if(!empty($_POST['edicion'])){
    $_SESSION['edicion'] =  $_POST['edicion'];
    $Edicion = $_POST['edicion'];
    for($i=0;$i<count($Edicion);$i++){
        $EdicionAux = $Edicion[$i];
    }
    if($EdicionAux =='Al Dia Revista'){            
        $Hora_Prog= '06:00:00';
    }else if($EdicionAux =='Segunda Edicion'){
        $Hora_Prog= '12:25:00';
    }
    else if($EdicionAux =='Tercera Edicion'){
        $Hora_Prog= '20:30:00';
    }
    else if($EdicionAux =='Aqui en Vivo'){
        $Hora_Prog= '23:00:00';
    }
    else if($EdicionAux =='Primera Edicion de Sabado'){
        $Hora_Prog= '12:30:00';
    }
    else if($EdicionAux =='Segunda Edicion de Sabado'){
        $Hora_Prog= '19:00:00';
    }
    else if($EdicionAux =='Primera Edicion de Domingo'){
        $Hora_Prog= '12:30:00';
    }
    else if($EdicionAux =='Segunda Edicion de Domingo'){
        $Hora_Prog= '18:30:00';
    }
    $_SESSION['hora_prog'] = $Hora_Prog;
}            
if(!empty($_POST['realizada_en'])){
    $_SESSION['realizada_en'] = $_POST['realizada_en'];} 
$con2 = new selectList();
$auxPresentador=substr($con2->tablaDinamicaPresentador(), 8, -2);
$auxPeriodista=substr($con2->tablaDinamicaPeriodista(), 8, -2);
$auxEditor =substr($con2->tablaDinamicaEditor(), 8, -2);

?>
<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script type="text/javascript" src="./TableDinamica/jquery.tabledit.js"></script>
        <link rel="icon"  href="img/icono boli ad.png">

        <title>Registro</title>
        <style>
            .my-custom-scrollbar {
                position: relative;
                height: 60%;
                overflow: auto;
            }
            .table-wrapper-scroll-y {
                display: block;
            }

        </style>
   


    </head>
    <body>  
        <?php 
       
        include_once 'menu.php' ?>
   
            <h1 style="text-align: center">REGISTRO DE ESCALETA</h1>
            <?php
           
            include_once 'FormularioAddEdit.php';           
            ?>
<div class ="table-responsive">
                
                <div class="table-wrapper-scroll-y my-custom-scrollbar">
                <span id="miTabla" >
                    <table   id="data_table"  class="table table-striped table-bordered table-sm" cellspacing="0"
                             width="100%" >
                      
                                <thead>
                                <tr class="table-info">
                            
                                    <th>Id</th>
                                    <th>Num</th>
                                    <th>Fecha</th>
                                    <th>Presentador</th>
                                    <!--<th>Edicion</th>-->
                                    <th>Emitido</th>
                                    <th>Productor</th>
                                    <th>Descripcion</th>
                                    <th>Formato</th>
                                    <th>Ciudad</th>
                                    <th>Periodista</th>
                                    <th>Editor</th>
                                    <th>Contenido</th>
                                    <th>Duracion</th>
                                    <th>Bloque</th>
                                    <!--<th>mm_ss</th>-->
                                    <th>Hora Prog</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php include './mostrar.php'; ?>
                            </tbody >
                        
                    </table>
                 </span>
                </div>
            </div>
            <br><br>
            <a href="Imprimir/GenerarPDF.php" type="button" class="btn btn-danger"><img src="img/filetype-pdf.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
                Imprimir</a>
            <a href="Excel/GenerarExcel.php" type="button" class="btn btn-success"><img src="img/file-earmark-spreadsheet-fill.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
                Excel</a>
                <a href="Escaleta.php" type="button" class="btn btn-info" style="float: right;"><img src="img/save-fill.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
                Guardar Escaleta</a>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
   
    </body>

</html>
<script type="text/javascript">
 /*   function tiempoReal(){
         let table = $.ajax({
            url:'mostrar.php',
            dataType: "Text",
            async:false
        }).responseText;
        document.getElementById("miTabla").innerHTML=table;
    }
    setInterval(tiempoReal,2000);*/
    
    </script>
<script type="text/javascript">
                function confirmaEliminar(id)
                {
                    if (confirm('¿Esta seguro que desea eliminar el dato?'))
                    {
                        window.location.href = "php/borrar.php?Id=" + id;
                    }

                }
             
                
                function moverarriba(Id,sw){
                    
                        window.location.href = "php/mover.php?Id=" + Id +"&sw="+sw;
                    

                }
                function moverabajo(Id,sw){
                   
                        window.location.href = "php/mover.php?Id=" + Id +"&sw="+sw;
                    
                
                }
            </script>
<script type="text/javascript">
$(document).ready(function(){
    function table(){
    $('#data_table').Tabledit({

        deleteButton: false,
        editButton: false,          
        columns: {
          identifier: [0, 'id'],                    
          editable: [[2,'fecha'],[3,'presentador','{<?php echo $auxPresentador;?>}'],[4,'emitido', '{"":"","Si": "Si", "No": "No"}'],[6,'descripcion'],[7,'formato', '{"":"","Capsula": "Capsula", "Clima": "Clima", "Comercio": "Comercio", "Compacto": "Compacto", "Cuadros": "Cuadros", "Entrevistas": "Entrevistas", "Falso": "Falso", "Informe": "Informe"}'],[8,'ciudad','{"":"","La Paz": "La Paz","Cochabamba": "Cochabamba","Santa Cruz": "Santa Cruz"}'],[9,'periodista','{<?php echo $auxPeriodista;?>}'],[10,'editor','{<?php echo $auxEditor;?>}'],[11,'contenido','{"":"","Actuacion": "Actuacion","Brigada": "Brigada","Ciudad": "Ciudad","Clima": "Clima","Cocina": "Cocina","Comercio": "Comercio","Deportes": "Deportes","Despedida": "Despedida"}'],[12,'duracion'],[13,'bloque','{"":"","B1": "B1","B2": "B2","B3": "B3","B4": "B4","B5": "B5","B6": "B6","B7": "B7","B8": "B8"}']],
        },
        hideIdentifier :true,
        url: './TableDinamica/editarCelda.php',

        onDraw: function() {
        console.log('onDraw()');
    },
    onSuccess: function(data, textStatus, jqXHR) {
        console.log('onSuccess(data, textStatus, jqXHR)');
        console.log(data);
        console.log(textStatus);
        console.log(jqXHR);
        $("#miTabla").load("./registrar.php #miTabla", function(){
            table();
        });
    },
    onFail: function(jqXHR, textStatus, errorThrown) {
        console.log('onFail(jqXHR, textStatus, errorThrown)');
        console.log(jqXHR);
        console.log(textStatus);
        console.log(errorThrown);
    },
    onAlways: function() {
        console.log('onAlways()');
    },
    onAjax: function(action, serialize) {
        console.log('onAjax(action, serialize)');
        console.log(action);
        console.log(serialize);
    },
        hideIdentifier: true
           
    });}
    table();
});
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $('#btnIngresar').click(function(){
            var datos = $('#frmAjax').serialize();
            $.ajax({
                type:"POST",
                url:"Php/InsertarDatos.php",
                data:datos
            });
        });
    });

</script>