select * from employee_data;

-- Operators In SQL

-- Arithmetic Operators

SELECT
	FIRST_NAME,
	SALARY,
	ROUND((SALARY * 10) / 100, 2) AS BONUS
FROM
	EMPLOYEE_DATA;


SELECT
	SALARY * 12 AS ANNUAL_SALARY,
	SALARY * 0.05 AS SALARY_ICREAMENT,
	SALARY + SALARY * 0.05 AS NEW_MONTHLY_SALARY
FROM
	EMPLOYEE_DATA;

-- comparison Operators

select first_name, last_Name , age
from employee_data
where age =35;

-- Logical Operators

select first_name , age, salary
from employee_data
where age < 35 And age >30;

select salary,first_name, age
from employee_data 
where age > 45 or salary <250000;


select first_name , age from employee_data
where not (department ='IT');


-- Between Like & IN Operators

select first_name, salary
from employee_data
where salary between 40000 and 60000
order by salary asc;


select first_name, email
from employee_data
where email like '%yahoo.com';

select first_name , last_name,department
from employee_data
where department in ('IT','Marketing');

-- IS NULL

select email,first_name
from employee_data
where email is Null;


-- Set Operator 
CREATE TABLE student1 (
    id INT,
    name VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO student1 (id, name, course) VALUES
(1, 'Amit', 'Math'),
(2, 'Raj', 'Science'),
(3, 'Sneha', 'English'),
(4, 'Ravi', 'Math'),
(5, 'Priya', 'History');

CREATE TABLE student2 (
    id INT,
    name VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO student2 (id, name, course) VALUES
(3, 'Sneha', 'English'),
(4, 'Ravi', 'Math'),
(6, 'Karan', 'Biology'),
(7, 'Neha', 'Science'),
(8, 'Aman', 'Math');


-- Union ( remove Duplicates)

select * from student1
union
select * from student2
order by id asc;

-- Union all ( keep Duplicates)

select * from student1
union all
select * from student2
order by id asc;

-- intersect ( return common)

select * from student1
intersect
select * from student2
order by id asc;

-- except ( return which is in table 1 not in tble 2)

select * from student2
except
select * from student1
order by id asc;


