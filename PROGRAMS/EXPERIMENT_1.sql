/* 
Create a database table, add constraints (primary key, unique, check, Not null), insert rows, 
update and delete rows using SQL DDL and DML commands. 
*/


create schema EXPERIMENT_1;


-- Try Execution 2ND time This Code First 
-- drop schema EXPERIMENT_1


use EXPERIMENT_1;

#Creating a Table
create table Employee(
Emp_Id int,
Ename varchar(50),
Ejob varchar(100),
Salary int,
Pan_Number varchar(10)
);select * from Employee;


#add constraints (primary key, unique, check, Not null)
alter table Employee modify Emp_Id int primary key auto_increment;

alter table Employee modify Ename varchar(50) not null;

alter table Employee modify Ejob varchar(100) default 'Not Assign';

alter table Employee add constraint check_salary check(Salary > 10000);

alter table Employee modify Pan_Number varchar(10) unique;

#Insert 
insert into Employee(Ename,Salary,Pan_Number) values('UNKNOWN',10001,8668049515);select * from Employee;
insert into Employee(Ename,Salary,Pan_Number) values('SIVA',10001,8668049516);select * from Employee;
insert into Employee(Ename,Salary,Pan_Number) values('MITHUN',10001,8668049517);select * from Employee;
insert into Employee(Ename,Salary,Pan_Number) values('YOKESH',10001,8668049518);select * from Employee;

#Update
update Employee set Ejob='HACKER' where Ename='UNKNOWN';select * from Employee;
update Employee set Ejob='PC BUILDER' where Ename='SIVA';select * from Employee;
update Employee set Ejob='SPEACER & GUIDER' where Ename='MITHUN';select * from Employee;
update Employee set Ejob='LEARNER' where Ename='YOKESH';select * from Employee;

#Delete
delete from Employee where Emp_Id=1;select * from Employee;
#Delete All Data
delete from Employee;select * from Employee;