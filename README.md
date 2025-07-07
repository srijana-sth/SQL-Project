{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fswiss\fcharset0 Helvetica-Bold;\f2\froman\fcharset0 Times-Roman;
}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{circle\}}{\leveltext\leveltemplateid2\'01\uc0\u9702 ;}{\levelnumbers;}\fi-360\li1440\lin1440 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid101\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid2}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}}
\margl1440\margr1440\vieww29200\viewh16200\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs30 \cf0 # Final-Project-Transforming-and-Analyzing-Data-with-SQL
\fs24 \
\

\f1\b\fs28 ## Project/Goals
\f0\b0\fs24 \
\pard\pardeftab720\partightenfactor0
\cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 The goal of this project was to extract meaningful insights from raw eCommerce data using SQL. This involved cleaning, transforming, and analyzing large datasets to uncover trends in product performance, customer behavior, and revenue generation.\kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \

\f1\b\fs28 ## Process
\f0\b0\fs24 \
\
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\slleading20\sb60\sa40\pardirnatural\partightenfactor0
\ls1\ilvl0\cf0 {\listtext	\uc0\u8226 	}Downloaded the csv file\
{\listtext	\uc0\u8226 	}Created database ecommerce \
{\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Designed and created tables: 
\fs26 all_sessions, analytics
\fs24 , 
\fs26 products
\fs24 ,  
\fs26 sales_by_sku
\fs24 , 
\fs26 sales_report
\fs24 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
{\listtext	\uc0\u8226 	}Imported the data in database\
{\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Performed data cleaning:\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\slleading20\sb60\sa40\partightenfactor0
\ls1\ilvl1\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u9702 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 extracted the data by filtering the null value as needed (excluded null values in revenue, city etc)\
\ls1\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u9702 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Dropped redundant table 
\fs26 sales_by_sku
\fs24  as its data was in 
\fs26 sales_report
\fs24 .\
\pard\tx220\tx720\pardeftab720\li720\fi-720\slleading20\sb60\sa40\partightenfactor0
\ls1\ilvl0\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Ran multiple SQL queries to explore and summarize insights.
\f2 \
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\pardirnatural\partightenfactor0
\ls1\ilvl0
\f0 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \

\f1\b\fs28 ## Results
\f0\b0\fs24 \
\pard\pardeftab720\sa240\partightenfactor0

\f1\b \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Top Revenue Channels:
\f0\b0  Identified which channels contributed the most to overall transaction revenue.\

\f1\b User Engagement:
\f0\b0  Found that users who stayed longer and viewed more pages were more likely to generate revenue.\

\f1\b Inventory Issues:
\f0\b0 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls2\ilvl0\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Detected products with high demand but low stock levels (restocking candidates).\
\ls2\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Identified overstocked products with low sales \'97 potential discount candidates.\
\pard\pardeftab720\sa240\partightenfactor0

\f1\b \cf0 Best-Selling Products:
\f0\b0  Identified SKUs with the highest total orders.\

\f1\b Geographic Trends:
\f0\b0  Summarized revenue by country and city, highlighting top-performing regions.\

\f1\b Product Category Analysis:
\f0\b0  Noted specific product types that perform better in different regions.
\f2 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \

\f1\b\fs28 ## Challenges 
\f0\b0\fs24 \
\pard\pardeftab720\sa240\partightenfactor0

\f1\b \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Data Import Errors:
\f0\b0  Faced issues with CSV imports due to data type mismatches (e.g., large 
\fs26 \strokec2 BIGINT
\fs24 \strokec2  values for 
\fs26 \strokec2 fullvisitorid
\fs24 \strokec2 ).\

\f1\b Placeholder Values:
\f0\b0  Encountered unusable placeholder values like 
\fs26 \strokec2 "$\{escCatTitle\}"
\fs24 \strokec2 , which required filtering or exclusion.\

\f1\b Data Inconsistency:
\f0\b0  Some city fields were incomplete or anonymized, affecting geographic analysis.\

\f1\b Redundant Data:
\f0\b0  Required decision-making on which tables to keep (e.g., merging 
\fs26 \strokec2 sales_by_sku
\fs24 \strokec2  into 
\fs26 \strokec2 sales_report
\fs24 \strokec2 ).
\f2 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \

\f1\b\fs28 ## Future Goals
\f0\b0\fs24 \
\
\pard\pardeftab720\sa240\partightenfactor0
\cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Create 
\f1\b views and dashboards
\f0\b0  for real-time product performance tracking.\
Automate the 
\f1\b data cleaning process
\f0\b0  using views and stored procedures.\
Perform 
\f1\b time-series analysis
\f0\b0  of sales and user activity.\
I
\f2 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
}