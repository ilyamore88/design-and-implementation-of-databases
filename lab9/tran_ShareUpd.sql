USE ApressFinancial
GO

SELECT 'Before', ShareId, [Description], CurrentPrice
FROM ShareDetails.Shares
WHERE ShareId = 3;

BEGIN TRAN ShareUpd;
    UPDATE ShareDetails.Shares
    SET CurrentPrice = CurrentPrice * 1.1
    WHERE ShareId = 3;

    SELECT 'During', ShareId, [Description], CurrentPrice
    FROM ShareDetails.Shares
    WHERE ShareId = 3;
ROLLBACK TRAN;

SELECT 'After', ShareId, [Description], CurrentPrice
FROM ShareDetails.Shares
WHERE ShareId = 3;
GO
