<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Actualiza el registro
$campos = ["nombre"];
$valores = ["salud y vida excelentes"];

//Llama al método de actualizar con los arreglos $campos y $valores llenos
if ($BD->ActualizarRegistro('eps', $campos, $valores, 'codigo', 2)) //Actualiza
	echo "<p>Registro actualizado</p>";
else {
	echo "<p>Hubo problemas para actualizar el registro</p>";
	echo "Código de error: " . $BD->errorActualizar;
}
