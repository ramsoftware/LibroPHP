<?php
//Importa la librería genérica para bases de datos
require_once("BD.php");

//Instancia la librería genérica y hace uso de los métodos
$BD = new basedatos();

//Adiciona el registro
$campos = ["nombre"];
$valores = ["Nueva EPS rapidez y confianza"];

//Llama al método de adicionar con los arreglos $campos y $valores llenos
if ($BD->AdicionarRegistro('eps', $campos, $valores))
	echo "<p>Registro adicionado</p>";
else {
	echo "<p>Hubo problemas para adicionar el registro</p>";
	echo "Código de error: " . $BD->errorAdicionar;
}
