# Write your MySQL query statement below

-- SELECT DISTINCT L0.num  AS ConsecutiveNums 
SELECT DISTINCT L0.num AS ConsecutiveNums
    FROM Logs L0
    LEFT JOIN
    (
    SELECT id-1 AS id, num
        FROM Logs
        WHERE id-1 > 0
    ) L1
    ON L0.id = L1.id
    LEFT JOIN
    (
    SELECT id-2 AS id, num
        FROM Logs
        WHERE id-2 > 0
    ) L2
    ON L0.id = L2.id
    WHERE L0.num = L1.num AND L0.num = L2.num




-- SELECT DISTINCT num AS ConsecutiveNums 
-- FROM 
--     (
--     SELECT *, LAG(num) OVER(ORDER BY id) AS num2 , LAG(num,2) OVER(ORDER BY id) AS num3
--         FROM Logs 
--     ) A
-- WHERE A.num = A.num2 AND A.num2 = A.num3
