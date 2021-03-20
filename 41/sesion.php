<?php
//Crea una variable de sesión
session_start();

//Chequea si están definidas las variables
if (isset($_POST['usuario']) && isset($_POST['contrasena'])){
	$usuario = $_POST['usuario'];
	$contrasena = $_POST['contrasena'];
	
	//Valida si ese usuario y contraseña son válidos
	if ($usuario == "Rafael" && $contrasena == "sesamo"){

		//Si es válido entonces crea la variable de sesión
		$_SESSION['permitido'] = "Todo bien";
		
		//y lo envía a la página correspondiente
		header("Location: importante.php");
	}
	else { //No es válida la contraseña, entonces vuelve a inicio
		header("Location: sesion.html");
	}
}
