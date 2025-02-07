CREATE SCHEMA IF NOT EXISTS EXPERIMENT_1;

-- Use the schema
USE EXPERIMENT_1;

-- Create Employee Table with constraints
CREATE TABLE Employee (
    Emp_Id INT AUTO_INCREMENT PRIMARY KEY,
    Ename VARCHAR(50) NOT NULL,
    Ejob VARCHAR(100) DEFAULT 'Not Assigned',
    Salary INT CHECK (Salary > 10000),
    Pan_Number VARCHAR(10) UNIQUE
);

-- Insert data
INSERT INTO Employee (Ename, Salary, Pan_Number) VALUES
('RAJ', 10001, '8668049515'),
('SACHIN', 10001, '8668049516'),
('MEGA', 10001, '8668049517'),
('VIGNESH', 10001, '8668049518');

-- Verify inserted data
SELECT * FROM Employee;

-- Update Job Titles
UPDATE Employee SET Ejob = 'RAJ' WHERE Ename = 'RAJ';
UPDATE Employee SET Ejob = 'PC BUILDER' WHERE Ename = 'SACHIN';
UPDATE Employee SET Ejob = 'SPEAKER & GUIDE' WHERE Ename = 'MEGA';
UPDATE Employee SET Ejob = 'LEARNER' WHERE Ename = 'VIGNESH';

-- Verify updates
SELECT * FROM Employee;

-- Delete a specific employee by ID
DELETE FROM Employee WHERE Emp_Id = 1;

-- Verify deletion
SELECT * FROM Employee;

-- Delete all data and reset AUTO_INCREMENT
TRUNCATE TABLE Employee;

-- Verify the table is empty
SELECT * FROM Employee;
