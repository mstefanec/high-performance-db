SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

declare @vacationHours bigint;

BEGIN TRANSACTION

SELECT @vacationHours = VacationHours 
FROM [AdventureWorks2019].[HumanResources].[Employee]
WHERE BusinessEntityID = 1

--let's say @vacationHours = 100
UPDATE
	[AdventureWorks2019].[HumanResources].[Employee]
SET VacationHours = 100 + 30
WHERE 
	BusinessEntityID = 1

SELECT VacationHours 
FROM [AdventureWorks2019].[HumanResources].[Employee]
WHERE BusinessEntityID = 1

COMMIT;

---solution