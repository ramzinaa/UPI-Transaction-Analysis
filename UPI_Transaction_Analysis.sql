CREATE DATABASE IF NOT EXISTS upi_transaction_analysis;
USE upi_transaction_analysis;
SELECT DATABASE();

-- 1. Total Transactions
SELECT COUNT(*) AS total_transactions
FROM upi_transactions;

-- 2. Total Transaction Amount
SELECT ROUND(SUM(amount_inr), 2) AS total_transaction_amount
FROM upi_transactions;

-- 3. Average Transaction Amount
SELECT ROUND(AVG(amount_inr), 2) AS average_transaction_amount
FROM upi_transactions;

-- 4. Highest Transaction Amount
SELECT MAX(amount_inr) AS highest_transaction_amount
FROM upi_transactions;

-- 5. Successful vs Failed Transactions
SELECT 
    transaction_status,
    COUNT(*) AS transaction_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM upi_transactions), 2) AS percentage
FROM upi_transactions
GROUP BY transaction_status
ORDER BY transaction_count DESC;

-- 6. Transaction Type Analysis
SELECT 
    transaction_type,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount_inr), 2) AS total_amount,
    ROUND(AVG(amount_inr), 2) AS average_amount
FROM upi_transactions
GROUP BY transaction_type
ORDER BY transaction_count DESC;

-- 7. Merchant Category Analysis
SELECT 
    merchant_category,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount_inr), 2) AS total_amount
FROM upi_transactions
GROUP BY merchant_category
ORDER BY transaction_count DESC;

-- 8. Top 5 Merchant Categories
SELECT 
    merchant_category,
    COUNT(*) AS transaction_count
FROM upi_transactions
GROUP BY merchant_category
ORDER BY transaction_count DESC
LIMIT 5;

-- 9. State-wise Transactions
SELECT 
    sender_state,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount_inr), 2) AS total_amount
FROM upi_transactions
GROUP BY sender_state
ORDER BY transaction_count DESC;

-- 10. Top 5 States by Transaction Volume
SELECT 
    sender_state,
    COUNT(*) AS transaction_count
FROM upi_transactions
GROUP BY sender_state
ORDER BY transaction_count DESC
LIMIT 5;

-- 11. Sender Bank Analysis
SELECT 
    sender_bank,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount_inr), 2) AS total_amount
FROM upi_transactions
GROUP BY sender_bank
ORDER BY transaction_count DESC;

-- 12. Receiver Bank Analysis
SELECT 
    receiver_bank,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount_inr), 2) AS total_amount
FROM upi_transactions
GROUP BY receiver_bank
ORDER BY transaction_count DESC;

-- 13. Device Type Analysis
SELECT 
    device_type,
    COUNT(*) AS transaction_count,
    ROUND(AVG(amount_inr), 2) AS average_amount
FROM upi_transactions
GROUP BY device_type
ORDER BY transaction_count DESC;

-- 14. Network Type Analysis
SELECT 
    network_type,
    COUNT(*) AS transaction_count,
    ROUND(AVG(amount_inr), 2) AS average_amount
FROM upi_transactions
GROUP BY network_type
ORDER BY transaction_count DESC;

-- 15. Weekend vs Weekday
SELECT 
    CASE
        WHEN is_weekend = 1 THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount_inr), 2) AS total_amount
FROM upi_transactions
GROUP BY is_weekend
ORDER BY transaction_count DESC;

-- 16. Day of Week Analysis
SELECT 
    day_of_week,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount_inr), 2) AS total_amount
FROM upi_transactions
GROUP BY day_of_week
ORDER BY transaction_count DESC;

-- 17. Hour-wise Transaction Analysis
SELECT 
    hour_of_day,
    COUNT(*) AS transaction_count,
    ROUND(SUM(amount_inr), 2) AS total_amount
FROM upi_transactions
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- 18. Fraud vs Non-Fraud Transactions
SELECT 
    CASE
        WHEN fraud_flag = 1 THEN 'Fraud'
        ELSE 'Non-Fraud'
    END AS fraud_status,
    COUNT(*) AS transaction_count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM upi_transactions),
        2
    ) AS percentage
FROM upi_transactions
GROUP BY fraud_flag
ORDER BY transaction_count DESC;

-- 19. Fraud by Transaction Type
SELECT 
    transaction_type,
    COUNT(*) AS fraud_transactions,
    ROUND(SUM(amount_inr), 2) AS fraud_amount
FROM upi_transactions
WHERE fraud_flag = 1
GROUP BY transaction_type
ORDER BY fraud_transactions DESC;

-- 20. Fraud by State
SELECT 
    sender_state,
    COUNT(*) AS fraud_transactions,
    ROUND(SUM(amount_inr), 2) AS fraud_amount
FROM upi_transactions
WHERE fraud_flag = 1
GROUP BY sender_state
ORDER BY fraud_transactions DESC;

-- 21. Fraud by Merchant Category
SELECT 
    merchant_category,
    COUNT(*) AS fraud_transactions,
    ROUND(SUM(amount_inr), 2) AS fraud_amount
FROM upi_transactions
WHERE fraud_flag = 1
GROUP BY merchant_category
ORDER BY fraud_transactions DESC;

-- 22. Fraud Rate by Transaction Type
SELECT 
    transaction_type,
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraud_transactions,
    ROUND(SUM(fraud_flag) * 100.0 / COUNT(*), 2) AS fraud_rate
FROM upi_transactions
GROUP BY transaction_type
ORDER BY fraud_rate DESC;

-- 23. Top 10 Highest Transactions
SELECT 
    transaction_id,
    amount_inr,
    transaction_type,
    merchant_category,
    sender_state,
    transaction_status
FROM upi_transactions
ORDER BY amount_inr DESC
LIMIT 10;

-- 24. Age Group Analysis
SELECT 
    sender_age_group,
    COUNT(*) AS transaction_count,
    ROUND(AVG(amount_inr), 2) AS average_amount
FROM upi_transactions
GROUP BY sender_age_group
ORDER BY transaction_count DESC;

-- 25. Transaction Status by Type
SELECT 
    transaction_type,
    transaction_status,
    COUNT(*) AS transaction_count
FROM upi_transactions
GROUP BY transaction_type, transaction_status
ORDER BY transaction_type, transaction_count DESC;



