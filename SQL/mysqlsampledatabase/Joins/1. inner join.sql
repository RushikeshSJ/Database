/*Joins */
/*1. Inner Join*/

select productCode, productName, productDescription from products inner join productlines using(productline);