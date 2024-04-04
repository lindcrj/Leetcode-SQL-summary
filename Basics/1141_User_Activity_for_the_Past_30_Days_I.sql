# Solution 1
SELECT activity_date as day, COUNT(distinct user_id) AS active_users
FROM Activity
WHERE datediff('2019-07-27', activity_date) < 30 AND activity_date <= '2019-07-27'
GROUP BY activity_date;

# Solution 2
SELECT activity_date as day, COUNT(distinct user_id) AS active_users
FROM Activity
GROUP BY activity_date
HAVING activity_date between '2019-06-28' and '2019-07-27';
