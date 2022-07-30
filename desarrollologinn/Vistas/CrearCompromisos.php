
<!-- HEADER -->

<?php include_once './base/header.php';

$url = "./router.php?controller=Compromiso&action=crear&id=".$_GET['id']?>



   <div class="container mt-5 col-5">
                <form action="<?php echo $url?>" method="post">

                <?php echo isset($_GET['alert'])?  "<div class='alert alert-success' role='alert'>         Compromiso Asignado Correctamente
            </div> " : ''?>

                <div class="card my-4 text-center">
                    <h2>Informacion del acta</h2>
                    <br>
                    <?php

                    require_once './../Controllers/controllersActa.php';
                    $acta = new ControllerActas();
                    $act = $acta->VerActa($_GET['id']);
                    
                    echo '<strong>Asunto :</strong> ' .$act->ASUNTO  . '<strong>Descripcion :</strong>  ' . $act->DESCRIPCION .
                    '<strong>Fecha :</strong> ' .$act->FECHA;

                    ?>
                </div>
                  
                    <h1 class="text-center">Compromisos</h1>

                    <br>

                    <input class="form-control mb-3" type="text" name="descripcion" placeholder="Descripcion" required>

            <label for="">
                Fecha Inicio
                <input class="form-control mb-3" type="date" name="fecha_inic" required>
            </label>

            <label for="">
                Fecha Fin
                <input class="form-control mb-3" type="date" name="fecha_fin" required>
            </label>

            <input class="form-control mb-3" type="text" name="responsable" placeholder="Responsable" required>

            <input type="hidden" name="id" value="<?php echo $_GET['id'] ?>">

                <div class="modal-footer">
                    <input name="btn" value="Crear Compromisos" type="submit" data-bs-dismiss="modal" class="btn btn-primary">

                    <a class="btn btn-success" href="./home.php">Terminar</a>

                </div>
    <!-- Fin Modal Editar -->
    </form> 

    </div>
<!-- FOOTER -->

<?php include_once './base/footer.php';?>