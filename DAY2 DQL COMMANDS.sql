use ds_batch23;
show tables;

desc student;

/* ALTER COMAND 
syntax :
   alter table table_name
 TASK  ---------------------;
   
   task :
   ADDING COL ,
   DROPING  COL,
   RENAMING THE COL,
   CHANGE THE DATATYPE
   CHANGE NAME OF TABLE
 */
 /* dob has date data type*/
 
 alter table student
 add dob date ; 
 desc student;
 
 /* drop col */
 
 alter table student
 drop column dob ; 
 desc student;
 
 
 /* RENAME THE COL */
 
  
 alter table student
 rename column name to first_name ; 
 desc student;
 
 
  
  
 alter table student
 rename column city to mobile_no ; 
 desc student;
 
 
 /* change the datatype */
 
 
 alter table student
 modify mobile_no bigint ;
 desc student;
 
 
  /* change the table name */
 
 
 alter table student
 rename to student1 ;
 desc student1;
 
 show tables;
 
 
 
 
 /* DML COMMAND - data manipulation command 
 -INSERT
 -UPDATE
 -DELETE 
 */
 
 
 /*INSERT VALUES  */
 
 insert into student1 (id,first_name,age,mobile_no) 
 values (101,'shubham',23,9022642310) ;
 
 /* TOO SEE ALL VALUES FROM TABLE */
 
 select * from student1 ;
 
 /* IF WE INSERT VALUE IN ORDER THEN DO NOT NEED TO GIVE COL OR HEADER NAME */
 
 insert into student1 
 values (101,'Rakhi',23,8822642310) ;
 
  select * from student1 ;

/* IT WILL GIVE YOU ERROR 1 VALUE IS MISSING
wrong input
  */

  insert into student1 
 values (102,23,8822642310) ;
 
  select * from student1 ;
  
  
  /*
wrong input
  */
 insert into student1 (id,first_name,age,mobile_no) 
 values (101,11111111111,23,'SHUBHAM') ;
 
 
 
 
 /* HERE WE DID NOT INSERT THE NAME*/
  insert into student1  (id,age,mobile_no) 
 values (102,23,8822642310) ;
   select * from student1 ;
   
 /* TO SOLVE THE ERROR WE NEED TO CHANGE THE ORDER IT SIMPLE
    check output */
 
  insert into student1 (id,mobile_no,age,first_name )
 values (104,11111111111,23,'SHUBHAM') ;
    select * from student1 ;
  
  
  
  /*  INSERT MULTIPLE VALUE */
  
  
insert into student1 (id,first_name,age,mobile_no) 
 values (105,'A',20,1022642310),
		 (106,'B',21,022642310),
          (107,'C',22,322642310),
           (108,'D',23,4022642310),
           (109,'E',24,5022642310),
            (110,'F',25,6022642310),
             (111,'G',26,7022642310);
            
 select * from student1 ;           
  
   
/* IMP Q 

 TRUNCATE : 
REMOVE ALL VALUE FROM TABLE CALLED TRUNCATE 

DELETE :
  REMOVE PERTICULAR VALUES IN TABLE 
  
DROP : 
   REMOVEE THE WHOLE TABLE 

  */
  
  /* TRUNCATE
  SYNTAX:
    TRUNCATE TABLE TABLE_NAME ;
  */
  
  
truncate table student1;
select * from student1;




insert into student1 (id,first_name,age,mobile_no) 
 values   (101,'SHUBHAM',22,9021645210), 
         (102,'AA',19,187802642310),
		 (103,'BB',20,6022642310),
          (104,'CC',22,78322642310),
         (105,'A',20,1022642310),
		 (106,'B',21,022642310),
          (107,'C',22,322642310),
           (108,'D',23,4022642310),
           (109,'E',24,5022642310),
            (110,'F',25,6022642310),
             (111,'G',26,7022642310);
             
             select * from student1;
             
          
          
  
truncate table student1;
select * from student1;





insert into student1 (id,first_name,age,mobile_no) 
 values   (101,'SHUBHAM',22,9021645210), 
         (102,'AA',19,187802642310),
		 (103,'BB',20,6022642310),
          (104,'CC',22,78322642310),
         (105,'A',20,1022642310),
		 (106,'B',21,022642310),
          (107,'C',22,322642310),
           (108,'D',23,4022642310),
           (109,'E',24,5022642310),
            (110,'F',25,6022642310),
             (111,'G',26,7022642310);
             
             select * from student1;
 
 
/*  UPDATE COMMANDS 
SYNTAX :
   set sql_safe_updates= 0      (as default is 1)
   
   
   update table_name 
   set
   col1 = new_value,
   col2 = new_value ,
   ---------------- ;
   where condition;
   
 */ 
 set sql_safe_updates= 0;
 update student1
 set 
 age = 21
 where first_name='SHUBHAM'  ;
 
select * from student1;
 
 
 
  update student1
 set 
 age = 21
 where first_name='AA' and id=102   ;
 
select * from student1;
 
 


 update student1
 set 
 age = 29,
 id=1111
 where first_name='BB'    ;
 
select * from student1;



 update student1
 set 
 age = 10,
 id=112
 where first_name='CC' and id=104   ;
 
select * from student1;



