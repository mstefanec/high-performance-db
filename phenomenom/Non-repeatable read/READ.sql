SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--------- DOESN'T WAIT
BEGIN TRANSACTION

SELECT * FROM 
	[AdventureWorks2019].[Person].[Person]
WHERE 
	[BusinessEntityID] = 1;

ROLLBACK;
