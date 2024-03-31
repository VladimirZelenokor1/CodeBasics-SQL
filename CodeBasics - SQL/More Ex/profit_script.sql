USE moviesdb;
SELECT
	m.movie_id, title, budget, revenue, currency, unit, 
    CASE
		WHEN unit="Thousands" THEN ROUND((revenue-budget)/1000,2)
        WHEN unit="Billions" THEN ROUND((revenue-budget)*1000,2)
		ELSE ROUND((revenue-budget),2)
    END AS profit_mln
FROM movies m
JOIN financials f USING (movie_id) WHERE industry="Bollywood"
ORDER BY profit_mln DESC;