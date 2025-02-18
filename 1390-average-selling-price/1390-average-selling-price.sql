SELECT P.product_id, 
    CASE WHEN SUM(U.units)<>0 THEN ROUND(SUM(P.price * U.units)/SUM(U.units),2) ELSE 0 END AS average_price 
    FROM 
        Prices P
    LEFT JOIN
        UnitsSold U
    ON 
        P.product_id = U.product_id 
    AND U.purchase_date <= P.end_date AND U.purchase_date >= P.start_date
    GROUP BY P.product_id 