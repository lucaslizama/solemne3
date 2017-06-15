<?php

require "FabricaConexion.php";

class Usuario {
    public function insert ($datos) {
        $fabrica = new FabricaConexion();
        $conexion = $fabrica->fabricar();

        $sql = "Insert .....blablabla";

        $conexion->query($sql);

        $conexion->close();

        return $conexion->num_rows > 0;
    }

    var objecto = {nombre: "Lucas"};
}