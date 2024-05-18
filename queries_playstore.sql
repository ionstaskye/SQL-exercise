SELECT app_name FROM analytics WHERE id = 1880;
SELECT id, app_name  FROM analytics WHERE last_updated = '2018-08-01';
SELECT category, count(*) FROM analytics
GROUP BY category;
SELECT app_name, SUM(reviews) FROM analytics
GROUP BY app_name
ORDER BY SUM(reviews) Desc
LIMIT 5;
SELECT * FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;
SELECT category, AVG(rating) from analytics
GROUP BY category
ORDER BY AVG(rating) DESC;
SELECT app_name, price, rating FROM analytics
WHERE rating < 3
ORDER BY price DESC;
SELECT * FROM analytics 
WHERE min_installs <= 50
AND rating IS NOT NULL
ORDER BY rating DESC;
SELECT app_name FROM analytics
WHERE rating < 3 and reviews >= 10000;
SELECT * FROM analytics
WHERE price BETWEEN .1 and 1  
ORDER BY reviews DESC
LIMIT 10;
SELECT app_name FROM analytics
WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);
SELECT app_name FROM analytics
WHERE price = (SELECT MAX(price) FROM analytics);
SELECT SUM(reviews) FROM analytics;
SELECT category, count(*) FROM analytics
GROUP BY category
HAVING count(*) > 300
SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion FROM analytics
WHERE min_installs > 100000
ORDER BY proportion DESC
LIMIT 1;

