--8. Implementa borrado en cascada de las respuestas al borrar un usuario y borrar el primer usuario para probar la implementación.
ALTER TABLE respuestas
DROP CONSTRAINT fk_usuario_id;

ALTER TABLE respuestas
ADD CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuarios (id) ON DELETE CASCADE;

DELETE FROM usuarios
WHERE
    id = 1;

/*
select * from respuestas;
 */