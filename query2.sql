-- 2. Write a query which shows the customers and suppliers in single result.
-- It should contain the columns listed below:
-- City
-- CompanyName
-- ContactName
-- Relationship: 'Customer' or 'Supplier'
-- The result should be sorted by City.

SELECT 
    City, CompanyName, ContactName, 'Customers' AS Relationship
FROM
    Customers 
UNION SELECT 
    City, CompanyName, ContactName, 'Suppliers' AS Relationship
FROM
    Suppliers
ORDER BY City;