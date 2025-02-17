# Write your MySQL query statement below
SELECT name, bonus
    FROM Employee E 
    LEFT JOIN 
    (
    Bonus B
    ) 
    ON E.empId = B.empId 
WHERE COALESCE(bonus,0) < 1000