USE ApressFinancial
GO

ALTER TABLE TransactionDetails.TransactionTypes
ADD CONSTRAINT TransactionTypes_pk
    PRIMARY KEY NONCLUSTERED (TransactionTypeId)
    WITH
    (
        STATISTICS_NORECOMPUTE = OFF,
        IGNORE_DUP_KEY = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [SECONDARY]
GO
