<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('Nomina.html');
$texto = ""; //Lo que reemplazará en la plantilla

//¿Cuál conjunto de registros va a traer?
if (!isset($_GET['posicion']))
	$Posicion = 0;
else
	$Posicion = $_GET['posicion'];

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();
$BD->PrepararLectura('SELECT nombre1, nombre2, apellido1, apellido2 FROM nomina ORDER BY nombre1, nombre2, apellido1, apellido2 LIMIT ' . $Posicion . ', 10'); //Prepara la consulta	
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$nombre1 = $registros[0];
	$nombre2 = $registros[1];
	$apellido1 = $registros[2];
	$apellido2 = $registros[3];
	
	//htmlentities para evitar ejecutar código HTML
	$texto .= "<tr>";
	$texto .= "<td>" . htmlentities($nombre1, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($nombre2, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($apellido1, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($apellido2, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<tr>";

}

//Modifica el HTML (parte visual) y lo muestra
$resultado = str_replace('{Datos}', $texto, $plantilla);
echo $resultado;
