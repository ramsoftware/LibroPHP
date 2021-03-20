<?php
//Trae los registros de una tabla
$Servidor = "mysql:host=localhost";
$Sesion = "root";
$Contrasena = "root";
$Instancia = "Ejemplo1";
$Conexion = Conectarse($Servidor, $Instancia, $Sesion, $Contrasena);
if ($Conexion != null){

	//Consulta usando SQL válido
	$Sentencia = $Conexion->prepare("SELECT codigo, nombre FROM profesion");
	$Sentencia->execute(); //Ejecuta la consulta
	
	//Trae registro a registro
	while ($fila = $Sentencia->fetch()) {
	
		//Se accede con el nombre del campo
		$codigo = $fila["codigo"];
		$nombre = $fila["nombre"];
		echo $codigo . " | " . $nombre . "<BR>"; 
	}
}
else
	echo "<BR>ERROR AL CONECTARSE</BR>";


//Función genérica para conectarse
function Conectarse($Servidor, $Instancia, $Sesion, $Contrasena){
	try {
		$Conexion = new PDO($Servidor.";dbname=".$Instancia, $Sesion, $Contrasena, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
	} catch (PDOException $UnError){
		echo $UnError->getMessage();
		return null;
	}
	return $Conexion;
}
