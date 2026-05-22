CREATE INDEX idx_order_date
ON orders(order_date);
EXPLAIN
SELECT *
FROM orders
WHERE order_date = '2025-05-10';


