
SELECT FirstName Fname
FROM [SQLTutorial].[dbo].[EmployeeDemographics]

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQLTutorial].[dbo].[EmployeeDemographics]

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQLTutorial].[dbo].[EmployeeDemographics]

SELECT Avg(Age) AS AvgAge
FROM [SQLTutorial].[dbo].[EmployeeDemographics]

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQLTutorial].[dbo].[EmployeeDemographics] 
JOIN [SQLTutorial].[dbo].[EmployeeSalary] AS Sal
    ON Demo.EmployeeID = Sal.EmployeeID

SELECT [EmployeeDemographics].EmployeeID,Sal.Salary
FROM [SQLTutorial].[dbo].[EmployeeDemographics] 
JOIN [SQLTutorial].[dbo].[EmployeeSalary] AS Sal
    ON Demo.EmployeeID = Sal.EmployeeID

SELECT a.EmployeeID, a.FirstName, a.FirstName, b.JobTitle, c.Age
FROM [SQLTutorial].[dbo].EmployeeDemographics a
LEFT JOIN [SQLTutorial].[dbo].EmployeeSalary b
    ON a.EmployeeID = b.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].WareHouseEmployeeDemographics c
    ON a.EmployeeID = c.EmployeeID 

SELECT Demo.EmployeeID, Demo.FirstName, Demo.FirstName, 
Sal.JobTitle, Demo.Age
FROM [SQLTutorial].[dbo].EmployeeDemographics Demo
LEFT JOIN [SQLTutorial].[dbo].EmployeeSalary Sal
    ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQLTutorial].[dbo].WareHouseEmployeeDemographics Ware
    ON Demo.EmployeeID = Ware.EmployeeID 