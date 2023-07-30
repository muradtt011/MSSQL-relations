CREATE DATABASE WORKER

USE WORKER

CREATE TABLE Employee(
Id int identity primary key,
FullName nvarchar(255) not null,
Age int not null Check(Age>0),
Email nvarchar(30) not null unique,
Salary decimal not null Check(Salary>=300 AND Salary<=2000)
)
INSERT INTO Employee (FullName,Age,Email,Salary) VALUES
('Murad Tagizade',18,'muradd011@gmail.com',1500.70),
('User Surname1',25,'username1@gmail.com',1400.20),
('User Surname2',30,'username2@gmail.com',1800.60),
('User Surname3',38,'username3@gmail.com',1200.90)


SELECT* FROM Employee

