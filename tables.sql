create database company_db
create table locations(
location_id int primary key,
city varchar(50),
state_name varchar(50)
);
alter table locations add country varchar(50);
select*from locations

create table departments(
department_id int primary key,
department_name varchar(50),
location_id int,
foreign key(location_id) 
references locations(location_id))
select*from departments

create table employees(
emp_id int primary key,
emp_name varchar(50),
salary int,
manager_id int,
gender varchar(50),
department_id int,
foreign key(department_id)
references departments(department_id))

alter table employees add hire_date date;
