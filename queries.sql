-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName
    , CategoryName 
FROM product
JOIN category AS cat
ON categoryId = cat.id


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [Order].Id,
Customer.CompanyName
from [Order]
join
Customer on [Order].CustomerId = Customer.id
where [Order].OrderDate < '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.ProductName, od.quantity
from Product as p
join OrderDetail as od
on od.ProductId = p.id
where od.OrderID = '10251'
order by p.ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select (e.lastname) as soldby
, o.id
, c.CompanyName as OrderBy
from [order] as o
join employee as e on o.EmployeeId = e.id
join customer as c on o.CustomerId = c.id;