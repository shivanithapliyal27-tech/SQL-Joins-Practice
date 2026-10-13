# SQL Joins Practice Using Microsoft SQL Server

## Project Overview
This project focuses on practicing SQL joins using Microsoft SQL Server and SQL Server Management Studio (SSMS). It demonstrates how to combine related data from multiple tables and perform basic customer and sales analysis.

## Project Objectives
- Understand the difference between INNER JOIN and LEFT JOIN.
- Combine customer and order information using common keys.
- Identify customers who have not placed any orders.
- Calculate the number of orders per customer.
- Analyze total spending and sales by customer.
- Apply filtering, grouping, and aggregate functions in SQL.

## Tools and Technologies
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Transact-SQL (T-SQL)

## Database Structure

### 1. Customers Table
Contains customer information.

| Column | Description |
|---|---|
| CustomerID | Unique customer identifier |
| CustomerName | Name of the customer |
| Country | Customer's country |

### 2. Orders Table
Contains customer order information.

| Column | Description |
|---|---|
| OrderID | Unique order identifier |
| CustomerID | Customer associated with the order |
| OrderDate | Date of the order |
| Amount | Order amount |

The `CustomerID` column connects the Customers and Orders tables.

## SQL Concepts Covered
- INNER JOIN
- LEFT JOIN
- WHERE and IS NULL
- GROUP BY
- HAVING
- COUNT() and SUM()
- COALESCE()
- CASE expressions
- ORDER BY

## Project Tasks
1. Combine customers and orders using INNER JOIN.
2. Display all customers using LEFT JOIN.
3. Compare the row counts of INNER JOIN and LEFT JOIN.
4. Find customers without orders.
5. Count orders per customer.
6. Calculate total spending per customer.
7. Filter orders based on order amount.
8. Summarize sales by country.
9. Identify high-spending customers.
10. Display order details with customer information.
11. Classify customers based on their order status.

## Key Findings
Based on the sample dataset created for this project:
- Five customers and five orders were added.
- Three customers have placed orders.
- Two customers have no orders.
- Aarav Sharma has the highest total spending in the sample, at 5,700.00.
- LEFT JOIN preserves customers even when they have no matching orders.

*Note: These findings relate only to the sample practice dataset and do not represent real business data.*

## Skills Developed
- SQL querying and data retrieval
- Relational database concepts
- Joining multiple tables
- Aggregation and filtering
- Customer and sales analysis
- Data interpretation

## Project Files
- `SQL_Joins_Practice.sql` — SQL queries used in the project.
- `SQL_Joins_Practice_Project_Report.pdf` — Project documentation.
- `Outputs/` — Screenshots or exported results from executed queries.

## Conclusion
This project provided practical experience with SQL joins and relational data analysis in Microsoft SQL Server. It strengthened my understanding of how to combine tables, identify unmatched records, summarize customer spending, and extract meaningful insights from structured data.

