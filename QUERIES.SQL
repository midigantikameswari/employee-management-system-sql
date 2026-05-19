 BASIC LEVEL 
	  
---1)Display all employees.
select*from employees

---2)Show all departments.
select*from departments

---3)Show all locations.
select*from locations

---4)Display employee name, salary.
select emp_name,salary
from employees

---5)Show employees whose salary is more than 50,000.
select emp_name,salary
from employees
where salary>50000

---6)Show employees from department_id = 10.
select emp_name,department_id
from employees
where department_id=10

---7)Show employees who are Male.
select emp_name,gender
from employees
where gender='Male'

---8)Show employees who are Female.
select emp_name,gender
from employees
where gender='Female'
---9)Sort employees by salary (high to low).
select emp_name,salary
from employees
order by salary desc

---10)Sort employees by hire_date (latest first).
select emp_name,hire_date
from employees
order by hire_date desc

                        
						INTERMEDIATE LEVEL

---11)Count total employees.
select count(*) as total_emp
from employees

---12)Find total employees in each department.
select department_id,count(emp_name) as count_dept_wise
from employees
group by department_id

---13)Find average salary of employees.
select avg(salary) as avg_sal
from employees

---14)Find maximum salary in company.
select max(salary) as max_sal
from employees

---15)Find minimum salary in company.
select min(salary) as min_sal
from employees

--16)Show department-wise average salary.
select department_id,avg(salary)as avg_sal
from employees
group by department_id

---17)Show department-wise employee count.
select department_id ,count(emp_name) as emp_count
from employees
group by department_id

---18)Show employees with their department_id.
select emp_name,department_id
from employees

---19)Show employees with department name (JOIN).
select e.emp_name,d.department_name
from employees e
join departments d
on e.department_id=d.department_id


---20)Show employees with city name (JOIN with locations).
select e.emp_name,l.city
from locations l
join departments d
on l.location_id=d.location_id
join employees e
on e.department_id=d.department_id

                      
					   
					   ----JOIN MASTER ----
					   
---21)Show employee name, department name, city.
select e.emp_name,d.department_name,l.city
from locations l
join departments d
on l.location_id=d.location_id
join employees e
on e.department_id=d.department_id

---22)Show all employees with full location details.
select e.emp_name,l.location_id,l.city,l.state_name,l.country
from employees e
join departments d
on e.department_id=d.department_id
join locations l
on l.location_id=d.location_id

---23)Show departments with location details.
select d.department_name,l.location_id,l.city,l.state_name,l.country
from departments d
join locations l
on l.location_id=d.location_id

---24)Show employees and their manager name (SELF JOIN).
select e.emp_name as emp_name,
m.emp_name as manager_name
from employees e
join employees m
on e.manager_id=m.emp_id

---25)Show employees who belong to “IT” department.
select emp_name,department_name
from employees e
join departments d
on d.department_id=e.department_id
where d.department_name='IT'

---26)Show employees working in “Hyderabad”.
select emp_name,l.city
from employees e
join departments d
on d.department_id=e.department_id
join locations l
on l.location_id=d.location_id
where l.city='Hyderabad'

---27)Show employees working in same department as ‘Ravi’.
select emp_name,department_id
from employees
where department_id =(select department_id
from employees 
where emp_name='Ravi')

---28)Show departments which have employees.
select d.department_name,e.emp_name
from departments d
 join employees e
on e.department_id=d.department_id

---29)Show departments which have no employees.
select d.department_name,e.emp_name
from departments d
left join employees e
on e.department_id=d.department_id
where e.emp_name is null

---30)Show all relationships (employee → department → location).
select*from employees e
join departments d
on e.department_id=d.department_id
join locations l
on l.location_id=d.location_id

                  
				   ADVANCED LEVEL
				   
--31)Find employees earning more than department average salary.
select emp_name,salary
from employees e
where salary >(select avg(salary)
from employees
where department_id=e.department_id)

32)Find second highest salary.
select max(salary) as second_highest
from employees 
where salary <
(select max(salary)from employees)

--33)Find third highest salary.
select max(salary) as third_highest
from employees
where salary<
(select max(salary) from employees
where salary<(select max(salary) from employees))

--34)Find top 3 highest paid employees.
select emp_name,salary
from employees
where salary in(select distinct top 3 salary
from employees
order by salary desc)
order by salary desc


---35)Find employees who joined in last 10 year.
select emp_name,hire_date
from employees
where hire_date >=dateadd(year,-10,getdate())

---36)Find employees with same salary as someone else.
select emp_name,salary
from employees
where salary in(select salary 
from employees 
group by salary
having count(*) >1)

---37)Find duplicate salaries in employees table.
select salary
from employees
group by salary
having count(*) > 1

---38)Find highest paid employee in each department.
select emp_name, salary, department_id
from employees e
where salary = (
    select max(salary)
    from employees
    where department_id = e.department_id)


---39)Find salary gap (max - min) in each department.
select department_id,
max(salary) - min(salary) as salary_gap
from employees
group by department_id

---40)Find employee hierarchy (manager → employees tree).
select e.emp_name as employee_name,
       m.emp_name as manager_name
from employees e
join employees m
on e.manager_id = m.emp_id
