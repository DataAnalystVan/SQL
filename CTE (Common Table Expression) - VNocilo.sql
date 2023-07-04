
WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION by Gender) as TotalGender
, AVG(Salary) OVER (PARTITION by Gender) as AvgSalary
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
    ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
Select *
FROM CTE_Employee


WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION by Gender) as TotalGender
, AVG(Salary) OVER (PARTITION by Gender) as AvgSalary
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
    ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
Select FirstName, AvgSalary
FROM CTE_Employee


