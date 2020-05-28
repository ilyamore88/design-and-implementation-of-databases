USE ApressFinancial
GO

ALTER VIEW ShareDetails.v_SharePrices
AS
SELECT
    p.ShareId,
    p.PriceDate,
    p.Price,
    c.[Description]
FROM ShareDetails.SharePrices AS p
INNER JOIN ShareDetails.v_CurrentShares AS c
    ON p.ShareId = c.ShareId
ORDER BY
    c.[Description],
    p.Price DESC
OFFSET (0) ROWS
GO
