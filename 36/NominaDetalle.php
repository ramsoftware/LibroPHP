<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('NominaDetalle.html');

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Para mostrar todos los campos del registro
$BD->PrepararLectura('SELECT nomina.codigo, nomina.nombre1, nomina.nombre2, nomina.apellido1, nomina.apellido2, nomina.tiposangre,
estadocivil.nombre, ciudad.nombre, nomina.altura, nomina.peso, nomina.fechanace, nomina.numerocalzado,
colorojos.nombre, nomina.zurdodiestro, eps.nombre, fondopension.nombre, profesion.nombre, division.nombre
FROM nomina, ciudad, colorojos, division, eps, estadocivil, fondopension, profesion
WHERE nomina.ciudad = ciudad.codigo AND
nomina.colorojos = colorojos.codigo AND
nomina.division = division.codigo AND
nomina.eps = eps.codigo AND
nomina.estadocivil = estadocivil.codigo AND
nomina.fondopensiones = fondopension.codigo AND
nomina.profesion = profesion.codigo AND nomina.codigo = ' . $_GET['codigo']); //Prepara la consulta	

//Trae el registro
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre1 = $registros[1];
	$nombre2 = $registros[2];
	$apellido1 = $registros[3];
	$apellido2 = $registros[4];
	$tiposangre = $registros[5];
	$estadocivil = $registros[6];
	$ciudad = $registros[7];
	$altura = $registros[8];
	$peso = $registros[9];
	$fechanace = $registros[10];
	$numerocalzado = $registros[11];
	$colorojos = $registros[12];
	$zurdodiestro = $registros[13];
	$eps = $registros[14];
	$fondopensiones = $registros[15];
	$profesion = $registros[16];
	$division = $registros[17];
	
	//Pone los datos en el HTML
	$texto = str_replace('{codigo}', $codigo, $plantilla);
	$texto = str_replace('{nombre1}', $nombre1, $texto);
	$texto = str_replace('{nombre2}', $nombre2, $texto);
	$texto = str_replace('{apellido1}', $apellido1, $texto);
	$texto = str_replace('{apellido2}', $apellido2, $texto);
	$texto = str_replace('{tiposangre}', $tiposangre, $texto);
	$texto = str_replace('{estadocivil}', $estadocivil, $texto);
	$texto = str_replace('{ciudad}', $ciudad, $texto);
	$texto = str_replace('{altura}', $altura, $texto);
	$texto = str_replace('{peso}', $peso, $texto);
	$texto = str_replace('{fechanace}', $fechanace, $texto);
	$texto = str_replace('{numerocalzado}', $numerocalzado, $texto);
	$texto = str_replace('{colorojos}', $colorojos, $texto);
	$texto = str_replace('{zurdodiestro}', $zurdodiestro, $texto);
	$texto = str_replace('{eps}', $eps, $texto);
	$texto = str_replace('{fondopensiones}', $fondopensiones, $texto);
	$texto = str_replace('{profesion}', $profesion, $texto);
	$texto = str_replace('{division}', $division, $texto);
	$texto = str_replace('{posicion}', $_GET['posicion'], $texto);
}

//Muestra la página
echo $texto;
