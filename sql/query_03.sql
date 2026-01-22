-- Orders per customer
SELECT
    id_cliente,
    COUNT(DISTINCT id_pedido) AS total_orders,
    SUM(precio_total) AS total_spent
FROM tickets
GROUP BY id_cliente
ORDER BY total_spent DESC;
