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
-- 
-- SELECT 
--    O.OrderID,
--    O.ProductID,
--    P.ProductName,
--    O.UnitPrice,
--    O.Quantity,
--    O.Discount,
--    O.Quantity * O.UnitPrice * (1 - O.Discount) AS Total
-- FROM
--    OrderDetails AS O, Products AS P
-- WHERE  O.ProductID = P.ProductID
-- ORDER BY O.OrderID , O.ProductID;

-- 
-- -- 
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
--     
--     
-- 
-- SELECT 
--     OrderDetails.OrderID,
--     OrderDetails.ProductID,
--     Products.ProductName,
--     OrderDetails.UnitPrice,
--     OrderDetails.Quantity,
--     OrderDetails.Discount,
--     OrderDetails.Quantity * OrderDetails.UnitPrice * (1 - OrderDetails.Discount) AS Total
-- FROM
--     OrderDetails
--         JOIN
--     Products ON OrderDetails.ProductID = Products.ProductID
-- ORDER BY OrderDetails.OrderID , OrderDetails.ProductID;
