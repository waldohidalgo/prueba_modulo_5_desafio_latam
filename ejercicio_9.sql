--9. Crea una restricción que impida insertar usuarios menores de 18 años en la base de datos
ALTER TABLE usuarios
ADD CONSTRAINT edad_constraint CHECK (edad >= 18);

/*
INSERT INTO
usuarios (nombre, edad)
VALUES
('1', 5);
 */