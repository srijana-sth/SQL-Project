{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red33\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;
\red191\green191\blue191;}
{\*\expandedcolortbl;;\cssrgb\c0\c99144\c100000;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;
\csgray\c79525;}
\margl1440\margr1440\vieww29200\viewh16220\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b\fs28 \cf0 Question 1: Which channel group generated highest revenue\
\
SQL Queries:
\f1\b0\fs24 \
\cf2 \cb3 SELECT \cf4 \
    channelgrouping,\
   \cf2  SUM\cf4 (revenue) \cf2 AS\cf4  total_revenue\
\cf2 FROM \cf4 analytics\
\cf2 WHERE \cf4 revenue \cf2 IS NOT NULL\cf4 \
\cf2 GROUP BY\cf4  channelgrouping\
\cf2 ORDER BY\cf4  total_revenue \cf2 DESC\cf4 \
\cf2 LIMIT 1;\cf0 \cb1 \
\
Answer: Referral has highest revenue\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth1660\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1940\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Referral"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 833754269006\cell \lastrow\row
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\
\

\f0\b\fs28 Question 2: How does  time on site and pageviews relate to revenue generation? Are users with higher engagement more likely to result in higher revenue?\
\
SQL Queries:
\f1\b0\fs24 \
\cf2 \cb3 SELECT \cf4 \
    timeonsite,\
    pageviews,\
    revenue\
\cf2 FROM \cf4 analytics\
\cf2 WHERE\cf4  revenue \cf2 IS NOT NULL\cf4 \
\cf2 ORDER BY\cf4  revenue\cf0 \cb1 \
\
Answer:\
\

\f0\b "avg_time_on_site"	"avg_pageviews"		"avg_revenue"
\f1\b0 \
 1236.07			   28.37			  76006410.81\
\
\
\

\f0\b\fs28 Question 3: Which products are low on stock but have high ordered quantities? Do these require restocking based on current demand?\
\
SQL Queries:
\f1\b0\fs24 \
\cf2 \cb3 SELECT \cf4 \
    productsku,\
    name,\
    orderedquantity,\
    stocklevel\
\cf2 FROM \cf4 products\
\cf2 WHERE\cf4  stocklevel < orderedquantity\
\cf2 ORDER BY \cf4 (orderedquantity - stocklevel) \cf2 DESC\cf4 ;\cf0 \cb1 \
\
Answer:Some of the item do need restocking.\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "productsku"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "name"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "orderedquantity"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "stocklevel"\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFSR022099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Kick Ball"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15170\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 723\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOLC014299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Metallic Notebook Set"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2718\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 610\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGGOA017399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Maze Pen"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1748\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 324\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBJC019999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Collapsible Shopping Bag"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1184\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 117\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGKAA019299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Switch Tone Color Crayon Pen"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1163\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 388\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBQ079099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Protect Smoke + CO White Battery Alarm-USA"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 999\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 325\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDHQ015399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "26 oz Double Wall Insulated Bottle"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 845\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 256\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHGT019599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Sunglasses"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 887\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 376\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYOCR077399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " RFID Journal"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 935\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 433\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clheight418 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clheight418 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clheight418 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clheight418 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFKA022299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Keyboard DOT Sticker"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 480\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 189\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCT019199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "Red Spiral  Notebook"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 316\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 43\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDHC015299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "23 oz Wide Mouth Sport Bottle"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 402\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 142\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAWQ062948"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Baby Essentials Set"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 261\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 77\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGETR014599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Tube Power Bank"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 218\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 72\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth4240\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1120\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1040\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHPB003410"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 " Snapback Hat Black"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 230\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 105\cell \lastrow\row
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\
\

\f0\b\fs28 Question 4: Best selling product as per sku\
\
SQL Queries:
\f1\b0\fs24 \
\cf2 \cb3 SELECT \cf4 \
	productsku,\
	total_ordered\
\cf2 FROM \cf4 sales_report\
\cf2 ORDER BY\cf4  total_ordered \cf2 DESC\cf4 \
\cf2 limit \cf4 1\cf0 \cb1 \
\
Answer:\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2520\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1880\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b \cf0 "productsku"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "total_ordered"
\f1\b0 \cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2520\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1880\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAQ012899"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 456\cell \lastrow\row
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\

\f0\b\fs28 Question 5: which products have a high stock level but low total ordered quantity\
\
SQL Queries:
\f1\b0\fs24 \
\cf2 \cb3 SELECT \cf4 \
	productsku,\
	total_ordered,\
	stocklevel,\
	(stocklevel - total_ordered) as excess_stock\
\cf2 FROM\cf4  sales_report\
\cf2 WHERE\cf4  stocklevel > total_ordered\
\cf2 ORDER BY \cf4 excess_stock DESC\cf0 \cb1 \
\
Answer:\

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrt\brdrnil \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "productsku"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "total_ordered"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "stocklevel"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "excess_stock"\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDHC018299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19678\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19655\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0074"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 40\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15607\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15567\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0037"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 146\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6805\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6659\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOLC013299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 69\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6708\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6639\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCR017899"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 30\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4975\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4945\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCB017499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 319\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4978\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4659\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBQ078999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 112\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4683\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4571\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYFKQ020699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 30\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4536\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4506\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCC077999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 290\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4668\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4378\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFYQ016599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 253\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4495\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4242\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGCBQ016499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 60\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4069\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4009\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCC077299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2839\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2820\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBMJ013399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 70\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2877\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2807\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGESQ016799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2561\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2551\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBB078899"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 102\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2615\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2513\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBJ079499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 94\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2525\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2431\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAQ020099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 22\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2450\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2428\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHGC019799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 35\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2444\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2409\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAR013099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2164\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2162\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCL077699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2171\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2151\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHGH019699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 14\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2086\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2072\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFKQ020799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 34\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2080\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2046\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYHPB072210"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1997\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1988\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYOCR077799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 85\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2046\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1961\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAQ018099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1939\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1936\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYDHJ056099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 50\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1944\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1894\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAA017199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1791\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1791\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHPB071610"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1755\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1752\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGODR017799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 39\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1756\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1717\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAKDH019899"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1674\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1658\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAQ012899"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 456\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2098\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1642\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFKQ020399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1516\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1503\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDHR018499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1482\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1466\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGEHQ024099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1468\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1443\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDWR015799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1417\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1412\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAJ021599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1321\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1321\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBQ079199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 42\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1361\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1319\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOFH020299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1324\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1312\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCD078399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 39\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1305\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1266\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHGR019499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1195\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1169\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOXQ016399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1186\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1153\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBQ084699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1142\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1135\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAB010514"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1101\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1095\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDHC074099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 334\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1390\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1056\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAR013599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 942\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 942\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEADHH055999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 738\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 736\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0104"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 749\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 734\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAB021499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 48\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 775\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 727\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFSR022099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 723\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 720\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOBC078699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 713\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 707\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0081"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 42\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 740\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 698\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0338"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 677\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 676\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGCKQ013199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 679\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 673\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOLC014299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 610\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 608\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAFKQ020499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 613\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 594\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAB033815"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 578\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 569\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBFC018799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 568\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 568\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBD084799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 564\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 554\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBJL013999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 62\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 602\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 540\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBPB021199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 516\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 503\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGCVB072399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 458\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 458\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCR078499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 449\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 446\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0340"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 442\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 442\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAFKQ020599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 449\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 438\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWFKA082999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 415\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 409\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAB033814"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 395\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 394\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOAB022499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 105\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 477\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 372\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFAQ016699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 381\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 370\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOBG023599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 367\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 364\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHGT019599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 14\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 376\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 362\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGKAA019299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 34\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 388\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 354\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDHR082199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 341\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 341\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEADWQ015699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 342\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 340\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGPJC203399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 14\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 352\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 338\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGCMB020932"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 342\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 337\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0341"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 332\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 326\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAQ010415"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 335\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 324\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGGOA017399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 324\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 321\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAHPA004110"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 305\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 305\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBQ079099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 24\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 325\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 301\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGESB015099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 306\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 295\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGCNB021099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 304\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 295\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032814"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 295\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 292\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFQB013799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 297\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 292\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBCR024399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 290\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 290\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032816"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 22\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 309\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 287\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0098"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 104\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 376\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 272\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBRJ037299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 272\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 269\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0318"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 275\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 267\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBMC056599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 261\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 261\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEB027813"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 252\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 251\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032815"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 251\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 247\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0358"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 235\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 232\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGEVA022399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 234\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 230\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHPJ080310"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 189\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 415\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 226\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGESC014099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 242\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 226\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBRA037499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 230\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 225\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBRJ037399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 228\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 217\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHPB080410"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 219\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 212\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0339"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 210\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 210\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALB034115"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 213\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 209\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGCBB074199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 205\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 203\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAB010515"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 193\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 192\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGCBC074299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 195\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 190\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBRB013899"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 178\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 175\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAFB073115"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 175\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 173\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAQ010414"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 17\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 186\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 169\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0342"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 172\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 168\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAHPJ074410"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 161\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 161\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEACCQ017299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 163\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 160\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDHQ015399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 97\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 256\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 159\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAQ010413"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 167\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 157\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGETB023799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 56\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 210\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 154\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAFB035814"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 156\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 152\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBJC014399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 155\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 152\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALB034114"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 155\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 148\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALB036514"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 154\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 146\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0731"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 142\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 140\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALB034113"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 153\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 137\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGFKA022299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 53\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 189\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 136\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGDHC015299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 142\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 132\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGEVB070599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 132\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 132\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ028015"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 138\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 132\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0351"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 133\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 131\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAR010715"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 146\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 130\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWEBB082699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 129\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 125\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ080615"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 129\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 121\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0655"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 123\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 121\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALB034116"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 121\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 120\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0356"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 119\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 119\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0278"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 121\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 118\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEADHH073999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 167\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 283\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 116\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGKWQ060910"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 116\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 109\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ028013"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 117\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 109\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBPB082099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 107\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 107\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0795"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 114\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 107\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ059114"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 107\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 106\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGOCB078299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 250\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 354\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 104\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHPB003410"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 105\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 104\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGADJ056815"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 105\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 103\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGPJC019099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 52\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 154\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 102\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGGCX056299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 107\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 102\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0105"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 105\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 101\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032817"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 102\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 100\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0781"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 82\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 181\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 99\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0325"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 104\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 98\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAFB073113"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 99\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 96\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0353"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 95\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 95\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWFKA083299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 94\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 94\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGCBB074399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 94\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 94\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032614"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 97\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 91\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAXJ065555"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 93\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 90\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0313"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 101\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 90\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAR010716"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 90\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 89\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALQ034213"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 94\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 89\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAAQ032013"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 95\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 89\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEA0CH077599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 102\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 87\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEJ033414"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 95\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 87\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHPJ080110"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 87\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 87\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEJ033415"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 92\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 86\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0334"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 87\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 85\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAOCB077499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 86\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 84\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0168"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 83\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 83\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGEHQ071199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 84\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 82\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032714"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 81\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 80\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0366"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 81\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 79\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGACB023699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 78\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 78\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBPB081999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 79\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 78\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGGCX056199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 77\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 76\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGBJC019999"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 43\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 117\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 74\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0365"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 73\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 73\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0299"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 77\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 73\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0568"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 75\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 72\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0107"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 72\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 71\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGETR014599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 72\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 71\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALB034117"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 74\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 70\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBB081499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 72\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 68\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0651"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 71\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 68\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGADB056915"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 70\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 67\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGEHQ072599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 65\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 65\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAAP081214"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 68\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 65\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0329"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 65\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 65\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAL010615"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 66\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 64\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEQ027913"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 65\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 63\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAL010614"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 74\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 62\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0610"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 63\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 62\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBJ081899"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 69\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 61\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWFKA083199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 66\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 61\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ031313"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 62\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 60\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0231"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 59\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 59\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEJ035714"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 64\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 59\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALB036515"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 62\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 58\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAHPJ004314"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 59\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 58\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALQ036613"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 59\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 57\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0570"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 57\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 57\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEJ030913"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 58\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 56\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032313"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 61\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 55\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0357"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 57\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 54\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0290"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 54\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 53\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0622"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 55\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 53\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0569"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 54\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 53\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGADJ056814"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 57\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 53\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAHPJ004213"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 53\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 51\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGADJ056813"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 54\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 51\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0761"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 52\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 51\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ080614"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 53\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 51\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALQ036614"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 52\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 51\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0280"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 52\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 50\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ028016"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 51\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 50\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAXXX0808"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 55\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 50\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBQ081799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 49\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 49\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0289"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 50\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 49\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAB010517"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 50\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 48\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0617"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 53\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 47\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEQ027915"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 51\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 47\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0606"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 48\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 47\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEH035214"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 43\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 42\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032613"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 46\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 42\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032616"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 48\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 42\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0042"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 41\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 41\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0686"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 40\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 40\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBQ081599"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 40\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 40\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAAJ032514"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 41\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 39\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAAB031814"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 40\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 39\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAFB035816"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 41\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 38\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGGCX056399"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 38\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 38\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWCKQ085457"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 39\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 38\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGEHQ072499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 38\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 38\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0320"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 38\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 37\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGKWR060810"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 44\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 37\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0279"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 41\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 37\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ031314"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 45\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 36\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0308"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 37\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 36\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ030814"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 37\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 36\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0352"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 37\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 35\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEJ033413"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 43\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 35\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0671"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 40\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 34\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0364"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 40\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 34\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEC033113"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 36\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 34\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALQ034215"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 37\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 34\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0296"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0350"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALL074613"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 32\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAOBH078799"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 32\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 32\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0620"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 52\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 32\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEA030415"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAWN062648"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 32\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0596"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 32\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAL010616"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 50\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0355"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAPB057813"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0619"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 30\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAWT061748"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 34\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 30\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGATB060213"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 35\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 28\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ080613"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 29\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 28\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0682"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 28\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAAJ032515"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 28\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0309"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 28\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 27\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAL010613"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 37\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 27\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAWQ062250"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 30\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 27\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGADB059614"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 27\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clheight295 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clheight295 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clheight295 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clheight295 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWFKA083099"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clheight240 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clheight240 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clheight240 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clheight240 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0304"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAAB031813"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 27\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0591"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 29\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOENEBQ081699"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALL074614"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0607"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ028113"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALL074615"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 24\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ030815"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 24\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGATB060615"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 24\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEH035215"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 27\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 24\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ059113"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 24\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0690"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 31\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 24\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0680"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 28\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0593"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0330"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 43\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032317"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAAJ033015"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 33\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 22\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0590"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0361"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALJ036414"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0625"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAFB073116"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 22\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAER029713"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 25\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0323"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALQ036616"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 27\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ028114"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWAEA083899"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0282"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALB036516"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 23\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0626"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGATH060714"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAJ032716"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 26\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAAJ080814"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 22\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAYB068024"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0602"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAAB031816"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 20\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAXXX0812"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0579"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 17\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAWN062649"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 17\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0106"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 29\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0306"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0605"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ031315"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 34\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0297"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 16\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEH035213"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 19\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0661"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 17\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0578"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 17\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0603"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGESB015199"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAYB068026"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 21\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEJ035713"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0618"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAYQ069056"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 14\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ028115"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 13\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEYAAJ033014"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 30\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 42\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAAB034914"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAHPB080210"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0326"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAXR065129"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGALJ036413"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0328"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAFB035817"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 15\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAWR061848"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 18\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0331"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0604"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ031316"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0283"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAPB057816"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGGCX056499"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAHPB076113"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0595"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0592"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEH035217"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 10\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEC033117"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0746"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ029913"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAHPB076114"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0281"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0580"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAC035014"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAXQ067129"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGXXX0806"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 12\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGHPL003214"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAWQ062248"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAYQ069025"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 11\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 6\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0683"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0327"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAAP081217"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0732"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGATB060214"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 8\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0588"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAXQ067155"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 9\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0348"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0324"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAWR061850"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAYB068025"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 4\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 7\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGATJ060516"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 5\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0582"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAXXX0810"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAEJ029915"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0567"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0575"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAX0572"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEAAEH035216"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWXXX0828"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEGAAC035016"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 2\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 3\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \row

\itap1\trowd \taflags1 \trgaph108\trleft-108 \trbrdrl\brdrnil \trbrdrt\brdrnil \trbrdrr\brdrnil 
\clvertalc \clshdrawnil \clwWidth2920\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx2160
\clvertalc \clshdrawnil \clwWidth1720\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx4320
\clvertalc \clshdrawnil \clwWidth1400\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx6480
\clvertalc \clshdrawnil \clwWidth1800\clftsWidth3 \clbrdrt\brdrs\brdrw20\brdrcf5 \clbrdrl\brdrs\brdrw20\brdrcf5 \clbrdrb\brdrs\brdrw20\brdrcf5 \clbrdrr\brdrs\brdrw20\brdrcf5 \clpadl100 \clpadr100 \gaph\cellx8640
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 "GGOEWXXX0835"\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 0\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell 
\pard\intbl\itap1\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 1\cell \lastrow\row
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
}