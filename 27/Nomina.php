<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('Nomina.html');
$texto = ""; //Lo que reemplazará en la plantilla

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();
$BD->PrepararLectura('SELECT nomina.nombre1, nomina.nombre2, nomina.apellido1, nomina.apellido2, ciudad.nombre FROM nomina, ciudad WHERE nomina.ciudad = ciudad.codigo ORDER BY nomina.nombre1, nomina.nombre2, nomina.apellido1, nomina.apellido2'); //Prepara la consulta	
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$nombre1 = $registros[0];
	$nombre2 = $registros[1];
	$apellido1 = $registros[2];
	$apellido2 = $registros[3];
	$ciudad = $registros[4];
	
	//htmlentities para evitar ejecutar código HTML
	$texto .= "<tr>";
	$texto .= "<td>" . htmlentities($nombre1, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($nombre2, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($apellido1, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($apellido2, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($ciudad, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<tr>";
}

//Modifica el HTML (parte visual) y lo muestra
$resultado = str_replace('{Datos}', $texto, $plantilla);
echo $resultado;
