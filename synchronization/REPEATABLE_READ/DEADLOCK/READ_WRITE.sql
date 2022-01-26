SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

BEGIN TRANSACTION

SELECT * FROM 
	[AdventureWorks2019].[Person].[Person]
WHERE 
	[BusinessEntityID] = 1;


UPDATE 
	[AdventureWorks2019].[Person].[Person]
SET  Title = 'Dr.'
WHERE 
	[BusinessEntityID] = 1;

ROLLBACK;