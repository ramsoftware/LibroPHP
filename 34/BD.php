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
	
	public $errorActualizar; //En caso de error al actualizar registro, este tendrá el código de error.
	
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
	
	//Trae el valor de un campo en particular de una tabla dada la llave primaria (de un solo campo)
	public function TraeValor($campoTrae, $tabla, $llave, $valorLlave){
		$this->Conectar();
		$SQL = "SELECT ". $campoTrae . " FROM " . $tabla . " WHERE " . $llave . "=:" . $llave;
		$Sentencia = $this->Conexion->prepare($SQL); //Prepara la consulta
		$Parametros = array(':'.$llave => $valorLlave); //Parámetros que irán dentro de la consulta
		$Sentencia->execute($Parametros); //Ejecuta la consulta	 
		return $Sentencia->fetchColumn();
	}
	
	//Actualiza un registro. Estos son los parámetros:
	//Tabla, listado de campos, valores de esos campos, campo llave, valores de ese campo llave
	public function ActualizarRegistro($tabla, $Campos, $Valores, $Llave, $valorLlave){
		$this->Conectar();
		
		$cadCampos = '';
		$cadParam = '';
		$SQL = "UPDATE ". $tabla . " SET ";
		for ($cont=0; $cont<count($Campos); $cont++){
			$SQL .= $Campos[$cont] . "=?,";
		}
		$SQL = substr($SQL, 0, -1); //quitar la última coma
		$SQL .= " WHERE " . $Llave . "=" . $valorLlave;
		$Sentencia = $this->Conexion->prepare($SQL); //Prepara la adición
		
		//Pone los valores a actualizar
		for ($cont=0; $cont<count($Valores); $cont++){
			$Sentencia->bindValue($cont+1, $Valores[$cont]);
		}
		
		if ($Sentencia->execute())  //Ejecuta la actualización
			return true;
		else{
			$this->errorActualizar = $Sentencia->errorCode();
			return false;
		}
	}

	//Borra un registro dado el valor de la llave, los parámetros son:
	//tabla, campo llave primaria, valor llave primaria
	public function BorrarRegistro($tabla, $llave, $valorLlave){
		$this->Conectar();
		$SQL = "DELETE FROM ". $tabla . " WHERE " . $llave . "=:" . $llave;
		$Sentencia = $this->Conexion->prepare($SQL); //Prepara el borrado
		$Parametros = array(':'.$llave => $valorLlave); //Parámetros que irán dentro de la instrucción de borrado
		return $Sentencia->execute($Parametros);  //Ejecuta el borrado	 
	}
}
