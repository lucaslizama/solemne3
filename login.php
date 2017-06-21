<?php 
    session_start();
    
    if(isset($_SESSION["usuario"])){
        header("Location: /");
    }

    $errores = isset($_SESSION["errores"]) ? $_SESSION["errores"] : null;
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" type="" href="css/bootstrap.min.css">
        <script src="js/jquery-3.2.0.js"></script>
    </head>
    <body>
        <div class="container well">
            <div class="page-header">
                <h1 class="">Ingresa a tu Cuenta</h1>
            </div>
            <form class="col-md-3 col-md-push-4 well" action="src/procesarLogin.php" method="POST">
                <div class="form-group row">
                    <label for="user" class="col-2 col-form-label">Usuario:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="user">    
                    </div>
                    <span class="text-danger" id="error-user"><?=isset($errores["user"]) ? $errores["user"] : "" ?></span>
                </div>
                <div class="form-group row">
                    <label for="pass" class="col-2 col-form-label">Contraseña:</label>
                    <div class="col-10">
                        <input class="form-control" type="password" name="clave">
                    </div>
                    <span class="text-danger" id="error-clave"><?=isset($errores["clave"]) ? $errores["clave"] : "" ?></span>
                </div>
                <input type="submit" class="btn btn-primary" value="Ingresar" id="btnLogin">
            </form>
        </div>
    </body>
</html>