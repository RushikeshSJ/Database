/*Exists and Not Exists in Subquery*/

SELECT 
    orderNumber, SUM(quantityOrdered * priceEach) AS Total
FROM
    orderdetails
GROUP BY orderNumber
HAVING Total > 60000;

/*	*/
SELECT 
    *
FROM
    customers
WHERE
    EXISTS( SELECT 
            orderNumber, SUM(quantityOrdered * priceEach) AS Total
        FROM
            orderdetails
        GROUP BY orderNumber
        HAVING Total > 60000);