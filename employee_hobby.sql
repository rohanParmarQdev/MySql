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