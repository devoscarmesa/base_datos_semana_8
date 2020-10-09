-- Asistencia de los estudiantes por colegio

SELECT
act.nombres,
act.documento,
act.apellidos,
`mod`.modulo,
sc.fecha_sesion,
`as`.asiste,
`as`.observaciones
FROM
actores AS act
INNER JOIN integrantes_grupos AS ig ON ig.estudiante_id = act.id
INNER JOIN grupos AS g ON ig.grupo_id = g.id
INNER JOIN clases AS c ON c.grupo_id = g.id
INNER JOIN modulos AS `mod` ON c.modulo_id = `mod`.id
INNER JOIN sesiones_clases AS sc ON sc.clase_id = c.id
INNER JOIN asistencias_sesiones AS `as` ON `as`.integrante_grupo_id = ig.id AND `as`.sesion_clase_id = sc.id
WHERE
act.institucion_id = 1;
