CREATE DATABASE DA_BATCH; 

USE DA_BATCH;

CREATE TABLE course
( course_id INT AUTO_INCREMENT,
course_name VARCHAR(100) NOT NULL,
duration INT DEFAULT 6,
PRIMARY KEY (course_id),
UNIQUE (course_name)
);

CREATE TABLE student
(stu_id INT AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
age INT CHECK(age >= 18 AND age <= 60),
course_id INT,
PRIMARY KEY (stu_id),
FOREIGN KEY (course_id)
REFERENCES course(course_id)
);