-- Crear los tipos de producto
INSERT INTO Tipo_Producto (id_tipoProducto, nombre_tipoProducto)
VALUES (1, 'Electrónica'),
       (2, 'Ropa'),
       (3, 'Alimentación'),
       (4, 'Muebles'),
       (5, 'Herramientas');

-- Crear los proveedores
INSERT INTO Proveedor (id_proveedor, nombre, telefono, correo)
VALUES (1, 'Distribuciones Alimenticias S.A.', 912345678, 'info@distribucionesalimenticias.es'),
       (2, 'Electrodomésticos La Luz', 923456789, 'contacto@electrodomesticoslaluz.com'),
       (3, 'Muebles y Diseño Moderno', 934567890, 'ventas@mueblesydisenno.es'),
       (4, 'Papelería y Suministros de Oficina', 945678901, 'pedidos@papeleriaysuministros.es'),
       (5, 'Textiles y Moda Actual', 956789012, 'atencioncliente@textilesymoda.com');

-- Crear los productos con nombres específicos
INSERT INTO Productos (Id_Producto, Id_TipoProducto, Impuesto, Nombre)
VALUES (1, 1, 10, 'Smartphone Galaxy S23'),
       (2, 1, 10, 'Laptop Lenovo ThinkPad X1'),
       (3, 1, 10, 'Tablet iPad Pro 12.9'),
       (4, 1, 10, 'Auriculares Sony WH-1000XM5'),
       (5, 1, 10, 'Smartwatch Apple Watch Series 8'),
       (6, 2, 15, 'Camiseta Algodón Cuello Redondo'),
       (7, 2, 15, 'Pantalón Vaquero Slim Fit'),
       (8, 2, 15, 'Chaqueta Cuero Moto'),
       (9, 2, 15, 'Vestido Fiesta Lentejuelas'),
       (10, 2, 15, 'Abrigo Invierno Plumas'),
       (11, 3, 5, 'Arroz Blanco Grano Largo'),
       (12, 3, 5, 'Leche Entera Pasteurizada'),
       (13, 3, 5, 'Pollo Fresco Entero'),
       (14, 3, 5, 'Queso Azul Danés'),
       (15, 3, 5, 'Jamón Serrano Reserva'),
       (16, 4, 8, 'Silla Oficina Ergonómica'),
       (17, 4, 8, 'Mesa Redonda Comedor'),
       (18, 4, 8, 'Estante Para Libros Madera'),
       (19, 4, 8, 'Mesita Noche Cajón'),
       (20, 4, 8, 'Armario Empotrado');

-- Crear la relación Proveedor_Productos
INSERT INTO Proveedor_Productos (id_proveedor, id_producto, precio_unitario)
VALUES (1, 1, 100.00),
       (1, 2, 150.00),
       (1, 3, 200.00),
       (2, 4, 250.00),
       (2, 5, 300.00),
       (3, 6, 350.00),
       (3, 7, 400.00),
       (4, 8, 450.00),
       (4, 9, 500.00),
       (5, 10, 550.00),
       (5, 11, 600.00),
       (1, 12, 650.00),
       (2, 13, 700.00),
       (3, 14, 750.00),
       (4, 15, 800.00),
       (5, 16, 850.00),
       (1, 17, 900.00),
       (2, 18, 950.00),
       (3, 19, 1000.00),
       (4, 20, 1050.00),
       (2, 1, 105.00),
       (3, 2, 155.00),
       (1, 4, 245.00),
       (4, 6, 360.00),
       (5, 8, 460.00),
       (3, 1, 95.00),
       (4, 2, 160.00),
       (5, 3, 210.00),
       (1, 7, 390.00),
       (2, 9, 510.00),
       (3, 11, 620.00),
       (4, 13, 710.00),
       (5, 15, 820.00),
       (1, 19, 980.00),
       (2, 20, 1030.00);

-- Insertar datos de ejemplo en la tabla Pedidos
INSERT INTO Pedidos (id_pedido, id_proveedor, fecha_pedido, precio_total)
VALUES (1, 1, '2024-04-26', 200.0);

-- Insertar datos de ejemplo en la tabla Detalles_Pedido
INSERT INTO Detalles_Pedido (id_pedido, id_producto, cantidad, precio_unitario, precio_cantidad,
                             descuento_detallesPedido, impuesto_detallesPedido)
VALUES (1, 1, 2, 100.00, 200.0, 0, 10);