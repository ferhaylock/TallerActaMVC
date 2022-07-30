<?php



class ControllerUsuarios{


    public function activacion(){
        require_once './../Model/usuarios.php';
        $user = new Usuarios();

        $user->activar();
    }

    public function recuperar(){
        require_once './../Model/usuarios.php';
        $user = new Usuarios();
        $user->recuperar();
    }

    public function cambiarContra(){
        require_once './Model/usuarios.php';
        $user = new Usuarios();

        $user->cambiarContra();
    }

    public function modificarPass(){
        require_once './../Model/usuarios.php';
        $user = new Usuarios();

        $user->modificarPass();
    }

}