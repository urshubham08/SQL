create database if not exists viewdb;
use viewdb;


CREATE TABLE departments (
    dept_id   INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id   INT PRIMARY KEY,
    name     VARCHAR(50),
    dept_id  INT,
    salary   DECIMAL(10,2),
    city     VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1,'HR'), (2,'IT'), (3,'Finance');

INSERT INTO employees VALUES
(101,'Aman',    2, 70000, 'Jaipur'),
(102,'Priya',   1, 45000, 'Delhi'),
(103,'Rahul',   2, 90000, 'Mumbai'),
(104,'Sneha',   3, 55000, 'Jaipur'),
(105,'Vikram',  2, 30000, 'Pune');

SELECT * FROM DEPARTMENTS ;


CREATE VIEW DEPT_VIEW AS SELECT * FROM DEPARTMENTS WHERE DEPT_ID < 3;

select * FROM DEPT_VIEW ;


-- insert on the view
INSERT INTO emp_public (emp_id, name, dept_id, city)
VALUES (106, 'Karan', 1, 'Jaipur');

SELECT * FROM employees WHERE emp_id = 106;

-- delete on view
DELETE FROM emp_public WHERE emp_id = 106;
-- row removed from the employees table

create view emp_2_col as select emp_id, name from employees;
select salary from emp_2_col;



insert into emp_2_col values(107,'yash');
select * from emp_2_col;
select * from employees;