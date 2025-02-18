# Write your MySQL query statement below
SELECT S.user_id  ,
        ROUND(AVG(COALESCE(action_fixed,0)) ,2) confirmation_rate
    FROM Signups S
    LEFT JOIN
    (
        SELECT *,
            CASE
                WHEN action = 'timeout' THEN 0 
                WHEN action = 'confirmed' THEN 1
            END AS action_fixed
        FROM Confirmations 
    ) C
    ON S.user_id = C.user_id 
    GROUP BY S.user_id
