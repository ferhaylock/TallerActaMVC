
<?php

class ControllerActas{

#crea un nuevo cliente
public function Crear(){
    
    require_once  ("./../Model/actas.php");

    $actas = new Actas();

    
#valida campos vacios
    if ($_POST['asunto'] != "" && $_POST['descripcion'] != "" && $_POST['responsable'] != "" ) {
        
        #verifica si el boton agregar con el name salvar fue presionado
    if(isset($_POST['btn'])){
        #llama al metodo create
        
        $url = './CrearCompromisos.php?id='. $actas->create();

        header('location: '. $url);
    }

    }else{
        echo "campos vacios";
    }

}

public function Eliminar(){

    require_once  ("./../Model/actas.php");

    $actas = new Actas();

    #verifica si hay una solicitud de tipo de get
    if(isset($_GET['id'])){
        #llama al metodo delete delete
        $actas->delete($_GET['id']);

        header('location: ./home.php');
    }
}

public function Ver(){
    require_once  ("./../Model/actas.php");

    $actas = new Actas();

    $i = 1;
    #recorre todos los datos en la base de datos
    
    foreach ($actas->getAll() as $key => $value) {

      echo 
      "<tr><td>" . $i . "</td>"
      . "<td>" . $value->ASUNTO . "</td>"
      . "<td>
       <div class='d-flex justify-content-center'>

       <a href='./router.php?controller=Acta&action=verActas&id=$value->ID' 
       class='btn btn-success'>Ver Datos</a> 

       <a href='./router.php?controller=Acta&action=eliminar&id=$value->ID' class='btn btn-danger mx-2'>ELIMINAR</a> 

      <a href='./ViewCompromisos.php?id=$value->ID' class='btn btn-primary mx-2' > Ver Compromisos</a>
    
      </div>
      </td></tr>";
      $i++;
  }
}


public function VerActa($id){
    require_once  ("./../Model/actas.php");

    $actas = new Actas();

    $act = $actas->getById($id)[0];
    return $act;
}

public function VerActas(){

    require_once  ("./../Model/actas.php");

    $actas = new Actas();
    

    require_once  ("./../Vista/VerActa.php");

}

}