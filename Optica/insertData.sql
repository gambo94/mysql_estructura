/* Empleado */
INSERT INTO empleado VALUES (1, 'Juan Carlos Gómez');
INSERT INTO empleado VALUES (2, 'Julia Fernández');
INSERT INTO empleado VALUES (3, 'Ariadna Sánchez');

/* Proveedor */
INSERT INTO proveedor VALUES ('M02000049H', 'Juanito Carlito', 'Calle de los Peatones 40, 4 2', 08034, 'Barcelona', 'España', '632443564', NULL);
INSERT INTO proveedor VALUES ('F03495434H', 'Valerita Valeriata', 'Calle Arcoiris 54, 3 2', 09745, 'Pamplona', 'España', '634736234', NULL);
INSERT INTO proveedor VALUES ('G345435G', 'Pedro Patri', 'Calle Palomas 32 4 3', 05432, 'Almería', 'España', '621345367', NULL);

/* Cliente */
INSERT INTO cliente VALUES (1, 'Marino Colapescado', 'Calle de los Peces 32, 3 1', 'marinitopez@hola.es', CURRENT_TIMESTAMP());
INSERT INTO cliente VALUES (2, 'Jennifer López', 'Calle from the Block 12, 2 2', 'jennyftb@jolly.pt', CURRENT_TIMESTAMP());
INSERT INTO cliente VALUES (3, 'Rachel Ohio', 'Calle de Lima 21, 4 3', 'rachelb@gll.us', CURRENT_TIMESTAMP());

/* referral */

INSERT INTO ref_cliente VALUES (01, 1, 2);
INSERT INTO ref_cliente VALUES (02, 3, 1);

/* Marca */
INSERT INTO marca VALUES ('Rayban', 'M02000049H');
INSERT INTO marca VALUES ('Carrera', 'M02000049H');
INSERT INTO marca VALUES ('MochiMochi', 'F03495434H');

/* Gafas */ 
INSERT INTO gafas VALUES (100, 1.2, 1, 'chula', 'amarillo', 'marrón', 34, 'Rayban', NULL, NULL);
INSERT INTO gafas VALUES (101, 2.3, 2.2, 'chulísima', 'rojo', 'rojo', 67, 'Carrera', 1, 2);
INSERT INTO gafas VALUES (102, 3.2, 1.2, 'fea', 'negro', 'blanco', 90, 'MochiMochi', 2, 3);


