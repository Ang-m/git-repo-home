SELECT *
FROM HumanResources.Employee;

--equality and comparison filters
SELECT LoginID,JobTitle,MaritalStatus
FROM HumanResources.Employee
WHERE MaritalStatus='M';

SELECT LoginID, JobTitle, OrganizationLevel
FROM HumanResources.Employee
WHERE OrganizationLevel <> 2;

SELECT LoginID, JobTitle, OrganizationLevel
FROM HumanResources.Employee
WHERE OrganizationLevel <= 2;

SELECT *
FROM Person.Person;

--logical operator filters
SELECT FirstName, LastName, PersonType, EmailPromotion
FROM Person.Person
WHERE PersonType='SC'
OR PersonType='VC';

SELECT FirstName, LastName, PersonType, EmailPromotion
FROM Person.Person
WHERE PersonType='SC'
AND EmailPromotion = 2;

SELECT FirstName, LastName, PersonType, EmailPromotion
FROM Person.Person
WHERE FirstName IN('Fred','Mary');

SELECT LoginID, JobTitle, OrganizationLevel, SickLeaveHours
FROM HumanResources.Employee
WHERE SickLeaveHours BETWEEN 40 AND 99;

--String comparisons
SELECT LoginID, JobTitle, OrganizationLevel, SickLeaveHours
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Manager%';

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '_ary';

SELECT FirstName
FROM Person.Person
WHERE FirstName NOT LIKE '_ary';

--null operators
SELECT Name,Color
From Production.Product
where Size IS NULL;

SELECT Name,Color
From Production.Product
where Size IS NOT NULL;

--Sorting records 
USE adventureworks2016;
GO

SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName ASC;
GO

ELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName, LastName
GO


---aggegrate functions
SELECT COUNT(*) AS Total_employee
FROM HumanResources.Employee;
GO

SELECT COUNT(DISTINCT JobTitle)
AS [Number of Job]
FROM HumanResources.Employee;

SELECT AVG(SickLeaveHours) 
AS [Average Sick Leave Hours]
FROM HumanResources.Employee;

SELECT MAX(VacationHours) 
AS [Highest Vacation Hours]
FROM HumanResources.Employee;

SELECT MIN(VacationHours)
AS [Lowest Vacation Hours]
FROM HumanResources.Employee;

SELECT SUM(VacationHours)
AS [total Sick Hours]
FROM HumanResources.Employee;

use adventureworks2016;
GO
select   
Min(VacationHours) as [Less Holidays],
Max(VacationHours) as [More Holidays],
Sum(VacationHours) as [Total Staff Holidays],
Avg(SickLeaveHours) as [Sickys]
FROM [HumanResources].[Employee]
WHERE VacationHours > 0 ;
GO

--grouping data
SELECT City, COUNT(*) as [No. Of Records] 
FROM Person.Address
GROUP BY City
ORDER BY [No. Of Records] DESC ;
GO

--MODIFY data
