<?php
    $nombre = $_POST["nombre"];
    $apellidoPat = $_POST["apellidoPat"];
    $apellidoMat = $_POST["apellidoMat"];
    $correo = $_POST["correo"];
    $clave = $_POST["clave"];
    $repetir_clave = $_POST["repetir_clave"];

    $errores = array();

    if(!isset($nombre) || strlen($nombre) == 0){
        array_push($errores, array("nombre" => "Debe ingresar un nombre"));
    }

    if(!isset($apellidoPat) || strlen($apellidoPat) == 0){
        array_push($errores, array("apellidoPat" => "Debe ingresar un apellido paterno"));
    }

    if(!isset($apellidoMat) || strlen($apellidoMat) == 0){
        array_push($errores, array("apellidoMat" => "Debe ingresar un apellido materno"));
    }

    if(!isset($correo) || strlen($correo) == 0){
        array_push($errores, array("correo" => "Debe ingresar una direccion de correo"));
    }

    if (!isset($clave) || strlen($clave) == 0){
        array_push($errores, array("clave" => "Debe ingresar una clave"));
    } else if (!isset($repetir_clave) || strlen($repetir_clave) == 0) {
        array_push($errores, array("repetir_clave" => "Debe reingresar su clave"));
    } else {
        if($clave != $repetir_clave) {
            array_push($errores, array("repetir_clave" => "Ambas claves deben ser iguales"));
        }
    }

    if(count($errores) > 0){
        echo json_encode($errores);
    }

    //Ingresar Usuario

    
?>