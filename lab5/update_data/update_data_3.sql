USE ApressFinancial
GO

SELECT FirstName, LastName, ClearedBalance, UnclearedBalance
FROM CustomerDetails.Customers
WHERE LastName = 'Prentice';

DECLARE @WrongDataType NVARCHAR(50)
SET @WrongDataType = '1422.26';

UPDATE CustomerDetails.Customers
SET ClearedBalance = @WrongDataType
WHERE LastName = 'Prentice';

SELECT FirstName, LastName, ClearedBalance, UnclearedBalance
FROM CustomerDetails.Customers
WHERE LastName = 'Prentice';
GO
