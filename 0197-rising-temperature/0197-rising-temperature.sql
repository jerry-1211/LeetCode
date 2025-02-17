SELECT id
FROM Weather W1
    INNER JOIN
    (
        SELECT DATE_ADD(recordDate, INTERVAL 1 DAY) recordDate2, temperature
        FROM Weather 
    ) W2
    ON W1.recordDate = W2.recordDate2
WHERE W1.temperature - W2.temperature > 0