/*1. Correlated Subquery Operations*/

SELECT 
    productName, buyPrice
FROM
    products P1
WHERE
    buyPrice > (SELECT 
            AVG(buyPrice)
        FROM
            products
        WHERE
            productline = P1.productline);