USE ApressFinancial
GO

ALTER TABLE TransactionDetails.TransactionTypes
ADD AffectCashBalance bit NULL
GO

ALTER TABLE TransactionDetails.TransactionTypes
ALTER COLUMN AffectCashBalance bit NOT NULL