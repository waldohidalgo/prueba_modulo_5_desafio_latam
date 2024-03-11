--2. Inserta 5 películas y 5 tags, la primera película tiene que tener 3 tags asociados, la segunda película debe tener dos tags asociados.
INSERT INTO
    peliculas (nombre, anno)
VALUES
    (
        'pelicula 1',
        2005
    ),
    (
        'pelicula 2',
        1987
    ),
    (
        'pelicula 3',
        1965
    ),
    (
        'pelicula 4',
        2021
    ),
    (
        'pelicula 5',
        1997
    );

INSERT INTO
    tags (tag)
VALUES
    ('acción'),
    ('drama'),
    ('aventura'),
    ('romance'),
    ('thriller');

INSERT INTO
    clasificacion (
        peliculas_id,
        tags_id
    )
VALUES
    (1, 1),
    (1, 3),
    (1, 5),
    (2, 2),
    (2, 4),
    (3, 1),
    (4, NULL),
    (5, NULL);

/*
1 3 tags
1 2 tags
1 1 tags
1 0 tags
1 0 tags
 */