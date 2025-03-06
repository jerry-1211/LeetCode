# Write your MySQL query statement below

SELECT
    A.employee_id,
    A.name,
    COUNT(*) AS reports_count ,
    ROUND(AVG(B.age) ,0) AS average_age 
FROM Employees  A
LEFT JOIN Employees  B
ON A.employee_id = B.reports_to 
WHERE B.reports_to  IS NOT NULL
GROUP BY A.employee_id 
ORDER BY employee_id 