# Write your MySQL query statement below

SELECT MAX(A.num) AS num 
    FROM 
        (
        SELECT *
            FROM MyNumbers 
            GROUP BY num
            HAVING COUNT(num) = 1
        ) A
