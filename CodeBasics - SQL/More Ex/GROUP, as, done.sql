USE moviesdb;
SELECT
	studio, 
    COUNT(*) as count, 
    ROUND(avg(imdb_rating),2) as avg_rating
FROM movies
WHERE studio != ""
GROUP BY studio ORDER BY avg_rating DESC;

