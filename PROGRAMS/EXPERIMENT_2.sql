/*
Create a set of tables, add foreign key constraints and incorporate referential integrity.
*/

create schema EXPERIMENT_2;

use EXPERIMENT_2;

-- Try Execution 2ND time This Code First 
-- drop schema EXPERIMENT_2

#Creating Students Table
create table Students(
StudentID int primary key,
FirstName varchar(100),
LastName varchar(100)
);

#Creating Courses Table
create table Courses(
CourseID int primary key,
CourseName varchar(100)
);

#Creating Enrollments Table
create table Enrollments(
EnrollmentID int primary key,
StudentID int,
CourseID int,
EnrollmentDate date,
foreign key (StudentID) references Students(StudentID),
foreign key (CourseID) references Courses(CourseID)
);

#Insert Students Table
insert into Students(StudentID,FirstName) values(1,'UNKNOWN');
insert into Students(StudentID,FirstName) values(2,'UNKNOWN');
insert into Students(StudentID,FirstName) values(3,'UNKNOWN');
insert into Students(StudentID,FirstName) values(4,'UNKNOWN');


#Insert Courses Table
insert into Courses(CourseID,CourseName) values(1,'Database Management Systems');
insert into Courses(CourseID,CourseName) values(2,'Database Management Systems');
insert into Courses(CourseID,CourseName) values(3,'Database Management Systems');
insert into Courses(CourseID,CourseName) values(4,'Database Management Systems');

#Insert Enrollments Table
insert into Enrollments(EnrollmentID,StudentID,CourseID,EnrollmentDate) values(1,1,1,'2025-01-24');
insert into Enrollments(EnrollmentID,StudentID,CourseID,EnrollmentDate) values(2,2,2,'2025-01-24');
insert into Enrollments(EnrollmentID,StudentID,CourseID,EnrollmentDate) values(3,3,3,'2025-01-24');
insert into Enrollments(EnrollmentID,StudentID,CourseID,EnrollmentDate) values(4,4,4,'2025-01-24');


#view
select * from Students;
select * from Courses;
select * from Enrollments;