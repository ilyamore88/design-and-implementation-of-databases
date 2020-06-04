CREATE TRIGGER TransactionDetails.trgInsTransactions
    ON TransactionDetails.Transactions
    AFTER INSERT
AS
BEGIN
    UPDATE CustomerDetails.Customers
    SET ClearedBalance = ClearedBalance +
                         (  SELECT
                                CASE
                                    WHEN CreditType = 0 THEN  i.Amount * -1
                                    ELSE i.Amount
                                END
                             FROM INSERTED AS i
                             JOIN TransactionDetails.TransactionTypes AS tt
                                ON tt.TransactionTypeId = i.TransactionTypeId
                             WHERE AffectCashBalance = 1  )
    FROM CustomerDetails.Customers AS c
    JOIN INSERTED AS i
        ON i.CustomerId = c.CustomerId
END
GO