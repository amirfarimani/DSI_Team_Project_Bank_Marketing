


-- Percentage of clients who subscribed based on their marital status:
SELECT 
    marital AS martial_status,
    COUNT(*) AS total_count,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed_count,
    round(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS subscription_percentage
FROM campaign_records
GROUP BY marital
order by subscription_percentage DESC;


-- Percentage of customers with housing loan who susbcribed:
SELECT 
    housing as "Has housing loan?",
    COUNT(*) AS total_count,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed_count,
    round(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS subscription_percentage
FROM campaign_records
GROUP BY housing
order by subscription_percentage DESC;


-- Percentage of customers with personal loan who susbcribed:
SELECT 
    loan as "Has personal loan?",
    COUNT(*) AS total_count,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed_count,
    round(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS subscription_percentage
FROM campaign_records
GROUP BY loan
order by subscription_percentage DESC;

-- Percentage of customers with credit in default who susbcribed:
SELECT 
    "default" as "Has credit in default?",
    COUNT(*) AS total_count,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed_count,
    round(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS subscription_percentage
FROM campaign_records
GROUP BY "default"
order by subscription_percentage DESC;

-- Percentage of clients who subscribed based on their job:
SELECT 
    job,
    COUNT(*) AS total_count,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed_count,
    round(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*),2) AS subscription_percentage
	FROM campaign_records
GROUP BY job
order by subscription_percentage DESC;


--Percentage of clients who subscribed based on their age range:
SELECT 
    CASE 
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        WHEN age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60+'
    END AS age_range,
    COUNT(*) AS total_count,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscribed_count,
    ROUND(100.0 * SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS subscription_percentage
FROM campaign_records
GROUP BY age_range
ORDER BY age_range;
