CREATE OR REPLACE PROCEDURE GetCustomerOrders (
    cust_id IN NUMBER
) AS
BEGIN
    SELECT c.name, o.order_id, o.order_date
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    WHERE c.customer_id = cust_id;
END;
/
