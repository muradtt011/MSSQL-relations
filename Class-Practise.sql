CREATE DATABASE TRAINING
USE TRAINING

CREATE TABLE Countries(
Id int identity primary key,
Name nvarchar(25),
Population int,
Area int
)

CREATE TABLE Cities(
Id int identity primary key,
Name nvarchar(25),
Population int,
Area int,
Countryid int references  Countries(Id)
)


CREATE TABLE Students(
Id int identity primary key,
Name nvarchar(25),
Surname nvarchar(25),
Age int
)

CREATE TABLE Contacts(
Id int identity primary key,
PhineNumber int,
Email nvarchar(25),
Address nvarchar(25),
Info nvarchar(25),
StudentId int references Students(Id)
)


CREATE TABLE Courses(
Id int identity primary key,
Name nvarchar(25),
Location nvarchar(25)
)

CREATE TABLE CourseStudents(
Id int identity primary key,
StudentId int references Students(Id),
CourseId int references Courses(Id)
)

SELECT *FROM Cities
JOIN Countries
on 
Cities.Countryid=Countries.Id

SELECT *FROM Contacts
JOIN Students
on
Contacts.StudentId=Students.Id

SELECT * FROM CourseStudents
JOIN Students
on
CourseStudents.StudentId=Students.Id
JOIN Courses
on
CourseStudents.CourseId=Courses.Id



