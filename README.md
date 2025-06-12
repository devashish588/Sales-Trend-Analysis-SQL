🧾 Project Overview

This project analyzes sales performance across different markets using SQL for data extraction and Power BI for visualization. It includes:

SQL database dump

Query-based data insights

Dynamic dashboards for revenue, market, and customer trends

📁 Repository Contents

db_dump.sql — SQL database dump file

Readme.txt — SQL queries for analysis

pdf insights.pdf — Power BI dashboard export

SDA.pbix — Power BI report file (open with Power BI Desktop)

🛠️ Tools & Technologies

SQL (for data querying)

Power BI (for visual analytics)

DAX (for quick measures and KPIs


SQL queries used
1. Show all customer records

    `SELECT * FROM customers;`

2. Show total number of customers

    `SELECT count(*) FROM customers;`

3. Show transactions for Chennai market (market code for chennai is Mark001

    `SELECT * FROM transactions where market_code='Mark001';`

4. Show distrinct product codes that were sold in chennai

    `SELECT distinct product_code FROM transactions where market_code='Mark001';`

5. Show transactions where currency is US dollars

    `SELECT * from transactions where currency="USD"`

6. Show transactions in 2020 join by date table

    `SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;`

7. Show total revenue in year 2020,

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";`
	
8. Show total revenue in year 2020, January Month,

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");`

9. Show total revenue in year 2020 in Chennai

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001";`

📈 Power BI Insights

The Power BI dashboard highlights:

Revenue by Market – Delhi NCR leads with ₹221M

Sales Quantity by Region – Highest in Delhi NCR and Mumbai

Top 5 Products & Customers – Electricalsara Store contributes ~65%

Monthly Revenue Trends – Peaks between May and July 2018

🔧 How to Use

1.Import SQL Dump

2.Open your SQL client (e.g., MySQL Workbench or pgAdmin)

3.Run/import db_dump.sql to load the database

4.Run SQL Queries

5.Use the provided queries from Readme.txt or above to extract insights

6.Open Power BI Report

7.Open SDA.pbix in Power BI Desktop

8.Interact with the dashboards and slicers


