select * from customers; 

/*2. Find customers from USA and state CA whose creditlimit > 100000*/

select * from customers where country='USA' and state='CA' and creditLimit > 100000;