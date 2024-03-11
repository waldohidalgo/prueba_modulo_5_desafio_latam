--7. Por cada pregunta, en la tabla preguntas, cuenta cuántos usuarios tuvieron la respuesta correcta.
SELECT
    cruce.pregunta,
    SUM(
        cruce.resultado
    ) cantidad_respuesta_correcta
FROM
    (
        SELECT
            p.pregunta,
            r.usuario_id,
            CASE
                WHEN p.respuesta_correcta = r.respuesta THEN 1
                ELSE 0
            END AS resultado
        FROM
            preguntas AS p
            INNER JOIN respuestas AS r ON r.pregunta_id = p.id
    ) cruce
GROUP BY
    cruce.pregunta
ORDER BY
    cruce.pregunta;