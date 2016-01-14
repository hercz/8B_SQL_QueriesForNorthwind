-- 1. Write a query which shows the orders more detailed.
-- It should contain:
-- OrderID
-- ProductID
-- ProductName: name of the ordered product
-- UnitPrice
-- Quantity
-- Discount
-- Total: total price to be paid calculated by unit price, quantity and discount
-- The list should sort by OrderID.

SELECT 
    OrderDetails.OrderID,
    OrderDetails.ProductID,
    Products.ProductName,
    OrderDetails.UnitPrice,
    OrderDetails.Quantity,
    OrderDetails.Discount,
    (OrderDetails.Quantity * OrderDetails.UnitPrice) * (1 - OrderDetails.Discount) AS Total
FROM
    Products,
    OrderDetails
WHERE
    Products.ProductID = OrderDetails.ProductID
ORDER BY OrderDetails.OrderID , OrderDetails.ProductID;

