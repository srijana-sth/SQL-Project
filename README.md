# Final-Project-Transforming-and-Analyzing-Data-with-SQL

## Project/Goals
The goal of this project was to extract meaningful insights from raw eCommerce data using SQL. This involved cleaning, transforming, and analyzing large datasets to uncover trends in product performance, customer behavior, and revenue generation.

## Process

	•	Downloaded the csv file
	•	Created database ecommerce 
	•	Designed and created tables: all_sessions, analytics, products,  sales_by_sku, sales_report
	•	Imported the data in database
	•	Performed data cleaning:
	◦	extracted the data by filtering the null value as needed (excluded null values in revenue, city etc)
	◦	Dropped redundant table sales_by_sku as its data was in sales_report.
	•	Ran multiple SQL queries to explore and summarize insights.
	•	

## Results
Top Revenue Channels: Identified which channels contributed the most to overall transaction revenue.
User Engagement: Found that users who stayed longer and viewed more pages were more likely to generate revenue.
Inventory Issues:
	•	Detected products with high demand but low stock levels (restocking candidates).
	•	Identified overstocked products with low sales — potential discount candidates.
Best-Selling Products: Identified SKUs with the highest total orders.
Geographic Trends: Summarized revenue by country and city, highlighting top-performing regions.
Product Category Analysis: Noted specific product types that perform better in different regions.

## Challenges 
Data Import Errors: Faced issues with CSV imports due to data type mismatches (e.g., large BIGINT values for fullvisitorid).
Placeholder Values: Encountered unusable placeholder values like "${escCatTitle}", which required filtering or exclusion.
Data Inconsistency: Some city fields were incomplete or anonymized, affecting geographic analysis.
Redundant Data: Required decision-making on which tables to keep (e.g., merging sales_by_sku into sales_report).

## Future Goals

Create views and dashboards for real-time product performance tracking.
Automate the data cleaning process using views and stored procedures.
Perform time-series analysis of sales and user activity.
I

