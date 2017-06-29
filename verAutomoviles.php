<?php
    require "src/Automovil.php";

    session_start();

    if(!isset($_SESSION["usuario"])) {
        header("Location: index.php");
    }

    $auto = new Automovil(null,null,null,null,null,null);
    $autos = $auto->buscarTodos($_SESSION["usuario"]["id"]);

?>
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
        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <td>Nombre</td>
                        <td>Capacidad</td>
                        <td>Kilometros</td>
                        <td>Año</td>
                        <td>Descripcion</td>
                        <td>Imagen</td>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        if($autos != null) {
                            foreach ($autos as $value) {
                                echo "<tr>";
                                echo "    <td>" . $value["nombre"] . "</td>";
                                echo "    <td>" . $value["capacidad_personas"] . "</td>";
                                echo "    <td>" . $value["km"] . "</td>";
                                echo "    <td>" . $value["anio"] . "</td>";
                                echo "    <td>" . $value["descripcion"] . "</td>";
                                echo "    <td><img src='" . $value["thumbnail_url"] . "' alt='" . $value["nombre"] ."' width='100' height='100'></td>";
                                echo "</tr>";
                            }
                        }
                    ?>
                </tbody>
            </table>
            <a href="index.php">Inicio</a>
        </div>
    </body>
</html>