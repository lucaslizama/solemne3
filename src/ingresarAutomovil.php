<?php 
    session_start();

    $errores = array();
    $default = array();

    $nombre = isset($_POST["nombre"]) ? $_POST["nombre"] : "";
    $capacidad = isset($_POST["capacidad"]) ? $_POST["capacidad"] : "";
    $km = isset($_POST["km"]) ? $_POST["km"] : "";
    $anio = isset($_POST["anio"]) ? $_POST["anio"] : "";
    $descripcion = isset($_POST["descripcion"]) ? $_POST["descripcion"] : "";

    $default = array_merge($default, array("nombre" => $nombre));
    $default = array_merge($default, array("capacidad" => $capacidad));
    $default = array_merge($default, array("km" => $km));
    $default = array_merge($default, array("anio" => $anio));
    $default = array_merge($default, array("descripcion" => $descripcion));

    if(strlen($nombre) == 0){
        $errores = array_merge($errores, array("nombre" => "Debe ingresar un nombre"));
    }

    if(strlen($capacidad) == 0){
        $errores = array_merge($errores, array("capacidad" => "Debe ingresar la capacidad de pasajeros"));
    }

    if((int)$capacidad <= 0){
        $errores = array_merge($errores, array("capacidad" => "La capacidad debe ser mayor a 0 personas"));
    }

    if(strlen($km) == 0){
        $errores = array_merge($errores, array("km" => "Debe ingresar un nombre"));
    }

    if((int)$km <= 0){
        $errores = array_merge($errores, array("km" => "Los kilometros recorridos deben ser mayores a 0"));
    }

    if(strlen($anio) == 0){
        $errores = array_merge($errores, array("anio" => "Debe ingresar un nombre"));
    }

    
    if((int)$anio <= 1900){
        $errores = array_merge($errores, array("anio" => "El año de fabricacion debe ser posterior a 1900"));
    }

    if(strlen(trim($descripcion)) == 0){
        $errores = array_merge($errores, array("descripcion" => "Debe ingresar una descripcion"));
    }

    if(strlen($_FILES['userfile']['name']) <= 0) {
        $errores = array_merge($errores, array("userfile" => "Debe seleccionar una imagen para su automovil"));
    }

    if(count($errores)){
        $_SESSION["errores"] = $errores;
        $_SESSION["valores"] = $default;
        header("Location: ../registroAutomovil.php");
        exit();
    }

    $uploaddir = "../uploads/";
    $uploadfile = $uploaddir . basename($_FILES['userfile']['name']);

    if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
        header("Location: ../verAutomoviles.php");
        exit();
    } else {
        $errores = array_merge($errores, array("userfile" => "Error al subir la imagen"));
        $_SESSION["errores"] = $errores;
        $_SESSION["valores"] = $default;
        header("Location: ../registroAutomovil.php");
        exit();
    }
?>