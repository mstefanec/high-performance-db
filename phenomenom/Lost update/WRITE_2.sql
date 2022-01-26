SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN TRANSACTION

DECLARE @vacationHours bigint;         

SELECT @vacationHours = VacationHours 
FROM [AdventureWorks2019].[HumanResources].[Employee]
WHERE BusinessEntityID = 1

UPDATE
	[AdventureWorks2019].[HumanResources].[Employee]
SET VacationHours = @vacationHours + 10
WHERE 
	BusinessEntityID = 1

SELECT VacationHours 
FROM [AdventureWorks2019].[HumanResources].[Employee]
WHERE BusinessEntityID = 1


COMMIT;

---solution