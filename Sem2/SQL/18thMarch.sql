select productCode, productName, buyPrice from products where buyPrice between 90 and 100;
select first_name from employees where jobTitle='SalesRep';
select firstName, lastName from employees order by lastName Asc;
select * from payments order by amount desc;
select sum(amount) from payments;
select avg(amount) from payments;
select productName from products where productName like '_____A%';
select customerName from customers where salesrepEmployeeNumber is null;
SELECT DISTINCT
state, city
FROM
customers
WHERE
state IS NOT NULL
ORDER BY
state,
city;
select concat(contactFirstName,' ', contactLastName) from customers;
select customerName from customers where country in ('Singapore','France','Canada');
select status,count(status) from orders group by status;
select orderNumber, sum(quantityOrdered * priceEach) from orderdetails group by orderNumber;
