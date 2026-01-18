USE customer_churn_db;

-- Overall churn rate
SELECT
    ROUND(SUM(churn) / COUNT(*) * 100, 2) AS churn_rate_pct
FROM customer_churn;

-- Churn by subscription type
SELECT
    subscription_type,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(SUM(churn) / COUNT(*) * 100, 2) AS churn_rate_pct
FROM customer_churn
GROUP BY subscription_type
ORDER BY churn_rate_pct DESC;

-- Churn by contract length
SELECT
    contract_length,
    ROUND(SUM(churn) / COUNT(*) * 100, 2) AS churn_rate_pct
FROM customer_churn
GROUP BY contract_length;

-- Support calls impact
SELECT
    support_calls,
    ROUND(SUM(churn) / COUNT(*) * 100, 2) AS churn_rate_pct
FROM customer_churn
GROUP BY support_calls
ORDER BY support_calls;

-- Payment delay impact
SELECT
    payment_delay,
    ROUND(SUM(churn) / COUNT(*) * 100, 2) AS churn_rate_pct
FROM customer_churn
GROUP BY payment_delay
ORDER BY payment_delay;
