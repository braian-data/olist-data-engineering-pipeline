-- As 5 categorias que mais faturam
-- The 5 highest-grossing categories


SELECT 
    p.product_category_name, 
    ROUND(SUM(i.price)::numeric, 2) AS faturamento_total
FROM olist_order_items i
JOIN olist_products p ON i.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY faturamento_total DESC
LIMIT 5;