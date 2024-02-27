<?php
include_once 'UsuarioDAO.php';
include_once 'conexion.php';

/* En el login cada vez que le demos a iniciar sesion comprobara el 
  usuario y la contraseña con el post creandonos un objeto de tipo
  Usuario y llamando al metodo consultarUsuario */

if (isset($_POST['enviar'])) {

    $usuario = $_POST['usuario'];
    $contrasena = $_POST['pass'];

    $objUsuario = new UsuarioDAO();
    $resultado = $objUsuario->consultarUsuario($usuario, $contrasena);
}
?>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <label>Usuario</label>
            <input type="text" name="usuario" required=""><br>
            <label>Contraseña</label>
            <input type="password" name="pass" required=""><br>
            <input type="submit" name="enviar" value="Iniciar sesión">
        </form>
    </body>
</html>