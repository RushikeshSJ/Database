/*1. Group by clause*/

select count(customerNumber), country from customers group by country;

/*2. Sum Creditlimit of each country*/

select sum(creditlimit),country from customers group by country;

/*3. Find the number of orders in each status from Orders Table*/

select count(status), status from orders group by status;

/*4. Find – Amount = sum( quantityOrdered * priceEach )*/

select sum(quantityOrdered*priceEach)as Amount from orderdetails;

select status, 
sum(quantityOrdered * priceEach) 
as Amount from orders inner join orderdetails using(orderNumber) 
group by status;

/*Find – Total = sum( quantityOrdered * priceEach )*/

select orderNumber, 
sum(quantityOrdered * priceEach) as Total from orders
inner join orderdetails using(orderNumber) 
group by orderNumber;

/*Group By Operations*/

select year(orderDate),
sum(quantityOrdered * priceEach) as Total, Status
from orders inner join 
orderdetails using(orderNumber) 
where status="Shipped" group by year(orderDate);
