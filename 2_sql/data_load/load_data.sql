-- Load cleaned CSV into MySQL

USE customer_churn_db;

LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer_churn_cleaned.csv'
INTO TABLE customer_churn
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- VERIFY LOAD
SELECT COUNT(*) FROM customer_churn;