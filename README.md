📌 Project Overview

The RetailSalesDB project is a comprehensive SQL-based Retail Sales Management System designed to simulate real-world retail operations.
It focuses on database design, data integrity, advanced SQL querying, and business analytics.
The project demonstrates how customer transactions, product sales, payments, and revenue reporting can be efficiently managed using MySQL.

🎯 Objectives

Design a normalized relational database for a retail business
Manage customer, product, order, and payment data
Perform business-driven SQL analysis
Implement automation using triggers and stored procedures
Generate sales, revenue, and customer insights

🛠 Tools & Technologies

Database: MySQL
SQL Concepts:
Joins (INNER, LEFT)
Subqueries
Views
Triggers
Stored Procedures
Aggregate functions
GROUP BY & HAVING
Date functions

🗂 Database Schema

The database consists of 5 core tables:
Customers – Customer details (name, contact, address)
Products – Product catalog with category, price, and stock
Orders – Customer order transactions
OrderDetails – Line-level product details per order
Payments – Payment information and modes
Primary and foreign keys ensure referential integrity across the system.

🔄 Project Workflow

Created database RetailSalesDB
Designed relational tables with keys and constraints
Inserted realistic sample data:
50 customers
40+ products
60+ orders

Performed analytical queries for business insights

Created views for reporting
Implemented trigger for stock updates
Built stored procedure to automate order placement
🧮 SQL Analysis & Business Insights
📊 Customer & Sales Analysis

Identified Top 5 customers by total spending
Found customers who spent above average
Detected repeat customers (multiple orders)
Listed customers with no orders

📦 Product Analysis

Product-wise total quantity sold
Identified top-selling products
Found products never ordered
Determined most popular product category
Products sold above average quantity

💰 Revenue & Time Analysis

Date-wise sales analysis
Monthly revenue trends
Month-wise sales report

💳 Payment Analysis

Total revenue collected
Payment mode-wise revenue distribution
Orders paid using UPI

⚙️ Advanced SQL Features Used
🔹 Views

TopSellingProducts – Displays products with highest sales
MonthlyRevenue – Summarizes revenue month-wise

🔹 Trigger

Automatically updates product stock quantity after a new order is placed

🔹 Stored Procedure

AddOrder procedure to:
Insert new orders
Calculate order total dynamically
Insert order details automatically

📈 Key Outcomes

Built a realistic retail database system
Automated inventory updates using triggers
Simplified order placement using stored procedures
Generated actionable business insights using SQL

🧠 Conclusion

This project showcases end-to-end SQL expertise, including:
Database design
Data manipulation
Business analytics
Automation and optimization

It reflects how SQL is used in real retail and e-commerce systems to support decision-making.

🚀 Future Enhancements

Add indexes for performance optimization
Implement role-based user access
Integrate with Power BI for visualization
Add stored procedures for returns and refunds

👤 Author

Vishal
SQL Developer | Data Analyst
Skills: SQL, Database Design, Business Analytics
