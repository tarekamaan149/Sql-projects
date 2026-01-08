-- Find Total Sales by Country
SELECT 
    c.country,
    SUM(s.total_amount) AS total_sales
FROM sales_fact s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_sales DESC;

-- Identify Top 3 Highest Revenue Products
SELECT 
    p.product_name,
    SUM(s.total_amount) AS product_revenue
FROM sales_fact s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY product_revenue DESC
LIMIT 3;

-- Average Spend per Customer
SELECT 
    c.customer_id,
    AVG(s.total_amount) AS avg_spent
FROM sales_fact s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id;

-- Sales Performance by Store Type
SELECT 
    st.store_type,
    SUM(s.total_amount) AS total_sales
FROM sales_fact s
JOIN stores st ON s.store_id = st.store_id
GROUP BY st.store_type;

-- Monthly Sales Trend
SELECT 
    MONTH(sale_date) AS sale_month,
    SUM(total_amount) AS monthly_sales
FROM sales_fact
GROUP BY MONTH(sale_date)
ORDER BY sale_month;