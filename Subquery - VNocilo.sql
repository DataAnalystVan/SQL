/*
Today's Topic: Subqueries (in the Select, From, and Where Statement)
*/

Select *
From EmployeeSalary












Insert Into EmployeeSalary VALUES
(1010, NULL , 47000),
(NULL, 'Salesman', 43000)

Select EmployeeID, JobTitle, Salary
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
From EmployeeSalary

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
From EmployeeSalary

-- How to do it with Partition By
Select EmployeeID, Salary,  AVG(Salary) over() as AllAvgSalary
From EmployeeSalary

Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
From EmployeeSalary

-- Why Group By doesn't work
Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary 
Order By 1,2


Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
order by EmployeeID


-- Subquery in From
Select a.EmployeeID, AllAvgSalary
From (Select EmployeeID, Salary,  AVG(Salary) over() as AllAvgSalary
      From EmployeeSalary) a

Select a.EmployeeID, AllAvgSalary
From 
	(Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	 From EmployeeSalary) a
Order by a.EmployeeID


-- Subquery in Where

Select EmployeeID, JobTitle, Salary
From EmployeeSalary
Where EmployeeID in (
         Select EmployeeID
		 From EmployeeDemographics
		 Where Age > 30)









Select EmployeeID, JobTitle, Salary
From EmployeeSalary
where EmployeeID in (
	Select EmployeeID 
	From EmployeeDemographics
	where Age > 30)


Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL)
(1013, 'Darryl', 'Philbin', NULL, 'Male')