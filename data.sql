INSERT INTO customers VALUES
(customers_seq.NEXTVAL, 'Arul', 'arul@gmail.com', 'Bangalore', DATE '2024-01-10');

INSERT INTO customers VALUES
(customers_seq.NEXTVAL, 'Ravi', 'ravi@gmail.com', 'Chennai', DATE '2024-02-15');

INSERT INTO customers VALUES
(customers_seq.NEXTVAL, 'Sneha', 'sneha@gmail.com', 'Hyderabad', DATE '2024-03-01');

INSERT INTO products VALUES
(products_seq.NEXTVAL, 'Laptop', 'Electronics', 60000);

INSERT INTO products VALUES
(products_seq.NEXTVAL, 'Mobile', 'Electronics', 30000);

INSERT INTO products VALUES
(products_seq.NEXTVAL, 'Headphones', 'Accessories', 2000);

INSERT INTO products VALUES
(products_seq.NEXTVAL, 'Keyboard', 'Accessories', 1500);

INSERT INTO orders VALUES
(orders_seq.NEXTVAL, 1, DATE '2024-03-10');

INSERT INTO orders VALUES
(orders_seq.NEXTVAL, 2, DATE '2024-03-12');

INSERT INTO orders VALUES
(orders_seq.NEXTVAL, 1, DATE '2024-04-05');

INSERT INTO order_details VALUES
(order_details_seq.NEXTVAL, 1, 1, 1);

INSERT INTO order_details VALUES
(order_details_seq.NEXTVAL, 1, 3, 2);

INSERT INTO order_details VALUES
(order_details_seq.NEXTVAL, 2, 2, 1);

INSERT INTO order_details VALUES
(order_details_seq.NEXTVAL, 3, 4, 1);

INSERT INTO payments VALUES
(payments_seq.NEXTVAL, 1, 'UPI', 'Success');

INSERT INTO payments VALUES
(payments_seq.NEXTVAL, 2, 'Credit Card', 'Success');

INSERT INTO payments VALUES
(payments_seq.NEXTVAL, 3, 'Cash', 'Pending');

COMMIT;
