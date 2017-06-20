<?php
    session_start();

    require "Usuario.php";

    $user = isset($_POST["user"]) ? $_POST["user"] : "";
    $clave = isset($_POST["clave"]) ? $_POST["clave"] : "";

    $errores = array();

    if(strlen($user) == 0) {
        $errores = array_merge($errores, array("user" => "Debes ingresar tu nombre de usuario"));
    }

    if(strlen($clave) == 0) {
        $errores = array_merge($errores, array("clave" => "Debes ingresar tu clave para ingresar"));
    }

    if(count($errores) > 0) {
        echo json_encode($errores);
        exit();
    }

    $usuario = new Usuario(null,null,null,null,$user,$pass);
    
    if($usuario->buscarPorUsername($user)){
        $data = $usuario->getArray();
        $sessionUser = array(
            "nombre" => $usuario["nombre"],
            "apellidoPat" => $usuario["apellidoPat"],
            "apellidoMat" => $usuario["apellidoMat"],
            "correo" => $usuario["correo"],
            "user" => $usuario["user"]
        );
        $_SESSION["usuario"] = $sessionUser;
        header("Location: http://solemne3.dev/");
        exit();
    }

    $errores = array_merge($errores, array("user" => "El usuario ingresado no existe"));
    echo json_encode($errores);
    
?>