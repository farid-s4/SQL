use AutoServices;

INSERT INTO Clients (Name, Phone, Email) VALUES
(N'Иван Петров', '89991112233', 'ivan.petrov@example.com'),
(N'Сергей Смирнов', '89992223344', 'sergey.smirnov@example.com'),
(N'Анна Кузнецова', '89993334455', 'anna.kuz@example.com'),
(N'Павел Соколов', '89994445566', 'pavel.sokolov@example.com');

INSERT INTO Cars (Client_Id, Brand, Model, VIN, [Year], Mileage) VALUES
(1, N'Toyota', N'Camry', 'JTNB11HK123456789', 2019, 45000),
(2, N'BMW', N'X5', 'WBAVL71040LU12345', 2021, 15000),
(3, N'Hyundai', N'Solaris', 'Z94CB41ABC1234567', 2020, 28000),
(4, N'Audi', N'A4', 'WAUZZZ8K9CA123456', 2018, 72000);

INSERT INTO Employees (Name, Role, Login, [Password]) VALUES
(N'Алексей Иванов', N'механик', 'aivanov', '12345'),
(N'Петр Сидоров', N'приёмщик', 'psidorov', '54321'),
(N'Олег Кузьмин', N'электрик', 'okuzmin', '11111'),
(N'Мария Лебедева', N'администратор', 'mlebedeva', '22222');

INSERT INTO Service_Orders (Car_Id, Created_At, Status, Total_Cost) VALUES
(1, GETDATE(), N'создан', 0),
(2, GETDATE(), N'в работе', 0),
(3, GETDATE(), N'завершён', 0),
(4, GETDATE(), N'создан', 0);

INSERT INTO Services (Order_Id, Employee_Id, Service_Type, Description, Cost) VALUES
(1, 1, N'ТО', N'Замена масла и фильтра', 3500),
(1, 1, N'Диагностика', N'Проверка тормозной системы', 1500),
(2, 3, N'Ремонт электроники', N'Замена блока ABS', 8000),
(3, 1, N'Ремонт подвески', N'Замена передних амортизаторов', 9500),
(4, 1, N'Диагностика', N'Компьютерная проверка двигателя', 2500);

INSERT INTO Parts (Name, Manufacturer, Price, Quantity) VALUES
(N'Масляный фильтр', N'Bosch', 700, 15),
(N'Тормозные колодки', N'ATE', 3200, 10),
(N'Свечи зажигания', N'NGK', 450, 25),
(N'Воздушный фильтр', N'MANN', 1200, 12),
(N'Амортизатор', N'Sachs', 5500, 6);

INSERT INTO Order_Parts (Order_Id, PartId, Quantity, Cost) VALUES
(1, 1, 1, 700),
(1, 3, 4, 1800),
(2, 2, 1, 3200),
(3, 5, 2, 11000),
(4, 4, 1, 1200);
