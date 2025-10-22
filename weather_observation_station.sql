# Exercise: Weather Observation Station 19
# URL: https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
# Description: Query the Euclidian Distance between the two most extreme points 

SELECT ROUND(SQRT(POW(MAX(LAT_N) - MIN(LAT_N), 2) + POW(MAX(LONG_W) - MIN(LONG_W), 2)), 4)
FROM STATION
