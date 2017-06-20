<?php 
    session_start();
    
    if(isset($_SESSION["usuario"])){
        header("Location: http://solemne3.dev/");
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
        <script src="js/jquery-3.2.0.js"></script>
        <script src="js/validarRegistro.js"></script>
    </head>
    <body>
        <div class="container background">
            <div class="page-header">
                <h1 class="">Crea tu Cuenta</h1>
            </div>
            <form hidden method="POST" action="src/procesarLogin.php" id="loginForm">
                <input type="text" name="user" id="hiddenUser">
                <input type="password" name="clave" id="hiddenClave">
            </form>
            <form class="col-md-3 col-md-push-4 well">
                <div class="form-group row">
                    <label for="nombre" class="col-2 col-form-label">Nombre:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="nombre" id="nombre">   
                    </div>
                    <span class="text-danger" id="error-nombre"></span>
                </div>
                <div class="form-group row">
                    <label for="apellidoPat" class="col-2 col-form-label">Apellido Paterno:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="apellidoPat" id="apellidoPat">
                    </div>
                    <span class="text-danger" id="error-apellidoPat"></span>                          
                </div>
                <div class="form-group row">
                    <label for="apellidoMat" class="col-2 col-form-label">Apellido Materno:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="apellidoMat" id="apellidoMat">    
                    </div>
                    <span class="text-danger" id="error-apellidoMat"></span>
                </div>
                <div class="form-group row">
                    <label for="correo" class="col-2 col-form-label">Correo:</label>
                    <div class="col-10">
                        <input class="form-control" type="email" name="correo" id="correo">
                    </div>
                    <span class="text-danger" id="error-correo"></span>
                </div>
                <div class="form-group row">
                    <label for="user" class="col-2 col-form-label">Usuario:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="user" id="user"> 
                    </div>
                    <span class="text-danger" id="error-user"></span>
                </div>
                <div class="form-group row">
                    <label for="clave" class="col-2 col-form-label">Contraseña:</label>
                    <div class="col-10">
                        <input class="form-control" type="password" name="clave" id="clave">
                    </div>
                    <span class="text-danger" id="error-clave"></span>
                </div>
                <div class="form-group row">
                    <label for="repetir_clave" class="col-2 col-form-label">Repetir Contraseña:</label>
                    <div class="col-10">
                        <input class="form-control" type="password" name="repetir_clave" id="repetir_clave">
                    </div>
                    <span class="text-danger" id="error-repetir_clave"></span>
                </div>
                <input type="button" class="btn btn-primary" id="btnRegistro" value="Registrarse"></button>
            </form>   
        </div>
    </body>
</html>