USE moviesdb;
SELECT * FROM movies ORDER BY release_year DESC;
SELECT * FROM movies WHERE release_year=2022;
SELECT * FROM movies WHERE release_year > 2020;
SELECT * FROM movies WHERE release_year > 2020 AND imdb_rating>8;
SELECT * FROM movies WHERE studio IN ("Marvel studios", "Hombale Films");
SELECT * FROM movies WHERE title LIKE "%THOR%" ORDER BY release_year;
SELECT * FROM movies WHERE studio NOT IN ("Marvel studios");
