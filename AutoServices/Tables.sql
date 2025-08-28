use AutoServices;

CREATE TABLE Clients(
    Id INT IDENTITY (1,1) NOT NULL PRIMARY KEY ,
    Name NVARCHAR(100) NOT NULL UNIQUE CHECK (LEN([Name]) > 0),
    Phone VARCHAR(20) UNIQUE,
    Email VARCHAR(100)
);

CREATE TABLE Cars (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Client_Id INT NOT NULL,
    Brand NVARCHAR(50) NOT NULL,
    Model NVARCHAR(50) NOT NULL,
    VIN NVARCHAR(50) UNIQUE,
    [Year] SMALLINT,
    Mileage INT,
    CONSTRAINT FK_Cars_Clients FOREIGN KEY (Client_Id) REFERENCES Clients(Id) ON DELETE CASCADE
);

CREATE TABLE Employees (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL UNIQUE CHECK (LEN(Name) > 0),
    Role NVARCHAR(20) CHECK (Role IN (N'механик', N'электрик', N'приёмщик', N'администратор')) NOT NULL,
    Login NVARCHAR(50) UNIQUE,
    [Password] NVARCHAR(255)
);


CREATE TABLE Service_Orders (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Car_Id INT NOT NULL,
    Created_At DATETIME DEFAULT GETDATE(),
    Status NVARCHAR(20) CHECK (Status IN (N'создан', N'в работе', N'завершён', N'выдан')) DEFAULT N'создан',
    Total_Cost DECIMAL(10,2) DEFAULT 0,
    CONSTRAINT FK_ServiceOrders_Cars FOREIGN KEY (Car_Id) REFERENCES Cars(Id) ON DELETE CASCADE
);


CREATE TABLE Services (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Order_Id INT NOT NULL,
    Employee_Id INT,
    Service_Type NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Cost DECIMAL(10,2),
    CONSTRAINT FK_Services_Orders FOREIGN KEY (Order_Id) REFERENCES Service_Orders(Id) ON DELETE CASCADE,
    CONSTRAINT FK_Services_Employees FOREIGN KEY (Employee_Id) REFERENCES Employees(Id) ON DELETE SET NULL
);

CREATE TABLE Parts (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Manufacturer NVARCHAR(100),
    Price DECIMAL(10,2),
    Quantity INT DEFAULT 0
);


CREATE TABLE Order_Parts (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Order_Id INT NOT NULL,
    PartId INT NOT NULL,
    Quantity INT NOT NULL,
    Cost DECIMAL(10,2),
    CONSTRAINT FK_OrderParts_Orders FOREIGN KEY (Order_Id) REFERENCES Service_Orders(Id) ON DELETE CASCADE,
    CONSTRAINT FK_OrderParts_Parts FOREIGN KEY (PartId) REFERENCES Parts(Id) ON DELETE CASCADE
);

