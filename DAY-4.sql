CREATE DATABASE company1;

USE company1;

CREATE TABLE department (
dept_id INT AUTO_INCREMENT PRIMARY KEY,
dept_name VARCHAR (100) NOT NULL UNIQUE,
location VARCHAR (50) DEFAULT "Head Office"
);

CREATE TABLE employees (
emp_id INT AUTO_INCREMENT PRIMARY KEY,
emp_name VARCHAR (100) NOT NULL,
email VARCHAR (100) UNIQUE,
salary DECIMAL (10,2) CHECK (salary >=10000),
join_date DATE NOT NULL,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department (dept_id)
);

INSERT INTO department
(dept_id, Dept_Name, Location)
VALUES
(1, 'HR', 'Wardha'),
(2, 'Finance', 'Nagpur'),
(3, 'AI', 'Nagpur'),
(4, 'Sale', 'Mumbai'),
(5, 'Digital Marketing', 'Pune'),
(6, 'Operation', 'Hydrabad');

SELECT * FROM department;

INSERT INTO employees
(emp_name,email,salary,join_date,dept_id)
VALUES

('Tushar Atkare', 'tushar@gmail.com', 35000, '2023-05-10', 1),
('Arayan Gupta', 'arayan@gmail.com', 45000, '2022-12-20',2),
('Rohit Sharma', 'rohit@gmail.com', 50000, '2021-03-15', 3),
('Neha Verma', 'neha@gmail.com', 38000, '2024-02-01', 4),
('Priya Patil', 'priya@gmail.com', 42000, '2022-07-19', 5),
('Rhaul Deshmukh', 'rahul@gmail.com', 55000, '2021-11-30', 6);

SELECT * FROM employees;





