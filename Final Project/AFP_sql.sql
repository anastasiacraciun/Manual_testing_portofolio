-- 1. Create 2 databases, one named OrangeHRM_WorkExperience and another one Qualifications.
create database OrangeHRM_WorkExperience;
create database Qualifications;

-- 2. View existing databases 
show databases;

-- 3. Delete the Qualifications database
drop database Qualifications;

-- 4. Select the OrangeHRM_WorkExperience database;
use OrangeHRM_WorkExperience;

-- 5. Create the table Work_Experience with the following columns: Emplyee_Id (PK), First_Name, Last_Name, Company
create table work_experience (
Employee_Id int auto_increment,
First_Name varchar (55) not null,
Last_Name varchar (55) not null,
Company varchar (55),
primary key (Employee_ID)
);

-- 6. Add the Job_Title column;
alter table work_experience
add column Job_Title varchar (55);

-- 7. Fill in the table with data
insert into work_experience (First_Name, Last_Name, Company, Job_Title) values 
('Alice', 'Adams', 'Siemens', 'Engineer'),
('Culton', 'Wilson', 'Allgreens', 'Pharmacist'),
('Brooklyn', 'Robinson', 'Toshhiba', 'Developer'),
('Hunter', 'Stevens', 'AcBel', 'PC operator'),
('Aaron', 'Walker', 'AT&T', 'Sales Representative'),
('Farell', 'Jones', 'St Louis Hospital', 'Doctor'),
('Donna', 'Jenkins', 'Blue Bell', 'Secretary'),
('Tailor', 'Armstrong', 'Siemens', 'CEO'),
('Ramsey', 'Atkinson', 'Olive Garden', 'Chef');

-- 8. Get all the employees records from the database
select * from Work_experience;

-- 9. Get how many employee records exist in the table
select count(*) from Work_Experience;

-- 10. Display the first name and last name of all employees
select Last_Name, First_Name from Work_Experience;

-- 11. Create the table Date with the following columns: seq_id (FK), First_Name, From_Date, To_Date
create table Date (
seq_id int not null,
First_Name varchar (55) not null,
From_Date date,
To_Date date,
constraint fk_Date_Work_Experience 
foreign key (seq_id)
references work_experience (employee_id)
);

-- 12. Display the columns defenitions for table Date.
desc date;

-- 13. Fill in the table with data
insert into Date (seq_id,First_Name, From_Date, To_Date) values
(1,'Alice', '2018-05-13', '2022-01-20'),
(4, 'Hunter', '2019-12-23', '2021-03-03'),
(2, 'Culton', '2019-04-11', '2019-12-30'),
(6, 'Farell', '2020-08-29', '2021-08-05'),
(5, 'Aaron', '2015-02-16', '2021-03-01'),
(7, 'Donna', '2019-05-05', '2020-06-04'),
(8, 'Tailor', '2010-03-20', '2021-12-31');

-- 14. Get all the employees and dates from the Date table.
Select * from Date;

-- 15. Get all the employees that stoped working in 2021
select * from Date where To_Date like '2021%';

-- 16.Get all employee names from the Date table that contain character 'l'
select First_Name from Date where First_Name like '%l%';

-- 17. Remove employee Farell from the Date table
delete from Date where First_Name= 'Farell';

-- 18. Get the name and the end date of the employees that stoped working after 2021-01-01
select First_Name, To_Date from Date where To_date > '2021-01-01'; 

-- 19. Create the table Details with the following columns: Id (FK), City, Wage, Department.
create table Details (
Id int not null,
City varchar(50),
Wage float,
Department varchar(50),
constraint fk_Details_Work_Experience
foreign key (id)
references work_experience (employee_id)
);

-- 20. Display the columns defenitions for table Details
desc Details;

-- 21 Fill in the table with data
insert into Details (Id, City, Wage, Department) values 
(1, 'New York', 10000, 'Construction'),
(2, 'Philadelphia', '7000', 'Medicine'),
(3,'Utah', '9000', 'IT'),
(4,'New York', '5000', 'Customer Support'),
(4,'Queens' , '4500', 'Customer Support'),
(6, 'Kansas', '6800', 'Medicine'),
(7, 'Las Vegas', '4000', 'Entertainment'),
(7, 'Los Angeles', '4750', 'Social'),
(9, 'Colorado', '8500', 'Cooking');

-- 22. Check that all the records were inserted in the Details table
select*from details;

-- 23. Get the City and Department from the Details table where city is New york and the wage is different from 5000
select City, Department from Details where city = 'New York' and Wage!=5000;

-- 24. Select  all the records from the Details table where 6000 < Wage < 9000
select *from details where Wage between 6000 and 9000;

-- 25. Select the department where the City name contains the 's' character or the Wage equals to 8500
select  Department from details where City like '%s' or Wage = 8500;

-- 26. Select all the records from the Details table that have experience in Customer Support or the salary ends in '500'
Select * from Details where Department = 'Customer Support' or  wage like '%500';

-- 27. Select all the records from the Details table that have experinece in Customer Support or the salary ends in '500' and the work place was in New York
Select * from Details where (Department = 'Customer Support'or Wage like '%500') and City = 'New York';

-- 28. Change the Department to Marketing for the record where Wage = 4500
update details set Department = 'Marketing' where Wage='4500';

-- 29. Compute the sum of all salaries
select sum(Wage) from Details;

-- 30. Compute the average salary for all the employees
select avg(Wage) from Details;

-- 31. Compute the smallest salary for every Department
select Department, min(Wage) from Details group by Department;

-- 32. Compute the highest wage.
select max(Wage) from Details;

-- 33. Compute the Cartesian Product between the Work Experience and Details tables
select * from work_experience cross join details;

-- 34. Display the registrations of the employees that have the From and To dates completed, including the company and the job title.
select * from work_experience inner join date on work_experience.employee_id = date.seq_id;
select * from work_experience right join date on work_experience.employee_id = date.seq_id;

-- 35. Display the registrations of the employees that don't have the From and To dates completed.
select * from work_experience left join date on work_experience.employee_id = date.seq_id where date.seq_id is null;

-- 36. Display the employees and their work experience, including the dates if they are completed 
select * from work_experience left  join date on work_experience.employee_id = date.seq_id;

-- 37. Display the last name, company and job title from the work_experience table and give the columns a temp name
select Last_name Name, company Corporation, Job_title Domain from work_experience;

-- 38. Display all the records from the Date table in chronological order
select *from date order by From_Date;

-- 39. Display the wage and Departments from the Details table in a discending order
select wage, department from Details order by wage desc;

-- 40. Display the 3 employees from the Details table that have th highest wage
select * from details order by wage desc limit 3;

-- 41. Display the last name and the average wage of the employee that has experince in the Customer Support Department
select Last_Name, avg(wage) from work_experience inner join details on work_experience.employee_id = details.id where details.Department='Customer Support'; 

-- 42. Compute the number of employees that have the From and to Date registred and the wage bigger than 5000. 
select count(First_Name) from Date right join details d on date.seq_id=d.Id where d.Wage > 5000;

-- 43. Display the full name and the wage off all the employees registred in the details table  
select First_name, Last_Name, wage from work_experience w inner join details on w.Employee_Id=details.Id where wage is not null;

-- 44.Remove the First_Name column from the Date table
alter table date drop column First_Name;

-- 45. Display all the info regarding the employees in 1 table
select * from work_experience w inner join date on w.Employee_Id=date.seq_id
inner join details on details.Id = w.Employee_Id;

-- 46. Delete the Date table
drop table Date;