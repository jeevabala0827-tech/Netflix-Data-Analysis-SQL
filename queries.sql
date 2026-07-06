-- 1. Movies vs TV Shows count
WITH movievsshow AS (
  SELECT COUNT(*) AS totalid, type
  FROM netflix_titles
  GROUP BY type)
SELECT * FROM movievsshow;

-- 2. Top 5 countries by content count
WITH countrywisetitle AS (
  SELECT COUNT(title) AS titlecount, country
  FROM netflix_titles
  GROUP BY country
  ORDER BY titlecount DESC
  LIMIT 5)
SELECT * FROM countrywisetitle;

-- 3. Content distribution by rating
WITH ratingwise AS (
  SELECT COUNT(title), rating
  FROM netflix_titles
  GROUP BY rating
  ORDER BY COUNT(title) DESC)
SELECT * FROM ratingwise;

-- 4. Total content released in 2021
WITH totalcontant2021 AS (
  SELECT COUNT(title), release_year
  FROM netflix_titles
  WHERE release_year = 2021)
SELECT * FROM totalcontant2021;

-- 5. Longest duration movie
WITH longmovie AS (
  SELECT duration, title, type
  FROM netflix_titles
  WHERE type = 'movie'
  ORDER BY CAST(duration AS UNSIGNED) DESC)
SELECT * FROM longmovie;

-- 6. Most active director
WITH activedirector AS (
  SELECT director, COUNT(title)
  FROM netflix_titles
  GROUP BY director
  ORDER BY COUNT(title) DESC)
SELECT * FROM activedirector;

-- 7. Documentaries count
WITH documentariescount AS (
  SELECT COUNT(*), listed_in
  FROM netflix_titles
  WHERE listed_in = 'Documentaries')
SELECT * FROM documentariescount;

-- 8. Titles with empty country
WITH findempty AS (
  SELECT country
  FROM netflix_titles
  WHERE country = '')
SELECT * FROM findempty;
