use employee;
create table employee_hobby 
(
	Id int unsigned not null unique auto_increment primary key,
    fk_of_employee int unsigned not null,
    fk_hobby int unsigned not null
);
