SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT @@SPID AS 'ID', SYSTEM_USER AS 'Login Name', USER AS 'User Name';  

BEGIN TRANSACTION

SELECT * FROM 
	[AdventureWorks2019].[dbo].post
WHERE 
	[id] = 1;

	SELECT * FROM 
	[AdventureWorks2019].[dbo].post_details
WHERE 
	[id] = 1;

--only one update happens, as the e.g. ORM (Hibernate)
--didn't issue update on the enity post, as nothing changed there
UPDATE
	[AdventureWorks2019].[dbo].post_details
SET created_by = 'Martin2'
WHERE 
	[id] = 1;

COMMIT;

---solution

BEGIN TRANSACTION

SELECT * FROM 
	[AdventureWorks2019].[dbo].post  WITH (UPDLOCK, ROWLOCK)
WHERE 
	[id] = 1;

	SELECT * FROM 
	[AdventureWorks2019].[dbo].post_details
WHERE 
	[id] = 1;

UPDATE
	[AdventureWorks2019].[dbo].post_details
SET created_by = 'Martin2'
WHERE 
	[id] = 1;

COMMIT;

---solution