<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('Nomina.html');
$texto = ""; //Lo que reemplazará en la plantilla

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();
$BD->PrepararLectura('SELECT ciudad.nombre, AVG(peso), AVG(altura) FROM nomina, ciudad WHERE nomina.ciudad = ciudad.codigo GROUP BY ciudad'); //Prepara la consulta	
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$ciudad = $registros[0];
	$pesoPromedio = $registros[1];
	$alturaPromedio = $registros[2];
	
	//htmlentities para evitar ejecutar código HTML
	$texto .= "<tr>";
	$texto .= "<td>" . htmlentities($ciudad, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . $pesoPromedio . "</td>";
	$texto .= "<td>" . $alturaPromedio . "</td>";
	$texto .= "<tr>";
}

//Modifica el HTML (parte visual) y lo muestra
$resultado = str_replace('{Datos}', $texto, $plantilla);
echo $resultado;
