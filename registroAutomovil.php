<?php 
    session_start();
    $errores = isset($_SESSION["errores"]) ? $_SESSION["errores"] : array();
    $values = isset($_SESSION["valores"]) ? $_SESSION["valores"] : array();

    if(!isset($_SESSION["usuario"])) {
        header("Location: index.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="" href="css/bootstrap.min.css">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <div class="container background">
            <div class="page-header">
                <h1 class="">Ingrese los datos del Automovil</h1>
            </div>
            <form class="col-md-3 col-md-push-4 well" enctype="multipart/form-data" method="post" action="src/ingresarAutomovil.php">
                <div class="form-group row">
                    <label for="nombre" class="col-2 col-form-label">Nombre:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="nombre" id="nombre" value='<?= isset($values["nombre"]) ? $values["nombre"] : ""?>'>   
                    </div>
                    <span class="text-danger" id="error-nombre"><?= isset($errores["nombre"]) ? $errores["nombre"] : "" ?></span>
                </div>
                <div class="form-group row">
                    <label for="capacidad" class="col-2 col-form-label">Capacidad</label>
                    <div class="col-10">
                        <input class="form-control" type="number" name="capacidad" id="capacidad" value='<?= isset($values["capacidad"]) ? $values["capacidad"] : ""?>'>
                    </div>
                    <span class="text-danger" id="error-capacidad"><?= isset($errores["capacidad"]) ? $errores["capacidad"] : "" ?></span>                          
                </div>
                <div class="form-group row">
                    <label for="km" class="col-2 col-form-label">Kilometros:</label>
                    <div class="col-10">
                        <input class="form-control" type="number" name="km" id="km" value='<?= isset($values["km"]) ? $values["km"] : ""?>'>    
                    </div>
                    <span class="text-danger" id="error-km"><?= isset($errores["km"]) ? $errores["km"] : "" ?></span>
                </div>
                <div class="form-group row">
                    <label for="anio" class="col-2 col-form-label">Año:</label>
                    <div class="col-10">
                        <input class="form-control" type="number" name="anio" id="anio" value='<?= isset($values["anio"]) ? $values["anio"] : ""?>'>
                    </div>
                    <span class="text-danger" id="error-anio"><?= isset($errores["anio"]) ? $errores["anio"] : "" ?></span>
                </div>
                <div class="form-group row">
                    <label for="descripcion" class="col-2 col-form-label">Descripcion:</label>
                    <div class="col-10">
                        <textarea rows="4" cols="50" class="form-control" name="descripcion" id="descripcion" >
                            <?= isset($values["descripcion"]) ? $values["descripcion"] : "" ?>
                        </textarea>
                    </div>
                    <span class="text-danger" id="error-descripcion"><?= isset($errores["descripcion"]) ? $errores["descripcion"] : "" ?></span>
                </div>
                <div class="form-group row">
                    <label for="thumbnail" class="col-2 col-form-label">Thumbnail:</label>
                    <div class="col-10">
                        <input type="hidden" name="MAX_FILE_SIZE" value="30000000" />
                        <input type="file" class="form-control" name="userfile">
                    </div>
                    <span class="text-danger" id="error-userfile"><?= isset($errores["userfile"]) ? $errores["userfile"] : "" ?></span>
                </div>
                <input type="submit" class="btn btn-primary" id="btnRegistro" value="Ingresar"></button>
            </form>  
            <a href="index.php">Inicio</a> 
        </div>
    </body>
</html>