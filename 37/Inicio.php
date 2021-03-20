<?php
//Crea una variable de sesión
session_start();
$_SESSION['mantener'] = "valor de prueba";

//Llama la parte visual
$plantilla = file_get_contents('Inicio.html');
echo $plantilla;
?>
