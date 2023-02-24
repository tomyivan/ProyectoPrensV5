<div class="row">
<div class="col-sm-6">
	<form class="row g-3">

  <div class="col-auto">

    <input type="text" class="form-control form-control-sm" id="descripcion" name="descripcion" placeholder="Ingrese la descripcion" style="width:300px" autofocus>
  </div>
  <div class="col-auto">
    <button type="submit" class="btn btn-outline-primary btn-sm" >Registrar</button>
  </div>
</form>
</div>	
<div class="col-sm-6">
	   <form class="d-flex" action="php/editar.php" method="GET" role="Editar">
                        <select id="Realizada_en" class="form-select form-select-sm"  name="realizada_en[]">
                       	<?php 
                       		$select->editRealiza_en($_GET['realizada_en']);
                       	?>		
                       </select>
                        <select id="Edicion" class="form-select form-select-sm" selected="" name="edicion[]">
                    	<?php 
                       		$select->editEdicion($_GET['edicion']);
                       	?>	                           
                        </select>
      <input class="form-control form-control-sm" type="date" name='fecha' value="<?php echo $_GET['fecha']?>">
      <input class="form-control form-control-sm" type="time" name='hora_prog' value="<?php echo $hora ?>">
      <button class="btn btn-outline-primary btn-sm" type="submit">Editar</button>
    </form>
</div>
</div>
