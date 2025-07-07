Answer the following questions and provide the SQL queries used to find the answer.

    
**Question 1: Which cities and countries have the highest level of transaction revenues on the site?**

SQL Queries:

SELECT
	city,
	country,
	SUM(transactionrevenue)
FROM all_sessions
WHERE transactionrevenue IS NOT NULL
GROUP BY country, city
ORDER BY SUM(transactionrevenue)



Answer: There was data where the city was not mentioned. Query result as follows:

“not available in demo dataset"		"United States"		2190950000
"Sunnyvale"				"United States"		200000000



**Question 2: What is the average number of products ordered from visitors in each city and country?**

SQL Queries:

SELECT country, city, ROUND(AVG(productquantity),2) from all_sessions
WHERE productquantity IS NOT NULL
GROUP BY country,city
ORDER BY country,city ASC



Answer:

"Argentina"		"not available in demo dataset"	1.00
"Canada"		"not available in demo dataset"	1.00
"Colombia"		"not available in demo dataset"	1.00
"Finland"		"not available in demo dataset"	1.00
"France"		"not available in demo dataset"	1.00
"India"			"Bengaluru"				1.00
"Ireland"		"Dublin"				1.00
"Mexico"		"not available in demo dataset"	1.00
"Spain"		"Madrid"				10.00
"United States"	"(not set)"				1.00
"United States"	"Ann Arbor"				1.00
"United States"	"Atlanta"				4.00
"United States"	"Chicago"				1.00
"United States"	"Columbus"				1.00
"United States"	"Dallas"				1.00
"United States"	"Detroit"				1.00
"United States"	"Houston"				2.00
"United States"	"Los Angeles"			1.00
"United States"	"Mountain View"			1.00
"United States"	"New York"				1.17
"United States"	"Palo Alto"				1.00
"United States"	"Salem"				8.00
"United States"	"San Francisco"			1.00
"United States"	"San Jose"				1.00
"United States"	"Seattle"				1.00
"United States"	"Sunnyvale"				1.00
"United States"	"not available in demo dataset"	10.58


**Question 3: Is there any pattern in the types (product categories) of products ordered from visitors in each city and country?**

SQL Queries:

SELECT 
    country,
    city,
    v2productcategory AS product_category,
    SUM(productquantity) AS total_quantity_ordered
FROM 
    all_sessions
WHERE 
    productquantity IS NOT NULL
GROUP BY 
    country,
    city,
    v2productcategory
ORDER BY 
    country,
    city,
    total_quantity_ordered DESC;


Answer: United States dominates overall activity. Most sold item is Journal in United States but the city name is not avaliable. Another item most ordered is bag in unknown city.


"Argentina"	"not available in demo dataset"	"Home/Bags/Backpacks/"		1
"Canada"	"not available in demo dataset"	"Home/Shop by Brand/YouTube/"	1
"Canada"	"not available in demo dataset"	"Home/Apparel/Kid's/Kids-Youth/"	1
"Canada"	"not available in demo dataset"	"${escCatTitle}"	1
"Colombia"	"not available in demo dataset"	"Home/Apparel/Men's/Men's-T-Shirts/"	1
"Finland"	"not available in demo dataset"	"${escCatTitle}"	1
"France"	"not available in demo dataset"	"Headgear"	1
"India"	"Bengaluru"	"Apparel"	1
"Ireland"	"Dublin"	"Home/Bags/"	1
"Mexico"	"not available in demo dataset"	"(not set)"	1
"Spain"	"Madrid"	"${escCatTitle}"	10
"United States"	"(not set)"	"${escCatTitle}"	1
"United States"	"Ann Arbor"	"Home/Apparel/Men's/Men's-T-Shirts/"	1
"United States"	"Atlanta"	"Bags"	4
"United States"	"Chicago"	"Lifestyle"	1
"United States"	"Columbus"	"(not set)"	1
"United States"	"Dallas"	"Home/Shop by Brand/YouTube/"	1
"United States"	"Detroit"	"Drinkware"	1
"United States"	"Houston"	"${escCatTitle}"	2
"United States"	"Los Angeles"	"Home/Apparel/Men's/Men's-Outerwear/"	1
"United States"	"Mountain View"	"Home/Nest/Nest-USA/"	3
"United States"	"Mountain View"	"Nest-USA"	1
"United States"	"Mountain View"	"${escCatTitle}"	1
"United States"	"Mountain View"	"Apparel"	1
"United States"	"Mountain View"	"Home/Apparel/Women's/Women's-Outerwear/"	1
"United States"	"New York"	"Home/Nest/Nest-USA/"	2
"United States"	"New York"	"(not set)"	1
"United States"	"New York"	"Home/Apparel/Men's/"	1
"United States"	"New York"	"Home/Apparel/Men's/Men's-T-Shirts/"	1
"United States"	"New York"	"Home/Shop by Brand/YouTube/"	1
"United States"	"New York"	"${escCatTitle}"	1
"United States"	"Palo Alto"	"Home/Nest/Nest-USA/"	1
"United States"	"Salem"	"(not set)"	8
"United States"	"San Francisco"	"Home/Nest/Nest-USA/"	1
"United States"	"San Francisco"	"Nest-USA"	1
"United States"	"San Jose"	"Home/Nest/Nest-USA/"	1
"United States"	"Seattle"	"Home/Nest/Nest-USA/"	1
"United States"	"Sunnyvale"	"Home/Nest/Nest-USA/"	1
"United States"	"Sunnyvale"	"Nest-USA"	1
"United States"	"not available in demo dataset"	"Home/Office/Notebooks & Journals/"	65
"United States"	"not available in demo dataset"	"Bags"	50
"United States"	"not available in demo dataset"	"Home/Nest/Nest-USA/"	3
"United States"	"not available in demo dataset"	"${escCatTitle}"	3
"United States"	"not available in demo dataset"	"Electronics"	2
"United States"	"not available in demo dataset"	"Office"	1
"United States"	"not available in demo dataset"	"Home/Apparel/Headgear/"	1
"United States"	"not available in demo dataset"	"Home/Apparel/Men's/"	1
"United States"	"not available in demo dataset"	"Nest-USA"	1





**Question 4: What is the top-selling product from each city/country? Can we find any pattern worthy of noting in the products sold?**

SQL Queries:

SELECT productname, country, city, product_category, total_quantity_ordered
FROM (
    SELECT p.name AS productname, ass.country, ass.city, ass.v2productcategory AS product_category,
        SUM(ass.productquantity) AS total_quantity_ordered,
        RANK() OVER (
            PARTITION BY ass.country, ass.city 
            ORDER BY SUM(ass.productquantity) DESC
        ) AS rank
    FROM 
        all_sessions ass
    JOIN 
        products p ON ass.productsku = p.productsku
    WHERE 
        ass.productquantity IS NOT NULL
    GROUP BY 
        p.name, ass.country, ass.city, ass.v2productcategory
) AS ranked_products
WHERE rank = 1
ORDER BY country, city;



Answer: There are the missing of the city name of United States. There are some categories which is not named correctly like ${escCatTitle}" and (not set) but from the product name taken from the product table we can have general idea

"productname"
"country"
"city"
"product_category"
"total_quantity_ordered"
" Alpine Style Backpack"
"Argentina"
"not available in demo dataset"
"Home/Bags/Backpacks/"
1
" Twill Cap"
"Canada"
"not available in demo dataset"
"Home/Shop by Brand/YouTube/"
1
" Youth Short Sleeve T-shirt Green"
"Canada"
"not available in demo dataset"
"Home/Apparel/Kid's/Kids-Youth/"
1
" Men's Short Sleeve Hero Tee Black"
"Colombia"
"not available in demo dataset"
"Home/Apparel/Men's/Men's-T-Shirts/"
1
" Laptop and Cell Phone Stickers"
"Finland"
"not available in demo dataset"
"${escCatTitle}"
1
"Android Wool Heather Cap Heather/Black"
"France"
"not available in demo dataset"
"Headgear"
1
" Laptop Backpack"
"Ireland"
"Dublin"
"Home/Bags/"
1
" Dress Socks"
"Spain"
"Madrid"
"${escCatTitle}"
10
"Android Wool Heather Cap Heather/Black"
"United States"
"(not set)"
"${escCatTitle}"
1
" Men's Vintage Badge Tee Black"
"United States"
"Ann Arbor"
"Home/Apparel/Men's/Men's-T-Shirts/"
1
" Sunglasses"
"United States"
"Chicago"
"Lifestyle"
1
" Men's Short Sleeve Badge Tee Charcoal"
"United States"
"Columbus"
"(not set)"
1
" Leatherette Notebook Combo"
"United States"
"Dallas"
"Home/Shop by Brand/YouTube/"
1
" 22 oz Water Bottle"
"United States"
"Detroit"
"Drinkware"
1
" Sunglasses"
"United States"
"Houston"
"${escCatTitle}"
2
" Men's Pullover Hoodie Grey"
"United States"
"Los Angeles"
"Home/Apparel/Men's/Men's-Outerwear/"
1
" Protect Smoke + CO White Battery Alarm-USA"
"United States"
"Mountain View"
"Home/Nest/Nest-USA/"
1
" Women's Convertible Vest-Jacket Black"
"United States"
"Mountain View"
"${escCatTitle}"
1
" Women's Quilted Insulated Vest Black"
"United States"
"Mountain View"
"Home/Apparel/Women's/Women's-Outerwear/"
1
" Men's Bike Short Sleeve Tee Charcoal"
"United States"
"Mountain View"
"Apparel"
1
" Learning Thermostat 3rd Gen-USA - Stainless Steel"
"United States"
"Mountain View"
"Nest-USA"
1
" Learning Thermostat 3rd Gen-USA - Stainless Steel"
"United States"
"Mountain View"
"Home/Nest/Nest-USA/"
1
" Protect Smoke + CO White Wired Alarm-USA"
"United States"
"New York"
"Home/Nest/Nest-USA/"
2
" Learning Thermostat 3rd Gen-USA - Stainless Steel"
"United States"
"Palo Alto"
"Home/Nest/Nest-USA/"
1
"Red Spiral  Notebook"
"United States"
"Salem"
"(not set)"
8
" Cam Outdoor Security Camera - USA"
"United States"
"San Francisco"
"Nest-USA"
1
" Cam Indoor Security Camera - USA"
"United States"
"San Jose"
"Home/Nest/Nest-USA/"
1
" Cam Indoor Security Camera - USA"
"United States"
"Seattle"
"Home/Nest/Nest-USA/"
1
" Cam Outdoor Security Camera - USA"
"United States"
"Sunnyvale"
"Home/Nest/Nest-USA/"
1
" Cam Indoor Security Camera - USA"
"United States"
"Sunnyvale"
"Nest-USA"
1
"Leatherette Journal"
"United States"
"not available in demo dataset"
"Home/Office/Notebooks & Journals/"
65





**Question 5: Can we summarize the impact of revenue generated from each city/country?**

SQL Queries:

SELECT 
    country,
    city,
    SUM(an.revenue) AS total_revenue,
    ROUND(
        CAST(SUM(an.revenue) * 100.0 / SUM(SUM(an.revenue)) OVER () AS numeric),
        2
    ) AS revenue_percentage
FROM 
    all_sessions s
	JOIN analytics an  ON s.fullvisitorid = an.fullvisitorid
WHERE 
    an.revenue IS NOT NULL
GROUP BY 
    country, city
ORDER BY 
    total_revenue DESC;

Answer: As there are 2 revenues “transaction revenue” and “product revenue”. Instead of these 2 revenues I decided to take revenue which is in “analytic” table and extracted city and country by joining 2 tables using “fullvisitorid. As per this the result is as below

"country"
"city"
"total_revenue"
"revenue_percentage"
"United States"
"not available in demo dataset"
83024359938
71.67
"United States"
"Mountain View"
10549489996
9.11
"United States"
"San Bruno"
4230990000
3.65
"United States"
"New York"
3485789992
3.01
"United States"
"Sunnyvale"
3039259992
2.62
"United States"
"Chicago"
1383630000
1.19
"United States"
"Charlotte"
1161389993
1.00
"United States"
"Kirkland"
1103520000
0.95
"United States"
"San Francisco"
987449998
0.85
"United States"
"Los Angeles"
942999999
0.81
"United States"
"Jersey City"
933850000
0.81
"United States"
"Austin"
861549996
0.74
"United States"
"Seattle"
796899997
0.69
"United States"
"Palo Alto"
709000000
0.61
"United States"
"Milpitas"
494300000
0.43
"Canada"
"Toronto"
487670000
0.42
"United States"
"Ann Arbor"
442219999
0.38
"United States"
"Salem"
346020000
0.30
"United States"
"San Jose"
239740000
0.21
"United States"
"Cambridge"
165420000
0.14
"United States"
"Fremont"
124000000
0.11
"United States"
"Atlanta"
83000000
0.07
"United States"
"South San Francisco"
82420000
0.07
"Germany"
"not available in demo dataset"
69980000
0.06
"United States"
"Denver"
41980000
0.04
"Japan"
"Yokohama"
30880000
0.03
"Switzerland"
"Zurich"
16990000
0.01







