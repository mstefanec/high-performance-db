SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

--------- 
BEGIN TRANSACTION

UPDATE 
	[AdventureWorks2019].[Person].[Person]
SET  FirstName = 'Ken'
WHERE 
	[BusinessEntityID] = 6;

ROLLBACK;