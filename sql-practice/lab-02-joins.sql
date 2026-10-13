SELECT Categories.CategoryName, Products.ProductName, Products.ListPrice
FROM Categories
INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
ORDER BY Categories.CategoryName, Products.ProductName;

SELECT Customers.FirstName, Customers.LastName, Addresses.Line1,
       Addresses.City, Addresses.State, Addresses.ZipCode
FROM Customers
INNER JOIN Addresses ON Customers.CustomerID = Addresses.CustomerID
WHERE Customers.EmailAddress = 'allan.sherwood@yahoo.com';

SELECT Customers.LastName, Customers.FirstName, Orders.OrderDate,
       OrderItems.ProductID, OrderItems.ItemPrice,
       OrderItems.DiscountAmount, OrderItems.Quantity
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
ORDER BY Customers.LastName, Customers.FirstName, Orders.OrderID, OrderItems.ProductID;

SELECT c.LastName, c.FirstName, o.OrderDate, oi.ProductID,
       oi.ItemPrice, oi.DiscountAmount, oi.Quantity
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN OrderItems oi ON o.OrderID = oi.OrderID
ORDER BY c.LastName, c.FirstName, o.OrderID, oi.ProductID;

SELECT p1.ProductName, p1.ListPrice
FROM Products p1
INNER JOIN Products p2 ON p1.ListPrice = p2.ListPrice AND p1.ProductID <> p2.ProductID
ORDER BY p1.ProductName;

SELECT Categories.CategoryName, Products.ProductID
FROM Categories
LEFT JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.ProductID IS NULL;
