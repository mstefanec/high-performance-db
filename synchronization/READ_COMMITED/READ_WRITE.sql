SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-------------------------------- doesnt wait
BEGIN TRANSACTION
SELECT * FROM 
	[AdventureWorks2019].[Person].[Person]
WHERE 
	[BusinessEntityID] = 1;
ROLLBACK;


-------------------------------- waits
BEGIN TRANSACTION

UPDATE 
	[AdventureWorks2019].[Person].[Person]
SET  Title = 'Dr.'
WHERE 
	[BusinessEntityID] = 1;

ROLLBACK;