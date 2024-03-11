--6. Cuenta la cantidad de respuestas correctas totales por usuario (independiente de la pregunta).
SELECT
    cruce.id,
    cruce.nombre,
    SUM(
        cruce.resultado
    ) cuenta_correctas
FROM
    (
        SELECT
            u.id,
            u.nombre,
            CASE
                WHEN p.respuesta_correcta = r.respuesta THEN 1
                ELSE 0
            END AS resultado
        FROM
            preguntas AS p
            INNER JOIN respuestas AS r ON r.pregunta_id = p.id
            INNER JOIN usuarios AS u ON r.usuario_id = u.id
    ) cruce
GROUP BY
    cruce.id,
    cruce.nombre
ORDER BY
    cruce.id;