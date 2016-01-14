-- 2. Write a query which shows the customers and suppliers in single result.
-- It should contain the columns listed below:
-- City
-- CompanyName
-- ContactName
-- Relationship: 'Customer' or 'Supplier'
-- The result should be sorted by City.

SELECT 
    City, CompanyName, ContactName, 'Customer' AS Relationship
FROM
    Customers 
UNION SELECT 
    City, CompanyName, ContactName, 'Supplier' AS Relationship
FROM
    Suppliers
ORDER BY City, ContactName;

-- SELECT 
--     City, CompanyName, ContactName, 'Customer' AS Relationship
-- FROM
--     Customers 
-- UNION ALL SELECT 
--     City, CompanyName, ContactName, 'Supplier' AS Relationship
-- FROM
--     Suppliers
-- ORDER BY City, ContactName;



