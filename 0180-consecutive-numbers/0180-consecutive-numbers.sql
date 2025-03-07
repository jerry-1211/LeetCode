# Write your MySQL query statement below

-- SELECT DISTINCT L0.num  AS ConsecutiveNums 
--     FROM Logs L0
--     LEFT JOIN
--     (
--         SELECT L2.id, L2.num AS num2, L3.num AS num3
--             FROM
--             (
--                 SELECT id-1 AS id, num
--                 FROM Logs
--                 WHERE id-1 > 0
--             ) L2
--         LEFT JOIN
--         (
--             SELECT id-2 AS id, num
--                 FROM Logs
--                 WHERE id-2 > 0
--         ) L3
--         ON L2.id = L3.id
--     ) L1
--     ON L0.id = L1.id
--     WHERE num = num2 AND num2 = num3


SELECT DISTINCT num AS ConsecutiveNums 
FROM 
    (
    SELECT *, LAG(num) OVER(ORDER BY id) AS num2 , LAG(num,2) OVER(ORDER BY id) AS num3
        FROM Logs 
    ) A
WHERE A.num = A.num2 AND A.num2 = A.num3
