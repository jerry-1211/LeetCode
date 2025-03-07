
SELECT D1.name AS Department , E1.name AS Employee , E1.salary AS Salary 
    FROM
        (
        SELECT *, DENSE_RANK() OVER (PARTITION BY departmentId  ORDER BY salary DESC) AS salaryRank
            FROM Employee 
        )  E1
    INNER JOIN Department D1 
    ON E1.departmentId = D1.id
    WHERE E1.salaryRank <= 3
