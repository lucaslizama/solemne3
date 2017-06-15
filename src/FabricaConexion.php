<?php 
    class FabricaConexion {

        private $host = "localhost";
        private $user = "root";
        private $pass = "";
        private $dbname = "solemne3";

        public function Fabricar() {
            return new mysqli($host,$user,$pass,$dbname);
        }
    }
?>