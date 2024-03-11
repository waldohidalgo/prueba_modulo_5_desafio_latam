--10. Altera la tabla existente de usuarios agregando el campo email con la restricción de único.
ALTER TABLE usuarios
ADD COLUMN email VARCHAR UNIQUE;

/*
INSERT INTO
usuarios (
nombre,
edad,
email
)
VALUES
(
'waldo',
33,
'abc@mail.com'
);

INSERT INTO
usuarios (
nombre,
edad,
email
)
VALUES
(
'maria',
22,
'abc@mail.com'
);

 */