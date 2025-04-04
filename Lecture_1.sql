create table Students(
	student_id serial primary key,
	Name varchar(25),
	age int ,
	City varchar(20),
	Branch varchar(25)
);

select * from Students;

insert into Students(Name,age,City,Branch)
	values
	('Rajeev',25,'Gurgaon','ECE'),
	('Rahul',25,'Delhi','EEE'),
	('Mukesh',25,'Patna','CSE');

insert into students(name)
	values('Hariom');

update students 
	set age = 24, city = 'Panipat', branch='CE'
	where student_id = 4;

Alter Table Students
Add column Total_Fee Numeric(10,2);

update students
set total_fee = case Student_id
			When 1 then 65000
			when 2 then 85000
			when 3 then 45000
			when 4 then 55000
			else total_fee
		end;


Truncate table students restart identity