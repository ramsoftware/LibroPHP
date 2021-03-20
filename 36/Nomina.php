<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Llama la parte visual
$plantilla = file_get_contents('Nomina.html');
$texto = ""; //Lo que reemplazará en la plantilla

//¿Cuál conjunto de registros va a traer?
if (!isset($_GET['posicion']))
	$Posicion = 0;
else
	$Posicion = $_GET['posicion'];

//Cuantos registros va a mostrar
$RegistroMuestra = 10;

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Para mostrar el listado de registros
$BD->PrepararLectura('SELECT codigo, nombre1, nombre2, apellido1, apellido2 FROM nomina ORDER BY codigo LIMIT ' . $Posicion . ', ' . $RegistroMuestra); //Prepara la consulta	
while(($registros = $BD->TraeRegistroARegistro()) != null){
	$codigo = $registros[0];
	$nombre1 = $registros[1];
	$nombre2 = $registros[2];
	$apellido1 = $registros[3];
	$apellido2 = $registros[4];
	
	//htmlentities para evitar ejecutar código HTML
	$texto .= "<tr>";
	$texto .= "<td>" . htmlentities($nombre1, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($nombre2, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($apellido1, ENT_QUOTES, "UTF-8") . "</td>";
	$texto .= "<td>" . htmlentities($apellido2, ENT_QUOTES, "UTF-8") . "</td>";
		
	//Agrega enlaces para detallar/borrar/actualizar el registro
	$texto .= "<td><a href='NominaDetalle.php?codigo=".$codigo."&posicion=".$Posicion."'>Detalle</td>";
	$texto .= "<td><a href='NominaBorra.php?codigo=".$codigo."&posicion=".$Posicion."'>Borrar</td>";
	$texto .= "<td><a href='NominaActualiza.php?codigo=".$codigo."&posicion=".$Posicion."'>Actualizar</td>";
	$texto .= "<tr>";
}

//Modifica el HTML (parte visual) con los datos a mostrar
$resultado = str_replace('{Datos}', $texto, $plantilla);

//Paginación.
$totalRegistros = $BD->TotalRegistros("nomina");
$PaginaUltima = $totalRegistros - $RegistroMuestra;
if ($Posicion > $RegistroMuestra) $PaginaAnterior = $Posicion - $RegistroMuestra; else $PaginaAnterior = 0;
if ($Posicion + $RegistroMuestra < $totalRegistros) $PaginaSigue = $Posicion + $RegistroMuestra; else $PaginaSigue = $PaginaUltima;

//Modifica el HTML (parte visual) con los cálculos de paginación
$resultado = str_replace('{anterior}', $PaginaAnterior, $resultado);
$resultado = str_replace('{siguiente}', $PaginaSigue, $resultado);
$resultado = str_replace('{ultima}', $PaginaUltima, $resultado);

//Muestra la página
echo $resultado;
