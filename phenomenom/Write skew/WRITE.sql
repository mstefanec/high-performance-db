SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--------- DOESN'T WAIT
BEGIN TRANSACTION

SELECT * FROM 
	[AdventureWorks2019].[dbo].post  WITH (UPDLOCK, ROWLOCK)
WHERE 
	[id] = 1;

	SELECT * FROM 
	[AdventureWorks2019].[dbo].post_details
WHERE 
	[id] = 1;

--only one update happens, as the e.g. ORM (Hibernate)
--didn't issue update on the enity post_details, as nothing changed there
UPDATE
	[AdventureWorks2019].[dbo].post
SET title = 'Something'
WHERE 
	[id] = 1;

COMMIT;
