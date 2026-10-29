show databases;

create database selfpractise;

use  selfpractise;

create table student(id int ,
                     name varchar(50),
                     age int ,
                     city varchar(50),
                     salary int
                     );
desc student;

insert into student(id,name,age,city,salary) values (1,'SHUBHAM',21,'PUNE',35000);

select * from student;


insert into student(id,name,age,city,salary) values (2,'ram',23,'mumbai',25000),
                                                    (3,'shyam',22,'PUNE',28000),
                                                    (4,'rakhi',23,'PUNE',36000),
                                                    (5,'SHUBHAM',25,'PUNE',50000),
                                                    (6,'rakhi',21,'mumbai',35000),
                                                    (7,'vishal',24,'NAGPUR',24000);
                                                    
                                                    select * from student;
/* ALTER COMMAND */
	alter table student 
    add dob date ;
    select * from student;
    
    
    /* update command */ 
    
    update student1 
    set 
     
    
    alter table student 
    drop dob  ;
    select * from student;
    
    
    /* RENAME THE COL */
    
    alter table student 
    rename column  id to uniqueid;
    select * from student;
    
    
     /* RENAME datatype */
    
    alter table student 
    modify salary bigint;
    select * from student;
    
    
     /* change the table name */
 
 
 alter table student
 rename to student1 ;
 desc student1;
 
 show tables;
    select * from student1;
    
    
    
    
      set sql_safe_updates= 0   ;
    
    update student1 
    set age=22
    where name='SHUBHAM' ;
     select * from student1;
    
    
     update student1 
    set age=32 ,
    salary=350000
    where name='SHUBHAM' and salary=50000 ;
     select * from student1;
     
     
      update student1 
    set age=28,
        city = 'banglore'
    where name='SHUBHAM' or salary=50000 ;
     select * from student1;
     
     
     alter table student1 
     add last_name varchar(50);

UPDATE student1
SET last_name = 'Sharma'
WHERE uniqueid = 2;

UPDATE student1
SET last_name = 'Patil'
WHERE uniqueid = 3;

UPDATE student1
SET last_name = 'Rode'
WHERE uniqueid = 4;

UPDATE student1
SET last_name = 'Zirpe'
WHERE uniqueid = 5;

UPDATE student1
SET last_name = 'Pawar'
WHERE uniqueid = 6;

UPDATE student1
SET last_name = 'More'
WHERE uniqueid = 7;


UPDATE student1
SET last_name = 'paaaaaa'
WHERE uniqueid = 1;


select * from student1;


   
     
      update student1 
    set 
        city = 'Hydrabad'
    where name='SHUBHAM' or last_name='Zirpe';
     select * from student1;