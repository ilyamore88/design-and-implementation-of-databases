CREATE FUNCTION TransactionDetails.fn_IntCalc
(   @InterestRate numeric(6, 3) = 10, @Amount money,
    @FromDate date, @ToDate date   )
RETURNS money
WITH EXECUTE AS CALLER
AS
BEGIN
    DECLARE @IntCalculated money
    SELECT @IntCalculated = @Amount * ((@InterestRate / 100.00) *
                                       (DATEDIFF(d, @FromDate, @ToDate) / 365.00))
    RETURN (ISNULL(@IntCalculated, 0))
END
GO
