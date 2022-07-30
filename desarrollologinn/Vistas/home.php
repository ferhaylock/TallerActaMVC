

<!-- HEADER -->

<?php include_once './base/header.php';?>

<!-- CONTENT -->

  <div class="container mt-5 d-flex justify-content-end">

  <a href="./actas.php" 
     class="btn btn-primary">Crear Acta</a>
  </div>

  <div class="container d-flex justify-content-center my-5">


    <table class="table text-center">
        <thead class="table-success">

            <tr>
                <th scope="col">N</th>
                <th scope="col">ASUNTO</th>
                <th scope="col">ACCIONES</th>
            </tr>
        </thead>
        <tbody id="table">

    <?php

        include_once "./../Controllers/controllersActa.php";

        $actas = new ControllerActas();

        $actas->Ver();
            
        ?>

        </tbody>
    </table>
    </div>




<!-- FOOTER -->

<?php include_once './base/footer.php';?>