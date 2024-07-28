SELECT nomina.nombre1, nomina.nombre2,
nomina.apellido1, nomina.apellido2,
ciudad.nombre
FROM nomina, ciudad
WHERE nomina.ciudad = ciudad.codigo
ORDER BY nomina.nombre1, nomina.nombre2,
nomina.apellido1, nomina.apellido2
