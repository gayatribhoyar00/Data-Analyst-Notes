USE DA_BATCH;

CREATE TABLE patients (
patient_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (50) NOT NULL,
age INT CHECK (age > 0 AND age < 120),
gender VARCHAR (20) DEFAULT 'Unkonown',
phone INT UNIQUE
);

CREATE TABLE departments (
dept_id INT AUTO_INCREMENT PRIMARY KEY,
dept_name VARCHAR (50) NOT NULL UNIQUE,
manager_name VARCHAR (50) NOT NULL,
location VARCHAR (20) DEFAULT 'Head Office'
);

CREATE TABLE customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
full_name VARCHAR (50) NOT NULL,
email VARCHAR (20) UNIQUE,
age INT CHECK (age >=18),
city VARCHAR (20) DEFAULT 'Unknown'
);

CREATE TABLE teachers (
teacher_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (100) NOT NULL,
last_name VARCHAR (100) NOT NULL,
email VARCHAR (50) UNIQUE,
salary DECIMAL (20,2) CHECK (salary > 20000),
status VARCHAR (20) DEFAULT 'Active'
);