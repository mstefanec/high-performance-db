SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

--DOESN'T WAIT
BEGIN TRANSACTION
SELECT * FROM 
	[AdventureWorks2019].[Person].[Person]
WHERE 
	[BusinessEntityID] = 1;
ROLLBACK;


---------------------------------- WAITS (under all isolations levels)
BEGIN TRANSACTION

UPDATE 
	[AdventureWorks2019].[Person].[Person]
SET  Title = 'Dr.'
WHERE 
	[BusinessEntityID] = 1;

ROLLBACK;