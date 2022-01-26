SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--------- DOESN'T WAIT
BEGIN TRANSACTION

UPDATE
	[AdventureWorks2019].[dbo].post
SET title = 'ACID1'
WHERE 
	[id] = 1;

UPDATE
	[AdventureWorks2019].[dbo].post_details
SET created_by = 'Martin2'
WHERE 
	[id] = 1;

COMMIT;
