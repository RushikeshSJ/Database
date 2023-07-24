SELECT 
    *
FROM
    customers;

/* 1. Find customers from USA and state CA */
SELECT 
    *
FROM
    customers
WHERE
    country = 'USA' AND state = 'CA';