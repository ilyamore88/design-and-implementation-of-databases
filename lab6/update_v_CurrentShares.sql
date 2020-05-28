USE ApressFinancial
GO

ALTER VIEW ShareDetails.v_CurrentShares
AS
SELECT TOP(100) ShareId, Description, StockExchangeTicker, CurrentPrice AS [Latest Price]
FROM ShareDetails.Shares
WHERE (CurrentPrice > 0)
ORDER BY Description