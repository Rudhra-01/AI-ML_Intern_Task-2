CREATE VIEW sales_dashboard AS
SELECT
o.order_id,
o.order_date,
c.first_name,
p.product_name,
oi.quantity,
oi.unit_price,
(oi.quantity * oi.unit_price) AS total_amount
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id;

SELECT * FROM sales_dashboard;