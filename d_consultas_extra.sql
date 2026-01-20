-- Categorias que mais geram receita
SELECT 
    p.product_category_name, 
    ROUND(SUM(i.price)::numeric, 2) AS receita_total
FROM olist_order_items i
JOIN olist_products p ON i.product_id = p.product_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- Valor médio de frete por estado
SELECT 
    o.order_status,
    AVG(i.freight_value) as frete_medio
FROM olist_orders o
JOIN olist_order_items i ON o.order_id = i.order_id
GROUP BY 1;

-- Quantidade de pedidos por status
SELECT order_status, COUNT(*) as total_pedidos
FROM olist_orders
GROUP BY order_status
ORDER BY total_pedidos DESC;