 -- displaying all columns regardless of owner_id --
 SELECT * FROM owners o
 FULL JOIN vehicles v
 ON v.owner_id = o.id;

 -- counting the number of cars each car owner has --
 SELECT first_name, last_name, COUNT(owner_id) FROM owners o
 JOIN vehicles v ON v.owner_id = o.id
 GROUP BY (first_name, last_name)
 ORDER BY first_name;

 -- Counting the number of cars and average price grouped by owner ordered alphabetically descending --
 SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) FROM owners o
 JOIN vehicles v ON v.owner_id = o.id
 GROUP BY (first_name, last_name)
 HAVING AVG(price) > 10000 AND COUNT(owner_id) >= 2
 ORDER BY first_name DESC;