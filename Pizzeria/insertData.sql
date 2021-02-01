

/* Provincias */
INSERT INTO provincia VALUES (1, 'Almería');
INSERT INTO provincia VALUES (2, 'Barcelona');

/* Localidades */
INSERT INTO localidad VALUE (1, 'Roquetas de Mar', 1);
INSERT INTO localidad VALUE (2, 'Vic', 2);
INSERT INTO localidad VALUE (3, 'Aguadulce', 1);
INSERT INTO localidad VALUE (4, 'Badalona', 2);

/* Clientes */
INSERT INTO cliente VALUE (01, 'Guapito', 'Guapetón', 'Calle de los feos 34, 4 1', 08032, '643443212', 'Barcelona', 2);
INSERT INTO cliente VALUE (02, 'Goku', 'Son', 'Calle de los kames 45, 7 1', 08932, '643409812', 'Almería', 1);

/* Restaurantes */ 
INSERT INTO restaurante VALUE (1, 'Calle Comida 23', 08374, 'Sabadell', 'Barcelona');
INSERT INTO restaurante VALUE (2, 'Calle Bebida 54', 08048, 'Terrasa', 'Barcelona');
INSERT INTO restaurante VALUE (3, 'Cabaña del Tio Tom', 09048, 'Almería', 'Almería');

/* Empleados */ 
INSERT INTO empleado VALUE (1, 'repartidor', 3);
INSERT INTO empleado VALUE (2, 'cocinero', 2);
INSERT INTO empleado VALUE (3, 'cocinero', 3);
INSERT INTO empleado VALUE (4, 'repartidor', 1);
INSERT INTO empleado VALUE (5, 'repartidor', 2);

/* Categorias */
INSERT INTO categoria VALUE (001, 'Calzone');
INSERT INTO categoria VALUE (002, 'Blanca');
INSERT INTO categoria VALUE (003, 'Rossa');

/* Productos */
INSERT INTO producto VALUES (1, 'Hamburguesa con queso', 'Está riquísima', NULL, 7, NULL);
INSERT INTO producto VALUES (2, 'Coca Cola', 'Renfrescante y siempre buena, cuidado con los eructos', NULL, 1.5, NULL);
INSERT INTO producto VALUES (3, 'Coca Cola Zero', 'Renfrescante, siempre buena y con menos azúcares. Cuidado con los eructos', NULL, 1.5, NULL);
INSERT INTO producto VALUES (4, 'Hamburguesa de pollo', 'Está bastante mala', NULL, 13, NULL);
INSERT INTO producto VALUES (5, 'Pizza ciclista', 'Muy rica como entrante para compartir', NULL, 7, 002);
INSERT INTO producto VALUES (6, 'Calzone cotto e funghi', 'Una pizza cerrada con jamón york y setas', NULL, 8, 001);
INSERT INTO producto VALUES (7, 'Pizza Rossini', 'Una pizza típica de Pésaro, con mayonesa y huevos duros', NULL, 9, 002);

/* Pedidos */
INSERT INTO order_cl VALUE (00001, CURRENT_TIMESTAMP(), 'domicilio', 8.5, 01, 1, 4);
INSERT INTO order_cl VALUE (00002, CURRENT_TIMESTAMP(), 'recoger', 16.5, 01, 1, NULL);
INSERT INTO order_cl VALUE (00003, CURRENT_TIMESTAMP(), 'domicilio', 14.5, 02, 3, 1);

/* Pedido_tiene_productos */ 
INSERT INTO order_has_products VALUE (00001, 1, 1);
INSERT INTO order_has_products VALUE (00001, 2, 1);
INSERT INTO order_has_products VALUE (00002, 5, 1);
INSERT INTO order_has_products VALUE (00002, 6, 1);
INSERT INTO order_has_products VALUE (00002, 3, 1);
INSERT INTO order_has_products VALUE (00003, 4, 1);
INSERT INTO order_has_products VALUE (00003, 2, 1);






