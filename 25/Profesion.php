<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('Profesiones.html');
$Texto = ""; //Lo que reemplazará en la plantilla

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();
$BD->PrepararLectura('SELECT codigo, nombre FROM profesion'); //Prepara la consulta	
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros["codigo"];
	$nombre = $registros["nombre"];
	$Texto .= "<tr><td>". $codigo . "</td><td>" . $nombre . "</td></tr>";
}

//Modifica el HTML (parte visual) y lo muestra
$resultado = str_replace('{Datos}', $Texto, $plantilla);
echo $resultado;
