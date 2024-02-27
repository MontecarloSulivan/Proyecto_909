<?php

class Usuario {
    
    /*
     * Creacion de clase Usuario con geters , seters y constructor
     */

    private $id_usuario;
    private $nombre;
    private $pass;
    private $email;
    private $fecha;

    const TABLA = 'usuario';

    public function getId() {
        return $this->id_usuario;
    }

    public function setId($id_usuario) {
        $this->id_usuario = $id_usuario;
    }

    public function getNombre() {
        return $this->nombre;
    }

    public function setNombre($nombre) {
        $this->nombre = $nombre;
    }

    public function getPass() {
        return $this->pass;
    }

    public function setPass($pass) {
        $this->pass = $pass;
    }

    public function getEmail() {
        return $this->email;
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function getFecha() {
        return $this->fecha;
    }

    public function setFecha($fecha) {
        $this->fecha = $fecha;
    }

    public function __construct($id_usuario, $nombre, $pass, $email, $fecha) {

        $this->id_usuario = $id_usuario;
        $this->pass = $pass;
        $this->nombre = $nombre;
        $this->email = $email;
        $this->frcha = $fecha;
    }
}

?>
