use world;

# Using count, get the number of cities in the USA
SELECT count(ci.ID) 
FROM country as co
JOIN city as ci 
ON co.Code = ci.CountryCode
WHERE co.Code = 'USA'
GROUP by ci.CountryCode;

# Find out what the population and life expectancy for people in Argentina (ARG) is
SELECT Population, LifeExpectancy 
FROM country 
WHERE Code = 'ARG';

# Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT *
FROM country 
ORDER BY LifeExpectancy DESC
LIMIT 1;

# Select 25 cities around the world that start with the letter 'F' in a single SQL query
SELECT *
FROM city
WHERE Name LIKE 'F%'
LIMIT 25;

# Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only
SELECT ID, Name, Population 
FROM city 
LIMIT 10;

# Create a SQL statement to find only those cities from city table whose population is larger than 2000000
SELECT *
FROM city 
WHERE Population > 2000000;

# Create a SQL statement to find all city names from city table whose name begins with “Be” prefix
SELECT Name as 'City Name'
FROM city 
WHERE Name Like 'Be%';

# Create a SQL statement to find only those cities from city table whose population is between 500000-1000000
SELECT *
FROM city 
WHERE Population BETWEEN 500000 AND 1000000;

# Create a SQL statement to find a city with the lowest population in the city table
SELECT * 
FROM city 
ORDER BY Population ASC
LIMIT 1;

#Create a SQL statement to show the population of Switzerland and all the languages spoken there
SELECT co.Population, cl.Language, cl.Percentage
FROM country as co
JOIN countrylanguage as cl
ON co.code = cl.countrycode
WHERE co.Name = 'Switzerland';

# Create a SQL statement to find the capital of Spain (ESP)
SELECT ci.Name FROM country as co
JOIN city as ci
ON co.Code = ci.CountryCode 
WHERE co.Name = 'Spain' AND co.capital = ci.ID;

# Create a SQL statement to find the country with the highest life expectancy
SELECT *
FROM country 
ORDER BY LifeExpectancy DESC
LIMIT 1;

# Create a SQL statement to find all cities from the Europe continent
SELECT ci.Name 
FROM country as co
RIGHT JOIN city as ci
ON co.Code = ci.CountryCode 
WHERE Continent = 'Europe';

# Create a SQL statement to find the most populated city in the city table
SELECT Name, Population 
FROM city 
ORDER BY Population DESC
LIMIT 1;

