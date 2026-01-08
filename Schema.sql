-- Creating Database---
Create database Zara_Sales;
use Zara_Sales;

-- Schemas --
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

