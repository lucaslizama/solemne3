<?php
    session_start();
    
    $user = isset($_SESSION["usuario"]) ? $_SESSION["usuario"] : null;
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>     
        <div class="container well">
            <div class="page-header">
                <h1><?= isset($user) ? "Bienvenido " . $user["nombre"] . " " . $user["apellidoPat"] : "Ingresa a tu Cuenta" ?></h1>
                <ul>
                    <?php 
                        if(!isset($user)) {
                    ?>
                        <li><a href="login.php">Ingresar</a></li>
                        <li><a href="registro.php">Registrarse</a></li>
                    <?php 
                        }
                    ?>
                    <?php 
                        if(isset($user)) {
                    ?>
                        <li><a href="registroAutomovil.php">Ingresar Automovil</a></li>
                        <li><a href="verAutomoviles.php">Ver Automoviles</a></li>
                        <li><a href="logout.php">Salir</a></li>
                    <?php 
                        }
                    ?>
                </ul>
            </div>
            
        </div>
    </body>
</html>