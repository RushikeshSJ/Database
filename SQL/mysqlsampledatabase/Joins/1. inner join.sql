/*Joins */
/*1. Inner Join*/

SELECT 
    productCode, productName, productDescription
FROM
    products
        INNER JOIN
    productlines USING (productline);