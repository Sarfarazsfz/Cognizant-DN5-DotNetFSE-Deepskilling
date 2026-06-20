USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- PART A : Recursive CTE
--------------------------------------------------

WITH CalendarCTE AS
(
    SELECT CAST('2025-01-01' AS DATE) AS CalendarDate

    UNION ALL

    SELECT DATEADD(DAY,1,CalendarDate)
    FROM CalendarCTE
    WHERE CalendarDate < '2025-01-31'
)

SELECT *
FROM CalendarCTE
OPTION (MAXRECURSION 100);

--------------------------------------------------
-- PART B : Products Table
--------------------------------------------------

CREATE TABLE ProductPrices
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO ProductPrices
VALUES
(1,'Laptop',800),
(2,'Mouse',50),
(3,'Keyboard',100);

--------------------------------------------------
-- Staging Table
--------------------------------------------------

CREATE TABLE StagingProducts
(
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO StagingProducts
VALUES
(1,'Laptop',850),
(2,'Mouse',60),
(4,'Phone',900);

--------------------------------------------------
-- MERGE
--------------------------------------------------

MERGE ProductPrices AS Target

USING StagingProducts AS Source

ON Target.ProductID = Source.ProductID

WHEN MATCHED THEN
    UPDATE SET
        Target.Price = Source.Price

WHEN NOT MATCHED BY TARGET THEN
    INSERT
    (
        ProductID,
        ProductName,
        Price
    )
    VALUES
    (
        Source.ProductID,
        Source.ProductName,
        Source.Price
    );

SELECT *
FROM ProductPrices;