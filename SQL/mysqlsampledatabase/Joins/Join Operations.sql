/*Join Operations*/
SELECT 
    productName,
    orderlineNumber,
    productName,
    quantityOrdered,
    priceEach
FROM
    products
        INNER JOIN
    orderdetails USING (productCode);

/**/
SELECT 
    orderNumber,
    OrderDate,
    orderlineNumber,
    productName,
    quantityOrdered,
    priceEach
FROM
    products
        INNER JOIN
    orderdetails
        INNER JOIN
    orders USING (orderNumber);