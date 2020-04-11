USE ApressFinancial
GO

INSERT INTO CustomerDetails.Customers
(Title, FirstName, OtherInitials, LastName, AddressLine1, AddressLine2,
 TownOrCity, USState, ZipCode, ClearedBalance, UnclearedBalance)
VALUES
(1, 'Bernie', 'I', 'McGee', '35 Baldrick Ave', 'West Hampstead',
 18651, 0, 0, 6653.11, 0.00),
(3, 'Jane', 'L', 'Harper', '122 West Drive', 'Tuala',
 185111, 14, 111, 53.11, 27.50),
(12, 'Mark', NULL, 'Vernon-Smith', '4155b Fredericks Street', 'London',
 157, 0, 97, -751, 900.00)
GO