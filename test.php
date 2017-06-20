<?php
    require "src/FabricaConexion.php";

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

    
}
    
    $user = new Usuario("","","","","","asdasd","asdasdsad");

    echo json_encode($user->getArray());
?>