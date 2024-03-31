-----------------
-----ARTISTS-----
-----------------

-- 01. Top 5 most popular artists? Popularity is based on most number of paintings done by an artist
SELECT	a.full_name AS artist,
	COUNT(w.work_id) AS paintings_count
FROM artist a
JOIN work w
USING (artist_id)
GROUP BY artist
ORDER BY paintings_count DESC LIMIT 5;

-- 02. Top 5 artists whose paintings are displayed in multiple countries
SELECT 	full_name AS artist,
	COUNT(country) AS countries_count
FROM museum
JOIN work
USING (museum_id)
JOIN artist
USING (artist_id)
GROUP BY artist
ORDER BY COUNT(country) DESC LIMIT 5;

-- 03. Top 5 artists with highest average paintings price
SELECT	full_name AS artist,
	AVG(regular_price) AS avg_paintings_price
FROM artist
JOIN work
USING (artist_id)
JOIN product_size
USING (work_id)
GROUP BY artist
ORDER BY AVG(regular_price) DESC LIMIT 5;

-- 06. Top 5 most popular styles in paintings
SELECT style, COUNT(artist_id) AS artist_count
FROM artist
GROUP BY style
ORDER BY artist_count DESC LIMIT 5;

-- 07. Top 5 artists with the highest number of subjects
SELECT 	full_name AS artist,
	COUNT(DISTINCT subject) AS subject_count
FROM artist
JOIN work USING (artist_id)
JOIN product_size USING (work_id)
JOIN subject USING (work_id)
GROUP BY artist
ORDER BY subject_count DESC LIMIT 5;

-----------------
-----MUSEUMS-----
-----------------

-- 08. Countries and its Museums
SELECT country, name
FROM museum
GROUP BY country, name
ORDER BY country, name;

-- 09. Museums which are open every single day?
SELECT m.museum_id, name
FROM museum m
JOIN museum_hour mh
USING (museum_id)
GROUP BY m.museum_id, name
HAVING COUNT(mh.museum_id) = 7;
  
-- 10. Which are the top 5 most popular museums? 
-- Popularity is defined based on number of paintings in a museum
SELECT	m.name, m.country, COUNT(w.name) AS paintings_count
FROM museum m
JOIN work w
USING (museum_id)
GROUP BY m.name, m.country
ORDER BY paintings_count DESC LIMIT 5;

-- 11. Which country has the 5th highest number of paintings?
SELECT	m.country,
		COUNT(*) AS paintings_count
FROM museum m
JOIN work w
USING (museum_id)
GROUP BY m.country
ORDER BY COUNT(*) DESC LIMIT 1 OFFSET 4;

-- 12. Top 5 museums with highest number of painting styles
SELECT m.name, m.country, COUNT(DISTINCT style) AS styles_count
FROM museum m
JOIN work
USING (museum_id)
GROUP BY m.name, m.country
ORDER BY styles_count DESC LIMIT 5;

-- 13. How many paintings which are not displayed at any museums?
SELECT COUNT(distinct name) AS paintings_count
FROM work
WHERE museum_id = '';

-- 14. Are there any museums without any paintings?
SELECT *
FROM museum m
LEFT JOIN work
USING (museum_id)
WHERE m.museum_id = '';

-----------------
------WORKS------
-----------------

-- 15. Top 10 most popular painting subjects
SELECT 	subject,
	COUNT(*) AS paintings_count
FROM subject
GROUP BY subject
ORDER BY paintings_count DESC LIMIT 10;

-- 16. Top/Bottom 3 popular painting styles
SELECT *
FROM (	SELECT style, COUNT(*) AS paintings_count, 'Most Popular' AS remarks
	FROM work
	GROUP BY style
        HAVING style != ''
	ORDER BY COUNT(*) DESC LIMIT 3) top_3
UNION ALL
SELECT *
FROM (	SELECT style, COUNT(*) AS paintings_count, 'Least Popular' AS remarks
	FROM work
	GROUP BY style
	ORDER BY COUNT(*) LIMIT 3) bottom_3
;

-- 17. Top 10 paintings with the highest price
SELECT 	name AS painting_name, 
	full_name AS artist,
        regular_price
FROM artist
JOIN work USING (artist_id)
JOIN product_size USING (work_id)
GROUP BY name, artist, regular_price
ORDER BY regular_price DESC LIMIT 5;

-- 18. How many paintings have an asking price higher than the regular price?
SELECT COUNT(*) AS paintings_count
FROM product_size
WHERE sale_price > regular_price;

-- 19. Identify the paintings whose asking price is less than 50% of its regular price
SELECT name, size_id, sale_price, regular_price
FROM work
JOIN product_size
USING (work_id)
WHERE sale_price < (0.5 * regular_price);

-- 20. Which canvas size costs the most?
SELECT cs.size_id, label, MAX(regular_price) AS price
FROM product_size ps
JOIN canvas_size cs
USING (size_id)
GROUP BY cs.size_id, label
ORDER BY price DESC LIMIT 1;

-- 21. Top 5 least popular canvas sizes?
SELECT cs.size_id, label, COUNT(work_id) AS paintings_count
FROM product_size ps
JOIN canvas_size cs
USING (size_id)
GROUP BY cs.size_id, label
ORDER BY paintings_count LIMIT 5;
