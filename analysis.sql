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
-- Q9: Each view with user name and show title
SELECT u.full_name, s.title, v.minutes_watched FROM views v JOIN users u ON v.user_id = u.user_id JOIN shows s ON v.show_id = s.show_id;
-- Q10: Total minutes watched per genre
SELECT s.genre, SUM(v.minutes_watched) AS total_minutes FROM views v JOIN shows s ON v.show_id = s.show_id GROUP BY s.genre ORDER BY total_minutes DESC;
-- Q11: Most-watched show by number of plays
SELECT s.title, COUNT(*) AS plays FROM views v JOIN shows s ON v.show_id = s.show_id GROUP BY s.title ORDER BY plays DESC LIMIT 1;
-- Q12: Number of views per plan
SELECT u.plan, COUNT(*) AS total_views FROM views v JOIN users u ON v.user_id = u.user_id GROUP BY u.plan;
-- Q13: Top 3 most-engaged users by total minutes watched
SELECT u.full_name, SUM(v.minutes_watched) AS total_minutes FROM views v JOIN users u ON v.user_id = u.user_id GROUP BY u.user_id ORDER BY total_minutes DESC LIMIT 3;