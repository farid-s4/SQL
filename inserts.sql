INSERT INTO Faculties ([Name], [Dean]) VALUES
('Computer Science', 'Dr. John Smith'),
('Mathematics', 'Dr. Sarah Johnson'),
('Physics', 'Dr. Michael Brown'),
('Chemistry', 'Dr. Emily Davis'),
('Biology', 'Dr. Robert Wilson'),
('Engineering', 'Dr. Lisa Anderson'),
('Economics', 'Dr. David Miller'),
('Psychology', 'Dr. Jennifer Garcia');

INSERT INTO Departments ([Name], [Financing]) VALUES
('Software Engineering', 150000.00),
('Data Science', 120000.00),
('Applied Mathematics', 100000.00),
('Theoretical Physics', 180000.00),
('Organic Chemistry', 90000.00),
('Molecular Biology', 110000.00),
('Mechanical Engineering', 200000.00),
('Electrical Engineering', 175000.00),
('Microeconomics', 85000.00),
('Clinical Psychology', 95000.00);

INSERT INTO Teachers ([Name], [Surname], [EmploymentDate], [Premium], [Salary], [IsAssistant], [IsProfessor]) VALUES
('Alexander', 'Petrov', '2010-09-01', 5000.00, 75000.00, 0, 1),
('Maria', 'Ivanova', '2015-02-15', 3000.00, 65000.00, 0, 0),
('Dmitry', 'Smirnov', '2018-08-20', 2000.00, 55000.00, 1, 0),
('Elena', 'Kuznetsova', '2012-01-10', 4000.00, 70000.00, 0, 1),
('Sergey', 'Popov', '2019-03-05', 1500.00, 50000.00, 1, 0),
('Natalia', 'Sokolova', '2011-11-22', 3500.00, 68000.00, 0, 0),
('Pavel', 'Lebedev', '2016-07-18', 2500.00, 58000.00, 1, 0),
('Olga', 'Novikova', '2009-05-14', 6000.00, 80000.00, 0, 1),
('Viktor', 'Morozov', '2017-12-03', 2000.00, 54000.00, 1, 0),
('Anna', 'Volkov', '2014-04-25', 3200.00, 62000.00, 0, 0),
('Mikhail', 'Petrov', '2020-01-15', 1000.00, 48000.00, 1, 0),
('Svetlana', 'Fedorova', '2013-09-30', 4500.00, 72000.00, 0, 1);

INSERT INTO Groups ([Name], [Rating], [Year]) VALUES
('CS-101', 4, 1),
('CS-102', 3, 1),
('CS-201', 5, 2),
('CS-202', 4, 2),
('CS-301', 3, 3),
('CS-401', 5, 4),
('CS-501', 4, 5),
('MATH-101', 3, 1),
('MATH-201', 4, 2),
('MATH-301', 5, 3);