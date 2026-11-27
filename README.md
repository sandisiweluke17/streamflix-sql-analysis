# StreamFlix SQL Analysis

## About the project
StreamFlix is an online streaming platform, and I examined its subscriber information, available shows and viewing records to understand its income, customer cancellations, user activity and data accuracy.
## Author
Sandisiwe Luke
Data Science Cohort 2026
## The dataset
The database has three tables: users with 12 subscribers, shows with 10 titles and views with 25 viewing records. The dataset also includes intentional NULL values and inconsistencies in the country column to demonstrate data-cleaning challenges.
## How to run it
Visit SQLiteOnline at sqliteonline.com.
Run streamflix_setup.sql to create and fill the database tables.
Open and run the queries saved in analysis.sql to perform the analysis.
## Key findings
The Standard plan has the highest churn rate at 75%, compared to 25% for Basic and 0% for Premium.
Three out of the four subscribers who cancelled had never watched any content, suggesting that low engagement may contribute to subscriber cancellations.
Premium subscribers recorded the highest engagement with 14 views while Thabo was the most active individual user with 200 viewing minutes.
## Skills demonstrated
SQL JOINs
Aggregate functions
GROUP BY and HAVING
Subqueries
CASE statements
Data cleaning and standardisation
Data analysis and interpretation
