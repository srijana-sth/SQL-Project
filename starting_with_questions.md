{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red33\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;
\red191\green191\blue191;}
{\*\expandedcolortbl;;\cssrgb\c0\c99144\c100000;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;
\csgray\c79525;}
\margl1440\margr1440\vieww29200\viewh16200\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b\fs28 \cf0 Answer the following questions and provide the SQL queries used to find the answer.
\f1\b0\fs24 \
\
    \

\f0\b **Question 1: Which cities and countries have the highest level of transaction revenues on the site?**\

\f1\b0 \

\f0\b SQL Queries:
\f1\b0 \
\
\cf2 \cb3 SELECT\cf4 \
	city,\
	country,\
	\cf2 SUM\cf4 (transactionrevenue)\
\cf2 FROM\cf4  all_sessions\
\cf2 WHERE\cf4  transactionrevenue I\cf2 S NOT NULL\cf4 \
\cf2 GROUP BY\cf4  country, city\
\cf2 ORDER BY\cf4  \cf2 SUM\cf4 (transactionrevenue)\
\
\cf0 \cb1 \
\

\f0\b Answer: 
\f1\b0 There was data where the city was not mentioned. Query result as follows:\
\
\'93not available in demo dataset"		"United States"		2190950000\
"Sunnyvale"				"United States"		200000000\
\
\
\

\f0\b **Question 2: What is the average number of products ordered from visitors in each city and country?**\
\
SQL Queries:
\f1\b0 \
\
\cf2 \cb3 SELECT\cf4  country, city, \cf2 ROUND\cf4 (\cf2 AVG\cf4 (productquantity),2) from all_sessions\
\cf2 WHERE\cf4  productquantity \cf2 IS NOT NULL\cf4 \
\cf2 GROUP BY\cf4  country,city\
\cf2 ORDER BY\cf4  country,city \cf2 ASC\cf4 \
\
\cf0 \cb1 \
\

\f0\b Answer:
\f1\b0 \
\
"Argentina"		"not available in demo dataset"	1.00\
"Canada"		"not available in demo dataset"	1.00\
"Colombia"		"not available in demo dataset"	1.00\
"Finland"		"not available in demo dataset"	1.00\
"France"		"not available in demo dataset"	1.00\
"India"			"Bengaluru"				1.00\
"Ireland"		"Dublin"				1.00\
"Mexico"		"not available in demo dataset"	1.00\
"Spain"		"Madrid"				10.00\
"United States"	"(not set)"				1.00\
"United States"	"Ann Arbor"				1.00\
"United States"	"Atlanta"				4.00\
"United States"	"Chicago"				1.00\
"United States"	"Columbus"				1.00\
"United States"	"Dallas"				1.00\
"United States"	"Detroit"				1.00\
"United States"	"Houston"				2.00\
"United States"	"Los Angeles"			1.00\
"United States"	"Mountain View"			1.00\
"United States"	"New York"				1.17\
"United States"	"Palo Alto"				1.00\
"United States"	"Salem"				8.00\
"United States"	"San Francisco"			1.00\
"United States"	"San Jose"				1.00\
"United States"	"Seattle"				1.00\
"United States"	"Sunnyvale"				1.00\
"United States"	"not available in demo dataset"	10.58\
\
\

\f0\b **Question 3: Is there any pattern in the types (product categories) of products ordered from visitors in each city and country?**
\f1\b0 \
\

\f0\b SQL Queries:
\f1\b0 \
\
\cf2 \cb3 SELECT \cf4 \
    country,\
    city,\
    v2productcategory \cf2 AS\cf4  product_category,\
    SUM(productquantity) \cf2 AS\cf4  total_quantity_ordered\
\cf2 FROM\cf4  \
    all_sessions\
\cf2 WHERE \cf4 \
    productquantity \cf2 IS NOT NULL\cf4 \
\cf2 GROUP BY \cf4 \
    country,\
    city,\
    v2productcategory\
\cf2 ORDER BY \cf4 \
    country,\
    city,\
    total_quantity_ordered \cf2 DESC\cf4 ;\
\cf0 \cb1 \
\

\f0\b Answer: 
\f1\b0 United States dominates overall activity. Most sold item is Journal in United States but the city name is not avaliable. Another item most ordered is bag in unknown city.\
\
\
"Argentina"	"not available in demo dataset"	"Home/Bags/Backpacks/"		1\
"Canada"	"not available in demo dataset"	"Home/Shop by Brand/YouTube/"	1\
"Canada"	"not available in demo dataset"	"Home/Apparel/Kid's/Kids-Youth/"	1\
"Canada"	"not available in demo dataset"	"$\{escCatTitle\}"	1\
"Colombia"	"not available in demo dataset"	"Home/Apparel/Men's/Men's-T-Shirts/"	1\
"Finland"	"not available in demo dataset"	"$\{escCatTitle\}"	1\
"France"	"not available in demo dataset"	"Headgear"	1\
"India"	"Bengaluru"	"Apparel"	1\
"Ireland"	"Dublin"	"Home/Bags/"	1\
"Mexico"	"not available in demo dataset"	"(not set)"	1\
"Spain"	"Madrid"	"$\{escCatTitle\}"	10\
"United States"	"(not set)"	"$\{escCatTitle\}"	1\
"United States"	"Ann Arbor"	"Home/Apparel/Men's/Men's-T-Shirts/"	1\
"United States"	"Atlanta"	"Bags"	4\
"United States"	"Chicago"	"Lifestyle"	1\
"United States"	"Columbus"	"(not set)"	1\
"United States"	"Dallas"	"Home/Shop by Brand/YouTube/"	1\
"United States"	"Detroit"	"Drinkware"	1\
"United States"	"Houston"	"$\{escCatTitle\}"	2\
"United States"	"Los Angeles"	"Home/Apparel/Men's/Men's-Outerwear/"	1\
"United States"	"Mountain View"	"Home/Nest/Nest-USA/"	3\
"United States"	"Mountain View"	"Nest-USA"	1\
"United States"	"Mountain View"	"$\{escCatTitle\}"	1\
"United States"	"Mountain View"	"Apparel"	1\
"United States"	"Mountain View"	"Home/Apparel/Women's/Women's-Outerwear/"	1\
"United States"	"New York"	"Home/Nest/Nest-USA/"	2\
"United States"	"New York"	"(not set)"	1\
"United States"	"New York"	"Home/Apparel/Men's/"	1\
"United States"	"New York"	"Home/Apparel/Men's/Men's-T-Shirts/"	1\
"United States"	"New York"	"Home/Shop by Brand/YouTube/"	1\
"United States"	"New York"	"$\{escCatTitle\}"	1\
"United States"	"Palo Alto"	"Home/Nest/Nest-USA/"	1\
"United States"	"Salem"	"(not set)"	8\
"United States"	"San Francisco"	"Home/Nest/Nest-USA/"	1\
"United States"	"San Francisco"	"Nest-USA"	1\
"United States"	"San Jose"	"Home/Nest/Nest-USA/"	1\
"United States"	"Seattle"	"Home/Nest/Nest-USA/"	1\
"United States"	"Sunnyvale"	"Home/Nest/Nest-USA/"	1\
"United States"	"Sunnyvale"	"Nest-USA"	1\
"United States"	"not available in demo dataset"	"Home/Office/Notebooks & Journals/"	65\
"United States"	"not available in demo dataset"	"Bags"	50\
"United States"	"not available in demo dataset"	"Home/Nest/Nest-USA/"	3\
"United States"	"not available in demo dataset"	"$\{escCatTitle\}"	3\
"United States"	"not available in demo dataset"	"Electronics"	2\
"United States"	"not available in demo dataset"	"Office"	1\
"United States"	"not available in demo dataset"	"Home/Apparel/Headgear/"	1\
"United States"	"not available in demo dataset"	"Home/Apparel/Men's/"	1\
"United States"	"not available in demo dataset"	"Nest-USA"	1\
\
\
\
\
\

\f0\b **Question 4: What is the top-selling product from each city/country? Can we find any pattern worthy of noting in the products sold?**\

\f1\b0 \

\f0\b SQL Queries:
\f1\b0 \
\
\cf2 \cb3 SELECT\cf4  productname, country, city, product_category, total_quantity_ordered\
\cf2 FROM\cf4  (\
    \cf2 SELECT\cf4  p.name AS productname, ass.country, ass.city, ass.v2productcategory AS product_category,\
        \cf2 SUM\cf4 (ass.productquantity) AS total_quantity_ordered,\
        \cf2 RANK\cf4 () \cf2 OVER\cf4  (\
           \cf2  PARTITION BY\cf4  ass.country, ass.city \
            \cf2 ORDER BY SUM\cf4 (ass.productquantity) DESC\
        ) AS rank\
    \cf2 FROM \cf4 \
        all_sessions ass\
   \cf2  JOIN \cf4 \
        products p ON ass.productsku = p.productsku\
    \cf2 WHERE\cf4  \
        ass.productquantity IS NOT NULL\
    \cf2 GROUP BY\cf4  \
        p.name, ass.country, ass.city, ass.v2productcategory\
) \cf2 AS\cf4  ranked_products\
\cf2 WHERE\cf4  rank = 1\
\cf2 ORDER BY\cf4  country, city;\
\cf0 \cb1 \
\
\
Answer: There are the missing of the city name of United States. There are some categories which is not named correctly like $\{escCatTitle\}" and (not set) but from the product name taken from the product table we can have general idea\
\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "productname"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "country"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "city"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "product_category"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "total_quantity_ordered"\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Alpine Style Backpack"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Argentina"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Bags/Backpacks/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Twill Cap"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Canada"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Shop by Brand/YouTube/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Youth Short Sleeve T-shirt Green"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Canada"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Apparel/Kid's/Kids-Youth/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Men's Short Sleeve Hero Tee Black"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Colombia"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Apparel/Men's/Men's-T-Shirts/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Laptop and Cell Phone Stickers"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Finland"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "$\{escCatTitle\}"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Android Wool Heather Cap Heather/Black"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "France"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Headgear"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Laptop Backpack"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Ireland"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Dublin"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Bags/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Dress Socks"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Spain"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Madrid"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "$\{escCatTitle\}"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Android Wool Heather Cap Heather/Black"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "(not set)"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "$\{escCatTitle\}"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Men's Vintage Badge Tee Black"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Ann Arbor"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Apparel/Men's/Men's-T-Shirts/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Sunglasses"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Chicago"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Lifestyle"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Men's Short Sleeve Badge Tee Charcoal"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Columbus"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "(not set)"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Leatherette Notebook Combo"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Dallas"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Shop by Brand/YouTube/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " 22 oz Water Bottle"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Detroit"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Drinkware"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Sunglasses"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Houston"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "$\{escCatTitle\}"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Men's Pullover Hoodie Grey"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Los Angeles"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Apparel/Men's/Men's-Outerwear/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Protect Smoke + CO White Battery Alarm-USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Mountain View"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Nest/Nest-USA/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Women's Convertible Vest-Jacket Black"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Mountain View"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "$\{escCatTitle\}"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Women's Quilted Insulated Vest Black"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Mountain View"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Apparel/Women's/Women's-Outerwear/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Men's Bike Short Sleeve Tee Charcoal"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Mountain View"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Apparel"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Learning Thermostat 3rd Gen-USA - Stainless Steel"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Mountain View"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Nest-USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Learning Thermostat 3rd Gen-USA - Stainless Steel"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Mountain View"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Nest/Nest-USA/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Protect Smoke + CO White Wired Alarm-USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "New York"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Nest/Nest-USA/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Learning Thermostat 3rd Gen-USA - Stainless Steel"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Palo Alto"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Nest/Nest-USA/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Red Spiral  Notebook"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Salem"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "(not set)"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Cam Outdoor Security Camera - USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "San Francisco"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Nest-USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Cam Indoor Security Camera - USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "San Jose"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Nest/Nest-USA/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Cam Indoor Security Camera - USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Seattle"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Nest/Nest-USA/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Cam Outdoor Security Camera - USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Sunnyvale"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Nest/Nest-USA/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Cam Indoor Security Camera - USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Sunnyvale"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Nest-USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth4740\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx1728
\clvertalc \clshdrawnil \clwWidth2480\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx3456
\clvertalc \clshdrawnil \clwWidth3920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx5184
\clvertalc \clshdrawnil \clwWidth5200\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6912
\clvertalc \clshdrawnil \clwWidth3020\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Leatherette Journal"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Home/Office/Notebooks & Journals/"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 65\cell \lastrow\row
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\
\
\
\
**Question 5: Can we summarize the impact of revenue generated from each city/country?**\
\
SQL Queries:\
\cf4 \
\cf2 \cb3 SELECT \cf4 \
    country,\
    city,\
    \cf2 SUM\cf4 (an.revenue) AS total_revenue,\
    \cf2 ROUND(\cf4 \
        \cf2 CAST\cf4 (\cf2 SUM\cf4 (an.revenue) * 100.0 / \cf2 SUM\cf4 (\cf2 SUM\cf4 (an.revenue)) \cf2 OVER\cf4  () AS numeric),\
        2\
    ) AS revenue_percentage\
\cf2 FROM \cf4 \
    all_sessions s\
	\cf2 JOIN\cf4  analytics an  \cf2 ON\cf4  s.fullvisitorid = an.fullvisitorid\
\cf2 WHERE \cf4 \
    an.revenue \cf2 IS NOT NULL\cf4 \
\cf2 GROUP BY \cf4 \
    country, city\
\cf2 ORDER BY \cf4 \
    total_revenue \cf2 DESC\cf4 ;\cf0 \cb1 \
\
Answer: As there are 2 revenues \'93transaction revenue\'94 and \'93product revenue\'94. Instead of these 2 revenues I decided to take revenue which is in \'93analytic\'94 table and extracted city and country by joining 2 tables using \'93fullvisitorid. As per this the result is as below\
\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "country"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "city"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "total_revenue"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "revenue_percentage"\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 83024359938\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 71.67\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Mountain View"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10549489996\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9.11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "San Bruno"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4230990000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3.65\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "New York"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3485789992\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3.01\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Sunnyvale"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3039259992\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2.62\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Chicago"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1383630000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1.19\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Charlotte"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1161389993\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1.00\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Kirkland"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1103520000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.95\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "San Francisco"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 987449998\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.85\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Los Angeles"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 942999999\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.81\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Jersey City"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 933850000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.81\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Austin"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 861549996\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.74\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Seattle"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 796899997\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.69\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Palo Alto"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 709000000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.61\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Milpitas"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 494300000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.43\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Canada"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Toronto"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 487670000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.42\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Ann Arbor"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 442219999\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.38\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Salem"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 346020000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.30\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "San Jose"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 239740000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.21\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Cambridge"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 165420000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.14\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Fremont"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 124000000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Atlanta"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 83000000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.07\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "South San Francisco"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 82420000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.07\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Germany"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "not available in demo dataset"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 69980000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.06\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "United States"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Denver"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 41980000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.04\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Japan"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Yokohama"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 30880000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.03\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2500\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4560\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth2760\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Switzerland"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Zurich"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16990000\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0.01\cell \lastrow\row
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\
\
\
\
\
\
}