USE ApressFinancial
GO

IF OBJECT_ID('TransactionDetails.TransactionTypes', 'U') IS NOT NULL
    DROP TABLE TransactionDetails.TransactionTypes
GO

CREATE TABLE TransactionDetails.TransactionTypes
(
    TransactionTypeId   smallint IDENTITY(1,1)  NOT NULL,
    [Description]       nvarchar(50)            NOT NULL,
    CreditType          bit                     NOT NULL
) ON [SECONDARY]
GO
