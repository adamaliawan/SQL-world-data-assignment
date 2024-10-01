# SQL Query Practice: World Database Assignment

This project contains a series of SQL queries performed on the World database. The World database contains information about countries, cities, and languages, and is often used for learning SQL due to its structured, real-world data.

## Project Overview

The primary goals of this project are:
- To practice writing SQL queries to answer questions about global data.
- To explore how to filter, join, and aggregate data to extract meaningful insights.
- To gain a deeper understanding of how to use SQL for querying complex datasets.

## Dataset

The World database includes the following key tables:
- **Country**: Information about countries, including population, surface area, GDP, and more.
- **City**: Details about cities within each country, such as population and country code.
- **CountryLanguage**: Information about the languages spoken in each country, including percentage distribution.

## Key SQL Concepts Covered
- **SELECT**: Retrieving specific columns of data.
- **WHERE**: Filtering results based on conditions.
- **JOIN**: Combining rows from multiple tables based on a related column.
- **GROUP BY**: Grouping results to perform aggregate functions like `SUM`, `COUNT`, `AVG`.
- **ORDER BY**: Sorting results based on specific columns.
- **AGGREGATE FUNCTIONS**: Performing calculations such as `SUM`, `AVG`, `COUNT`, `MAX`, `MIN`.

## Example Queries

1. **Retrieve the total population of each continent**:
   ```sql
   SELECT continent, SUM(population) AS total_population
   FROM country
   GROUP BY continent;
