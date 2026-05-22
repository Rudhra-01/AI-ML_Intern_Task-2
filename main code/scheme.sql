CREATE DATABASE sales_analytics;
USE sales_analytics;
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE
);
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10,2),
    stock_quantity INT,

    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);
