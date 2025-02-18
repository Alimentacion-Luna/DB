CREATE PROCEDURE ObtenerProductosMasVendidos
    AS
BEGIN

SELECT p.id_producto, p.nombre, SUM(dp.cantidad) AS CantidadTotalVendida
FROM Productos p
         INNER JOIN Detalles_Pedido dp ON p.id_producto = dp.id_producto
GROUP BY p.id_producto, p.nombre
ORDER BY CantidadTotalVendida DESC;

END;
GO;

CREATE PROCEDURE ObtenerProductosPaginados(@proveedor int, @offset int, @amount int)
    AS
BEGIN

SELECT P.id_producto, TP.nombre_tipoProducto, P.impuesto, P.nombre
FROM [dbo].[Proveedor_Productos] AS PP
    JOIN [dbo].[Productos] AS P
ON PP.id_producto = P.id_producto
    JOIN [dbo].[Tipo_Producto] AS TP
    ON P.id_tipoProducto = TP.id_tipoProducto
WHERE id_proveedor = @proveedor
ORDER BY P.nombre DESC
OFFSET @offset ROWS FETCH NEXT @amount ROWS ONLY;

END
GO;


SELECT P.id_producto, TP.nombre_tipoProducto, P.impuesto, P.nombre
FROM [dbo].[Proveedor_Productos] as PP
    join [dbo].[Productos] as P
on PP.id_producto = P.id_producto
    join [dbo].[Tipo_Producto] as TP
    on P.id_tipoProducto = TP.id_tipoProducto
where id_proveedor = 1

