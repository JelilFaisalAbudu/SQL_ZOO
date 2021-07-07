-- .....Basic SELECT demos.....

-- Find(SELECT) the names of countries with at least a population of 2 million.
SELECT name 
FROM world
WHERE population >= 200000000;

-- select the names and per-capita income of countries with population greater or equal 2 million
SELECT name, gdp/population
FROM world
WHERE population >= 200000000;

SELECT name, population/1000000
FROM world
WHERE continent = 'South America';

SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');

SELECT name
FROM world
WHERE name LIKE '%United%';

SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;

SELECT name, population, area
FROM world
WHERE population > 250000000 XOR area > 3000000;

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'south America';

-- show names and per-capita income with GDP of at least 1 trillion
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp >= 1000000000000;

-- select names and capital where name length equals the capital length
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital);


-- look up for the names and capitals of countries where the first letter of each match
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital;

-- show countries' names comprise of only one word and contain all the English alphabet vowels.
SELECT name
FROM world
WHERE LOWER(name) LIKE '%e%'
  AND LOWER(name) LIKE '%a%'
  AND LOWER(name) LIKE '%i%'
  AND LOWER(name) LIKE '%o%'
  AND LOWER(name) LIKE '%u%'
  AND LOWER(name) NOT LIKE '% %';
