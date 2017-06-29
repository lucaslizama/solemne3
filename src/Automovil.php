<?php

require "FabricaConexion.php";

class Usuario {
    private $id;
    private $nombre;
    private $capacidad_personas;
    private $km;
    private $anio;
    private $descripcion;
    private $thumbnail_url;

    public function __construct($nombre,$capacidad,$km,$anio,$descripcion,$thumbnail) {
        $this->nombre = $nombre;
        $this->capacidad_personas = $capacidad;
        $this->km = $km;
        $this->anio = $anio;
        $this->descripcion = $descripcion;
        $this->thumbnail_url = $thumbnail;
    }

    public function insert () {
        $fabrica = new FabricaConexion();
        $conexion = $fabrica->fabricar();

        $sql = "insert into automovil "
                . "(nombre,capacidad_personas,km,anio,descripcion,thumbnail_url) " 
                . "values (?,?,?,?,?,?)";
        
        $statement = $conexion->prepare($sql);
        $statement->bind_param("siiiss", $this->nombre,$this->capacidad_personas,$this->km, $this->anio, $this->descripcion, $this->thumbnail_url);

        $statement->execute();
        $rows = $statement->affected_rows;

        $statement->close();
        $conexion->close();

        return $rows > 0;
    }

    public function buscarTodos($user_id) {
        $fabrica = new FabricaConexion();
        $conexion = $fabrica->fabricar();

        $sql = "select * from automovil where id_usuario = ?";

        $statement = $conexion->prepare($sql);
        $statement->bind_param("i",$user_id);
        $statement->execute();

        if($statement->affected_rows == 0) {
            return null;
        }

        $resultado = $statement->get_result();
        $automoviles = array();

        while($fila = $resultado->fetch_assoc()) {
            $auto = array();
            array_push($auto,$fila["id"]);
            array_push($auto,$fila["capacidad_personas"]);
            array_push($auto,$fila["km"]);
            array_push($auto,$fila["anio"]);
            array_push($auto,$fila["descripcion"]);
            array_push($auto,$fila["thumbnail_url"]);
            $automoviles = array_merge($automoviles, $auto);
        }

        $statement->close();
        $conexion->close();
        return count($automoviles) > 0;
    }

    public function getArray() {
        $fields = array();
        foreach ($this as $key => $value) {
            $fields = array_merge($fields, array($key => $value));
        }
        return $fields;
    }  
}