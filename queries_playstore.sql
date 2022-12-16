Select app_name FROM analytics WHERE id = 1880;
-- find which app is number 1880
SELECT app_name FROM analytics WHERE last_updated = '2018-08-01';
--find all apps updated on August 1, 2018
SELECT category, COUNT(*) FROM analytics GROUP BY category;
--Find how many apps are in each category
SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;
--Find the top 5 most reviwed apps
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;
--Find most reviewed app that has 4.8 or higher rating
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC;
--Find average rating of each category
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
--Find the most expecsive low rated app
SELECT app_name FROM analytics WHERE min_installs <= 50 AND rating >0  ORDER BY rating DESC;
--List apps with 50 or less installs by rating
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
--Find apps that have less than a 3 rating but over 10000 reviews
SELECT app_name FROM analytics WHERE price BETWEEN .1 AND 10 ORDER BY reviews DESC LIMIT 10;
--FIND top ten reviewed apps that cost between 10 cents and one dollar
 SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;
 --Find the most out of date app
 SELECT app_name, price FROM analytics ORDER BY price DESC LIMIT 1;
 --Find most expensive app
 SELECT COUNT(reviews) FROM analytics;
 --Count all reviews
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
--Find all categories that have at leaset 300 apps
SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;
--Find app with highest install to review ratio with min 100000 installs