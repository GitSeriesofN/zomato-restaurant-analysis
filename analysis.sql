-- Zomato Bangalore Restaurant Analysis
-- Tool used: pandasql (Python) | Dataset: 41,263 restaurants

-- Q1: Top 10 locations by average rating
SELECT location, 
       ROUND(AVG(rate), 2) AS avg_rating, 
       COUNT(*) AS total_restaurants
FROM zomato
GROUP BY location
ORDER BY avg_rating DESC
LIMIT 10;

-- Q2: Online order impact on rating
SELECT online_order, 
       ROUND(AVG(rate), 2) AS avg_rating, 
       COUNT(*) AS total
FROM zomato
GROUP BY online_order;

-- Q3: Top 10 cuisines by total votes
SELECT cuisines, 
       SUM(votes) AS total_votes,
       ROUND(AVG(rate), 2) AS avg_rating
FROM zomato
GROUP BY cuisines
ORDER BY total_votes DESC
LIMIT 10;

-- Q4: Price segment performance
SELECT 
    CASE 
        WHEN avg_cost < 300 THEN 'Budget (under 300)'
        WHEN avg_cost BETWEEN 300 AND 700 THEN 'Mid-range (300-700)'
        ELSE 'Premium (above 700)'
    END AS price_segment,
    ROUND(AVG(rate), 2) AS avg_rating,
    COUNT(*) AS total_restaurants
FROM zomato
GROUP BY price_segment
ORDER BY avg_rating DESC;

-- Q5: Top 10 most voted restaurants
SELECT name, MAX(votes) AS votes, rate, avg_cost, location
FROM zomato
GROUP BY name, location
ORDER BY votes DESC
LIMIT 10;