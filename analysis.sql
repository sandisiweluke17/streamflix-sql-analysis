-- Q1: All Premium users' names
SELECT full_name FROM users WHERE plan = 'Premium';
-- Q2: Users whose age is missing
SELECT full_name, age FROM users WHERE age IS NULL;
-- Q3: Total monthly revenue from active users only
SELECT SUM(monthly_price) FROM users WHERE is_active = 1;
-- Q4: Average show rating (1 show skipped because its rating is NULL)
SELECT AVG(rating) FROM shows;
-- Q5: Number of users on each plan
SELECT plan, COUNT(*) FROM users GROUP BY plan;
-- Q6: Average rating per genre, best to worst
SELECT genre, AVG(rating) AS avg_rating FROM shows GROUP BY genre ORDER BY avg_rating DESC;
-- Q7: Genres with more than 2 shows
SELECT genre, COUNT(*) FROM shows GROUP BY genre HAVING COUNT(*) > 2;
-- Q8: Average minutes watched per device, highest first
SELECT device, AVG(minutes_watched) AS avg_minutes FROM views GROUP BY device ORDER BY avg_minutes DESC;
