<?php

require "FabricaConexion.php";

class Usuario {
    private $id;
    private $nombre;
    private $apellidoPat;
    private $apellidoMat;
    private $correo;
    private $user;
    private $pass;
    private $idPlan;

    public function __construct($nombre,$appat,$apmat,$correo,$user,$pass) {
        $this->nombre = $nombre;
        $this->apellidoPat = $appat;
        $this->apellidoMat = $apmat;
        $this->correo = $correo;
        $this->user = $user;
        $this->pass = $pass;
    }

    public function insert () {
        $fabrica = new FabricaConexion();
        $conexion = $fabrica->fabricar();

        $sql = "insert into usuario " 
                . "(nombre,apellidoPat,apellidoMat,correo,user,pass) " 
                . "values (?,?,?,?,?,?)";
        
        $statement = $conexion->prepare($sql);
        $statement->bind_param("ssssss", $this->nombre,$this->apellidoPat,$this->apellidoMat, $this->correo, $this->user, $this->pass);

        $statement->execute();
        $rows = $statement->affected_rows;

        $statement->close();
        $conexion->close();

        return $rows > 0;
    }

    public function buscarPorUsername($username) {
        $fabrica = new FabricaConexion();
        $conexion = $fabrica->fabricar();

        $sql = "select * from usuario where user = ?";

        $statement = $conexion->prepare($sql);
        $statement->bind_param("s", $user);

        if(num_rows == 0) {
            return false;
        }

        $resultado = $statement->get_result();

        if($fila = $resultado->fetch_assoc()) {
            $this->id = $fila["id"];
            $this->nombre = $fila["nombre"];
            $this->apellidoPat = $fila["apellidoPat"];
            $this->apellidoMat = $fila["apellidoMat"];
            $this->correo = $fila["correo"];
            $this->idPlan = $fila["id_plan"];
            return true;
        }
        return false;
    }

    public function getArray() {
        $fields = array();
        foreach ($this as $key => $value) {
            $fields = array_merge($fields, array($key => $value));
        }
        return $fields;
    }  
}