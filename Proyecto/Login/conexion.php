<?php

    /*
     * Creacion de clase Conexion con los metodos necesarios para realizar 
     * una conexion a una base de datos
     */

class Conexion {

    private $host = "localhost";
    private $db = "Proyecto_808";
    private $user = "root";
    private $pass = "";
    public $conexion;
    
    
    /*Metodo para conectar utilizando el host , database , user y password*/
    public function conectar() {

        try {
            $this->conexion = new mysqli($this->host, $this->user, $this->pass, $this->db);
        } catch (PDOException $e) { 
            die("Error en la conexion: " . $e->getMessage());
        }
    }
    
    /*Metodo para cerrar la conexion a la base de datos*/
    public function cerrar() {
        if($this->conexion)
        {
            $this->conexion->close();
        }
        
    }

}

?>
