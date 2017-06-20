<?php
    require "Usuario.php";

    $nombre = isset($_POST["nombre"]) ? $_POST["nombre"] : "";
    $apellidoPat = isset($_POST["apellidoPat"]) ? $_POST["apellidoPat"] : "";
    $apellidoMat = isset($_POST["apellidoMat"]) ? $_POST["apellidoMat"] : "";
    $correo = isset($_POST["correo"]) ? $_POST["correo"] : "";
    $user = isset($_POST["user"]) ? $_POST["user"] : "";
    $clave = isset($_POST["clave"]) ? $_POST["clave"] : "";
    $repetir_clave = isset($_POST["repetir_clave"]) ? $_POST["repetir_clave"] : "";

    $errores = array();

    if(strlen($nombre) == 0){
        $errores = array_merge($errores, array("nombre" => "Debe ingresar un nombre"));
    }

    if(strlen($apellidoPat) == 0){
        $errores = array_merge($errores, array("apellidoPat" => "Debe ingresar un apellido paterno"));
    }

    if(strlen($apellidoMat) == 0){
        $errores = array_merge($errores, array("apellidoMat" => "Debe ingresar un apellido materno"));
    }

    if(strlen($correo) == 0){
        $errores = array_merge($errores, array("correo" => "Debe ingresar una direccion de correo"));
    }

    if(strlen($user) == 0){
        $errores = array_merge($errores, array("user" => "Debe ingresar un nombre de usuario"));
    }

    if (strlen($clave) == 0){
        $errores = array_merge($errores, array("clave" => "Debe ingresar una clave"));
    } else if (strlen($repetir_clave) == 0) {
        $errores = array_merge($errores, array("repetir_clave" => "Debe reingresar su clave"));
    } else {
        if($clave != $repetir_clave) {
            $errores = array_merge($errores, array("repetir_clave" => "Ambas claves deben ser iguales"));
        }
    }

    $usuario = new Usuario($nombre,$apellidoPat,$apellidoMat,$correo,$user,$clave);

    if($usuario->buscarPorUsername($user)){
        $errores = array_merge($errores, array("user" => "El usuario ingresado ya existe"));
    }
    
    if(count($errores) > 0) {
        echo json_encode($errores);
        exit();
    }
    
    //Ingresar Usuario

    if($usuario->insert()){
        echo json_encode(array("Exito" => "true"));
        exit();
    }
?>