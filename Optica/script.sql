DROP DATABASE IF EXISTS optica;
CREATE DATABASE optica  CHARACTER SET utf8mb4;
USE optica;

CREATE TABLE empleado (
    id_empleado INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_empleado VARCHAR(100) NOT NULL
);

CREATE TABLE proveedor (
    nif VARCHAR(20) PRIMARY KEY,
    nombre_proveedor VARCHAR(20) NOT NULL,
    adr VARCHAR(50) NOT NULL,
    cp INT NOT NULL,
    ciudad VARCHAR(15) NOT NULL,
    pais VARCHAR(20) NOT NULL,
    telefono VARCHAR(9) NOT NULL,
    fax VARCHAR(10)
);

CREATE TABLE cliente (
    id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(20) NOT NULL,
    adr VARCHAR(50) NOT NULL,
    correo VARCHAR(20) NOT NULL,
    fecha_registro TIMESTAMP NOT NULL,
    ref_cliente INT UNSIGNED,
    FOREIGN KEY (ref_cliente) REFERENCES cliente(id_cliente)
); 





CREATE TABLE marca (
    marca VARCHAR(15) PRIMARY KEY,
    nif_proveedor VARCHAR(20) NOT NULL,
    FOREIGN KEY (nif_proveedor) REFERENCES proveedor(nif)
);

CREATE TABLE gafas (
    id_producto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    graduacion_derecha FLOAT NOT NULL,
    graduacion_izquierda FLOAT NOT NULL,
    tipo_montatura VARCHAR(10) NOT NULL,
    color_montatura VARCHAR(10) NOT NULL,
    color_vidrio VARCHAR(19) NOT NULL,
    precio FLOAT NOT NULL,
    marca VARCHAR(15) NOT NULL,
    id_empleado INT UNSIGNED,
    FOREIGN KEY (marca) REFERENCES marca(marca),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);


CREATE TABLE pedido(
    id_pedido INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT UNSIGNED,
    id_producto INT UNSIGNED,
    fecha_compra TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES gafas(id_producto)
);