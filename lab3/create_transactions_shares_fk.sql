USE ApressFinancial
GO

ALTER TABLE TransactionDetails.Transactions
WITH NOCHECK
ADD CONSTRAINT Transactions_Shares_RelatedShareId_fk
    FOREIGN KEY (RelatedShareId)
    REFERENCES ShareDetails.Shares(ShareId)
GO
