<?php

require "FabricaConexion.php";

class Usuario {
    public function insert ($datos) {
        $fabrica = new FabricaConexion();
        $conexion = $fabrica->fabricar();

        $sql = "Insert .....blablabla";

        
    }
}