<!-- HEADER -->

<?php
    include_once './base/header.php';
?>


    <div class="container mt-4 d-flex justify-content-center align-items-center col-6">

        <form action="./router.php?controller=Acta&action=crear" method="POST" enctype="multipart/form-data">

        <h2 class="text-center mb-3">  Crear Actas</h2>


            <input class="form-control mb-3" style="width: 40rem;" type="text" name="asunto" placeholder="Asunto" required>
        
            <input class="form-control mb-3"   type="text" name="descripcion" placeholder="Descripcion"  required>
         
            <input class="form-control mb-3" type="text" name="responsable" placeholder="Responsable" required>

          

            <div class="option">

<div class="select">
    <div>Programa</div>
        <div>
        
        
            <select name="programa">

       
            <?php
            require_once './../Controllers/controllersPrograma.php';

            $programas = new ControllerProgramas();
            $programas->VerPrograma();
        ?>
        
           
                
            </select>
        </div>
        
            <label for="">
                Fecha
                <input class="form-control mb-3" type="date" style="width: 40rem;" name="fecha" required>
            </label>

    <br>
            <input name="btn" value="Guardar" style="width: 40rem;" type="submit" data-bs-dismiss="modal" class="btn btn-primary">     
        </form>

    </div>
<!-- FOOTER -->

<?php
    include_once './base/footer.php';
?>