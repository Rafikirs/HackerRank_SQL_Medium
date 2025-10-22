# Exercise: Contest Leaderboard
# URL: https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
# Description: Write a query to print the hacker_id, name, and total of the maximum scores of the hackers

WITH
cte_max_score AS (
    SELECT 
        MAX(score) AS max_score,
        hacker_id
    FROM Submissions
    GROUP BY challenge_id, hacker_id
)

SELECT 
    cms.hacker_id,
    h.name,
    SUM(cms.max_score) AS total_score
FROM cte_max_score AS cms 
INNER JOIN Hackers AS h 
    ON cms.hacker_id = h.hacker_id
GROUP BY cms.hacker_id, h.name
HAVING SUM(cms.max_score) != 0
ORDER BY SUM(cms.max_score) DESC, cms.hacker_id
;
