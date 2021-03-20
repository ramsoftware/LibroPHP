<?php
session_start();

//Destruye las variables y redirige a la pantalla de inicio
unset ($_SESSION['permitido']);
session_destroy();		
header("Location: sesion.html");
