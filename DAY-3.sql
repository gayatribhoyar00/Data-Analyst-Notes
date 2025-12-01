CREATE DATABASE company;

USE company;

CREATE TABLE department (
dept_id INT AUTO_INCREMENT PRIMARY KEY,
dept_name VARCHAR (100) NOT NULL UNIQUE,
location VARCHAR (50) DEFAULT "Head Office"
);

CREATE TABLE employees (
emp_id INT AUTO_INCREMENT PRIMARY KEY,
emp_name VARCHAR (100) NOT NULL,
emil VARCHAR (100) UNIQUE,
salary DECIMAL (10,2) CHECK (salary >=10000),
join_date DATE NOT NULL,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department (dept_id)
);

USE DA_BATCH;
drop table bank_account;

USE company;

INSERT INTO department
(Dept_Name,Location)
VALUES
('HR' , 'Wardha') ,
('Finance' , 'Nagpur') ,
('Marketing' , 'Yavatmal');

SELECT * FROM department;

INSERT INTO  employees
(emp_name,emil,salary,join_date,dept_id)
VALUES

('Gayatri Bhoyar', 'gayatribhoyar@gmail.com', 60000, '2025-08-28',2),
('Vaishnavee Bhoyar', 'vaish.bhoyar@gmail.com', 100000, '2025-07-15',3);


select * from employees;


