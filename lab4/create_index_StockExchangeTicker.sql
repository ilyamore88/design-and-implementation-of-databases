USE ApressFinancial
GO

CREATE INDEX IX_Shares_StockExchangeTicker
ON ShareDetails.Shares (StockExchangeTicker)
GO
