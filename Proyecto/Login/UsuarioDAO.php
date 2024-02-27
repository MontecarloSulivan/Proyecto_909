<?php

/*

 * Creacion de clase UsuarioDAO en la que vamos a incluir los metodos necesarios */
include_once 'conexion.php';
include_once 'Usuario.php';

class UsuarioDAO {
    /*
     * metodo consultarUsuario: pasamos el usuario y la contraseña por parametro
     * con la contraseña encriptada por hash para comprobarla con la base de datos
     */

    public function consultarUsuario($log, $pass) {

        /* Creamos la conexion */
        $conexion = new Conexion();
        $conexion->conectar();

        /* Encriptamos la contraseña por sha256 */
        $pass_hash = hash('sha256', $pass);
        $consulta = "SELECT * FROM usuario WHERE nombre = ? AND pass = ?";

        /* Probamos la consulta pasandole la contraseña encriptada y sacamos un
         * resultado, si el usuario y contraseña son correctos nos lleva al index
         * en caso contrario nos mantiene en el login
         */
        try {

            $stmt = $conexion->conexion->prepare($consulta);
            $stmt->bind_param('ss', $log, $pass_hash);
            $stmt->execute();
            $resultado = $stmt->get_result()->fetch_assoc();

            if ($resultado) {
                header("Location: /Proyecto/index.php");
                exit();
            } else {
                header("Location: /Proyecto/Login/login.php");

                exit();
            }
        } catch (Exception $ex) {
            die("Error al recuperar usuarios" . $ex->getMessage());
        }

        $conexion->cerrar();
    }
}
