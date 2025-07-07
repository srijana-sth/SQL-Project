What are your risk areas? Identify and describe them.

	1.	1. Data Quality Issues
	2.	    Missing Values: e.g., NULL in revenue, pageviews, city, or product fields.
	3.	    Inconsistent Categories: e.g., "${escCatTitle}" or "not set" in product category or city.
	4.	    Duplicate Records: Leading to inflated counts or revenues.
	5.	2. Assumptions in Metrics
	6.	    Assuming transactionrevenue is in correct units (sometimes it's in micros).
	7.	   Calculating revenue without adjusting for discounts, returns, or partial transactions.


QA Process:

Describe your QA process and include the SQL queries used to execute it.

1. Retrieve data: Retrieve data from csv to database. By the data create able with correct variable and its type.

2.Checking Missing values:
     
Count NULLs in critical columns
SELECT 
    COUNT(*) FILTER (WHERE transactionrevenue IS NULL) AS null_revenue,
    COUNT(*) FILTER (WHERE productsku IS NULL) AS null_sku,
    COUNT(*) FILTER (WHERE country IS NULL OR city IS NULL) AS null_location
FROM all_sessions;

3. Unusual or Placeholder Values
SELECT DISTINCT v2productcategory FROM all_sessions WHERE v2productcategory LIKE '%${%}';
SELECT DISTINCT city FROM all_sessions WHERE city LIKE '%not set%' OR city LIKE '%not available%';

4.Duplicate check

SELECT productsku, COUNT(*) 
FROM products 
GROUP BY productsku 
HAVING COUNT(*) > 1;


