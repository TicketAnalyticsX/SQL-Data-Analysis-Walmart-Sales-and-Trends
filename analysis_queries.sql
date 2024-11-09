--1. Product and Revenue Analysis

--Which product line generates the highest revenue?

SELECT 
    product_line, 
    SUM(total) AS total_revenue
FROM 
    sales
GROUP BY 
    product_line
ORDER BY 
    total_revenue DESC
LIMIT 1;

--What are the top 5 best-selling products based on quantity sold?
SELECT 
    product_line, 
    SUM(quantity) AS total_quantity_sold
FROM 
    sales
GROUP BY 
    product_line
ORDER BY 
    total_quantity_sold DESC
LIMIT 5;

--Are there specific product lines that perform better in certain cities?
SELECT 
    city, 
    product_line, 
    SUM(total) AS total_revenue
FROM 
    sales
GROUP BY 
    city, product_line
ORDER BY 
    city, total_revenue DESC;



--2. Customer Behavior Analysis


--Do members spend more on average per transaction compared to normal customers?
SELECT 
    customer_type, 
    AVG(total) AS avg_spending_per_transaction
FROM 
    sales
GROUP BY 
    customer_type
ORDER BY 
    avg_spending_per_transaction DESC;

--What is the average transaction value by gender, and does it vary significantly?
SELECT 
    gender, 
    AVG(total) AS avg_transaction_value
FROM 
    sales
GROUP BY 
    gender
ORDER BY 
    avg_transaction_value DESC;

--How does customer spending differ across payment methods?
SELECT 
    payment, 
    AVG(total) AS avg_spending_per_transaction,
    SUM(total) AS total_spending
FROM 
    sales
GROUP BY 
    payment
ORDER BY 
    total_spending DESC;



--3. Sales Trends and Patterns


--What are the peak sales days of the week and hours of the day?
--Peak Sales Days of the Week
SELECT 
    DAYNAME(date) AS day_of_week, 
    SUM(total) AS total_sales
FROM 
    sales
GROUP BY 
    day_of_week
ORDER BY 
    total_sales DESC;

--Peak Sales Hours of the Day
SELECT 
    HOUR(time) AS hour_of_day, 
    SUM(total) AS total_sales
FROM 
    sales
GROUP BY 
    hour_of_day
ORDER BY 
    total_sales DESC;

--Are there any seasonal trends in sales over the months?
SELECT 
    MONTHNAME(date) AS month, 
    SUM(total) AS total_sales
FROM 
    sales
GROUP BY 
    month
ORDER BY 
    MONTH(date);

--Which city branch is the most profitable?
SELECT 
    city, 
    branch, 
    SUM(gross_income) AS total_profit
FROM 
    sales
GROUP BY 
    city, branch
ORDER BY 
    total_profit DESC
LIMIT 1;


--4. Customer Experience


--What is the average customer rating, and how does it vary by product line?
SELECT 
    product_line, 
    AVG(rating) AS avg_customer_rating
FROM 
    sales
GROUP BY 
    product_line
ORDER BY 
    avg_customer_rating DESC;

--Is there a correlation between product line and customer rating?
SELECT 
    product_line, 
    AVG(rating) AS avg_customer_rating
FROM 
    sales
GROUP BY 
    product_line
ORDER BY 
    avg_customer_rating DESC;

--Are certain product lines or cities associated with higher customer satisfaction?
-Average Customer Rating by Product Line
SELECT 
    product_line, 
    AVG(rating) AS avg_customer_rating
FROM 
    sales
GROUP BY 
    product_line
ORDER BY 
    avg_customer_rating DESC;

--Average Customer Rating by City
SELECT 
    city, 
    AVG(rating) AS avg_customer_rating
FROM 
    sales
GROUP BY 
    city
ORDER BY 
    avg_customer_rating DESC;


--5. Operational Efficiency


--Which payment methods are most commonly used and preferred by high-spending customers?
SELECT 
    payment, 
    COUNT(*) AS transaction_count
FROM 
    sales
GROUP BY 
    payment
ORDER BY 
    transaction_count DESC;

--What is the distribution of sales based on gross margin percentage, and are there product lines with significantly higher margins?
SELECT 
    payment, 
    AVG(total) AS avg_spending_per_transaction,
    SUM(total) AS total_spending
FROM 
    sales
GROUP BY 
    payment
ORDER BY 
    avg_spending_per_transaction DESC;

