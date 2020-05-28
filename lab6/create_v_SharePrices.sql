USE ApressFinancial
GO

CREATE VIEW ShareDetails.v_SharePrices
AS
SELECT TOP(100) PERCENT ShareDetails.SharePrices.ShareId, ShareDetails.SharePrices.PriceDate, ShareDetails.SharePrices.Price, ShareDetails.v_CurrentShares.Description
FROM ShareDetails.SharePrices INNER JOIN
    ShareDetails.v_CurrentShares ON ShareDetails.SharePrices.ShareId = ShareDetails.v_CurrentShares.ShareId
ORDER BY ShareDetails.v_CurrentShares.Description, ShareDetails.SharePrices.Price DESC