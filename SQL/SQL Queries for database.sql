create database Loginsystem;

CREATE TABLE EmployeeDetail(Id varchar(15) primary key Not Null,
firstname char(30),lastname char(30),fathername char(50), 
Email  varchar(50), Phone varchar(15),
country char(50),dob date,
gender char(15), designation char(40),
address varchar(300));

insert into EmployeeDetail values('INT022', 'ravi', 'sharma', 'Umesh Sharma', 
'ravi.sharma@cygrp.com', '8449961949', 
'India', '1996-11-09', 'Male', 'Intern','Aligarh');
select * from EmployeeDetail;

CREATE TABLE EducationDetail(Id varchar(15) primary key Not Null
FOREIGN KEY REFERENCES EmployeeDetail(Id),
TenthBoard char(100),Tenthmarks float, Twelfthboard char(100), Twelfthmarks float,
GraduationDegree char(100), GraduationMarks float);
insert into EducationDetail values ('INT022', 'CBSE', 80.0, 'CBSE', 80.0, 'B.Tech', 80.0);
select * from EducationDetail;

CREATE TABLE AuthenticateUser(Id varchar(15) primary key 
FOREIGN KEY REFERENCES EmployeeDetail(Id),
Email varchar(50),password varchar(30),
Terms bit);
insert into AuthenticateUser values('INT022', 'ravi.sharma@cygrp.com', 'abc@123', 1);
insert into AuthenticateUser values('1', '2', '3', 1);
select * from AuthenticateUser;

select * from EmployeeDetail;
select * from EducationDetail;
select * from AuthenticateUser;
delete from EmployeeDetail where Id='INT021'