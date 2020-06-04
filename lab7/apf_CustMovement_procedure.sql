CREATE PROCEDURE CustomerDetails.apf_CustMovement
    @CustId int,
    @FromDate datetime,
    @ToDate datetime
AS
BEGIN
    DECLARE @RunningBal money, @StillCalc bit, @LastTran int
    SELECT @StillCalc = 1, @LastTran = 0, @RunningBal = 0
    WHILE @StillCalc = 1
        BEGIN
            SELECT TOP 1
                @RunningBal = @RunningBal +
                    CASE
                        WHEN tt.CreditType = 1 THEN t.Amount
                        ELSE t.Amount * -1
                    END,
                @LastTran = t.TransactionId
            FROM CustomerDetails.Customers AS c
            JOIN TransactionDetails.Transactions AS t
                ON t.CustomerId = c.CustomerId
            JOIN TransactionDetails.TransactionTypes AS tt
                ON tt.TransactionTypeId = t.TransactionTypeId
            WHERE t.TransactionId > @LastTran
                AND tt.AffectCashBalance = 1
                AND DateEntered BETWEEN @FromDate AND @ToDate
            ORDER BY DateEntered
            IF @@ROWCOUNT > 0
                CONTINUE
            ELSE
                BREAK
        END
    SELECT @RunningBal AS 'EndBalance'
END
GO