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
 
 
#DDL - Data defination language

#CREATE - 

#ALTER - to make changes

ALTER TABLE employees ADD phone_no VARCHAR (13);

ALTER TABLE employees MODIFY salary DECIMAL(12,2);

ALTER TABLE employees DROP COLUMN phone_no;

#DROP - Delete all

# DROP TABLE employees;

#TRUNCATE - Delete all entries

# TRUNCATE TABLE employees;

#RENAME

RENAME TABLE employees TO staff;

# DDL
# 1 - CREATE
# 2 - ALTER
# 3 - DROP
# 4 - TRUNCATE
# 5 - RENAME


#DML - Data Manipulation Language

# 1 - INSERT - Add new records

INSERT INTO department ( Dept_Name, Location)
VALUES ("Data Sci" , "NY");

SELECT * FROM department;

# 2 - UPDATE - 

INSERT INTO staff
(emp_name,email,salary, join_date,dept_id)
VALUES
("Pratiksha", "pratiksha@gmail.com", 20000, "2025-09-08", 4);

SELECT * FROM staff;

SET SQL_SAFE_UPDATES = 0;

UPDATE staff SET salary =80000
WHERE emp_name ="Pratiksha";

SET SQL_SAFE_UPDATES = 1;

# 3 - DELETE - Delete the particular record

SELECT * FROM staff;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM staff WHERE emp_name = "Rohit Sharma";

# REPLACE 

REPLACE INTO staff (emp_id,emp_name,email,salary,join_date,dept_id)
VALUES (1, "Gayatri", "gayatri@gmail.com", 90000, "2025-09-09", 1);

select * from staff;

#DML - Data Manipulation Language
# 1 - Insert
# 2 - Update
# 3 - Delete
# 4 - Replace


#DQL - Data Query Language

#1 - SELECT

SELECT * FROM staff;

# DISTINCT CLAUSE

SELECT DISTINCT dept_id FROM staff;

SELECT emp_id,emp_name FROM staff;

# WHERE CLAUSE 

SELECT emp_name FROM staff WHERE dept_id = 1;

# ORDER BY CLAUSE 

SELECT * FROM staff ORDER BY dept_id ASC;

SELECT * FROM staff ORDER BY dept_id DESC;

SELECT * FROM staff ORDER BY emp_name ASC;

SELECT * FROM staff ORDER BY emp_name DESC;

# LIMIT CLAUSE 

SELECT * FROM staff ORDER BY salary DESC LIMIT 1;

SELECT * FROM staff ORDER BY salary ASC LIMIT 1;

# LIKE - Pattern Matching 

SELECT * FROM staff WHERE emp_name LIKE "P%";

SELECT * FROM staff WHERE emp_name LIKE "%I";

SELECT * FROM staff WHERE emp_name LIKE "%V%";

SELECT * FROM staff WHERE emp_name LIKE "%ul%";


# BETWEEN CLAUSE

SELECT * FROM staff WHERE salary BETWEEN 35000 AND 50000;

# IN 

SELECT * FROM staff WHERE dept_id IN (1,4);

# Aggregates Clauses

# 1 - COUNT()

SELECT COUNT(*) AS TOTAL_COUNT FROM staff;

# 2 - AVG()

SELECT AVG(salary) FROM staff;
SELECT AVG(salary) AS avg_sal FROM staff;

# 3 - max() , min()   AS - Alias

SELECT MAX(salary) AS max_sal FROM staff;

SELECT MIN(salary) AS min_sal FROM staff;

#  GROUP BY CLAUSE

SELECT dept_id , AVG(salary) AS avg_sal FROM staff GROUP BY dept_id;

# HAVING CLAUSE

SELECT dept_id , AVG(salary) As avg_sal FROM staff GROUP BY dept_id HAVING avg_sal<50000;



# JOIN CLAUSE

SELECT s.emp_name, s.salary, d.dept_name
FROM staff s
JOIN department d
ON S.dept_id = d.Dept_id;

SELECT s.emp_name, s.salary, d.dept_name
FROM department d
JOIN staff s
ON d.dept_id = s.Dept_id;

# CASE_Else_End (CLAUSE)

SELECT emp_name, salary,
CASE 
	WHEN salary >= 60000 THEN "High"
    WHEN salary BETWEEN 40000 AND 59999 THEN "Medium"
    ELSE "Low"
    END AS salary_level
FROM staff;



# CLAUSES

# SELECT
# DISTINCT - unique
# WHERE - filter row
# ORDER BY - ASC/DESC    
# LIMIT 
# LIKE - "%P"
# BETWEEN  AND 
# IN  / NOT IN 
# GROUP BY 
# HAVING 
# CASE-WHEN-THEN-ELSE-END
# JOIN - ON 
# AVG , COUNT , MIN , MAX , SUM







