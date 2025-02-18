# Write your MySQL query statement below
SELECT C1.id, C1.movie, C1.description, C1.rating
FROM Cinema C1
INNER JOIN
(
    SELECT id, MOD(id,2) <> 0 odd
    FROM Cinema
) C2
ON C1.id = C2.id
WHERE description <> "boring" AND odd = 1
ORDER BY rating  DESC