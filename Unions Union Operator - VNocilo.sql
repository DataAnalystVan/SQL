SELECT EmployeeID, FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY EmployeeID




SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL Outer Join SQLTutorial.dbo.WareHouseEmployeeDemographics
    ON EmployeeDemographics.EmployeeID =
	  WareHouseEmployeeDemographics.EmployeeID
