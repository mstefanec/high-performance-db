SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--------- 
BEGIN TRANSACTION

UPDATE 
	[AdventureWorks2019].[Person].[Person]
SET  Title = 'Dr.'
WHERE 
	[BusinessEntityID] = 1;

COMMIT;