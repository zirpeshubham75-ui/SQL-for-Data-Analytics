create database practise;


use  practise;

create table student(id int primary key ,
                     name varchar(50),
                     age int , 
                     city varchar(50),
                     salary int );
select * from student;
insert into student values (1,'Rahul',22,'Pune',25000),   
                           (2,'Shubham',23,'Mumbai',30000),   
                           (3,'Amit',21,'Pune',28000),   
                           (4,'Rohit',24,'Nashik',35000),   
                           (5,'Rakhi',22,'Pune',32000); 
                           
                           
alter table student 
add email varchar(50);

desc student;
alter table student 
modify salary decimal;



alter table student 
rename column city to  location;



 set sql_safe_updates= 0;
update  student 
set salary = 40000
where name= 'Shubham';



delete from student 
where id= 1 or id = 2  or id = 3;
select * from  student ;



create table employee(empid int primary key ,
                     name varchar(50),
                     age int , 
                     city varchar(50),
                     salary int );
                     
                     
insert into employee values (1,'Rahul',22,'Pune',25000),   
                           (2,'Shubham',23,'Mumbai',30000),   
                           (3,'Amit',21,'Pune',28000),   
                           (4,'Rohit',24,'Nashik',35000),   
                           (5,'Rakhi',22,'Pune',32000); 

# Try to insert another employee with an existing emp_id.
insert into employee values (1,'zzzzz',222,'mnmm',250000); 





create table emp1(emp_id int primary key ,
                     emp_name varchar(50),
                     age int , 
                     city varchar(50),
                     salary int );
                     
                     
insert into emp1 values (1,'Rahul',22,'Pune',25000),   
                           (2,'Shubham',23,'Mumbai',30000),   
                           (3,'Amit',21,'Pune',28000),   
                           (4,'Rohit',24,'Nashik',35000),   
                           (5,'Rakhi',22,'Pune',32000), 
                           (11,'ahul',2,'Pune',25000),   
                           (22,'hubham',23,'Mumbai',30000),   
                           (33,'mit',21,'Pune',28000),   
                           (44,'ohit',25,'Nashik',35000),   
                           (55,'akhi',28,'Pune',32000);
                     
select * from emp1   ;


update  emp1 
set salary = case
  WHEN emp_id = 2 THEN 30000
    WHEN emp_id = 3 THEN 35000
    WHEN emp_id = 4 THEN 40000
    end
WHERE emp_id IN (2, 3, 4);



