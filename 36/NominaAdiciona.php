<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('NominaAdiciona.html');

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Trae codigo y nombre de la tabla EstadoCivil a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM estadocivil ORDER BY nombre'); //Prepara la consulta	
$estadocivil = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	$estadocivil .= '<option value=' . $codigo . ">" . $nombre . "</option>";
}

//Trae codigo y nombre de la tabla Ciudad a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM ciudad ORDER BY nombre'); //Prepara la consulta	
$ciudad = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	$ciudad .= '<option value=' . $codigo . ">" . $nombre . "</option>";
}

//Trae codigo y nombre de la tabla Colorojos a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM colorojos ORDER BY nombre'); //Prepara la consulta	
$colorojos = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	$colorojos .= '<option value=' . $codigo . ">" . $nombre . "</option>";
}

//Trae codigo y nombre de la tabla EPS a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM eps ORDER BY nombre'); //Prepara la consulta	
$eps = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	$eps .= '<option value=' . $codigo . ">" . $nombre . "</option>";
}

//Trae codigo y nombre de la tabla FondoPension a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM fondopension ORDER BY nombre'); //Prepara la consulta	
$fondopensiones = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	$fondopensiones .= '<option value=' . $codigo . ">" . $nombre . "</option>";
}

//Trae codigo y nombre de la tabla Profesion a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM profesion ORDER BY nombre'); //Prepara la consulta	
$profesion = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	$profesion .= '<option value=' . $codigo . ">" . $nombre . "</option>";
}

//Trae codigo y nombre de la tabla division a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM division ORDER BY nombre'); //Prepara la consulta	
$division = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	$division .= '<option value=' . $codigo . ">" . $nombre . "</option>";
}
	
//Pone los datos en el HTML
$texto = str_replace('{estadocivil}', $estadocivil, $plantilla);
$texto = str_replace('{ciudad}', $ciudad, $texto);
$texto = str_replace('{colorojos}', $colorojos, $texto);
$texto = str_replace('{eps}', $eps, $texto);
$texto = str_replace('{fondopensiones}', $fondopensiones, $texto);
$texto = str_replace('{profesion}', $profesion, $texto);
$texto = str_replace('{division}', $division, $texto);

//Muestra la página
echo $texto;
