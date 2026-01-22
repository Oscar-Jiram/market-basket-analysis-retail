-- Revenue by product
SELECT
    nombre_producto,
    SUM(precio_total) AS revenue,
    SUM(cantidad) AS units_sold
FROM tickets
GROUP BY nombre_producto
ORDER BY revenue DESC;
