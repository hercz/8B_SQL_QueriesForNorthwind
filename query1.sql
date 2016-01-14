-- 1. Write a query which shows the orders more detailed.
-- It should contain:
-- OrderID
-- ProductID
-- ProductName: name of the ordered product
-- UnitPrice
-- Quantity
-- Discount
-- Total: total price to be paid calculated by unit price, quantity and discount

SELECT 
    OrderDetails.OrderID,
    Products.ProductID,
    Products.ProductName,
    Products.UnitPrice,
    OrderDetails.Quantity,
    OrderDetails.Discount,
    (OrderDetails.Quantity * OrderDetails.UnitPrice) * (1 - OrderDetails.Discount)
FROM
    Products,
    OrderDetails
WHERE
    Products.ProductID = OrderDetails.ProductID;
