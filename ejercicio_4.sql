--4. Crea las tablas respetando los nombres, tipos, claves primarias y foráneas y tipos de datos.
CREATE TABLE
    preguntas (
        id serial PRIMARY KEY,
        pregunta VARCHAR(255),
        respuesta_correcta VARCHAR
    );

CREATE TABLE
    usuarios (
        id serial PRIMARY KEY,
        nombre VARCHAR(255),
        edad INTEGER
    );

CREATE TABLE
    respuestas (
        id serial PRIMARY KEY,
        respuesta VARCHAR(255),
        usuario_id INTEGER,
        pregunta_id INTEGER,
        CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuarios (id),
        CONSTRAINT fk_pregunta_id FOREIGN KEY (pregunta_id) REFERENCES preguntas (id)
    );