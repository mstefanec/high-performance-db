SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- NO DEADLOCK
BEGIN TRANSACTION

SELECT * FROM 
	[AdventureWorks2019].[Person].[Person]
WHERE 
	[BusinessEntityID] = 1;


UPDATE 
	[AdventureWorks2019].[Person].[Person]
SET  Title = 'Drs.'
WHERE 
	[BusinessEntityID] = 1;

ROLLBACK;

-------------------- DEADLOCK

BEGIN TRANSACTION

UPDATE 
	[AdventureWorks2019].[Person].[PersonPhone]
SET  ModifiedDate = GETDATE()
WHERE 
	[BusinessEntityID] = 1;

UPDATE 
	[AdventureWorks2019].[Person].[Person]
SET  Title = 'Dr.'
WHERE 
	[BusinessEntityID] = 1;



ROLLBACK;
