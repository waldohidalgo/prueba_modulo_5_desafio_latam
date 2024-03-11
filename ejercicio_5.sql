--5. Agrega datos, 5 usuarios y 5 preguntas, la primera pregunta debe estar contestada dos veces correctamente por distintos usuarios, la pregunta 2 debe estar contestada correctamente sólo por un usuario, y las otras 2 respuestas deben estar incorrectas
INSERT INTO
    usuarios (nombre, edad)
VALUES
    (
        'usuario_1',
        15
    ),
    (
        'usuario_2',
        35
    ),
    (
        'usuario_3',
        55
    ),
    (
        'usuario_4',
        47
    ),
    (
        'usuario_5',
        22
    );

INSERT INTO
    preguntas (
        pregunta,
        respuesta_correcta
    )
VALUES
    (
        'pregunta_1',
        'respuesta_correcta_pregunta_1'
    ),
    (
        'pregunta_2',
        'respuesta_correcta_pregunta_2'
    ),
    (
        'pregunta_3',
        'respuesta_correcta_pregunta_3'
    ),
    (
        'pregunta_4',
        'respuesta_correcta_pregunta_4'
    ),
    (
        'pregunta_5',
        'respuesta_correcta_pregunta_5'
    );

/*
inserto data siguiendo la siguiente tabla
_________usuario1 usuario2 usuario3 usuario4 usuario5
pregunta1----y--------y--------n--------n--------n----
pregunta2----n--------n--------y--------n--------n----
pregunta3----y--------n--------y--------n--------n----
pregunta4----y--------y--------n--------n--------y----
pregunta5----y--------y--------y--------y--------y----
 */
INSERT INTO
    respuestas (
        respuesta,
        usuario_id,
        pregunta_id
    )
VALUES
    (
        'respuesta_correcta_pregunta_1',
        1,
        1
    ),
    (
        'respuesta_correcta_pregunta_1',
        2,
        1
    ),
    (
        'respuesta_incorrecta_pregunta_1',
        3,
        1
    ),
    (
        'respuesta_incorrecta_pregunta_1',
        4,
        1
    ),
    (
        'respuesta_incorrecta_pregunta_1',
        5,
        1
    ),
    (
        'respuesta_incorrecta_pregunta_2',
        1,
        2
    ),
    (
        'respuesta_incorrecta_pregunta_2',
        2,
        2
    ),
    (
        'respuesta_correcta_pregunta_2',
        3,
        2
    ),
    (
        'respuesta_incorrecta_pregunta_2',
        4,
        2
    ),
    (
        'respuesta_incorrecta_pregunta_2',
        5,
        2
    ),
    (
        'respuesta_correcta_pregunta_3',
        1,
        3
    ),
    (
        'respuesta_incorrecta_pregunta_3',
        2,
        3
    ),
    (
        'respuesta_correcta_pregunta_3',
        3,
        3
    ),
    (
        'respuesta_incorrecta_pregunta_3',
        4,
        3
    ),
    (
        'respuesta_incorrecta_pregunta_3',
        5,
        3
    ),
    (
        'respuesta_correcta_pregunta_4',
        1,
        4
    ),
    (
        'respuesta_correcta_pregunta_4',
        2,
        4
    ),
    (
        'respuesta_incorrecta_pregunta_4',
        3,
        4
    ),
    (
        'respuesta_incorrecta_pregunta_4',
        4,
        4
    ),
    (
        'respuesta_correcta_pregunta_4',
        5,
        4
    ),
    (
        'respuesta_correcta_pregunta_5',
        1,
        5
    ),
    (
        'respuesta_correcta_pregunta_5',
        2,
        5
    ),
    (
        'respuesta_correcta_pregunta_5',
        3,
        5
    ),
    (
        'respuesta_correcta_pregunta_5',
        4,
        5
    ),
    (
        'respuesta_correcta_pregunta_5',
        5,
        5
    );