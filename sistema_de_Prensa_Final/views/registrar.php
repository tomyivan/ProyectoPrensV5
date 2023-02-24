<?php 
include_once '../php/validacion.php';
if(!empty($_GET['name'])){
    $name = $_GET['name'];
}else{
    header("location: ../index.php");
}
$val = new validacion();
$val->validacion($name);
include_once "../php/selectList.php";
$select = new selectList();
$hora = $select->obtenerHora($_GET['edicion']);
?>
<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link rel="icon"  href="img/icono boli ad.png">

        <title>Escaleta</title>
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
        <!--menu-->
<?php 
include_once "menu.php";
?>
<h3 style="text-align: center;">Escaleta</h3>
<section class="formulario">
	<?php 
		include_once "formularios.php";
	?>
</section>
<div class="table-responsive-sm">
  <table class="table table-sm">
    <thead class="table-dark">
    	<tr>
    		<th>id</th>
    		<th>#</th>
    		<th>Productor</th>
    		<th>Presentador</th>
    		<th>Emitido</th>
    		<th>Descripcion</th>
    		<th>Formato</th>
    		<th>Ciudad</th>
    		<th>Periodista</th>
    		<th>Editor</th>
    		<th>Contenido</th>
    		<th>Bloque</th>
    		<th>Duracion</th>
    		<th>Hora Prog</th>
    		<th>Acciones</th>
    	</tr>
    </thead>
    <tbody id="mostrar">
    	
    </tbody>
  </table>
</div>
</body>

</html>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>