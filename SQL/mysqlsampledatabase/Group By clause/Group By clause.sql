/*1. Group by clause*/

SELECT 
    COUNT(customerNumber), country
FROM
    customers
GROUP BY country;

/*2. Sum Creditlimit of each country*/

SELECT 
    SUM(creditlimit), country
FROM
    customers
GROUP BY country;

/*3. Find the number of orders in each status from Orders Table*/

SELECT 
    COUNT(status), status
FROM
    orders
GROUP BY status;

/*4. Find – Amount = sum( quantityOrdered * priceEach )*/

SELECT 
    SUM(quantityOrdered * priceEach) AS Amount
FROM
    orderdetails;

SELECT 
    status, SUM(quantityOrdered * priceEach) AS Amount
FROM
    orders
        INNER JOIN
    orderdetails USING (orderNumber)
GROUP BY status;

/*Find – Total = sum( quantityOrdered * priceEach )*/

select orderNumber, 
sum(quantityOrdered * priceEach) as Total from orders
inner join orderdetails using(orderNumber) 
group by orderNumber;

/*Group By Operations*/

SELECT 
    YEAR(orderDate),
    SUM(quantityOrdered * priceEach) AS Total,
    Status
FROM
    orders
        INNER JOIN
    orderdetails USING (orderNumber)
WHERE
    status = 'Shipped'
GROUP BY YEAR(orderDate);
