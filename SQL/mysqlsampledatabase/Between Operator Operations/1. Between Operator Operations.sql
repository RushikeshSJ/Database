/* Between Operator Operations*/

select * from orders;

/* 1. Find product information from Products where buyPrice is 
between 90 and 100 [ try with not ]*/
Select * from products where buyPrice between 90 and 100;

/* 2. Find order information from Orders between dates 1/1/2003 to 
31/1/2003
*/
SELECT * FROM Orders WHERE orderdate BETWEEN '2003-01-01' AND '2003-01-31';