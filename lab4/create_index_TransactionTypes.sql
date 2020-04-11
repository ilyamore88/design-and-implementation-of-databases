USE ApressFinancial
GO

CREATE UNIQUE CLUSTERED INDEX IX_TransactionTypes
ON TransactionDetails.TransactionTypes (TransactionTypeId ASC)
WITH (  STATISTICS_NORECOMPUTE = ON, SORT_IN_TEMPDB = ON,
        DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, ONLINE = ON,
        ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [SECONDARY]
GO
