--1. Crea el modelo (revisa bien cuál es el tipo de relación antes de crearlo), respeta las claves primarias, foráneas y tipos de datos.
CREATE TABLE
    peliculas (
        id serial PRIMARY KEY,
        nombre VARCHAR(255) NOT NULL,
        anno INT NOT NULL
    );

CREATE TABLE
    tags (
        id serial PRIMARY KEY,
        tag VARCHAR(32) NOT NULL
    );

CREATE TABLE
    clasificacion (
        id serial PRIMARY KEY,
        peliculas_id INT NOT NULL,
        tags_id INT,
        CONSTRAINT fk_peliculas_id FOREIGN KEY (peliculas_id) REFERENCES peliculas (id),
        CONSTRAINT fk_tags_id FOREIGN KEY (tags_id) REFERENCES tags (id)
    );