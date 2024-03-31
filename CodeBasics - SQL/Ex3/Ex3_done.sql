USE moviesdb;
SELECT COUNT(*) FROM movies WHERE release_year between 2015 AND 2022;
SELECT MAX(release_year) as max,
	MIN(release_year) as min FROM movies;

SELECT release_year,
	COUNT(*) as count 
FROM movies
GROUP BY release_year ORDER BY release_year DESC;
