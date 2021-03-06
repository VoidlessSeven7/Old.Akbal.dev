<?php session_start(); /* ----------------- Iniciar una sesion ----------------- */ ?>

<!DOCTYPE html>
<html lang="es">

<head>
  <!-- ----------------- Defaults ----------------- -->

  <title>Akbal's Themes</title>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <!-- ----------------- Google's ----------------- -->

  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />

  <meta name="author" content="Alejandro Akbal" />

  <meta name="description" content="Temas para la pagina web de Alejandro Akbal" />

  <meta name="keywords" content="alejandro,akbal,webpage" />

  <!-- ----------------- CSS y JS ----------------- -->

  <link href="/css/temas.css" type="text/css" rel="stylesheet" />

  <!-- --- Color JS --- -->

  <style id="elementoColorear"></style>
</head>

<!-- ----------------- Cuerpo ----------------- -->

<body>
  <div class="cuerpo">
    <div class="contenido1">
      <!-- ----------------- Guardar el color actual ----------------- -->

      <button onclick="GuardarDB()" title="Subir tema a la nube" class="AgregarColor">
        +
      </button>

      <form id="GuardarDB" method="post" action="../php/meter_color.php">
        <input id="colorGenerado" name="colorActual" type="hidden" value="" />
      </form>

      <!-- ----------------- Formulario RGB --------- ELIMINAR -------- -->

      <input title="RGB" type="radio" name="opcionesRGB" onclick="cambiarStyle()" />
      <br />
      <input title="Guardar tema" type="radio" name="opcionesRGB" onclick="guardarStyle()" />
      <br />
      <input title="Desactivar RGB" type="radio" name="opcionesRGB" onclick="quitarStyle()" />
      <br />

      <a href="/">Akbal's Themes</a>
    </div>

    <div class="contenido2" id="inicio">
      <!-- ----------------- PHP Extraer colores de la db ----------------- -->
      <?php include(dirname(__DIR__) . "/php/importar_colores.php") ?>

    </div>
  </div>

  <div class="footer">
    <a href="#inicio">Subir</a>
  </div>
</body>

<!-- --- JS aqui porque no le da la gana funcionar antes --- -->

<script src="/js/aplicarColores.js"></script>

<script src="/js/temas.js"></script>

</html>