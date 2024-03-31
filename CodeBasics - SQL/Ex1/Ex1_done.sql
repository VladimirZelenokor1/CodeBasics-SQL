USE moviesdb;
SELECT title, release_year from movies where studio="Marvel Studios"
SELECT * from movies where title LIKE '%Avenger%'
SELECT release_year from movies where title="The Godfather"
SELECT DISTINCT studio from movies where industry="Bollywood"
