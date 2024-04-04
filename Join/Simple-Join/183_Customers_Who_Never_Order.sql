-- Solution 1
SELECT name as Customers
FROM Customers
WHERE Customers.id not in (SELECT customerId from Orders)

-- Solution 2
SELECT name as Customers
FROM Customers
LEFT JOIN Orders ON Orders.customerId = Customers.id
WHERE customerId is null
