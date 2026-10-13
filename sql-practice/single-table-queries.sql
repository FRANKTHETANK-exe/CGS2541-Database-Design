-- Transcribed from submitted answer screenshots for the single-table SQL lab.
-- Requires the course's Music Shop exercise database, which is not included.
-- Statements are preserved as shown and have not been rerun during recovery.

-- Projection, before adding a sort (answer image 5).
SELECT ProductCode, ProductName, ListPrice, DiscountPercent
FROM Products;

-- The same projection with a descending price sort (answer image 6).
SELECT ProductCode, ProductName, ListPrice, DiscountPercent
FROM Products
ORDER BY ListPrice DESC;

-- Inclusive range filter (answer image 7).
SELECT ProductName, ListPrice, DateAdded
FROM Products
WHERE ListPrice >= 500 AND ListPrice <= 2000
ORDER BY DateAdded DESC;

-- Calculated discount amounts and prices (answer image 8).
SELECT ProductName, ListPrice, DiscountPercent,
       (ListPrice * DiscountPercent / 100) AS DiscountAmount,
       (ListPrice - (ListPrice * DiscountPercent / 100)) AS DiscountPrice
FROM Products
ORDER BY DiscountPrice DESC;

-- Calculated line totals (answer image 9).
SELECT ItemID, ItemPrice, DiscountAmount, Quantity,
       (ItemPrice * Quantity) AS PriceTotal,
       (DiscountAmount * Quantity) AS DiscountTotal,
       ((ItemPrice - DiscountAmount) * Quantity) AS ItemTotal
FROM OrderItems
WHERE ((ItemPrice - DiscountAmount) * Quantity) > 500
ORDER BY ItemTotal DESC;

-- Null shipment dates (answer image 10).
SELECT OrderID, OrderDate, ShipDate
FROM Orders
WHERE ShipDate IS NULL;
