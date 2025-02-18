SELECT project_id, ROUND(SUM(experience_years)/COUNT(project_id),2) average_years 
FROM
     Project P 
INNER JOIN
    Employee E
ON P.employee_id = E.employee_id 
GROUP BY project_id
