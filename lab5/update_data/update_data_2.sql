USE ApressFinancial
GO

SELECT FirstName, LastName, ClearedBalance, UnclearedBalance
FROM CustomerDetails.Customers
WHERE LastName = 'Booth';

DECLARE @ValueToUpdate NVARCHAR(50)
SET @ValueToUpdate = 'Prentice';

UPDATE CustomerDetails.Customers
SET LastName = @ValueToUpdate,
    ClearedBalance = ClearedBalance + UnclearedBalance,
    UnclearedBalance = 0
WHERE LastName = 'Booth';

SELECT FirstName, LastName, ClearedBalance, UnclearedBalance
FROM CustomerDetails.Customers
WHERE LastName = 'Prentice'
GO
