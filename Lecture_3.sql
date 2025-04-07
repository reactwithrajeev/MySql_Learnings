select * from teachers;
select * from students_data;
select * from users order by userid asc;

alter table students
add column Addmision_date timestamp default current_timestamp;

alter table users
rename column reg_date to DOB;

alter table users 
add constraint age check (age >= 18);


alter table students 
rename to students_data;