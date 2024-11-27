use OutsourceCompany;

CREATE TABLE Positions (
    ID UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(), 
    Title NVARCHAR(255) NOT NULL,             
    Department NVARCHAR(255) NOT NULL,          
    Salary DECIMAL(18, 2) NOT NULL,                
    WorkplaceNumber INT NOT NULL                   
);


CREATE TABLE Employees (
    ID UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(), 
    FirstName NVARCHAR(255) NOT NULL,           
    LastName NVARCHAR(255) NOT NULL,                
    Patronymic NVARCHAR(255),                      
    BirthDate DATE NOT NULL,                      
    HireDate DATE NOT NULL,                         
    Address NVARCHAR(500),                         
    Email NVARCHAR(255),                          
    PositionID UNIQUEIDENTIFIER NOT NULL,          
    FOREIGN KEY (PositionID) REFERENCES Positions(ID)
);
