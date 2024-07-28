<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();
$BD->PrepararLectura('SELECT codigo, nombre FROM profesion'); //Prepara la consulta	
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros["codigo"];
	$nombre = $registros["nombre"];
	echo $codigo . " | " . $nombre . "<BR>"; 	
}
