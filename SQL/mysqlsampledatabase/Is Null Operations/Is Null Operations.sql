/* 1. Find customers who do not have a sales representative */

SELECT 
    *
FROM
    customers
WHERE
    salesRepEmployeeNumber IS NULL;

/*2. Find customers who do have a sales representative*/
SELECT 
    *
FROM
    customers
WHERE
    salesRepEmployeeNumber IS NOT NULL; 