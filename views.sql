CREATE VIEW sales_summary AS
SELECT c.name,
       p.product_name,
       od.quantity,
       (p.price * od.quantity) AS total_price
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id;
