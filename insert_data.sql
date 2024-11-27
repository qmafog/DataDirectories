use OutsourceCompany;
INSERT INTO Positions (ID, Title, Department, Salary, WorkplaceNumber)
VALUES 
    (NEWID(), 'Менеджер', 'Отдел продаж', 3000.00, 101),
    (NEWID(), 'Разработчик', 'IT-отдел', 8000.00, 208),
    (NEWID(), 'Бухгалтер', 'Финансовый отдел', 6000.00, 417);

INSERT INTO Employees (ID, FirstName, LastName, Patronymic, BirthDate, HireDate, Address, Email, PositionID)
VALUES 
    (NEWID(), 'Иван', 'Король', 'Андреевич', '2004-11-03', '2020-06-01', 'ул. Пушкина, д. 10', 'qmafog6@gmail.com',
        (SELECT TOP 1 ID FROM Positions WHERE Title = 'Разработчик')), 
    (NEWID(), 'Алексей', 'Петров', 'Павлович', '1985-07-20', '2018-03-15', 'ул. Лермонтова, д. 5', 'petrov@mail.ru',
        (SELECT TOP 1 ID FROM Positions WHERE Title = 'Менеджер')), 
    (NEWID(), 'Светлана', 'Сидорова', 'Александровна', '1992-03-10', '2022-09-10', 'пр. Победы, д. 23', 'sidorova1992@proton.com',
        (SELECT TOP 1 ID FROM Positions WHERE Title = 'Бухгалтер'));
