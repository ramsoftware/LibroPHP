<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('NominaBorraReal.html');

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Borra el registro
$BD->BorrarRegistro('nomina', 'codigo', $_GET['codigo']);
	
//Pone los datos en el HTML
$texto = str_replace('{codigo}', $_GET['codigo'], $plantilla);
$texto = str_replace('{posicion}', $_GET['posicion'], $texto);

//Muestra la página
echo $texto;
