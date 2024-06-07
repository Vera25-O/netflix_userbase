SELECT * FROM netflix_database.netflix_userbase;

-- Total users by subscription type
SELECT subscription_type, COUNT(*) AS total_users
FROM netflix_userbase
GROUP BY subscription_type;

-- Total revenue by subscription type
SELECT subscription_type, SUM(monthly_revenue) AS total_monthly_revenue
FROM netflix_userbase
GROUP BY subscription_type;

-- Average monthly revenue by device
SELECT device, AVG(monthly_revenue) AS avg_monthly_revenue
FROM netflix_userbase
GROUP BY device;

-- User acquisition overtime
SELECT YEAR(join_date) AS join_year, MONTH(join_date) AS join_month, COUNT(*) AS new_users
FROM netflix_userbase
GROUP BY YEAR(join_date), MONTH(join_date)
ORDER BY YEAR(join_date), MONTH(join_date);

-- Deleting Null values
DELETE FROM netflix_userbase
WHERE join_month='';