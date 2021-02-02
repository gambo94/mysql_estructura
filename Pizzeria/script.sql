DROP DATABASE IF EXISTS pizzeria;
CREATE DATABASE pizzeria  CHARACTER SET utf8mb4;
USE pizzeria;

CREATE TABLE provincia (
    id_provincia INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_prov VARCHAR(20) NOT NULL
);

CREATE TABLE localidad (
    id_localidad INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_loc VARCHAR(20) NOT NULL,
    id_provincia INT UNSIGNED,
    FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia)
);

CREATE TABLE cliente (
    id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_cl VARCHAR(20) NOT NULL,
    apellido_cl VARCHAR(20) NOT NULL,
    dir VARCHAR(50) NOT NULL,
    cp INT NOT NULL,
    telefono_cl VARCHAR(9) NOT NULL,
    provincia VARCHAR(20) NOT NULL, 
    localidad INT UNSIGNED NOT NULL,
    FOREIGN KEY (localidad) REFERENCES localidad(id_localidad)
);

CREATE TABLE restaurante (
    id_rest INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    dir_rest VARCHAR(50) NOT NULL,
    dir_cp INT NOT NULL,
    loc_rest VARCHAR(20) NOT NULL,
    prov_rest VARCHAR(20) NOT NULL
);

CREATE TABLE empleado (
    id_empl INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    tipo_empl ENUM('cocinero', 'repartidor') NOT NULL,
    id_rest INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_rest) REFERENCES restaurante(id_rest)
);

CREATE TABLE order_cl (
    id_order INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    fecha_pedido TIMESTAMP NOT NULL,
    tipo_order ENUM ('domicilio', 'recoger') NOT NULL,
    precio_total int,
    id_cl INT UNSIGNED NOT NULL,
    id_res INT UNSIGNED NOT NULL,
    empl_id INT UNSIGNED,
    FOREIGN KEY (empl_id) REFERENCES empleado(id_empl),
    FOREIGN KEY (id_res) REFERENCES restaurante(id_rest),
    FOREIGN KEY (id_cl) REFERENCES cliente (id_cliente)
);


CREATE TABLE categoria (
    cat_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_cat VARCHAR(10)
);

CREATE TABLE producto (
    prod_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_prod VARCHAR(25) NOT NULL,
    desc_prod VARCHAR(100) NOT NULL,
    img LONGBLOB, 
    precio_individual FLOAT NOT NULL,
    id_cat INT UNSIGNED,
    FOREIGN KEY (id_cat) REFERENCES categoria(cat_id)
);

CREATE TABLE order_has_products (
    order_id INT UNSIGNED,
    prod_id INT UNSIGNED,
    cantidad INT,
    PRIMARY KEY (order_id, prod_id),
    FOREIGN KEY (order_id) REFERENCES order_cl(id_order),
    FOREIGN KEY (prod_id) REFERENCES producto(prod_id)
);