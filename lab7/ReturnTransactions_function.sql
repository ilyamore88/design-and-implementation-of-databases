CREATE FUNCTION TransactionDetails.ReturnTransactions(@CustId int)
RETURNS @Trans TABLE
(   TransactionId int,
    CustomerId int,
    TransactionDescription nvarchar(50),
    DateEntered datetime,
    Amount money   )
AS
BEGIN
    INSERT INTO @Trans
    SELECT t.TransactionId, t.CustomerId,
           tt.[Description], t.DateEntered, t.Amount
    FROM TransactionDetails.Transactions AS t
    JOIN TransactionDetails.TransactionTypes AS tt
        ON tt.TransactionTypeId = t.TransactionTypeId
    WHERE CustomerId = @CustId
    RETURN
END
GO
