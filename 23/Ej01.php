<?php
//Se conecta a una base de datos MySQL

try {
	//Usando PDO (PHP Data Objects) para conectarse.
	//Parámetros: "mysql:host:servidor;dbname=instancia", "usuario", "contraseña", codificación de caracteres
	$Servidor = "mysql:host=localhost";
	$Sesion = "root"; //Usuario de la base de datos
	$Contrasena = "root"; //Contraseña de la base de datos
	$Instancia = "Ejemplo1"; //Instancia
	$Conexion; //Mantiene la conexión con la base de datos	

	//$Conexion será un Database Handle(manejador de la base de datos)
	$Conexion = new PDO($Servidor.";dbname=".$Instancia, $Sesion, $Contrasena, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
} catch (PDOException $UnError){
	echo "ERROR al conectarse<br>";
	echo $UnError->getMessage();
	return false;
}
echo "Se ha conectado correctamente";
return true;
