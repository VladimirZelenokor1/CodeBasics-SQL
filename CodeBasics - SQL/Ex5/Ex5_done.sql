USE moviesdb;
SELECT
	m.title, revenue, currency, unit, 
    CASE
		WHEN unit="Thousands" THEN (revenue-budget)/1000
        WHEN unit="Billiard" THEN (revenue-budget)*1000
        ELSE (revenue-budget)
    END as profit_mln
FROM movies m
JOIN languages l ON (m.language_id=l.language_id)
JOIN financials f ON (f.movie_id=m.movie_id)
WHERE l.name="Hindi"
ORDER BY profit_mln DESC;
