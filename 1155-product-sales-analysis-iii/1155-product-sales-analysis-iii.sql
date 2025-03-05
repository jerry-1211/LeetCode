# Write your MySQL query statement below

SELECT A.product_id , A.year AS first_year ,quantity ,price
    FROM
        Sales A
    INNER JOIN
        (
            SELECT product_id  , MIN(year) AS year
            FROM Sales 
            GROUP BY product_id 
        )B
    ON A.product_id  = B.product_id  
    AND A.year = B.year