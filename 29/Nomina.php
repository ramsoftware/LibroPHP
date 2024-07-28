<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('Nomina.html');
$texto = ""; //Lo que reemplazará en la plantilla

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();
$numRegistros = $BD->TotalRegistros('Nomina'); //Prepara la consulta
$texto = "<tr><td>Nomina</td><td>" . $numRegistros . "</td></tr>";	

//Modifica el HTML (parte visual) y lo muestra
$resultado = str_replace('{Datos}', $texto, $plantilla);
echo $resultado;
