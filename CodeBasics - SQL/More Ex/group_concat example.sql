USE moviesdb;
SELECT 
	a.name, group_concat(m.title SEPARATOR ', ') as movies, COUNT(m.title) as movies_count
FROM actors a
JOIN movie_actor ma ON a.actor_id=ma.actor_id
JOIN movies m ON m.movie_id=ma.movie_id
GROUP BY a.actor_id
ORDER BY movies_count DESC;