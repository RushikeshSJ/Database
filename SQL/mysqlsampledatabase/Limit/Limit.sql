/*1. inner Join*/

/*Limit*/
select * from employees limit 10;/*It Will Print 1st 10 rows*/

select * from employees limit 3, 10;/*It will print 10 rows but start at 
4th row it escape first 3 rows*/

/*1. Get the top five customers who have the highest credit*/
select * from customers order by creditLimit DESC limit 5;

/*2. Find customer who have second highest credit*/
select * from customers order by creditLimit DESC limit 1 offset 1;

/*3. Find first five unique states from customers*/
SELECT DISTINCT state
FROM customers
ORDER BY state
LIMIT 5;
