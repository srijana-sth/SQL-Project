Create TABLE all_sessions (
fullVisitorId INT,
channelGrouping VARCHAR,
time INT,
country Varchar,
city Varchar,
totalTransactionRevenue float,
transactions float,
timeOnSite int,
pageviews int,
sessionQualityDim int,
date date,
visitId int,
type varchar,
productRefundAmount float,
productQuantity int,
productPrice float,
productRevenue float,
productSKU varchar,
v2ProductName varchar,
V2ProductCategory varchar,
productVariant int,
currencyCode varchar,
itemQuality varchar,
itemRevenue float,
transactionRevenue float,
transactionId int,
pageTitle Varchar,
searchKeyword varchar,
pagePathLevel Varchar,
ecommerceAction_type int,
ecommerceAction_step int,
ecommerchAction_option int);



CREATE TABLE analytics (
  visitNumber INT,
  visitId BIGINT,  
  visitStartTime BIGINT,
  date DATE,
  fullvisitorid BIGINT,
  userid INT,
  ChannelGrouping VARCHAR,
  socialEngagementType VARCHAR,
  units_sold INT,
  pageviews int,
  timeonsite int,
  bounces int,
  revenue float,
  unitprice float
 );

CREATE TABLE products (
  productSKU varchar,
  name VARCHAR,
  orderedQuantity INT,
  stockLevel INT,
  restockingLeadTime int,
  sentimentScore float,
  sentimentMagnitude float,
  PRIMARY KEY (productSKU)
);

CREATE TABLE sales_by_sku (
  productSKU varchar,
  total_ordered INT
);


CREATE TABLE sales_report (
  productSKU varchar,
  total_ordered INT,
  name VARCHAR,
  stockLevel INT,
  restockingLeadTime INT,
  sentimentScore float,
  sentimentMagnitude float,
  ratio float,
  PRIMARY KEY (productSKU)
);