create database CompanyDB;

use CompanyDB;

create table Department(
DeptID int primary key,
DeptName varchar(10) not null,
Location varchar(30)
);

create table Employee(
EmpID int primary key,
EmpName varchar(40) not null,
Salary decimal(10,2) not null,
DeptID int null,
ManagerID int null,
HireDate date not null,
city varchar(30)
);