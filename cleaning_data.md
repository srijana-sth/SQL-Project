{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red33\green255\blue255;\red255\green255\blue255;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c0\c99144\c100000;\cssrgb\c100000\c100000\c100000;
}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww29200\viewh16180\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b\fs28 \cf0 What issues will you address by cleaning the data?
\f1\b0\fs24 \
\

\f0\b Fix Unit Price Scaling: 
\f1\b0 The unitprice in the products table appears too large and needs to be scaled down (e.g., divide by 1,000,000).\
\

\f0\b Remove Redundant Table:
\f1\b0  The sales_by_sku table is redundant because the same data exists in sales_report, so it can be dropped.\
\

\f0\b Clean Category and City Fields:
\f1\b0  Remove or exclude placeholder or invalid values like "$\{escCatTitle\}" and "(not set)" for meaningful analysis.\
\

\f0\b Group by Country Only:
\f1\b0  When city data is inconsistent or missing, aggregate only by country to maintain analysis accuracy.\
\
\

\f0\b\fs28 Queries:\
Below, provide the SQL queries you used to clean your data.
\f1\b0\fs24 \
\
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\pardirnatural\partightenfactor0
\ls1\ilvl0
\f0\b \cf0 {\listtext	1.	}Scale Down Unit Price in products Table\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f1\b0 \cf0 	\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \cb2 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\fi757\pardirnatural\partightenfactor0
\cf3 UPDATE\cf4  products\
\cf3 SET\cf4  unitprice = unitprice / 1000000.0\
\cf3 WHERE\cf4  unitprice > 1000;  \cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \cb1 \

\f0\b 2. Remove Redundant Table
\f1\b0 \
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li735\fi-25\pardirnatural\partightenfactor0
\cf3 \cb2 DROP TABLE IF EXISTS \cf4 sales_by_sku\cf0 \cb1 ;\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \

\f0\b 3. Clean $\{escCatTitle\} and (not set) from Product Categories and Cities
\f1\b0 \
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\fi716\pardirnatural\partightenfactor0
\cf3 \cb2 SELECT\cf4  * \cf3 FROM\cf4  all_sessions\
\cf3 WHERE\cf4  v2productcategory \cf3 NOT IN\cf4  ('$\{escCatTitle\}', '(not set)')\
 \cf3 AND\cf4  city \cf3 NOT IN\cf4  ('(not set)', 'not available in demo dataset')\cf0 \cb1 \
\

\f0\b Extract data where the total revenue is not null
\f1\b0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\fi809\pardirnatural\partightenfactor0
\cf3 \cb2 SELECT\cf4 \
productsku,country, city, fullvisitorid, transactionrevenue, totaltransactionrevenue, productquantity, productprice,productrevenue \
\cf3 FROM\cf4  all_sessions\
\cf3 WHERE\cf4  totaltransactionrevenue \cf3 IS NOT NULL \
AND \cf4 productquantity IS NOT NULL\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \cb1 \

\f0\b 4. Aggregate 
\f1\b0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\fi706\pardirnatural\partightenfactor0
\cf0 \

\f0\b Revenue by country only (Skip country when needed
\f1\b0 \
\cf3 \cb2 SELECT \cf4 *\cf0 \
\cf3 FROM\cf0  \cf4 all_sessions\cf0 \
\cf3 WHERE\cf0  \cf4 transactionrevenue\cf0  \cf3 IS NOT NULL\cf0 \
 \cf3 AND\cf4  country \cf3 IS NOT NULL\cf0 \
\cf3 GROUP BY\cf0  \cf4 country\cf0 \
\cf3 ORDER BY\cf4  total_revenue\cf0  \cf3 DESC;\cf0 \cb1 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\fi809\pardirnatural\partightenfactor0
\cf0 \
\

\f0\b Revenue in analytic and removing null value
\f1\b0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\fi809\pardirnatural\partightenfactor0
\cf4 \cb2 SELECT \
    channelgrouping,\
    \cf3 SUM\cf4 (revenue) \cf3 AS\cf4  total_revenue\
\cf3 FROM\cf4  analytics\
\cf3 WHERE\cf4  revenue \cf3 IS NOT NULL\cf4 \
\cf3 GROUP BY\cf4  channelgrouping\
\cf3 ORDER BY\cf4  total_revenue \cf3 DESC\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \cb1 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\fi809\pardirnatural\partightenfactor0
\cf0 \
}