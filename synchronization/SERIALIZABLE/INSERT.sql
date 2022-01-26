SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

BEGIN TRANSACTION

INSERT INTO [AdventureWorks2019].[Person].[Person] ([BusinessEntityID], [PersonType] , [NameStyle] , [Title] , [FirstName] , [MiddleName] , [LastName] , [Suffix] , [EmailPromotion] , [AdditionalContactInfo] , [Demographics] , [rowguid] , [ModifiedDate])
VALUES (1, 'EM', 0, NULL, 'Ken', 'J', 'Sánchez', NULL, 0, NULL, '<IndividualSurvey xmlns="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/IndividualSurvey"><TotalPurchaseYTD>0</TotalPurchaseYTD></IndividualSurvey>', '92C4279F-1207-48A3-8448-4636514EB7E2', '2009-01-07 00:00:00.000')

ROLLBACK;