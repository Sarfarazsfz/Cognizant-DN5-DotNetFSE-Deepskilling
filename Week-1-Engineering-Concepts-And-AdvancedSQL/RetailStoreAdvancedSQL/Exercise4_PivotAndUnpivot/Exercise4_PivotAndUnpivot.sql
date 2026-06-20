USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Sales Table
--------------------------------------------------

CREATE TABLE MonthlySales
(
    ProductName VARCHAR(50),
    SaleMonth VARCHAR(20),
    Quantity INT
);

INSERT INTO MonthlySales
VALUES
('Laptop','January',10),
('Laptop','February',15),
('Laptop','March',20),

('Mouse','January',25),
('Mouse','February',30),
('Mouse','March',35),

('Keyboard','January',12),
('Keyboard','February',18),
('Keyboard','March',22);

--------------------------------------------------
-- Original Data
--------------------------------------------------

SELECT *
FROM MonthlySales;

--------------------------------------------------
-- PIVOT
--------------------------------------------------

SELECT *
FROM
(
    SELECT
        ProductName,
        SaleMonth,
        Quantity
    FROM MonthlySales
) AS SourceTable

PIVOT
(
    SUM(Quantity)
    FOR SaleMonth IN
    (
        [January],
        [February],
        [March]
    )
) AS PivotTable;

--------------------------------------------------
-- UNPIVOT
--------------------------------------------------

SELECT
    ProductName,
    SaleMonth,
    Quantity
FROM
(
    SELECT *
    FROM
    (
        SELECT
            ProductName,
            SaleMonth,
            Quantity
        FROM MonthlySales
    ) AS SourceTable

    PIVOT
    (
        SUM(Quantity)
        FOR SaleMonth IN
        (
            [January],
            [February],
            [March]
        )
    ) AS PivotTable
) AS P

UNPIVOT
(
    Quantity
    FOR SaleMonth IN
    (
        [January],
        [February],
        [March]
    )
) AS UnpivotTable;