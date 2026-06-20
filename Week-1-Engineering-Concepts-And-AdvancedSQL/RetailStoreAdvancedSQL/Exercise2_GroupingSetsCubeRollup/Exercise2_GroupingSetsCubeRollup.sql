USE CognizantAdvancedSQL;
GO

-- Customers Table
CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Region VARCHAR(50)
);

-- Products Table
CREATE TABLE Products_Sales
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50)
);

-- Orders Table
CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY(CustomerID)
    REFERENCES Customers(CustomerID)
);

-- OrderDetails Table
CREATE TABLE OrderDetails
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY(OrderID)
    REFERENCES Orders(OrderID),

    FOREIGN KEY(ProductID)
    REFERENCES Products_Sales(ProductID)
);

-- Sample Data

INSERT INTO Customers VALUES
(1,'John','North'),
(2,'Jane','South'),
(3,'Mike','East'),
(4,'Emily','West');

INSERT INTO Products_Sales VALUES
(1,'Laptop','Electronics'),
(2,'Mouse','Electronics'),
(3,'Chair','Furniture'),
(4,'Table','Furniture');

INSERT INTO Orders VALUES
(101,1,'2025-01-01'),
(102,2,'2025-01-02'),
(103,3,'2025-01-03'),
(104,4,'2025-01-04');

INSERT INTO OrderDetails VALUES
(1,101,1,5),
(2,101,2,10),
(3,102,3,8),
(4,103,4,6),
(5,104,1,7);

---------------------------------------------------
-- GROUPING SETS
---------------------------------------------------

SELECT
    c.Region,
    p.Category,
    SUM(od.Quantity) AS TotalQuantity
FROM Orders o
JOIN Customers c
ON o.CustomerID = c.CustomerID

JOIN OrderDetails od
ON o.OrderID = od.OrderID

JOIN Products_Sales p
ON od.ProductID = p.ProductID

GROUP BY GROUPING SETS
(
    (c.Region,p.Category),
    (c.Region),
    (p.Category)
);

---------------------------------------------------
-- ROLLUP
---------------------------------------------------

SELECT
    c.Region,
    p.Category,
    SUM(od.Quantity) AS TotalQuantity
FROM Orders o
JOIN Customers c
ON o.CustomerID = c.CustomerID

JOIN OrderDetails od
ON o.OrderID = od.OrderID

JOIN Products_Sales p
ON od.ProductID = p.ProductID

GROUP BY ROLLUP
(
    c.Region,
    p.Category
);

---------------------------------------------------
-- CUBE
---------------------------------------------------

SELECT
    c.Region,
    p.Category,
    SUM(od.Quantity) AS TotalQuantity
FROM Orders o
JOIN Customers c
ON o.CustomerID = c.CustomerID

JOIN OrderDetails od
ON o.OrderID = od.OrderID

JOIN Products_Sales p
ON od.ProductID = p.ProductID

GROUP BY CUBE
(
    c.Region,
    p.Category
);