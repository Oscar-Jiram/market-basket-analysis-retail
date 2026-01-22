-- Average Order Value (AOV)
SELECT AVG(valor_por_pedido) AS avg_order_value
FROM (
    SELECT
        id_pedido,
        SUM(precio_total) AS valor_por_pedido
    FROM tickets
    GROUP BY id_pedido
);
