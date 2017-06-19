<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" type="" href="css/bootstrap.min.css">
    </head>
    <body>
        <div class="container well">
            <form class="col-md-3 col-md-push-4 well">
                <div class="form-group row">
                    <label for="user" class="col-2 col-form-label">Usuario:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="user">    
                    </div>
                    <span class="text-danger"></span>
                </div>
                <div class="form-group row">
                    <label for="pass" class="col-2 col-form-label">Contraseña:</label>
                    <div class="col-10">
                        <input class="form-control" type="text" name="pass">    
                    </div>
                    <span class="text-danger"></span>
                </div>
                <button type="submit" class="btn btn-primary">Ingresar</button>
            </form>
        </div>
    </body>
</html>