# Exercise: Placements
# URL: https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
# Description: Write a query to output the names of those students whose best friends got offered a higher salary than them

WITH 
cte_friend_salary AS (
    SELECT 
        f.ID,
        Friend_ID,
        p.Salary AS Friends_salary
    FROM Friends AS f
    INNER JOIN Packages AS p 
        ON p.ID = Friend_ID
)

SELECT Name
FROM Students AS s
INNER JOIN Packages AS p 
    ON p.ID = s.ID
INNER JOIN cte_friend_salary AS cfs 
    ON cfs.ID = s.ID
WHERE p.Salary < cfs.Friends_salary
ORDER BY cfs.Friends_salary 
