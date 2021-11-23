SELECT fecha_ingreso AS "time",
correo AS metric,
id_usuario AS value
FROM usuario
WHERE 1=1
ORDER BY id_usuario

