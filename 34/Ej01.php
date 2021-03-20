<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

$BD = new basedatos();
if ($BD->BorrarRegistro('nomina', 'codigo', 4002)) //Borra
	echo "<p>Registro fue borrado</p>";
else
	echo "<p>Hubo problemas para borrar el registro</p>";

