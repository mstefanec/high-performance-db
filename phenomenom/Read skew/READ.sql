SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN TRANSACTION

SELECT * FROM 
	[AdventureWorks2019].[dbo].post
WHERE 
	[id] = 1;

	SELECT * FROM 
	[AdventureWorks2019].[dbo].post_details
WHERE 
	[id] = 1;

ROLLBACK;

---solution

BEGIN TRANSACTION

SELECT * FROM 
	[AdventureWorks2019].[dbo].post WITH (ROWLOCK, UPDLOCK)
WHERE 
	[id] = 1;

	SELECT * FROM 
	[AdventureWorks2019].[dbo].post_details
WHERE 
	[id] = 1;

ROLLBACK;
