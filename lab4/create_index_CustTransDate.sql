USE ApressFinancial
GO

CREATE UNIQUE CLUSTERED INDEX IX_CustTransDate
ON TransactionDetails.Transactions (CustomerId ASC, DateEntered DESC)
WITH (  STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON,
        DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = OFF ) ON [SECONDARY]
GO
