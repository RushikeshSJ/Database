/*Group By with having clause*/

select orderNumber, 
sum(quantityOrdered) as ItemCount, 
sum(quantityOrdered * priceEach) as Total 
from orders inner join orderdetails
using(orderNumber) group by orderNumber having Total>1000;