USE CognizantAdvancedSQL;
GO

--------------------------------------------------
-- Delete User Defined Function
--------------------------------------------------

DROP FUNCTION IF EXISTS fn_CalculateBonus;
GO

--------------------------------------------------
-- Verify Function Deleted
--------------------------------------------------

SELECT *
FROM sys.objects
WHERE name = 'fn_CalculateBonus'
      AND type = 'FN';
GO