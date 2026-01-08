-- Creating Database---
Create database Zara_Sales;
use Zara_Sales;

-- Schemas --
#Customer Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    gender VARCHAR(10),
    age INT,
    country VARCHAR(50)
);

#Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

#Stores Table
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_type VARCHAR(50),
    region VARCHAR(50)
);

#Sales_Fact Table (Main Transaction Table)
CREATE TABLE sales_fact (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    store_id INT,
    quantity INT,
    sale_date DATE,
    total_amount DECIMAL(10,2)
);

-- Customer table
INSERT INTO customers VALUES
(1, 'Male', 25, 'India'),
(2, 'Female', 30, 'USA'),
(3, 'Female', 22, 'UK'),
(4, 'Male', 35, 'Germany'),
(5, 'Female', 28, 'France');

-- Products Table
INSERT INTO products VALUES
(101, 'Denim Jacket', 'Clothing', 3499.00),
(102, 'Casual Shirt', 'Clothing', 1999.00),
(103, 'Leather Handbag', 'Accessories', 4999.00);

-- Stores Table
INSERT INTO stores VALUES
(201, 'Retail Store', 'Asia'),
(202, 'Online', 'North America'),
(204, 'Outlet', 'Europe');

-- Sales_Fact Table
INSERT INTO sales_fact VALUES
(1001, 1, 101, 201, 1, '2025-01-10', 3499.00),
(1002, 2, 103, 202, 2, '2025-01-12', 9998.00),
(1003, 3, 102, 203, 1, '2025-01-15', 1999.00),
(1004, 4, 104, 204, 1, '2025-01-18', 2999.00),
(1005, 5, 105, 205, 2, '2025-01-20', 5198.00);
