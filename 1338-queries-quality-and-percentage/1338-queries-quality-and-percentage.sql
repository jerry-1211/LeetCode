# Write your MySQL query statement below

SELECT query_name
    ,ROUND(SUM(rating/position)/COUNT(query_name),2) quality 
    ,ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END)/COUNT(*) * 100,2) poor_query_percentage 
    FROM 
        Queries Q
    GROUP BY 
        query_name
