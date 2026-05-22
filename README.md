# SQL Sales Analytics Project
SQL-based Sales Analytics project built using MySQL to analyze customers, products, orders, revenue, and business performance using real-world analytics queries.
---
## Project Overview
This project simulates a real e-commerce sales database system where business data is stored, managed, and analyzed using SQL.

The project focuses on:

- Database Design
- Data Modeling
- SQL Analytics
- Business KPI Reporting
- Query Optimization
- Advanced SQL Concepts
---
## Database Technologies

- MySQL Workbench
- SQL
---
## Database Schema
The project contains the following tables:
### customers
Stores customer information.
### categories
Stores product categories.
### products
Stores product details and inventory.
### orders
Stores order-level transaction data.
### order_items
Stores products included in each order.

---

## Entity Relationship Flow

customers → orders → order_items ← products ← categories

---

## Features

- Relational Database Design
- Primary & Foreign Keys
- Sales Analytics Queries
- Revenue Analysis
- Customer Insights
- Product Performance Analysis
- SQL Views
- Window Functions
- CTE (Common Table Expressions)
- Query Optimization
- Indexing

---

## SQL Concepts Used

### Joins
- INNER JOIN

### Aggregate Functions
- SUM()
- COUNT()
- AVG()

### Grouping
- GROUP BY
- HAVING

### Advanced SQL
- CASE Statements
- Window Functions
- CTE
- Views
- Indexes
- EXPLAIN

---

## Sample Analytics Queries

### Total Revenue

```sql
SELECT
SUM(quantity * unit_price) AS total_revenue
FROM order_items;

## Learning Outcomes

Relational Database Design
SQL Analytics
Business KPI Analysis
Query Optimization
Data Relationships
SQL Reporting
Database Performance Tuning
