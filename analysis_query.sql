#Total Revenue(company sales)
SELECT
SUM(quantity * unit_price) AS total_revenue
FROM order_items;

#Top Selling Product based on products and order items
SELECT
p.product_name,
SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

#Best customer (most valuable customer)
SELECT
c.first_name,
SUM(oi.quantity * oi.unit_price) AS total_spending
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY c.first_name
ORDER BY total_spending DESC;

#Revenue by category(which category makes most money)
SELECT
c.category_name,
SUM(oi.quantity * oi.unit_price) AS revenue
FROM categories c
JOIN products p
ON c.category_id = p.category_id
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY c.category_name
ORDER BY revenue DESC;

#case
SELECT
product_name,
price,
CASE
    WHEN price > 50000 THEN 'Premium'
    WHEN price > 10000 THEN 'Mid Range'
    ELSE 'Budget'
END AS product_type
FROM products;

#Ranking
WITH product_sales AS (
    SELECT
    product_id,
    SUM(quantity * unit_price) AS revenue
    FROM order_items
    GROUP BY product_id
)

SELECT
product_name,
price,
RANK() OVER(ORDER BY price DESC) AS ranking
FROM products;

