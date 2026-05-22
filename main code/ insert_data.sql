INSERT INTO categories (category_name)
VALUES
('Electronics'),
('Furniture'),
('Clothing'),
('Accessories'),
('Sports');
INSERT INTO customers
(first_name, last_name, email, city, country, signup_date)
VALUES
('John', 'Smith', 'johnsmith@gmail.com', 'New York', 'USA', '2025-01-10'),
('Emma', 'Johnson', 'emmaj@gmail.com', 'Chicago', 'USA', '2025-02-15'),
('Michael', 'Brown', 'michaelb@gmail.com', 'London', 'UK', '2025-03-12'),
('Sophia', 'Davis', 'sophiad@gmail.com', 'Toronto', 'Canada', '2025-04-01'),
('David', 'Wilson', 'davidw@gmail.com', 'Sydney', 'Australia', '2025-05-05');
INSERT INTO products
(product_name, category_id, price, stock_quantity)
VALUES
('iPhone 15', 1, 85000.00, 50),
('Samsung TV', 1, 65000.00, 30),
('Office Chair', 2, 12000.00, 40),
('Leather Jacket', 3, 7000.00, 25),
('Travel Backpack', 4, 2800.00, 75),
('Nike Shoes', 5, 5000.00, 100);
INSERT INTO orders
(customer_id, order_date, order_status)
VALUES
(1, '2025-05-01', 'Delivered'),
(2, '2025-05-03', 'Pending'),
(3, '2025-05-05', 'Delivered'),
(4, '2025-05-07', 'Cancelled'),
(5, '2025-05-09', 'Delivered');
INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 85000.00),
(1, 6, 2, 5000.00),
(2, 3, 1, 12000.00),
(3, 2, 1, 65000.00),
(4, 4, 2, 7000.00),
(5, 5, 1, 2800.00);
INSERT INTO customers
(first_name, last_name, email, city, country, signup_date)
VALUES
('Arun', 'Kumar', 'arunkumar@gmail.com', 'Chennai', 'India', '2025-06-10'),
('Priya', 'Sharma', 'priyasharma@gmail.com', 'Mumbai', 'India', '2025-07-18'),
('Daniel', 'Miller', 'danielm@gmail.com', 'Texas', 'USA', '2025-08-22'),
('Olivia', 'Taylor', 'oliviat@gmail.com', 'Manchester', 'UK', '2025-09-09'),
('Karthik', 'Rajan', 'karthikr@gmail.com', 'Coimbatore', 'India', '2025-10-11'),
('Meena', 'Lakshmi', 'meenal@gmail.com', 'Madurai', 'India', '2025-11-03'),
('Ethan', 'Moore', 'ethanm@gmail.com', 'Melbourne', 'Australia', '2025-12-14'),
('Ava', 'Thomas', 'avathomas@gmail.com', 'Vancouver', 'Canada', '2026-01-21'),
('Lucas', 'Martin', 'lucasm@gmail.com', 'Paris', 'France', '2026-02-17'),
('Isabella', 'White', 'isabellaw@gmail.com', 'Berlin', 'Germany', '2026-03-05'),
('Noah', 'Harris', 'noahh@gmail.com', 'San Francisco', 'USA', '2026-04-10'),
('Harini', 'Sekar', 'harinis@gmail.com', 'Bangalore', 'India', '2026-05-18'),
('Benjamin', 'Clark', 'benclark@gmail.com', 'Dublin', 'Ireland', '2026-06-12'),
('Charlotte', 'Lewis', 'charlottelewis@gmail.com', 'Auckland', 'New Zealand', '2026-07-08'),
('Vignesh', 'Kumar', 'vigneshk@gmail.com', 'Hyderabad', 'India', '2026-08-25');
SELECT COUNT(*) AS total_customers
FROM customers;
SELECT * FROM customers;
INSERT INTO products
(product_name, category_id, price, stock_quantity)
VALUES
('Dell Laptop', 1, 75000.00, 20),
('Bluetooth Speaker', 1, 3500.00, 60),
('Wooden Table', 2, 15000.00, 15),
('Gaming Mouse', 1, 2500.00, 80),
('Adidas T-Shirt', 3, 1800.00, 120),
('Smart Watch', 1, 12000.00, 45),
('Study Desk', 2, 9500.00, 18),
('Puma Sneakers', 5, 4500.00, 70),
('Air Conditioner', 1, 42000.00, 12),
('Sofa Set', 2, 55000.00, 8),
('Wireless Earbuds', 1, 6000.00, 90),
('Formal Shirt', 3, 2200.00, 65),
('Cricket Bat', 5, 3000.00, 40),
('Refrigerator', 1, 38000.00, 10);
SELECT COUNT(*) AS total_products
FROM products;
INSERT INTO orders
(customer_id, order_date, order_status)
VALUES
(6, '2025-05-10', 'Delivered'),
(7, '2025-05-12', 'Pending'),
(8, '2025-05-14', 'Delivered'),
(9, '2025-05-15', 'Shipped'),
(10, '2025-05-18', 'Delivered'),
(11, '2025-05-20', 'Cancelled'),
(12, '2025-05-22', 'Delivered'),
(13, '2025-05-24', 'Pending'),
(14, '2025-05-25', 'Delivered'),
(15, '2025-05-27', 'Shipped'),
(16, '2025-05-28', 'Delivered'),
(17, '2025-05-29', 'Pending'),
(18, '2025-05-30', 'Delivered'),
(19, '2025-06-01', 'Delivered'),
(20, '2025-06-03', 'Shipped');
SELECT COUNT(*) AS total_orders
FROM orders;
INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
VALUES
(6, 7, 1, 75000.00),
(7, 8, 1, 3500.00),
(8, 9, 2, 15000.00),
(9, 10, 1, 2500.00),
(10, 11, 3, 1800.00),
(11, 12, 1, 12000.00),
(12, 13, 1, 9500.00),
(13, 14, 2, 4500.00),
(14, 15, 1, 42000.00),
(15, 16, 1, 55000.00),
(16, 17, 2, 6000.00),
(17, 18, 3, 2200.00),
(18, 19, 1, 3000.00),
(19, 20, 1, 38000.00),
(20, 6, 2, 5000.00);
SELECT COUNT(*) AS total_order_items
FROM order_items;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
