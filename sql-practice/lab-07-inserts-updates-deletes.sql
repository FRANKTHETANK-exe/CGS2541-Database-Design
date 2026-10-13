INSERT INTO Categories (CategoryName)
VALUES ('Brass');

UPDATE Categories
SET CategoryName = 'Woodwinds'
WHERE CategoryID = 5;

DELETE FROM Categories
WHERE CategoryID = 5;

INSERT INTO Products
    (ProductID, CategoryID, ProductCode, ProductName, Description, ListPrice, DiscountPercent, DateAdded)
VALUES
    (11, 4, 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 799.99, 0, GETDATE());

UPDATE Products
SET DiscountPercent = 35
WHERE ProductID = 11;

DELETE FROM Categories
WHERE CategoryID = 4;

DELETE FROM Products
WHERE CategoryID = 4;

UPDATE Customers
SET Password = 'secret'
WHERE EmailAddress = 'rick@raven.com';

UPDATE Customers
SET Password = 'reset';
