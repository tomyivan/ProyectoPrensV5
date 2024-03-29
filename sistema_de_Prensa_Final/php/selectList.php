<?php
include_once 'conexion.php';

class selectList extends Conectar {
    /***************************SELECT MODAL*******************************/
    public function addRealiza_en(){
    	$response = $this->mostrarCondicion("`idRealizada`,`nomRealizada`","`realizada_en`","1");
        while($registro = $response->fetch_array(MYSQLI_BOTH)){           
                echo '<option value="'.$registro['idRealizada'].'">'.$registro['nomRealizada'].'</option>' ;  
        } 
    }
     public function addEdicion(){
        $response = $this->mostrarCondicion("`idEdicion`,`nomEdicion`","`edicion`","`edicion`.`activo`= 1");
        while($registro = $response->fetch_array(MYSQLI_BOTH)){
                echo '<option value="'.$registro['idEdicion'].'">'.$registro['nomEdicion'].'</option>' ;
            
        }  
    }
        /******************editar*************************/
    public function editRealiza_en($idRealiza){
        $response = $this->mostrarCondicion("`idRealizada`,`nomRealizada`","`realizada_en`","1");
        while($registro = $response->fetch_array(MYSQLI_BOTH)){
            if($idRealiza == $registro['idRealizada']){
                echo '<option value="'.$registro['idRealizada'].'"selected>'.$registro['nomRealizada'].'</option>' ;
            }else{
                echo '<option value="'.$registro['idRealizada'].'">'.$registro['nomRealizada'].'</option>' ;
            }
        }           
    }    
    public function editEdicion($idEdicion){
        $response = $this->mostrarCondicion("`idEdicion`,`nomEdicion`","`edicion`","`edicion`.`activo`= 1");
        while($registro = $response->fetch_array(MYSQLI_BOTH)){
            if($idEdicion == $registro['idEdicion']){
                echo '<option value="'.$registro['idEdicion'].'"selected>'.$registro['nomEdicion'].'</option>' ;
            }else{
                echo '<option value="'.$registro['idEdicion'].'">'.$registro['nomEdicion'].'</option>' ;
            }
        }  
    }
    public function obtenerHora($EdicionAux){
    if($EdicionAux =='1'){            
        $Hora_Prog= '06:00:00';
    }else if($EdicionAux =='2'){
        $Hora_Prog= '12:25:00';
    }
    else if($EdicionAux =='3'){
        $Hora_Prog= '20:30:00';
    }
    else if($EdicionAux =='4'){
        $Hora_Prog= '23:00:00';
    }
    else if($EdicionAux =='5'){
        $Hora_Prog= '12:30:00';
    }
    else if($EdicionAux =='6'){
        $Hora_Prog= '19:00:00';
    }
    else if($EdicionAux =='7'){
        $Hora_Prog= '12:30:00';
    }
    else if($EdicionAux =='8'){
        $Hora_Prog= '18:30:00';
    }
    return $Hora_Prog;
     
    }  
    /***********************TABLA DINAMICA********************************/
    public function tablaDinamicaFormato(){
         global $resultList;
        $tabla = "`clasificadortipo`";
        $condicion ="idClasificadorPadre = 5";
        $this->obtenerDatosCondicion($tabla,$condicion);
        while($registro = $resultList->fetch_array(MYSQLI_BOTH)){
                       $obtenerDatos[]= array($registro['nombre']=>$registro['nombre']);
           /* if($edicion == $registro['nombre']){
                echo '<option value="'.$registro['nombre'].'"selected>'.$registro['nombre'].'</option>' ;
            }else{
                echo '<option value="'.$registro['nombre'].'">'.$registro['nombre'].'</option>' ;
            }*/

        }
        $obtenerD = json_encode($obtenerDatos,JSON_INVALID_UTF8_SUBSTITUTE);
        return $obtenerD;  
    }
    public function tablaDinamicaContenido(){
          global $resultList;
        $tabla = "`clasificadortipo`";
        $condicion ="idClasificadorPadre = 3";
        $this->obtenerDatosCondicion($tabla,$condicion);
        while($registro = $resultList->fetch_array(MYSQLI_BOTH)){
                       $obtenerDatos[]= array($registro['nombre']=>$registro['nombre']);
           /* if($edicion == $registro['nombre']){
                echo '<option value="'.$registro['nombre'].'"selected>'.$registro['nombre'].'</option>' ;
            }else{
                echo '<option value="'.$registro['nombre'].'">'.$registro['nombre'].'</option>' ;
            }*/

        }
        $obtenerD = json_encode($obtenerDatos,JSON_INVALID_UTF8_SUBSTITUTE);
        return $obtenerD; 
    } 
    public function tablaDinamicaBloque(){
          global $resultList;
        $tabla = "`clasificadortipo`";
        $condicion ="idClasificadorPadre = 4";
        $this->obtenerDatosCondicion($tabla,$condicion);
        while($registro = $resultList->fetch_array(MYSQLI_BOTH)){
                       $obtenerDatos[]= array($registro['nombre']=>$registro['nombre']);
           /* if($edicion == $registro['nombre']){
                echo '<option value="'.$registro['nombre'].'"selected>'.$registro['nombre'].'</option>' ;
            }else{
                echo '<option value="'.$registro['nombre'].'">'.$registro['nombre'].'</option>' ;
            }*/

        }
        $obtenerD = json_encode($obtenerDatos,JSON_INVALID_UTF8_SUBSTITUTE);
        return $obtenerD; 
    }
    public function tablaDinamicaCiudad(){
           global $resultList;
       
        $this->consultaList('ciudad');
        //"Si": "Si", "No": "No"
        while($registro=$resultList->fetch_array(MYSQLI_BOTH)){
           //$obtenerDatos ='"'.$obtenerDatos.$registro['IdPresentador'].'":"'.$registro['NombrePresentador'].'","'; 
           //$obtenerDatos[] = $registro['NombreEditor'];
           $obtenerDatos[]= array($registro['idCiudad']=>$registro['nombre']);
        }
        $obtenerD = json_encode($obtenerDatos,JSON_INVALID_UTF8_SUBSTITUTE);
        return $obtenerD;
    }
    
    public function tablaDinamicaPresentador(){
        global $resultList;
       
        $this->consultaList('presentador');
        //"Si": "Si", "No": "No"
        while($registro=$resultList->fetch_array(MYSQLI_BOTH)){
           //$obtenerDatos ='"'.$obtenerDatos.$registro['IdPresentador'].'":"'.$registro['NombrePresentador'].'","'; 
           //$obtenerDatos[] = $registro['NombreEditor'];
           $obtenerDatos[]= array($registro['IdPresentador']=>$registro['NombrePresentador']);
        }
        $obtenerD = json_encode($obtenerDatos,JSON_INVALID_UTF8_SUBSTITUTE);
        return $obtenerD;
    }
    //periodista
    public function tablaDinamicaPeriodista(){
        global $resultList;
        $this->consultaList('periodista');
        while($registro=$resultList->fetch_array(MYSQLI_BOTH)){
            //$obtenerDatos ='"'.$obtenerDatos.$registro['IdPeriodista'].'":"'.$registro['NombrePeriodista'].'","'; 
            $obtenerDatos[]= array($registro['IdPeriodista']=>$registro['NombrePeriodista']);
           
        }
       
       $obtenerD = json_encode($obtenerDatos,JSON_INVALID_UTF8_SUBSTITUTE);
        return $obtenerD;
    }
    //editor 
    public function tablaDinamicaEditor(){
        global $resultList;
    
        $this->consultaList('editor');
        while($registro=$resultList->fetch_array(MYSQLI_BOTH)){
           //$obtenerDatos ='"'.$obtenerDatos.$registro['IdEditor'].'":"'.$registro['NombreEditor'].'","'; 
        $obtenerDatos[] =array($registro['IdEditor']=>$registro['NombreEditor']); 
        }
        $obtenerD = json_encode($obtenerDatos,JSON_INVALID_UTF8_SUBSTITUTE);
        return $obtenerD;
    }
    function obtenerMax(){
        $sql ="SELECT  *FROM periodismo";
        $resul = $this->conectar()->query($sql);
        $numRows = $resul->num_rows;
        return $numRows;
    }
}
 
?>