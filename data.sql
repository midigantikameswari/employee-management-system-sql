insert into locations values(1,'Hyderabad','Telangana','India'),
 (2, 'Bangalore', 'Karnataka', 'India'),
 (3, 'Chennai', 'Tamil Nadu', 'India'),
 (4, 'Mumbai', 'Maharashtra', 'India'),
 (5, 'Pune', 'Maharashtra', 'India'),
 (6, 'Delhi', 'Delhi', 'India'),
 (7, 'Kolkata', 'West Bengal', 'India'),
 (8, 'Ahmedabad', 'Gujarat', 'India'),
 (9, 'Jaipur', 'Rajasthan', 'India'),
 (10, 'Lucknow', 'Uttar Pradesh', 'India'),
 (11, 'Bhopal', 'Madhya Pradesh', 'India'),
 (12, 'Chandigarh', 'Punjab', 'India'),
 (13, 'Coimbatore', 'Tamil Nadu', 'India'),
 (14, 'Vizag', 'Andhra Pradesh', 'India'),
 (15, 'Kochi', 'Kerala', 'India');

----

 INSERT INTO departments VALUES
(10,'IT',1),
(20,'HR',2),
(30,'Finance',3),
(40,'Marketing',4),
(50,'Sales',5),
(60,'Operations',6),
(70,'Admin',7),
(80,'Support',8),
(90,'Research',9),
(100,'Development',10),
(110,'Security',11),
(120,'Logistics',12),
(130,'Production',13),
(140,'Quality',14),
(150,'Training',15),
(160,'Analytics',1),
(170,'Design',2),
(180,'Procurement',3),
(190,'Legal',4),
(200,'Strategy',5);


select*from employees

INSERT INTO employees (emp_id, emp_name, salary, manager_id, gender, department_id, hire_date)
VALUES
(1,'Arjun Reddy',85000,NULL,'Male',10,'2022-01-10'),
(2,'Sneha Reddy',60000,1,'Female',20,'2022-03-15'),
(3,'Vikram Kumar',75000,1,'Male',30,'2021-11-20'),
(4,'Priya Sharma',52000,2,'Female',40,'2023-02-10'),
(5,'Rahul Verma',48000,2,'Male',50,'2023-05-18'),
(6,'Anjali Nair',70000,3,'Female',60,'2022-07-25'),
(7,'Kiran Rao',65000,3,'Male',70,'2021-09-30'),
(8,'Divya Patel',54000,4,'Female',80,'2023-01-05'),
(9,'Manoj Singh',58000,4,'Male',90,'2022-12-12'),
(10,'Swathi Gopal',72000,5,'Female',100,'2021-06-14'),
(11,'Naveen Reddy',46000,5,'Male',110,'2023-04-22'),
(12,'Lakshmi Devi',51000,6,'Female',120,'2022-10-08'),
(13,'Ravi Teja',88000,6,'Male',130,'2020-08-19'),
(14,'Keerthi Rao',67000,7,'Female',140,'2021-03-27'),
(15,'Suresh Babu',62000,7,'Male',150,'2022-06-11'),
(16,'Harini K',59000,8,'Female',160,'2023-07-01'),
(17,'Ajay Kumar',90000,8,'Male',170,'2020-12-15'),
(18,'Meena Iyer',53000,9,'Female',180,'2023-03-09'),
(19,'Deepak Reddy',78000,9,'Male',190,'2021-05-21'),
(20,'Varsha Nair',95000,10,'Female',200,'2020-01-30');
