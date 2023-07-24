/*Subquery*/

SELECT 
    lastName, firstName
FROM
    employees
WHERE
    officeCode IN (SELECT 
            officeCode
        FROM
            offices
        WHERE
            country = 'USA');

/*	2	*/
SELECT 
    contactFirstName, contactLastName, Amount
FROM
    customers
        INNER JOIN
    payments USING (customerNumber)
WHERE
    amount = (SELECT 
            MAX(amount)
        FROM
            payments);
            
/*3. Find customers whose payments are greater than the average 
payment using a subquery*/

SELECT 
    contactFirstName, contactLastName, Amount
FROM
    customers
        INNER JOIN
    payments USING (customerNumber)
WHERE
    amount > (SELECT 
            AVG(amount)
        FROM
            payments);
            
/*4. */
SELECT 
    customerName
FROM
    customers
WHERE
    customerNumber NOT IN (SELECT DISTINCT
            customerNumber
        FROM
            orders);