
SELECT *
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
    ON dem.EmployeeID = sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
    ON dem.EmployeeID = sal.EmployeeID


SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) 
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
    ON dem.EmployeeID = sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary


SELECT Gender, COUNT(Gender) 
FROM SQLTutorial..EmployeeDemographics dem
JOIN SQLTutorial..EmployeeSalary sal
    ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender