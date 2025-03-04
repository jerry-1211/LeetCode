SELECT ROUND(COUNT(DISTINCT S.player_id) / COUNT(DISTINCT A.player_id ),2) AS fraction  
    FROM Activity A
    LEFT JOIN 
        (
            SELECT player_id, (MIN(event_date) + INTERVAL 1 DAY) AS seq_day
                FROM Activity
                GROUP BY player_id 
        ) S
    ON A.event_date = S.seq_day AND A.player_id = S.player_id 