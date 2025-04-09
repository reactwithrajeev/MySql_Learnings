create table employee_data(
	employee_id int primary key,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	department varchar(20),
	salary numeric(10,2),
	joining_date date,
	age int
);
alter table employee_data
drop column email;
alter table employee_data 
add column email varchar(150) unique;
select * from employee_data;

COPY employee_data (employee_id, first_name,last_name,email, department, salary, joining_date, age)
FROM 'C:/Data Analytics/MySql/Practice/ST - SQL ALL PRACTICE FILES/All Excel Practice Files/employee_data.csv'
DELIMITER ','
CSV HEADER;