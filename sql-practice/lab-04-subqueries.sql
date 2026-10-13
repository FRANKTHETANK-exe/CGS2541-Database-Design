SELECT CategoryName
FROM Categories
WHERE CategoryID IN (
    SELECT CategoryID
    FROM Products
)
ORDER BY CategoryName;

SELECT ProductName, ListPrice
FROM Products
WHERE ListPrice > (
    SELECT AVG(ListPrice)
    FROM Products
)
ORDER BY ListPrice DESC;

SELECT CategoryName
FROM Categories
WHERE CategoryID NOT IN (
    SELECT CategoryID
    FROM Products
);

SELECT ProductName, DiscountPercent
FROM Products
WHERE DiscountPercent NOT IN (
    SELECT DiscountPercent
    FROM Products
    GROUP BY DiscountPercent
    HAVING COUNT(*) > 1
)
ORDER BY ProductName;
