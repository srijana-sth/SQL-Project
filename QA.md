{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;\f2\fswiss\fcharset0 Helvetica-Oblique;
\f3\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red33\green255\blue255;\red255\green255\blue255;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c0\c99144\c100000;\cssrgb\c100000\c100000\c100000;
}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww29200\viewh16820\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b\fs28 \cf0 What are your risk areas? Identify and describe them.\

\f1\b0\fs24 \
\pard\tx220\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\li720\fi-720\pardirnatural\partightenfactor0
\ls1\ilvl0
\f0\b\fs28 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 {\listtext	1.	}1. Data Quality Issues\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls1\ilvl0
\fs24 \cf0 {\listtext	2.	}    Missing Values:
\f1\b0  e.g., 
\fs26 NULL
\fs24  in revenue, pageviews, city, or product fields.\
\ls1\ilvl0
\f0\b {\listtext	3.	}    Inconsistent Categories:
\f1\b0  e.g., 
\fs26 "$\{escCatTitle\}"
\fs24  or 
\fs26 "not set"
\fs24  in product category or city.\
{\listtext	4.	}    
\f0\b Duplicate Records:
\f1\b0  Leading to inflated counts or revenues.\
\pard\pardeftab720\sa280\partightenfactor0
\ls1\ilvl0
\f0\b\fs28 \cf0 {\listtext	5.	}2. Assumptions in Metrics\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls1\ilvl0
\f1\b0\fs24 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	6.	}    \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Assuming 
\fs26 transactionrevenue
\fs24  is in correct units (sometimes it's in micros).\
\ls1\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	7.	}   \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Calculating revenue without adjusting for 
\f0\b discounts
\f1\b0 , 
\f0\b returns
\f1\b0 , or 
\f0\b partial transactions
\f1\b0 .\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
\

\f0\b\fs28 QA Process:\

\f1\b0\fs24 \

\fs28 Describe your QA process and include the SQL queries used to execute it.\

\fs24 \

\f0\b 1. 
\fs28 Retrieve data
\fs24 :
\f1\b0  Retrieve data from csv to database. By the data create able with correct variable and its type.\
\

\f0\b\fs28 2.Checking Missing values:
\f1\b0\fs24 \
     \

\f2\i Count NULLs in critical columns
\f1\i0 \
\cf3 \cb2 SELECT \cf4 \
    \cf3 COUNT(*) FILTER \cf4 (\cf3 WHERE\cf4  transactionrevenue\cf3  IS NULL\cf4 ) \cf3 A\cf4 S null_revenue,\
    \cf3 COUNT(*) FILTER \cf4 (\cf3 WHERE\cf4  productsku \cf3 IS NULL\cf4 ) \cf3 AS\cf4  null_sku,\
    \cf3 COUNT\cf4 (*) FILTER (\cf3 WHERE\cf4  country \cf3 IS NULL OR\cf4  city \cf3 IS NULL\cf4 ) \cf3 AS\cf4  null_location\
\cf3 FROM\cf4  all_sessions;\
\cf0 \cb1 \
3. 
\f0\b\fs28 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Unusual or Placeholder Values\
\pard\pardeftab720\partightenfactor0

\f1\b0\fs26 \cf3 \cb2 SELECT DISTINCT\cf4  v2productcategory \cf3 FROM\cf4  all_sessions \cf3 WHERE\cf4  v2productcategory \cf3 LIKE\cf4  '%$\{%\}';\
\cf3 SELECT DISTINCT\cf4  city \cf3 FROM\cf4  all_sessions \cf3 WHERE\cf4  city \cf3 LIKE\cf4  '%not set%' \cf3 OR\cf4  city \cf3 LIKE\cf4  '%not available%';\
\cf0 \cb1 \

\f0\b\fs28 4.Duplicate check
\f1\b0\fs26 \
\
\cf3 \cb2 SELECT\cf4  productsku, \cf3 COUNT\cf4 (*) \
\cf3 FROM\cf4  products \
\cf3 GROUP\cf4  \cf3 BY\cf4  productsku \
\cf3 HAVING\cf4  \cf3 COUNT\cf4 (*) > 1;
\f3 \cf0 \cb1 \
\
\
}