CREATE TABLE Pedidos
(
    id_pedido    INT         NOT NULL PRIMARY KEY,
    id_proveedor INT         NOT NULL,
    fecha_pedido DATE        NOT NULL,
    precio_total MONEY       NOT NULL,
    estado       VARCHAR(10) NOT NULL default 'en curso',
    CONSTRAINT CK_EstadoPedido CHECK (estado IN ('en curso', 'cancelado', 'recibido'))
);

CREATE TABLE Proveedor
(
    id_proveedor INT          NOT NULL PRIMARY KEY,
    nombre       VARCHAR(500) NOT NULL,
    telefono     BIGINT       NOT NULL,
    correo       VARCHAR(500) NOT NULL
);

CREATE TABLE Tipo_Producto
(
    id_tipoProducto     INT          NOT NULL PRIMARY KEY,
    nombre_tipoProducto VARCHAR(500) NOT NULL
);

CREATE TABLE Detalles_Pedido
(
    id_pedido                INT   NOT NULL,
    id_producto              INT   NOT NULL,
    cantidad                 INT   NOT NULL,
    precio_unitario          MONEY NOT NULL,
    precio_cantidad          MONEY NOT NULL,
    descuento_detallesPedido INT,
    impuesto_detallesPedido  INT   NOT NULL,
    PRIMARY KEY (id_pedido, id_producto),
    CONSTRAINT FK_Detalles_Pedido_Pedidos FOREIGN KEY (id_pedido) REFERENCES Pedidos (id_pedido)
);

CREATE TABLE Proveedor_Productos
(
    id_proveedor    INT   NOT NULL,
    id_producto     INT   NOT NULL,
    precio_unitario MONEY NOT NULL,
    PRIMARY KEY (id_proveedor, id_producto)
);

CREATE TABLE Productos
(
    id_producto     INT          NOT NULL PRIMARY KEY,
    id_tipoProducto INT          NOT NULL,
    nombre          VARCHAR(500) NOT NULL,
    impuesto        INT          NOT NULL
);

-- Añadir restricciones de clave foránea
ALTER TABLE Productos
    ADD CONSTRAINT FK_Productos_Tipo_Producto FOREIGN KEY (id_tipoProducto) REFERENCES Tipo_Producto (id_tipoProducto);
ALTER TABLE Proveedor_Productos
    ADD CONSTRAINT FK_Proveedor_Productos_Proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedor (id_proveedor);
ALTER TABLE Proveedor_Productos
    ADD CONSTRAINT FK_Proveedor_Productos_Productos FOREIGN KEY (id_producto) REFERENCES Productos (id_producto);
ALTER TABLE Pedidos
    ADD CONSTRAINT FK_Pedidos_Proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedor (id_proveedor);