/*
Query the database tables and explore natural, equi and outer joins. 
*/


create schema EXPERIMENT_5;

-- Try Execution 2ND time This Code First 
-- drop schema EXPERIMENT_5

use EXPERIMENT_5;

#create Branch Table
create table Branch(
Branch_Id int primary key,
Br_name varchar(100) not null,
Address varchar(100)
);

#create Employee Table
create table Employee(
Employee_Id int primary key,
Employee_name varchar(50) not null,
Job_desc varchar(50),
Salary int,
Branch_Id int,
constraint FK_Branch_Id foreign key(Branch_Id) references Branch(Branch_Id)
);

insert into Branch values (1,'CHENNAI','16 ABC Road');
insert into Branch values (2,'COIMBATORE','120 15th Block');
insert into Branch values (3,'MUMBAI','25 ZYZ Road');
insert into Branch values (4,'HYDRABAD','32 10th Street');

insert into Employee values(1,'Raj','ADMIN',1000000,2);
insert into Employee values(2,'Sachin','MANAGER',2500000,2);
insert into Employee values(3,'Mega','SALES',2000000,1);
insert into Employee values(4,'Vignesh','SALES',1300000,2);
insert into Employee values(5,'Prasanth','HR',2000000,3);
insert into Employee values(6,'Thilak','MANAGER',3000000,1);
insert into Employee values(7,'Partha','HR',2000000,1);
insert into Employee values(8,'Sibiraj','ENGINEER',1000000,2);
insert into Employee values(9,'Praveen','CEO',8000000,3);
insert into Employee VALUES(10,'poovarasan','MANAGER',2800000,3);
insert into Employee VALUES(11,'Huziaf','ENGINEER',1000000,1);
insert into Employee VALUES(12,'Murugesan','ADMIN',2200000,1);
insert into Employee VALUES(13,'Murugasamy','ENGINEER',2100000,2);
insert into Employee VALUES(14,'Pugal','ADMIN',2200000,NULL);
insert into Employee VALUES(15,'Ranjani','ENGINEER',2100000,NULL);

select * from Branch;
select * from Employee;


#Natural Join
select * from Employee natural join Branch;


#Equi Join

-- inner join
select Employee.Employee_Id, Employee.Employee_name, Employee.Job_desc, Branch.Br_name 
from Employee 
join Branch on Employee.Branch_Id=Branch.Branch_Id 
order by Employee_Id;

-- Right join
select Employee.Employee_Id, Employee.Employee_name, Employee.Job_desc, Branch.Br_name 
from Employee 
right join Branch on Employee.Branch_Id=Branch.Branch_Id 
order by Employee_Id;

-- Left join
select Employee.Employee_Id, Employee.Employee_name, Employee.Job_desc, Branch.Br_name 
from Employee 
left join Branch on Employee.Branch_Id=Branch.Branch_Id 
order by Employee_Id;

-- Cross join
select Employee.Employee_Id, Employee.Employee_name, Employee.Job_desc, Branch.Br_name 
from Employee 
cross join Branch on Employee.Branch_Id=Branch.Branch_Id 
order by Employee_Id;

#FULL OUTER JOIN
