/*Join Operations*/
/*It joins products and orderdetains with the help of productCode*/
select productName, orderlineNumber, productName, quantityOrdered, priceEach
from products inner join orderdetails using (productCode);

/**/
select orderNumber, OrderDate, orderlineNumber, productName, quantityOrdered, priceEach 
from products inner join orderdetails inner join orders using (orderNumber);