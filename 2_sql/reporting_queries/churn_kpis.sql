USE customer_churn_db;

-- Total customers
SELECT COUNT(*) AS total_customers
FROM customer_churn;

-- Active vs churned customers
SELECT
    churn,
    COUNT(*) AS customer_count
FROM customer_churn
GROUP BY churn;

-- Average tenure (churned vs active)
SELECT
    churn,
    ROUND(AVG(tenure), 1) AS avg_tenure
FROM customer_churn
GROUP BY churn;

-- Average total spend
SELECT
    churn,
    ROUND(AVG(total_spend), 2) AS avg_total_spend
FROM customer_churn
GROUP BY churn;

-- High-risk customers (example)
SELECT *
FROM customer_churn
WHERE churn = 1
  AND support_calls >= 5
  AND payment_delay >= 10;
