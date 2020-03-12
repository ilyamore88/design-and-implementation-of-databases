USE ApressFinancial
GO

CREATE TABLE  TransactionDetails.Transactions
(
    TransactionId       int IDENTITY(1,1)   NOT NULL,
    CustomerId          int                 NOT NULL,
    TransactionTypeId   smallint            NOT NULL,
    DateEntered         datetime            NOT NULL,
    Amount              money               NOT NULL,
    ReferenceDetails    nvarchar(50)        NULL,
    Notes               nvarchar(max)       NULL,
    RelatedShareId      int                 NULL,
    RelatedProductId    int                 NOT NULL
    CONSTRAINT Transactions_pk PRIMARY KEY NONCLUSTERED (TransactionId ASC)
) ON [SECONDARY]
GO