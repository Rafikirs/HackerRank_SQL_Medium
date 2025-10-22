# Exercise: Binary Tree Nodes
# URL: https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
# Description: Find whether a node is a root, an inner or a leaf of a binary tree

SELECT
    N,
    CASE 
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM BST
ORDER BY N
;

