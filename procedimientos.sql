CREATE PROCEDURE ObtenerProductosMasVendidos
    AS
BEGIN
SELECT p.id_producto, p.nombre, SUM(dp.cantidad) AS CantidadTotalVendida
FROM Productos p
         INNER JOIN Detalles_Pedido dp ON p.id_producto = dp.id_producto
GROUP BY p.id_producto, p.nombre
ORDER BY CantidadTotalVendida DESC;
END;