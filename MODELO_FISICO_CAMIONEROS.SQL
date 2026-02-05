TABLA: CAMIONEROS
CREATE TABLE Camioneros (
    dni INT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(150),
    salario DECIMAL(10,2),
    poblacion VARCHAR(100)
);

TABLA: CAMIONES
CREATE TABLE Camiones (
    matricula VARCHAR(20) PRIMARY KEY,
    modelo VARCHAR(50),
    tipo VARCHAR(50),
    potencia INT
);


TABLA: PROVINCIAS
CREATE TABLE Provincias (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100)
);


TABLA: PAQUETES
CREATE TABLE Paquetes (
    codigo VARCHAR(20) PRIMARY KEY,
    destinatario VARCHAR(100),
    direccion_destinatario VARCHAR(150),
    descripcion VARCHAR(200),
    dni_camionero INT,
    codigo_provincia INT,
    FOREIGN KEY (dni_camionero) REFERENCES Camioneros(dni),
    FOREIGN KEY (codigo_provincia) REFERENCES Provincias(codigo)
);


