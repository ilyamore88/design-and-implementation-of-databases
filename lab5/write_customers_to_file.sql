USE ApressFinancial
GO

SELECT * FROM CustomerDetails.Customers
GO

USE ApressFinancial
GO

SELECT FirstName, LastName, ClearedBalance
FROM CustomerDetails.Customers
GO

USE ApressFinancial
GO

SELECT FirstName AS N'Имя',
       LastName AS N'Фамилия',
       ClearedBalance AS N'Баланс'
FROM CustomerDetails.Customers
GO
