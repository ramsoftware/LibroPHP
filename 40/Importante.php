<?php
//Lee una variable de sesión
session_start();

//Con isset se determina si la variable de sesión ha sido creada
if (isset($_SESSION['permitido'])){
	if ($_SESSION['permitido'] == 'Todo bien')
		echo "Información importante";
	else
		echo "No ha iniciado sesión";
}
else {
	echo "sesión NO iniciada";
}
