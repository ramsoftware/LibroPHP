<?php
//=======================================
//Una clase que manejará la base de datos
//======================================= 
class basedatos{
	private $Servidor = "mysql:host=localhost";
	private $Sesion = "root";
	private $Contrasena = "root";
	private $Instancia = "Ejemplo1";
	private $Conexion; //Mantiene la conexión con la base de datos
	private $Lectura; //Mantiene el puntero de consulta de la tabla
	
	public function Conectar(){
		if (isset($this->Conexion)) return true; //Si ya está definida la conexión
		try {		
			//Usando PDO (PHP Data Objects) para conectarse.
			//Parámetros: "mysql:host:servidor;dbname=instancia", "usuario", "contraseña", codificación de caracteres
		
			//$Conexion será un Database Handle(manejador de la base de datos)
			$this->Conexion = new PDO($this->Servidor.";dbname=".$this->Instancia, $this->Sesion, $this->Contrasena, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
		} catch (PDOException $UnError){
			echo $UnError->getMessage();
			return false;
		}		
		return true;
	}
	
	public function TraeTodosLosRegistros($SQL){
		$this->Conectar();
		$Sentencia = $this->Conexion->prepare($SQL);
		$Sentencia->execute(); //Ejecuta la consulta	 
		//Trae los resultados de la consulta dentro de un arreglo
		//¡OJO! los trae todos. Use LIMIT en la sentencia SQL para traer lotes		
		return $Sentencia->fetchAll(); 
	}
	
	public function PrepararLectura($SQL){
		$this->Conectar();
		$this->Lectura = $this->Conexion->prepare($SQL);
		$this->Lectura->execute(); //Ejecuta la consulta
	}
	
	public function TraeRegistroARegistro(){
		return $this->Lectura->fetch();
	}
	
	public function TotalRegistros($Tabla){
		$this->Conectar();
		$Sentencia = $this->Conexion->prepare("SELECT TABLE_ROWS FROM information_schema.TABLES WHERE TABLES.TABLE_SCHEMA = '" . $this->Instancia . "' AND TABLE_NAME = '" . $Tabla . "'");
		$Sentencia->execute(); //Ejecuta la consulta
		return $Sentencia->fetchColumn();		
	}
}
