COPY olist_products 
FROM 'C:\Users\agats\Desktop\olist_products_dataset.csv' 
WITH (FORMAT CSV, DELIMITER ',', HEADER true);

COPY olist_orders 
FROM 'C:\Users\agats\Desktop\olist_orders_dataset.csv' 
WITH (FORMAT CSV, DELIMITER ',', HEADER true);

COPY olist_order_items 
FROM 'C:\Users\agats\Desktop\olist_order_items_dataset.csv' 
WITH (FORMAT CSV, DELIMITER ',', HEADER true);