<?php
//Llama la parte visual
$plantilla = file_get_contents('importante.html');

//Lee una variable de sesión
session_start();

//Con isset se determina si la variable de sesión ha sido creada
if (isset($_SESSION['permitido'])){
	if ($_SESSION['permitido'] == 'Todo bien')
		$texto = str_replace('{informacion}', "Información importante", $plantilla);	
	else
		$texto = str_replace('{informacion}', "ACCESO DENEGADO", $plantilla);
}
else {
	$texto = str_replace('{informacion}', "ACCESO DENEGADO", $plantilla);
}

//Muestra la página
echo $texto;
