# Write your MySQL query statement below
SELECT S.user_id,
    ROUND
    (
        COALESCE(
            AVG
            (
                CASE WHEN c.action = 'confirmed' THEN 1
                ELSE 0
                END
            ),0
        ),2
    )
    AS confirmation_rate 
    FROM Signups S
    LEFT JOIN Confirmations C
    ON S.user_id = C.user_id 
    GROUP BY S.user_id
