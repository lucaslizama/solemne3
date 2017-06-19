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
            <form class="col-md-3 col-md-push-4 well">
                <div class="form-group row">
                    <label for="nombre" class="col-2 col-form-label">Nombre:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="nombre" id="error-nombre">   
                    </div>
                    <span class="text-danger"></span>
                </div>
                <div class="form-group row">
                    <label for="apellidoPat" class="col-2 col-form-label">Apellido Paterno:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="apellidoPat">
                    </div>
                    <span class="text-danger"></span>                          
                </div>
                <div class="form-group row">
                    <label for="apellidoMat" class="col-2 col-form-label">Apellido Materno:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="apellidoMat">    
                    </div>
                    <span class="text-danger"></span>
                </div>
                <div class="form-group row">
                    <label for="correo" class="col-2 col-form-label">Correo:</label>
                    <div class="col-10">
                        <input class="form-control" type="email" name="correo">
                    </div>
                    <span class="text-danger"></span>
                </div>
                <div class="form-group row">
                    <label for="user" class="col-2 col-form-label">Usuario:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="user"> 
                    </div>
                    <span class="text-danger"></span>
                </div>
                <div class="form-group row">
                    <label for="clave" class="col-2 col-form-label">Contraseña:</label>
                    <div class="col-10">
                        <input class="form-control" type="password" name="clave">
                    </div>
                    <span class="text-danger"></span>
                </div>
                <div class="form-group row">
                    <label for="repetir_clave" class="col-2 col-form-label">Repetir Contraseña:</label>
                    <div class="col-10">
                        <input class="form-control" type="password" name="repetir_clave">
                    </div>
                    <span class="text-danger"></span>
                </div>
            </form>   
            <button class="btn btn-primary" id="btnRegistro">Registrarse</button>
        </div>
    </body>
</html>