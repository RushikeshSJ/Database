/* In Operator */
/*1. */
SELECT 
    *
FROM
    customers;

/*2. */
SELECT 
    *
FROM
    customers
WHERE
    country IN ('USA' , 'France');

/*3. */
SELECT 
    *
FROM
    customers
WHERE
    creditLimit BETWEEN 10000 AND 30000;