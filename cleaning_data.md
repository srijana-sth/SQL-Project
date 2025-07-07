What issues will you address by cleaning the data?

Fix Unit Price Scaling: The unitprice in the products table appears too large and needs to be scaled down (e.g., divide by 1,000,000).

Remove Redundant Table: The sales_by_sku table is redundant because the same data exists in sales_report, so it can be dropped.

Clean Category and City Fields: Remove or exclude placeholder or invalid values like "${escCatTitle}" and "(not set)" for meaningful analysis.

Group by Country Only: When city data is inconsistent or missing, aggregate only by country to maintain analysis accuracy.


Queries:
Below, provide the SQL queries you used to clean your data.

	1.	Scale Down Unit Price in products Table
	

UPDATE products
SET unitprice = unitprice / 1000000.0
WHERE unitprice > 1000;  

2. Remove Redundant Table

DROP TABLE IF EXISTS sales_by_sku;

3. Clean ${escCatTitle} and (not set) from Product Categories and Cities

SELECT * FROM all_sessions
WHERE v2productcategory NOT IN ('${escCatTitle}', '(not set)')
 AND city NOT IN ('(not set)', 'not available in demo dataset')

Extract data where the total revenue is not null
SELECT
productsku,country, city, fullvisitorid, transactionrevenue, totaltransactionrevenue, productquantity, productprice,productrevenue 
FROM all_sessions
WHERE totaltransactionrevenue IS NOT NULL 
AND productquantity IS NOT NULL

4. Aggregate 

Revenue by country only (Skip country when needed
SELECT *
FROM all_sessions
WHERE transactionrevenue IS NOT NULL
 AND country IS NOT NULL
GROUP BY country
ORDER BY total_revenue DESC;


Revenue in analytic and removing null value
SELECT 
    channelgrouping,
    SUM(revenue) AS total_revenue
FROM analytics
WHERE revenue IS NOT NULL
GROUP BY channelgrouping
ORDER BY total_revenue DESC



