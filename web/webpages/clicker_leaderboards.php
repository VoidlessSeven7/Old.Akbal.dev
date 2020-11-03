<!DOCTYPE html>
<html lang="es">
  <head>
    <!-- ----------------- Defaults ----------------- -->

    <title>Akbal's Clicker Leaderboard</title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- ----------------- Google's ----------------- -->

    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans"
      rel="stylesheet"
    />

    <meta name="author" content="Alejandro Akbal" />

    <meta
      name="description"
      content="Leaderboard de contador de clicks por segundo"
    />

    <meta
      name="keywords"
      content="clicker,cps,clicks per second,clicks por segundo, clicks, cleaderboard"
    />

    <!-- ----------------- CSS y JS ----------------- -->

    <link
      href="../css/clicker_leaderboard.css"
      type="text/css"
      rel="stylesheet"
    />

    <script src="../js/clicker.js"></script>
  </head>

  <body>
    <div class="nav">
      <h1>Akbal's</h1>
      <a href="../">Inicio</a>
      <a href="../webpages/clicker.html">Clicker</a>
    </div>

    <div class="tablero">
      <?php
    $servername = "10.135.191.214";
    $username = "old_akbal_user";
    $password = "VEAIEMFSh5sJRjskgCyI8M01fgDy2WWZ";
    $database = "old_akbal_db";

    // Create connection
    $link = mysqli_connect($servername, $username, $password, $database);
    // Check connection
    if($link === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }

    // Attempt select query execution
    $sql = "SELECT * FROM puntuacion";
    if($result = mysqli_query($link, $sql)){

        if(mysqli_num_rows($result) >
      0){ echo "
      <table>
        "; echo "
        <tr>
          "; echo "
          <th>ID</th>
          "; echo "
          <th>Usuario</th>
          "; echo "
          <th>Puntuacion</th>
          "; echo "
        </tr>
        "; while($row = mysqli_fetch_array($result)){ echo "
        <tr>
          "; echo "
          <td>" . $row['id'] . "</td>
          "; echo "
          <td>" . $row['usuario'] . "</td>
          "; echo "
          <td>" . $row['puntuacion'] . "</td>
          "; echo "
        </tr>
        "; } echo "
      </table>

      "; // Free result set mysqli_free_result($result); } else{ echo "No
      records matching your query were found."; } } else{ echo "ERROR: Could not
      able to execute $sql. " . mysqli_error($link); } // Close connection
      mysqli_close($link); ?>
    </div>
  </body>
</html>