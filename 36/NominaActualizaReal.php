<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('NominaActualizaReal.html');
$texto = str_replace('{posicion}', $_GET['posicion'], $plantilla);

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Actualiza el registro
$campos = ["nombre1", "nombre2", "apellido1", "apellido2", "tiposangre", "estadocivil", "ciudad", "altura", "peso", "fechanace", "numerocalzado", "colorojos", "zurdodiestro", "eps", "fondopensiones", "profesion", "division"];
$valores = [$_GET['nombre1'] , $_GET['nombre2'] , $_GET['apellido1'] , $_GET['apellido2'] , $_GET['tiposangre'] , $_GET['estadocivil'] , $_GET['ciudad'] , $_GET['altura'] , $_GET['peso'] , $_GET['fechanace'] , $_GET['numerocalzado'] , $_GET['colorojos'] , $_GET['zurdodiestro'] , $_GET['eps'] , $_GET['fondopensiones'] , $_GET['profesion'] , $_GET['division']];

//Llama al método de actualizar con los arreglos $campos y $valores llenos
if ($BD->ActualizarRegistro('nomina', $campos, $valores, 'codigo', $_GET['codigo']))
	$texto = str_replace('{resultado}', 'Actualización de registro exitosa', $texto);
else
	$texto = str_replace('{resultado}', 'Fallida actualización. Código error: ' . $BD->errorActualizar, $texto);
	
//Muestra la página
echo $texto;
