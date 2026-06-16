USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Customers Table
--------------------------------------------------

CREATE TABLE Customers_CTE
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

INSERT INTO Customers_CTE
VALUES
(1,'John'),
(2,'Jane'),
(3,'Mike'),
(4,'Emily');

--------------------------------------------------
-- Orders Table
--------------------------------------------------

CREATE TABLE Orders_CTE
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY(CustomerID)
    REFERENCES Customers_CTE(CustomerID)
);

INSERT INTO Orders_CTE
VALUES
(101,1),
(102,1),
(103,1),
(104,1),

(105,2),
(106,2),

(107,3),
(108,3),
(109,3),
(110,3),
(111,3),

(112,4);
GO

--------------------------------------------------
-- CTE
--------------------------------------------------

WITH CustomerOrderCounts AS
(
    SELECT
        CustomerID,
        COUNT(OrderID) AS OrderCount
    FROM Orders_CTE
    GROUP BY CustomerID
)

SELECT
    c.CustomerID,
    c.CustomerName,
    coc.OrderCount
FROM CustomerOrderCounts coc

JOIN Customers_CTE c
ON c.CustomerID = coc.CustomerID

WHERE coc.OrderCount > 3;