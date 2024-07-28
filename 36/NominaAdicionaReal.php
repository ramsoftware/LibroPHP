<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('NominaAdicionaReal.html');

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Adiciona el registro
$campos = ["nombre1", "nombre2", "apellido1", "apellido2", "tiposangre", "estadocivil", "ciudad", "altura", "peso", "fechanace", "numerocalzado", "colorojos", "zurdodiestro", "eps", "fondopensiones", "profesion", "division"];
$valores = [$_GET['nombre1'] , $_GET['nombre2'] , $_GET['apellido1'] , $_GET['apellido2'] , $_GET['tiposangre'] , $_GET['estadocivil'] , $_GET['ciudad'] , $_GET['altura'] , $_GET['peso'] , $_GET['fechanace'] , $_GET['numerocalzado'] , $_GET['colorojos'] , $_GET['zurdodiestro'] , $_GET['eps'] , $_GET['fondopensiones'] , $_GET['profesion'] , $_GET['division']];

//Llama al método de adicionar con los arreglos $campos y $valores llenos
if ($BD->AdicionarRegistro('nomina', $campos, $valores))
	$texto = str_replace('{resultado}', 'Adición registro exitosa', $plantilla);
else
	$texto = str_replace('{resultado}', 'Fallida adición. Código error: ' . $BD->errorAdicionar, $plantilla);
	
//Muestra la página
echo $texto;
