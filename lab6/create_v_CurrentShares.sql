USE ApressFinancial
GO

CREATE VIEW ShareDetails.v_CurrentShares
AS
SELECT TOP(100) Description, StockExchangeTicker, CurrentPrice AS [Latest Price]
FROM ShareDetails.Shares
WHERE (CurrentPrice > 0)
ORDER BY Description