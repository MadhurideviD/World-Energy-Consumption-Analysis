SELECT
  *
FROM
  "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
LIMIT
  10;

  -- Top energy consumers (total & per capita)--
SELECT country, SUM(primary_energy_consumption) AS total_energy
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
WHERE year = 2022
GROUP BY country
ORDER BY total_energy DESC
LIMIT 10;


SELECT country, AVG(energy_per_capita) AS avg_energy_per_capita
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
WHERE year = 2022
GROUP BY country
ORDER BY avg_energy_per_capita DESC
LIMIT 10;


-- Fossil vs Renewables over time --
SELECT year,
       SUM(fossil_fuel_consumption) AS fossil,
       SUM(renewables_consumption) AS renewables
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
GROUP BY year
ORDER BY year;


-- Renewable leaders & laggards--
SELECT country, AVG(renewables_share_energy) AS avg_renewable_share
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
GROUP BY country
ORDER BY avg_renewable_share DESC;


--Regional differences--
SELECT continent, year, SUM(primary_energy_consumption) AS total_energy
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
GROUP BY continent, year
ORDER BY continent, year;

SELECT continent, year,
       SUM(primary_energy_consumption) AS total_energy,
       AVG(energy_per_capita) AS avg_per_capita
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
GROUP BY continent, year
ORDER BY continent, year;

--Energy efficiency (energy per GDP)--
SELECT country, AVG(energy_per_gdp) AS avg_efficiency
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
GROUP BY country
ORDER BY avg_efficiency ASC;

--Inequality in energy access (per capita)--
SELECT continent,
       AVG(energy_per_capita) AS avg_energy_per_capita,
       MIN(energy_per_capita) AS min_energy_per_capita,
       MAX(energy_per_capita) AS max_energy_per_capita
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
WHERE year = 2022
GROUP BY continent
ORDER BY avg_energy_per_capita DESC;

--Renewable share change between 2000–2020--
SELECT year,
       SUM(renewables_consumption) / SUM(primary_energy_consumption) * 100 AS renewables_share
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
WHERE year BETWEEN 2000 AND 2020
GROUP BY year
ORDER BY year;


--Fossil dependence risk--
SELECT country, AVG(fossil_share_energy) AS fossil_dependence
FROM "ENERGY_DATA"."PUBLIC"."ENERGY_DATA_V1"
GROUP BY country
HAVING AVG(fossil_share_energy) > 0.8
ORDER BY fossil_dependence DESC;

