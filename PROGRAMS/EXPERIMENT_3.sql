/*
Query the database tables using different ‘where’ clause conditions and also implement 
aggregate functions. 
*/

create schema EXPERIMENT_3;

-- Try Execution 2ND time This Code First 
-- drop schema EXPERIMENT_3

use EXPERIMENT_3;

#Creating a Table
create table Students(
Student_Name varchar(100),
Department  varchar(100),
Fees int,
EnrollmentDate date
);

#insert data Students table
-- CSE
insert into Students(Student_Name,Department,Fees,EnrollmentDate) values('UNKNOWN','CSE',65000,'2025-01-24');
insert into Students(Student_Name,Department,Fees,EnrollmentDate) values('SIVA','CSE',60000,'2024-01-24');
insert into Students(Student_Name,Department,Fees,EnrollmentDate) values('MITHUN','CSE',85000,'2025-01-24');
insert into Students(Student_Name,Department,Fees,EnrollmentDate) values('YOKESh','CSE',100000,'2023-01-24');
-- IT
insert into Students(Student_Name,Department,Fees,EnrollmentDate) values('HARI','IT',100000,'2023-01-24');
insert into Students(Student_Name,Department,Fees,EnrollmentDate) values('KAVI','IT',100000,'2023-01-24');
insert into Students(Student_Name,Department,Fees,EnrollmentDate) values('DEEPACK','IT',100000,'2023-01-24');

#‘where’ clause conditions and also implement aggregate functions. 

-- 1
select * from  Students;

-- 2
select * from  Students where Department='CSE';

-- 3
select * from  Students where Department='CSE' and Fees > 60000; 

-- 4
select * from  Students where Department in ('CSE','IT');

-- 5
select * from Students where Student_Name like 'UN%';

-- 6
select * from Students where EnrollmentDate between '2024-01-24' and '2025-01-24';