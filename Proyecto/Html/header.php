<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Modal de Inicio de Sesión</title>
  <link rel="stylesheet" href="../Proyecto/Css/css.css">
</head>
<body>

<header>
  <div class="contenedor">
    <div>
      <img src="../Proyecto/Html/Imagenes/img.png" width="100" height="40" alt="alt"/>
    </div>
    <div class="botones">
      <button id="botonSignIn">Iniciar sesión</button>
      <button id="botonSignIn">Crear cuenta</button>
    </div>
  </div>
</header>

<div id="modal" class="modal">
  <div class="modal-contenido">
    <span class="cerrar-modal">&times;</span>
    <h2>Iniciar sesión</h2>
    <form>
      <label for="usuario">Usuario:</label>
      <input type="text" id="usuario" name="usuario">
      <label for="contrasena">Contraseña:</label>
      <input type="password" id="contrasena" name="contrasena">
      <button type="submit">Iniciar sesión</button>
    </form>
  </div>
</div>

<script src="../Proyecto/JavaScript/script.js"></script>
</body>
</html>

