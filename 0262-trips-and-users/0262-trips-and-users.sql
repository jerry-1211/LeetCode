# Write your MySQL query statement below

SELECT T1.request_at AS Day,
    ROUND( SUM(CASE WHEN status = "completed" THEN 0 ELSE 1 END) / COUNT(*),2) AS "Cancellation Rate"
    FROM Trips T1
    LEFT JOIN Users U1
    ON T1.client_id= U1.users_id 
    LEFT JOIN Users U2
    ON T1.driver_id= U2.users_id 
    WHERE U1.banned <> "YES" 
        AND U2.banned <> "YES" 
        AND T1.request_at BETWEEN "2013-10-01" AND "2013-10-03"
    GROUP BY T1.request_at
    ORDER BY T1.request_at 





-- | id | client_id | driver_id | city_id | status              | request_at | users_id | banned | role   | users_id | banned | role   |
-- | -- | --------- | --------- | ------- | ------------------- | ---------- | -------- | ------ | ------ | -------- | ------ | ------ |
-- | 9  | 3         | 10        | 12      | completed           | 2013-10-03 | 3        | No     | client | 10       | No     | driver |
-- | 5  | 1         | 10        | 1       | completed           | 2013-10-02 | 1        | No     | client | 10       | No     | driver |
-- | 1  | 1         | 10        | 1       | completed           | 2013-10-01 | 1        | No     | client | 10       | No     | driver |
-- | 7  | 3         | 12        | 6       | completed           | 2013-10-02 | 3        | No     | client | 12       | No     | driver |
-- | 3  | 3         | 12        | 6       | completed           | 2013-10-01 | 3        | No     | client | 12       | No     | driver |
-- | 10 | 4         | 13        | 12      | cancelled_by_driver | 2013-10-03 | 4        | No     | client | 13       | No     | driver |
-- | 4  | 4         | 13        | 6       | cancelled_by_client | 2013-10-01 | 4        | No     | client | 13       | No     | driver |