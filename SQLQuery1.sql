-- task 1
Create Database ExampleDB
use ExampleDB

Create Table Students(
	Id int,
	Name nvarchar(30),
	Age int,
	Gender nvarchar(6),
	Grade nvarchar(1)
)

Insert into Students(Id, Name, Age, Gender, Grade)
Values(1,'John Doe',20,'Male','A')

select * from Students

Update Students
set Grade = 'B'
where Id = 1

delete from Students
where Id = 1

select * from Students

-- task 2
Create Table Employees(
	EmployeeID int, 
	FirstName nvarchar(10), 
	LastName nvarchar(20), 
	DepartmentID int
)
Create Table Departments(
	DepartmentID int, 
	DepartmentName nvarchar(30)
)

Insert into Employees(EmployeeID, FirstName, LastName, DepartmentID)
Values(1, 'Yusif', 'Pirquliyev', 1),(2,'Azima','Qadirli',2),(3,'Nijat','Soltanov',1)

Insert into Departments(DepartmentID, DepartmentName)
Values(1, 'Information technologies'),(2,'English Language')

select * from Employees
select * from Departments

select *,(select DepartmentName from Departments d where d.DepartmentID = e.DepartmentID) Department from Employees e
select *, (select COUNT(e.EmployeeID) from Employees e 
where e.DepartmentID = d.DepartmentID) [Count of employees] from Departments d
where d.DepartmentID in (select DepartmentID from Employees e)

-- task 3
use ExampleDB

Create table Books(
	BookID int, 
	Title nvarchar(20), 
	Author nvarchar(20), 
	PublishedYear datetime, 
	Genre nvarchar(20)
)

Insert into Books(BookID, Title, Author, PublishedYear, Genre)
Values(1,'All tomorrows','C.M.Kosemen',2006,'science fiction')

Alter table Books
add ISBN int

Alter table Books
drop column Genre

select * from Books
truncate table Books
select * from Books