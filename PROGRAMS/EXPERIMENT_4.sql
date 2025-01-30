/*
Query the database tables and explore sub queries and simple join operations. 
*/

create schema EXPERIMENT_4;

-- Try Execution 2ND time This Code First 
-- drop schema EXPERIMENT_4

use EXPERIMENT_4;

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

insert into Employee values(1,'Ram','ADMIN',1000000,2);
insert into Employee values(2,'Harini','MANAGER',2500000,2);
insert into Employee values(3,'George','SALES',2000000,1);
insert into Employee values(4,'Ramya','SALES',1300000,2);
insert into Employee values(5,'Meena','HR',2000000,3);
insert into Employee values(6,'Ashok','MANAGER',3000000,1);
insert into Employee values(7,'Abdul','HR',2000000,1);
insert into Employee values(8,'Ramya','ENGINEER',1000000,2);
insert into Employee values(9,'Raghu','CEO',8000000,3);
insert into Employee VALUES(10,'Arvind','MANAGER',2800000,3);
insert into Employee VALUES(11,'Akshay','ENGINEER',1000000,1);
insert into Employee VALUES(12,'John','ADMIN',2200000,1);
insert into Employee VALUES(13,'Abinaya','ENGINEER',2100000,2);
insert into Employee VALUES(14,'Vidya','ADMIN',2200000,NULL);
insert into Employee VALUES(15,'Ranjani','ENGINEER',2100000,NULL);

select * from Branch;
select * from Employee;
#sub queries and simple join operations. 

-- inner join
select Employee.Employee_Id, Employee.Employee_name, Employee.Job_desc, Branch.Br_name 
from Employee 
join Branch on Employee.Branch_Id=Branch.Branch_Id 
order by Employee_Id;

-- Name Alias
select E.Employee_Id, E.Employee_name, E.Job_desc, B.Br_name 
from Employee as E 
join Branch as B 
on E.Branch_Id=B.Branch_Id 
order by Employee_Id;

-- Display Employee Count
select B.Br_name, count(E.Employee_Id) Count
from Branch as B  
join Employee as E 
on E.Branch_Id=B.Branch_Id 
group by E.Branch_Id;