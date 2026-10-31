create database student ;
use student ;

create table employee(
id int,
name varchar(50),
age int,
dept varchar(50),
salary int );

insert into employee (id,name,age,dept,salary) values 
                                        (1,'shubham',21,'IT',50000),
                                         (2,'zirpe',22,'CS',60000),
                                          (3,'Rakhi',23,'IT',70000),
                                           (4,'Rode',20,'IT',40000),
                                            (5,'vishal',23,'Sales',45000),
                                             (6,'Harshad',25,'HR',50000),
                                              (7,'Sam',21,'IT',50000);
                                              
                                              
# 1
select max(salary) as higesht_salary
from employee
where salary <50000;


# 2 
select avg(salary)
from employee;

# 3 
select *
from employee
where salary between 50000 and 70000;

# 4 
select * 
from employee
where age = 25 ;
                                              