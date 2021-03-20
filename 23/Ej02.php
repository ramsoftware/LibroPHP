<?php
//Uso de funciones
$Servidor = "mysql:host=localhost";
$Sesion = "root";
$Contrasena = "root";
$Instancia = "Ejemplo1";
$Conexion = Conectarse($Servidor, $Instancia, $Sesion, $Contrasena);
if ($Conexion != null) 
	echo "Conectado sin problemas";
else
	echo "<BR>ERROR AL CONECTARSE</BR>";

//Función genérica para conectarse
function Conectarse($Servidor, $Instancia, $Sesion, $Contrasena){
	try {
		//Usando PDO (PHP Data Objects) para conectarse.
		//Parámetros: "mysql:host:servidor;dbname=instancia", "usuario", "contraseña", codificación de caracteres

		//$Conexion será un Database Handle(manejador de la base de datos)
		$Conexion = new PDO($Servidor.";dbname=".$Instancia, $Sesion, $Contrasena, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
	} catch (PDOException $UnError){
		echo $UnError->getMessage();
		return null;
	}
	return $Conexion;
}
