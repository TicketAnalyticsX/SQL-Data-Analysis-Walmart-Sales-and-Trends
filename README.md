
# Walmart Sales Data Analysis Project

## Project Overview

This project is part of my Data Analyst Portfolio, showcasing my skills in SQL and data analysis. I analyzed a dataset of Walmart sales transactions to uncover insights into customer behavior, product performance, and sales trends. The analysis answers specific business questions, which are presented along with the SQL queries used.

## Dataset Description

The dataset contains transaction records for Walmart stores, including:
- **Invoice ID**: Unique identifier for each transaction.
- **Branch and City**: Information on store location.
- **Customer Type**: Indicates if the customer is a Member or Normal customer.
- **Gender**: Customer gender information.
- **Product Line**: Product categories.
- **Unit Price and Quantity**: Product pricing and quantity sold.
- **Tax, Total, Cost of Goods Sold (cogs)**: Financial metrics.
- **Date and Time**: When each transaction occurred.
- **Payment Method**: Cash, Credit Card, or Ewallet.
- **Gross Margin Percentage and Gross Income**: Calculated margins and income.
- **Rating**: Customer rating of the purchase experience.

## Objectives and Key Questions

The main objective of this project is to analyze the data to provide insights into sales performance, customer preferences, and business patterns. Key questions include:

1. **What are the top-performing product lines?**
2. **Do members spend more than normal customers?**
3. **What are the most popular payment methods?**
4. **Which store branch performs the best in terms of revenue?**
5. **Are there peak hours or days for sales?**

## Analysis Steps

1. **Data Cleaning**: 
   - Checked for missing values, duplicates, and handled them as necessary.
   - Ensured correct data types for date, time, and numeric fields.

2. **Exploratory Data Analysis**:
   - Calculated summary statistics and explored trends within the data.
   - Aggregated data by product line, customer type, and payment method.

3. **SQL Queries**:
   - Wrote SQL queries to answer each key question.
   - Calculated total sales, customer spending patterns, and revenue distribution across branches.

4. **Insights and Findings**:
   - Highlighted findings for each question, with supporting visuals where necessary.

## Technologies Used

- **SQL**: For querying and analysis.
- **Pandas**: For preliminary data inspection in Python.
- **Visualization Tools** (Optional): Tableau or Excel for creating charts and graphs.

## How to Run the Project

1. Import the dataset into a SQL database (MySQL or PostgreSQL recommended).
2. Run the SQL queries provided in the `queries.sql` file to replicate the analysis.
3. (Optional) Use Tableau or Excel to visualize key insights.

## Project Structure

- **README.md**: Project documentation.
- **WalmartSalesData.csv**: The dataset file.
- ***.sql**: SQL queries used in the analysis.
- **Insights into Weekend Sales and Peak Hours.pdf**: Summary of findings and visualizations (optional).

## Sample SQL Queries

Here's an example query to calculate the total revenue by product line:

```sql
SELECT Product_line, SUM(Total) as Total_Revenue
FROM sales_data
GROUP BY Product_line
ORDER BY Total_Revenue DESC;
```

## Future Improvements

- Expanding analysis to include predictive insights.
- Creating interactive dashboards for real-time sales tracking.
  
## Author

Htoo Aung Kha  
[LinkedIn](https://www.linkedin.com/in/htoo-aung-kha-ab1802325) | [GitHub](https://github.com/TicketAnalyticsX)
