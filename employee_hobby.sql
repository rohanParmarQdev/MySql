use employee;
create table employee_hobby 
(
	Id int unsigned not null unique auto_increment primary key,
    fk_of_employee int unsigned not null,
    fk_hobby int unsigned not null
);
insert into employee_hobby values 
(1,1,3),
(2,1,1),
(3,2,2),
(4,2,1),
(5,3,5);
select * from employee_hobby;
update employee_hobby set fk_of_employee = 4 where id = 5;
delete from employee_hobby where id = 3;
truncate table employee_hobby;

/* Create a separate select queries to get a hobby, employee, employee_salary, employee_hobby. */
	select * from employee_hobby
	inner join hobby
	on employee_hobby.fk_hobby = hobby.id
	inner join employee 
	on employee_hobby.fk_of_employee = employee.id
	inner join employee_salary
	on employee_salary.FK_of_employee = employee_hobby.id;
    
/* Create a select single query to get all employee name, all hobby_name in single column */

	SELECT name FROM hobby
	UNION ALL
	SELECT CONCAT(First_Name,' ', Last_Name) FROM employee;

/* Create a select query to get  employee name, his/her employee_salary */

	select employee.First_Name, employee_salary.salary from employee 
    inner join employee_salary
    on employee_salary.FK_of_employee = employee.id;
    
/* Create a select query to get employee name, total salary of employee, hobby name(comma-separated - you need to use subquery for hobby name) */

	select employee.First_Name,employee_salary.salary,
    (select name from hobby where hobby.id = employee.id) as Hobby_Name from employee
    inner join employee_salary
    on employee_salary.FK_of_employee = employee.id
    inner join hobby 
    on hobby.id = employee.id;


    