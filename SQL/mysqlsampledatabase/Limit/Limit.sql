/*1. inner Join*/
SELECT 
    *
FROM
    employees
LIMIT 10;/*It Will Print 1st 10 rows*/

SELECT 
    *
FROM
    employees
LIMIT 3 , 10;/*It will print 10 rows but start at 
4th row it escape first 3 rows*/

SELECT 
    *
FROM
    customers
ORDER BY creditLimit DESC
LIMIT 5;

/*2. Find customer who have second highest credit*/
SELECT 
    *
FROM
    customers
ORDER BY creditLimit DESC
LIMIT 1 OFFSET 1;

/*3. Find first five unique states from customers*/
SELECT DISTINCT
    state
FROM
    customers
ORDER BY state
LIMIT 5;
