TABLA: CATEGORIAS
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    encargado VARCHAR(50) NOT NULL
);


TABLA: PLATOS
CREATE TABLE platos (
    id_plato INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    dificultad VARCHAR(20) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

TABLA: RECETAS
CREATE TABLE recetas (
    id_receta INT AUTO_INCREMENT PRIMARY KEY,
    id_plato INT NOT NULL,
    ingrediente VARCHAR(50) NOT NULL,
    cantidad INT NOT NULL,
    unidad VARCHAR(10) NOT NULL,
    stock INT NOT NULL,
    FOREIGN KEY (id_plato) REFERENCES platos(id_plato)
);
