-- Total Transactions
SELECT COUNT(*) AS total_transactions
FROM transactions;

-- Total Fraudulent Transactions
SELECT COUNT(*) AS fraudulent_transactions
FROM transactions
WHERE is_fraud = 1;

-- Fraud Rate Percentage
SELECT 
    ROUND(
        (SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS fraud_rate_percent
FROM transactions;

-- Total Transaction Volume
SELECT 
    ROUND(SUM(amount), 2) AS total_transaction_volume
FROM transactions;

-- Fraudulent Transaction Volume
SELECT 
    ROUND(SUM(amount), 2) AS fraudulent_volume
FROM transactions
WHERE is_fraud = 1;
