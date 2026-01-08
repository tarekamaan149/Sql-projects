-- VIew
CREATE VIEW customer_sales_summary AS
SELECT 
    c.customer_id,
    c.gender,
    c.country,
    SUM(s.total_amount) AS total_spent
FROM customers c
JOIN sales_fact s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.gender, c.country;

select * from customer_sales_summary;

-- Stored Procedure
DELIMITER $$

CREATE PROCEDURE GetSalesByRegion(IN region_name VARCHAR(50))
BEGIN
    SELECT 
        st.region,
        SUM(sf.total_amount) AS total_sales
    FROM sales_fact sf
    JOIN stores st ON sf.store_id = st.store_id
    WHERE st.region = region_name
    GROUP BY st.region;
END $$

DELIMITER ;

CALL GetSalesByRegion('Europe');