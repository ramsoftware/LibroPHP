<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('NominaActualiza.html');

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Para mostrar todos los campos del registro a actualizar
$BD->PrepararLectura('SELECT codigo, nombre1, nombre2, apellido1, apellido2, tiposangre, 
estadocivil, ciudad, altura, peso, fechanace, numerocalzado, 
colorojos, zurdodiestro, eps, fondopensiones, profesion,
division FROM nomina WHERE nomina.codigo = ' . $_GET['codigo']); //Prepara la consulta	

//Trae el registro a actualizar
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$nombre1 = $registros[1];
	$nombre2 = $registros[2];
	$apellido1 = $registros[3];
	$apellido2 = $registros[4];
	$tiposangreC = $registros[5];
	$estadocivilC = $registros[6];
	$ciudadC = $registros[7];
	$altura = $registros[8];
	$peso = $registros[9];
	$fechanace = $registros[10];
	$numerocalzado = $registros[11];
	$colorojosC = $registros[12];
	$zurdodiestroC = $registros[13];
	$epsC = $registros[14];
	$fondopensionesC = $registros[15];
	$profesionC = $registros[16];
	$divisionC = $registros[17];
}

//Trae codigo y nombre de la tabla EstadoCivil a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM estadocivil ORDER BY nombre'); //Prepara la consulta	
$estadocivil = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	if ($codigo == $estadocivilC) 
		$estadocivil .= '<option value=' . $codigo . " selected>" . $nombre . "</option>";
	else
		$estadocivil .= '<option value=' . $codigo . ">" . $nombre . "</option>";
}

//Trae codigo y nombre de la tabla Ciudad a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM ciudad ORDER BY nombre'); //Prepara la consulta	
$ciudad = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	if ($codigo == $ciudadC) 
		$ciudad .= '<option value=' . $codigo . " selected>" . $nombre . "</option>";
	else
		$ciudad .= '<option value=' . $codigo . ">" . $nombre . "</option>";	
}

//Trae codigo y nombre de la tabla Colorojos a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM colorojos ORDER BY nombre'); //Prepara la consulta	
$colorojos = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	if ($codigo == $colorojosC) 
		$colorojos .= '<option value=' . $codigo . " selected>" . $nombre . "</option>";
	else
		$colorojos .= '<option value=' . $codigo . ">" . $nombre . "</option>";	
}

//Trae codigo y nombre de la tabla EPS a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM eps ORDER BY nombre'); //Prepara la consulta	
$eps = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	if ($codigo == $epsC) 
		$eps .= '<option value=' . $codigo . " selected>" . $nombre . "</option>";
	else
		$eps .= '<option value=' . $codigo . ">" . $nombre . "</option>";		
}

//Trae codigo y nombre de la tabla FondoPension a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM fondopension ORDER BY nombre'); //Prepara la consulta	
$fondopensiones = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	if ($codigo == $fondopensionesC) 
		$fondopensiones .= '<option value=' . $codigo . " selected>" . $nombre . "</option>";
	else
		$fondopensiones .= '<option value=' . $codigo . ">" . $nombre . "</option>";		
}

//Trae codigo y nombre de la tabla Profesion a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM profesion ORDER BY nombre'); //Prepara la consulta	
$profesion = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	if ($codigo == $profesionC) 
		$profesion .= '<option value=' . $codigo . " selected>" . $nombre . "</option>";
	else
		$profesion .= '<option value=' . $codigo . ">" . $nombre . "</option>";		
	
}

//Trae codigo y nombre de la tabla division a poner en el combobox
$BD->PrepararLectura('SELECT codigo, nombre FROM division ORDER BY nombre'); //Prepara la consulta	
$division = '';
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre = $registros[1];
	if ($codigo == $divisionC) 
		$division .= '<option value=' . $codigo . " selected>" . $nombre . "</option>";
	else
		$division .= '<option value=' . $codigo . ">" . $nombre . "</option>";		
}

//Para las listas fijas de tipo de sangre
$Sangre = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
$tiposangre = '';
for ($cont=0; $cont<count($Sangre); $cont++){
	if ($Sangre[$cont] == $tiposangreC) 
		$tiposangre .= '<option value="' . $Sangre[$cont] . '" selected>' . $Sangre[$cont] . '</option>';
	else
		$tiposangre .= '<option value="' . $Sangre[$cont] . '">' . $Sangre[$cont] . '</option>';		
}

//Para las listas fijas de zurdo o diestro
$Mano = ["Z", "D"];
$zurdodiestro = '';
for ($cont=0; $cont<count($Mano); $cont++){
	if ($Mano[$cont] == $zurdodiestroC) 
		$zurdodiestro .= '<option value="' . $Mano[$cont] . '" selected>' . $Mano[$cont] . '</option>';
	else
		$zurdodiestro .= '<option value="' . $Mano[$cont] . '">' . $Mano[$cont] . '</option>';		
}
	
//Pone los datos en el HTML
$texto = str_replace('{codigo}', $_GET['codigo'], $plantilla);
$texto = str_replace('{estadocivil}', $estadocivil, $texto);
$texto = str_replace('{ciudad}', $ciudad, $texto);
$texto = str_replace('{colorojos}', $colorojos, $texto);
$texto = str_replace('{eps}', $eps, $texto);
$texto = str_replace('{fondopensiones}', $fondopensiones, $texto);
$texto = str_replace('{profesion}', $profesion, $texto);
$texto = str_replace('{division}', $division, $texto);
$texto = str_replace('{nombre1}', $nombre1, $texto);
$texto = str_replace('{nombre2}', $nombre2, $texto);
$texto = str_replace('{apellido1}', $apellido1, $texto);
$texto = str_replace('{apellido2}', $apellido2, $texto);
$texto = str_replace('{altura}', $altura, $texto);
$texto = str_replace('{peso}', $peso, $texto);
$texto = str_replace('{fechanace}', $fechanace, $texto);
$texto = str_replace('{numerocalzado}', $numerocalzado, $texto);
$texto = str_replace('{tiposangre}', $tiposangre, $texto);
$texto = str_replace('{zurdodiestro}', $zurdodiestro, $texto);
$texto = str_replace('{posicion}', $_GET['posicion'], $texto);

//Muestra la página
echo $texto;

