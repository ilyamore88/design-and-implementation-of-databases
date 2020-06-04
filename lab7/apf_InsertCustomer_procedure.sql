CREATE PROCEDURE CustomerDetails.apf_InsertCustomer
    @CustTitle int,
    @FirstName nvarchar(50),
    @CustInitials nvarchar(10),
    @LastName nvarchar(50),
    @AddressLine1 nvarchar(100),
    @AddressLine2 nvarchar(100),
    @AddressLine3 nvarchar(300),
    @TownOrCity int,
    @ZipCode nvarchar(20),
    @USState tinyint,
    @AccountTypeId tinyint,
    @ClearedBalance money
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO CustomerDetails.Customers
        (Title, FirstName, OtherInitials, LastName,
         AddressLine1, AddressLine2, AddressLine3, TownOrCity,
         ZipCode, USState, AccountType, ClearedBalance)
    VALUES
        (@CustTitle, @FirstName, @CustInitials, @LastName,
         @AddressLine1, @AddressLine2, @AddressLine3, @TownOrCity,
         @ZipCode, @USState, @AccountTypeId, @ClearedBalance)
END
GO
