# Write your MySQL query statement below
SELECT ROUND(SUM(CASE WHEN kind_of_delivery = "immediate" THEN 1 ELSE 0 END) * 100 / COUNT(*) ,2) immediate_percentage 
FROM 
    (
    SELECT customer_id, MIN(order_date) order_date
        FROM Delivery 
        GROUP BY customer_id 
    ) A
INNER JOIN
    (
    SELECT customer_id, order_date ,
        CASE WHEN 
            order_date  = customer_pref_delivery_date 
        THEN "immediate"
        ELSE "scheduled"
        END kind_of_delivery
    FROM Delivery
    ) B
ON A.order_date = B.order_date AND A.customer_id = B.customer_id 