   
CREATE TABLE Cliente (
    codigo int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    apellido varchar(255) NOT NULL,
    genero CHAR(1),
    profesion varchar(50),
    numeroMovil varchar(20),
    publicidad bit,
    correo varchar(200),
    PRIMARY KEY (codigo)
);


select * from Cliente