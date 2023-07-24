/*Group By with having clause*/

SELECT 
    orderNumber,
    SUM(quantityOrdered) AS ItemCount,
    SUM(quantityOrdered * priceEach) AS Total
FROM
    orders
        INNER JOIN
    orderdetails USING (orderNumber)
GROUP BY orderNumberemployeesemployeespayments
HAVING Total > 1000;