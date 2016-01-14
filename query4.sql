-- 4. Write a query which lists the total amount to be paid for the different orders.
-- The result set should contains only two column
-- OrderID
-- OrderTotal: sum of orderdetails' total
-- It should be sorted by OrderID.

SELECT 
    OrderID, SUM(UnitPrice) AS Total
FROM
    OrderDetails
ORDER BY OrderID;