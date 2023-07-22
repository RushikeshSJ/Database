/* 1. Find customers who do not have a sales representative */

select * from customers where salesRepEmployeeNumber is null;

/*2. Find customers who do have a sales representative*/
select * from customers where salesRepEmployeeNumber is not null; 

