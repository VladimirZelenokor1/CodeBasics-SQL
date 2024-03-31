USE moviesdb;
SELECT 
	movie_id, title, industry, release_year, imdb_rating, studio, m.language_id, name
FROM movies m 
JOIN languages l ON m.language_id = l.language_id;

SELECT 
	m.title
FROM languages l 
JOIN movies m USING (language_id) WHERE l.name = "Telugu";

SELECT 
	l.name, 
	COUNT(m.movie_id) as no_movies
FROM languages l
LEFT JOIN movies m USING (language_id)        
GROUP BY language_id
ORDER BY no_movies DESC;