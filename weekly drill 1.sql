create database practicedrill_db;
use practicedrill_db;
create table employees (
emp_id int primary key,
first_name varchar (50),
last_name varchar (50),
department varchar (50),
salary decimal (10,2)
 );
 
 show tables;
 describe employees;
 
 insert into employees values
 (1, 'John', 'Doe', 'HR', 4500.00),
 (2, 'Mary', 'Jane', 'IT', 60000.00),
 (3, 'Ahmed', 'Ali', 'Finance', 55000.00),
 (4, 'Grace', 'Okoro', 'IT', 72000.00),
 (5, 'Liam', 'Smith', 'Marketing', 48000.00);
 
 select * from employees;
 
 select first_name, department from employees;
 
 select* from employees where department = 'IT';
 select * from employees where salary > 50000;
 select * from employees order by salary desc limit 2;
 select department, count(*) as total_employees
 from employees
 group by department;
 select department, sum(salary) as total_salary
 from employees
 group by department;
select e.first_name, e. last_name, d.department_name
from employees e
inner join depatments d on e. department_id = d.department_id;
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

create table department (
department_id int primary key,
department_name varchar (50)
);
insert into department values
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Marketing');

create table employees (
employees_id int primary key,
first_name varchar (50),
last_name varchar (50),
department_id int
);
INSERT INTO employees VALUES
(101, 'Mary', 'Johnson', 1),
(102, 'David', 'Smith', 2),
(103, 'Sarah', 'Brown', 2),
(104, 'James', 'Miller', 3),
(105, 'Linda', 'Wilson', 4);

SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id;
DESCRIBE employees;
DESCRIBE department;

SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id;

SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id;
ALTER TABLE employees ADD COLUMN department_id INT;
describe employees;
describe department;
SELECT e.first_name, e.last_name, e.salary, d.department_name
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id;
CREATE TABLE departments (
  department_name VARCHAR(50) PRIMARY KEY
);

INSERT INTO department VALUES
('Engineering'), ('Sales'), ('Marketing');

DESCRIBE department;
insert into department values
(2, 'Engineering'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Human Resources');

INSERT INTO department (department_id, department_name) 
VALUES
(5, 'Engineering'),
(6, 'Sales'),
(7, 'Marketing'),
(8, 'Human Resources');

select  e. first_name, e. last_name, e. salary, d. department_name
from employees e
join department d
on e. department = d.department_id;

SELECT 
  e.first_name, 
  e.last_name, 
  e.salary, 
  d.department_name
FROM employees AS e
RIGHT JOIN department AS d
  ON e.department = d.department_name;
SELECT 
  e.first_name, 
  e.last_name, 
  e.salary, 
  d.department_name
FROM employees AS e
LEFT JOIN department AS d
  ON e.department = d.department_name;

select department, sum(salary)
from employees
group by department;

select department, count(*)
from employees
group by department
having count(*) > 2;

select department, avg(salary) from employees 
group by department;