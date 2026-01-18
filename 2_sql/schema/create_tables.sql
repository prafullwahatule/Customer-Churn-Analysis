-- Create database
CREATE DATABASE IF NOT EXISTS customer_churn_db;
USE customer_churn_db;

-- Drop table if exists (safe re-run)
DROP TABLE IF EXISTS customer_churn;

-- Create table
CREATE TABLE customer_churn (
    customer_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    tenure INT,
    usage_frequency INT,
    support_calls INT,
    payment_delay INT,
    subscription_type VARCHAR(20),
    contract_length VARCHAR(20),
    total_spend DECIMAL(10,2),
    last_interaction INT,
    churn TINYINT
);
