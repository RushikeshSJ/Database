/*Self Join*/

/*1. */
SELECT 
    CONCAT(m.firstName, ' ', m.lastName) AS manager,
    CONCAT(e.firstName, ' ', e.lastName) AS emp
FROM
    employees m
        INNER JOIN
    employees e ON m.employeeNumber = e.reportsTo;