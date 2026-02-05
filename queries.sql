-- Total revenue
SELECT SUM(p.price * od.quantity) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id;

-- Top-selling products
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- High-value customers
SELECT c.name, SUM(p.price * od.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.name
HAVING SUM(p.price * od.quantity) > 30000;

-- Monthly sales
SELECT TO_CHAR(o.order_date, 'MM-YYYY') AS month,
       SUM(p.price * od.quantity) AS monthly_sales
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY TO_CHAR(o.order_date, 'MM-YYYY');

-- Customers with no orders
SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
