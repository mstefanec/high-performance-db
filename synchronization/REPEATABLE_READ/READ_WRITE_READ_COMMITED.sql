SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--------- DOESN'T WAIT
BEGIN TRANSACTION
SELECT * FROM 
	[AdventureWorks2019].[Person].[Person]
WHERE 
	[BusinessEntityID] = 1;
ROLLBACK;


-------------------------------- WAITS (as the T1 shared locks holds by the end of the Trx)
BEGIN TRANSACTION

UPDATE 
	[AdventureWorks2019].[Person].[Person]
SET  Title = 'Dr.'
WHERE 
	[BusinessEntityID] = 1;

ROLLBACK;