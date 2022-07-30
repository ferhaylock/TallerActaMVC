<?php

/* base de datos */


#include_once './../Controllers/controllersActa.php';




echo " <style>

.col , .col-1{
    border: 1px solid black;
}
</style>";

include_once './base/header.php';


include_once './../Controllers/ControllersPrograma.php';

?>

   
<!-- CONTENT -->

<?php  foreach ($actas->getById($_GET['id']) as $key => $value){ ?>    

  <div class="container my-5">

    <div class="row text-center text-Secondary">
        <div class="col py-2">

        UNIVERSIDAD DE CORDOBA
        </div>

        <div class="col py-2">
    
            ACTA DE REUNIÓN 
            <br/> N° :   <?php echo $value->ID ?>
        </div>
    
        <div class="col py-2">
    
            CODIGO: GM1A
            <br/>
            Version : 01
    
        </div>
    </div>


    <div class="row mt-4" >
        <div class="col py-2">
            <strong> Fecha: </strong> 
        <?php echo $value->FECHA ?>
        </div>

    </div>

    <div class="row" >
        <div class="col py-2">
<strong>  Descripcion:  </strong>
       
        <?php echo $value->DESCRIPCION ?>
        </div>

    </div>

    <div class="row ">
        <div class="col py-2">
<strong>  Responsable:  </strong>
        <?php echo $value->RESPONSABLE ?>
        </div>

    </div>

    <div class="row " >
        <div class="col py-2">
            <strong> PROGRAMA: </strong>
         <?php  $pro = new ControllerProgramas();
         echo $pro->VerProgramas($value->PROGRAMA_ID)->PROGRAMA  ?>
        </div>

    </div>

   
    
        <?php } ?>

<!-- footer -->

<?php
include_once './base/footer.php';

?>