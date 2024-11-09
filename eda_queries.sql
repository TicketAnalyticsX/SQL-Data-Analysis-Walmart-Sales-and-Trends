--Baisc Summary Statistics


--Total Sales Records:
SELECT COUNT(*) AS total_records FROM sales;

--Average, Minimum, and Maximum Unit Price:
SELECT 
    AVG(unit_price) AS avg_unit_price, 
    MIN(unit_price) AS min_unit_price, 
    MAX(unit_price) AS max_unit_price 
FROM sales;

--Average Quantity and Total Revenue:
SELECT 
    AVG(quantity) AS avg_quantity, 
    SUM(total) AS total_revenue 
FROM sales;

--Aggregated Data by Key Categories


--Total Revenue by Product Line:
SELECT 
    product_line, 
    SUM(total) AS total_revenue 
FROM sales 
GROUP BY product_line 
ORDER BY total_revenue DESC;

--Revenue by Customer Type:
SELECT 
    customer_type, 
    SUM(total) AS total_revenue 
FROM sales 
GROUP BY customer_type;

-Count of Transactions by Payment Method:
SELECT 
    payment, 
    COUNT(*) AS count 
FROM sales 
GROUP BY payment 
ORDER BY count DESC;


--Time-Based Patterns


--Daily Revenue Trends:
SELECT 
    DATE(date) AS sale_date, 
    SUM(total) AS daily_revenue 
FROM sales 
GROUP BY sale_date 
ORDER BY sale_date;

--Peak Sales Hours:
SELECT 
    HOUR(time) AS sale_hour, 
    SUM(total) AS hourly_revenue 
FROM sales 
GROUP BY sale_hour 
ORDER BY hourly_revenue DESC;


--Customer Demographics


--Revenue by Gender:
SELECT 
    gender, 
    SUM(total) AS total_revenue 
FROM sales 
GROUP BY gender;

