CREATE DATABASE OutsourceCompany
ON 
(
  NAME = 'OutsourceCompany_Data',
  
  --It's recommended to change it on your path
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\OutsourceCompany.mdf',
  SIZE = 50MB,
  MAXSIZE = 500MB,
  FILEGROWTH = 10MB
  )
  LOG on 
  (
    NAME = 'OutsourceCompany_Log',
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\OutsourceCompany.ldf',
    SIZE = 10MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 5MB
  );
