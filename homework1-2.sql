use AcademyHomework;

CREATE TABLE Teachers(
    [Id] INT IDENTITY (1,1) NOT NULL PRIMARY KEY ,
    [Name] NVARCHAR(100) NOT NULL UNIQUE CHECK (LEN([Name]) > 0),
    [EmploymentDate] DATE NOT NULL CHECK ([EmploymentDate] > '1990-01-01'),
    [Premium] MONEY NOT NULL CHECK ([Premium] >= 0) DEFAULT 0,
    [Salary] MONEY NOT NULL CHECK ([Salary] > 0),
    [Surname] NVARCHAR(MAX) NOT NULL CHECK (LEN([Surname]) > 0),
    [IsAssistant] BIT NOT NULL DEFAULT 0,
    [IsProfessor] BIT NOT NULL DEFAULT 0
)

CREATE TABLE Groups (
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(10) NOT NULL UNIQUE CHECK (LEN([Name]) > 0),
    [Rating] INT NOT NULL CHECK ([Rating] BETWEEN 0 AND 5),
    [Year] INT NOT NULL CHECK ([Year] BETWEEN 1 AND 5)
);

CREATE TABLE Faculties(
    [Id] INT IDENTITY (1,1) NOT NULL PRIMARY KEY ,
    [Name] NVARCHAR(100) NOT NULL UNIQUE CHECK (LEN([Name]) > 0),
    [Dean] NVARCHAR(100) NOT NULL CHECK (LEN([Dean]) > 0)
);

CREATE TABLE Departments (
    [Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Financing] MONEY NOT NULL CHECK ([Financing] >= 0) DEFAULT 0,
    [Name] NVARCHAR(100) NOT NULL UNIQUE CHECK (LEN([Name]) > 0)
)

--1
select * from Departments order by Id DESC;
--2
select Name, Rating from Groups;
--3
select Surname from Teachers;
select (Premium*100/Salary) from Teachers;
--4
select 'The dean of faculty ' + Name + ' is ' + Dean + '.' AS FacultyInfo from Faculties;
--5
declare @value int = 1050;
select Surname from Teachers where Salary > @value and IsProfessor = 1;
--6
select Name from Departments where Financing < 11000 or Financing > 25000;
--7
select Name from Faculties where Name != 'Computer Science';
--8
select Surname, IsAssistant from Teachers where IsProfessor != 1;
--9
select Surname, Salary, Premium from Teachers where IsAssistant = 1 and 16000 < Salary and Salary < 55500;
--10
select Surname, Salary from Teachers where IsAssistant = 1;
--11
select Surname, IsAssistant from Teachers where EmploymentDate < '2014-04-25';
--12
select  'Name of Department: ' + Name AS DepartmentName from Departments where Name != 'Software Development' order by Name asc;
--13
select Name from Teachers where IsAssistant = 1 and Salary > 10000;
--14
select Name from Groups where Year = 5 and Rating >= 2 and Rating <= 4;
--15
select Surname from Teachers where IsAssistant = 1 and Salary > 5000 and Premium < 1000;