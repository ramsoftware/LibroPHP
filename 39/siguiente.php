<?php
//Lee una variable de sesión
session_start();

//Con isset se determina si la variable de sesión ha sido creada
if (isset($_SESSION['mantener'])){
	echo "variable definida es: " . $_SESSION['mantener'];
	
	//Destruye la variable y cierra la sesión	
	unset($_SESSION['mantener']);
	session_destroy();
	echo "<br><br>sesión cerrada";
}
else {
	echo "sesión NO iniciada";
}