# Write your MySQL query statement below

SELECT R.contest_id, 
    ROUND(COUNT(DISTINCT R.user_id)/(SELECT COUNT(DISTINCT user_id)FROM Users)*100 ,2) percentage 
    FROM
         Register R
    GROUP BY
         contest_id 
    ORDER BY 
        percentage DESC, contest_id 