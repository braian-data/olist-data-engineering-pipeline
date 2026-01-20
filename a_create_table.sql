CREATE TABLE olist_products (
    product_id uuid PRIMARY KEY,
    product_category_name text,
    product_name_lenght integer,
    product_description_lenght integer,
    product_photos_qty integer,
    product_weight_g numeric,
    product_length_cm numeric,
    product_height_cm numeric,
    product_width_cm numeric
);
CREATE TABLE olist_orders (
    order_id uuid PRIMARY KEY,
    customer_id uuid,
    order_status text,
    order_purchase_timestamp timestamp,
    order_approved_at timestamp,
    order_delivered_carrier_date timestamp,
    order_delivered_customer_date timestamp,
    order_estimated_delivery_date timestamp
);
CREATE TABLE olist_order_items (
    order_id uuid REFERENCES olist_orders(order_id),
    order_item_id integer,
    product_id uuid REFERENCES olist_products(product_id),
    seller_id uuid, 
    shipping_limit_date timestamp,
    price numeric,
    freight_value numeric,
    CONSTRAINT pk_order_items PRIMARY KEY (order_id, order_item_id)
);
