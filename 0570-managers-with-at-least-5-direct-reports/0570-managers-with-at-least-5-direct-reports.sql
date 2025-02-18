# Write your MySQL query statement below
SELECT E1.name 
    FROM Employee E1
    INNER JOIN 
    (
        SELECT *, COUNT(*) COUNT
        FROM Employee 
        WHERE managerId IS NOT NULL
        GROUP BY managerId 
    ) E2
    ON E1.id  = E2.managerId 
    WHERE E2.COUNT >= 5