<?php
//Lee una variable de sesión
session_start();

//Con isset se determina si la variable de sesión ha sido creada
if (isset($_SESSION['mantener'])){
	echo "variable definida es: " . $_SESSION['mantener'];
}
else {
	echo "sesión NO iniciada";
}

