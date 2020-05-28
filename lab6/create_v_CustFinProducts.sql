USE ApressFinancial
GO

IF EXISTS(  SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS
            WHERE TABLE_NAME = N'v_CustFinProducts'
            AND TABLE_SCHEMA = N'CustomerDetails'  )
DROP VIEW CustomerDetails.v_CustFinProducts
GO

CREATE VIEW CustomerDetails.v_CustFinProducts
WITH SCHEMABINDING
AS
SELECT c.FirstName + ' ' + c.LastName AS CustomerName, c.CustomerId,
       fp.ProductName, cp.AmountToCollect, cp.Frequency, cp.LastCollected
FROM CustomerDetails.Customers AS c
JOIN CustomerDetails.CustomerProducts AS cp
    ON cp.CustomerId = c.CustomerId
JOIN CustomerDetails.FinancialProducts AS fp
    ON fp.ProductId = cp.FinancialProductId
GO
