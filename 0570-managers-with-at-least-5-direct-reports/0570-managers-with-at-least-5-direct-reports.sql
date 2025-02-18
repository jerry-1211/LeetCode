# Write your MySQL query statement below
SELECT E1.name 
    FROM Employee E1
    INNER JOIN 
    (
        SELECT managerId 
            FROM Employee 
            WHERE managerId IS NOT NULL
            GROUP BY managerId 
            HAVING COUNT(*) >= 5
    ) E2
    ON E1.id  = E2.managerId 