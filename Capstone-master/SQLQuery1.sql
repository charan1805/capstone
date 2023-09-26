Create database CapStone
use CapStone

CREATE TABLE AdminInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255),
    Password VARCHAR(255)
);

CREATE TABLE EmpInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255) unique,
    Name VARCHAR(255),
    DateOfJoining DATETIME,
    PassCode INT
);

CREATE TABLE BlogInfo (
    BlogId INT PRIMARY KEY identity(1,1),
    Title VARCHAR(255),
    Subject VARCHAR(255),
    DateOfCreation DATETIME,
    BlogUrl VARCHAR(255),
    EmpEmailId VARCHAR(255),
);

Insert into AdminInfo(EmailId,Password) Values ('Charan','Charan123')

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('Charan11@gmail.com', 'Sree Charan', '2023-08-20 08:00:00', 65432);

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('Charan1@gmail.com', 'Charan', '2023-07-21 09:00:00', 54321);

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ('Introduction to SQL', 'MS.NET', '2023-09-19 06:00:00', 'https://devblogs.microsoft.com/dotnet/category/aspnet/', 'Charan11@gmail.com');

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ( 'Advanced SQL Techniques', 'MS.NET', '2023-09-15 05:00:00', 'https://devblogs.microsoft.com/dotnet/tag/asp-net-web-api/', 'Charan@gmail.com');
INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ( 'Advanced SQL Techniques', 'RDBMS', '2023-09-15 05:00:00', 'https://cloudblogs.microsoft.com/sqlserver/', 'Charan2@gmail.com');

Select * from AdminInfo
Select * from EmpInfo
Select * from BlogInfo