/*Join Operations*/

/*1. Find all customers and their orders*/

SELECT 
    customerName, customerNumber
FROM
    customers
        INNER JOIN
    orders USING (customerNumber);

/*2. Find all customer who have no orders*/

SELECT 
    customerName, y.customerNumber
FROM
    customers x
        LEFT JOIN
    orders y USING (customerNumber)
WHERE
    y.customerNumber IS NULL;
