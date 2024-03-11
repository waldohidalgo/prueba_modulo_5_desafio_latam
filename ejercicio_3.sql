--3. Cuenta la cantidad de tags que tiene cada película. Si una película no tiene tags debe mostrar 0.
--Utilizo la función  COUNT. Dicha función NO cuenta los valores nulos
SELECT
    peliculas_id,
    COUNT(tags_id)
FROM
    clasificacion
GROUP BY
    peliculas_id
ORDER BY
    COUNT(tags_id) DESC;