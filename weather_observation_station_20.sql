# Exercise: Weather Observation Station 20
# URL: https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
# Description: Query the median of latitudes

WITH
cte_order AS (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER() AS nb_rows
    FROM STATION
)

SELECT ROUND(AVG(LAT_N), 4)
FROM cte_order AS co
WHERE co.rn IN (CEIL(co.nb_rows/2), FLOOR(co.nb_rows/2)+1)
