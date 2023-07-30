CREATE DATABASE COMMERCE
--Many to Many:Cədvəldəki çoxsaylı qeydlər başqa bir cədvəldəki çoxlu qeydlərlə əlaqəli oldugundan many to many adlandiririq


USE COMMERCE

CREATE TABLE Orders(
Id int identity primary key,
OrderName nvarchar(25),
EmployeeId int unique,
CustomerId int unique,
OrderCity nvarchar(25),
OrderAddress nvarchar(25)
)

CREATE TABLE Products(
Id int identity primary key,
ProductName nvarchar(25),
CategoryId int  unique,
NumberStocks int 
)


CREATE TABLE Details(
Id int identity primary key,
ProductId int references Products(Id),
OrderId int references Orders(Id)
)

SELECT * FROM Details
JOIN Products
on
Details.ProductId=Products.Id
JOIN Orders
on
Details.OrderId=Orders.Id