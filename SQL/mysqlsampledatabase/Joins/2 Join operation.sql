/*Join Operations*/

select * from customers;
/*1. Find all customers and their orders*/
select customerName, customerNumber 
from customers 
inner join orders using (customerNumber);

/*2. Find all customer who have no orders*/
select customerName, y.customerNumber 
from customers x left join orders y 
using (customerNumber) 
where y.customerNumber is null;
