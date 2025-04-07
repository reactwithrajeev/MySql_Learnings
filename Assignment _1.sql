-- Drop the table if it already exists
DROP TABLE IF EXISTS employees;
-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

SELECT * FROM employees;

-- Insert data into employees table
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

-- Assignment 1
select first_name , department from employees;

-- Assignment 2

update employees
set salary = salary+ (salary*10)/100
where department ='IT';

-- Assignment 3

delete from employees
where age > 34;

-- Assignment 4

alter table employees
add column email varchar(50) unique;

-- Assignment 5

alter table employees
rename column department to dept_name;

--Assignment 6

select * from employees
where joining_date > '2021-01-01';


-- Assignment 7

alter table employees
Alter column salary type int;

-- Assignment 8

select age , salary from employees
order by salary desc;

-- Assignment 9

insert into employees (first_name,last_name,dept_name,salary,joining_date,age)
values 
	('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);

select * from employees;
-- Assignment 10

update employees
set age = age+1;
