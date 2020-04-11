USE tempdb
GO

SELECT TOP (5) CustomerId, FirstName, OtherInitials, LastName
INTO dbo.CustTemp
FROM ApressFinancial.CustomerDetails.Customers
GO
