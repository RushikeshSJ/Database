/* 4. Find customers from USA or France whose creditlimit > 100000*/

Select * from customers where country='USA' or country='France' and creditLimit>100000;