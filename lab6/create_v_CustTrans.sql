USE ApressFinancial
GO

CREATE VIEW CustomerDetails.v_CustTrans
AS
SELECT c.CustomerId, c.FirstName, c.OtherInitials, tt.[Description],
       t.DateEntered, t.Amount, t.ReferenceDetails
FROM CustomerDetails.Customers AS c
JOIN TransactionDetails.Transactions AS t
    ON t.CustomerId = c.CustomerId
JOIN TransactionDetails.TransactionTypes AS tt
    ON tt.TransactionTypeId = t.TransactionTypeId
WHERE DateEntered >= '01-01-2012'
WITH CHECK OPTION
GO