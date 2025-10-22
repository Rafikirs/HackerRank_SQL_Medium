# Exercise: Weather Observation Station 18
# URL: https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
# Description: Query the Manhattan Distance between the two most extreme points 

SELECT ROUND(MAX(LAT_N) - MIN(LAT_N) + MAX(LONG_W) - MIN(LONG_W), 4)
FROM STATION
