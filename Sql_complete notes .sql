--Lets create a table of a database "General_Store Database"....... 


create table Items_Purchase (
   S_NO SERIAL primary key,
   Items_Names varchar(50),
   Related_Items varchar(50),
   Availability varchar(30),
   Quantity int,
   Price int,
   Peoples_Review varchar(70)
);

--lets see our table is working or not ????


select * from items_Purchase;

--lets add some values in this table..........


insert into Items_Purchase(Items_Names,Related_Items,Availability,Quantity,Price,Peoples_Review)
values ('Milk','Dairy Product','Available',16,15,'Best And Affodable Price'),
('Bread','Dairy Product','Available',40,20,'Fresh'),
('Maggie','Snacks ','Available',70,15,'Easily Available'),
('Garam Masala','Masala_items','Not Available',Null,Null,Null),
('Toffees','Chocolates Product','Available',10,80,'Every brands'),
('Dahi','Dairy Product','not Available',Null,Null,Null),
('chips','snacks','not Available',Null,Null,Null);


--TRUNCATE is use for deleting of all data in the table:::



--Alter is used for adding,rename ,and removing of rows and columns....



--drop is used for deleting of columns if its exits i  table 




--Lets see how many tables are in our databse "General_Store Database"|||||



select table_name
from information_schema.tables
where table_schema='public';




--Lets change  the name of database from General_Store Database to  as "Practise Database" beacuse we have to add some more table in database..





--creating a 11th and 12th class stdents dataset:: 



create table student (
   Student_id int,
   Name varchar(50),
   age int check (age>=18),
   Date_of_Birth Date ,
   stream varchar(40),
   email_id varchar(50) unique ,
   Parents_name varchar (40),
   blood_group varchar(20),
   Regestration_Date timestamp default current_date 
   
);


select * from  student;


-- changing the column name of student table ;


alter table  student
rename column  Name to Student_name ;


--lets insert the data in the student table ..


insert into student (Student_id,Student_name,age,Date_of_Birth,stream,email_id,Parents_name,blood_group)
--values(101,'Rajesh',23,'1999-09-23','Computer Science','rajesh12@gmail.com','Sameer Singh','o postive'),
--(102,'Priya Misra',21,'2000-09-08','Computer Science','priya32@gmail.com','Raghav Misra','AB negative '),
values (103,'Sarika Singh',24,'1998-03-06','Civil Engineering','singh765@hotmail.com','Aditya singh','o postive'),
(104,'Vidhyakant Pandey',21,'2000-01-01','Mechnical Department','kantdev82@gmail.com','Bhau pandey','B Negative'),
(105,'Astha Rastogi',22,'1999-09-09','IT Science','ras+43@gmail.com','Amit Rastogi','AB postive'),
(106,'Ruchi Ojha',22,'1998-10-08','Civil Engineering','ojha76@gmail.com','Mayank Ojha','o postive'),
(107,'Abdul Shaikh',18,'2005-06-03','Computer Science','abdul09@gmail.com','Shaidh Shaikh','o postive'),
(108,'Arron Emanul',25,'1999-09-03','Computer Science','th+98@gmail.com','Deaon Emanual','o Negative'),
(109,'Nayra Descosta',23,'2004-07-15','Biotechnology','descosta5409@gmail.com','vijay Descosta','AB postive'),
(110,'Afasana Khan',20,'2006-09-23','Computer Science','khan65@gmail.com','Mohammad Rehan','B postive');


insert into student (Student_id,Student_name,age,Date_of_Birth,stream,email_id,Parents_name,blood_group)
--values(102,'Priya Misra',21,'2000-09-08','Computer Science','priya32@gmail.com','Raghav Misra','AB negative '),
values(103,'Sarika Singh',24,'1998-03-06','Civil Engineering','singh765@hotmail.com','Aditya singh','o postive'),
values(104,'Vidhyakant Pandey',21,'2000-01-01','Mechnical Department','kantdev82@gmail.com','Bhau pandey','B Negative'),
values(105,'Astha Rastogi',22,'1999-09-09','IT Science','ras+43@gmail.com','Amit Rastogi','AB postive'),
values(106,'Ruchi Ojha',22,'1998-10-08','Civil Engineering','ojha76@gmail.com','Mayank Ojha','o postive');,
values(107,'Abdul Shaikh',18,'2005-06-03','Computer Science','abdul09@gmail.com','Shaidh Shaikh','o postive'),
values(108,'Arron Emanul',25,'1999-09-03','Computer Science','th+98@gmail.com','Deaon Emanual','o Negative'),
values(109,'Nayra Descosta',23,'2004-07-15','Biotechnology','descosta5409@gmail.com','vijay Descosta','AB postive'),
values(110,'Afasana Khan',20,'2006-09-23','Computer Science','khan65@gmail.com','Mohammad Rehan','B postive')


--for udating in the table we will use update commands---



update student 
set Student_name='Rajesh Kumar'
where email_id ='rajesh12@gmail.com';


select * from  student;


--we see that the rajesh kumar has goes down while updating lets move its to top using order by query;;


select
	*
from
	student
order by
	student_id asc;
--this asc means ascending order me krna...and desc means decending order me krna ....humne isko actual formate me likh diya jo ki actual formate hai...
--but isse kuch farak nhi padta hai so leave that aapne tarah se queary likh skte ho 


--to rename the steam column to department_section..

alter table student
rename column stream to Department_section;



--to change the datatype of age column int to smallint ...


alter table student 
alter column age type smallint;




--to add constraints not null in emai_id section ..



alter table student 
alter column email_id set not null;



--lets add more value in the table "student"


insert into student (Student_id,Student_name,age,Date_of_Birth,department_section,email_id,Parents_name,blood_group)
values(111,'Aman Yadav',24,'2001-05-07','Civil Engineering','yadav85@hotmail.com','Aditya Yadav','AB postive');



--lets add the section of city where the live ...


alter table student 
add column City varchar(50); 



--lets add data in in the city section ....... do later ...

update student 
set city='Lucknow'
where student_id=101;

update student 
set city='Agra'
where student_id=102;

update student 
set city='jaipur'
where student_id=103;

update student 
set city='Ambikapur'
where student_id=104;

update student 
set city='Mathura'
where student_id=105;


update student 
set city='Sonbhadra'
where student_id=106;


update student 
set city='Lucknow'
where student_id=107;



update student 
set city='Jalandhar'
where student_id=107;



update student 
set city='Gonda'
where student_id=108;



update student 
set city='Barabanki'
where student_id=109;


update student 
set city='Sitapur'
where student_id=110;



update student 
set city='sonbhadra '
where student_id=111;






select
	*
from
	student
order by
	student_id asc;




--Lets do a assignment question ..

create table employees(
   employee_id SERIAL primary key,
   first_name  varchar(50) not null, 
   last_name varchar(50) not null,
   department varchar(50),
   salary decimal(10,2) check(salary > 0),
   joinig_date date not null,
   age int check (age>=18)
   );


select * from employees;


--lets add some values in it..
INSERT INTO employees (first_name, last_name, department, salary, joinig_date , age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);  



--Question 1 . Retrieves All Employess first_name and There department ?

select first_name , department from employees ;


--Question 2 . Update The Salary Of IT Department Employees By 10% ?


update employees 
set salary = salary + (salary*0.1)
where department='IT';



select * from employees; 


--Question 3 . Delete All Employees Who Are Older Than 34 Year ? 


delete from employees 
where age > 34 ;


--Question 4 . Adding A New Column To The Employees Table ?

alter table employees 
add column email_id varchar(50);

select * from employees; 



-- Question 5 . Rename The Department Column To Dept_Name ?


alter table employees 
rename column department to dept_name ; 


select * from employees; 




-- Question 6 . Show All the Employess Who Joind After 1 January 2021 ?


select first_name , last_name from employees where joinig_date >'2021-01-01';



--Question 7 . Changing The Data Type Of Salary Column Decimal To Interger ?


alter table employees
alter column salary type int;


select * from employees; 


--Question 8 . List of All The Employees With There Age and Salary In Descending Order ?

select first_name,last_name,age , salary from employees order by salary desc ;










--Question 9 . Insert the New employee i n the table with the Data ('Raj','Singh','Marketing',60000,'2023-09-15,30)


INSERT INTO employees(first_name, last_name, dept_name, salary, joinig_date , age) 
values('Raj','Singh','Marketing',60000,'2023-09-15',30);










-- Question 10 . Update Age of Employees with age+1 to every Employees ?


update employees 
set age = age+1
where employee_id >= 1;


select * from employees; 




--assignment done !!!!!!!!!!!!!!!!



--Today We Study How To Import CSV File ....../Users/yashsrivastava/Desktop/sql_import_practice.csv  this is our file address...


create table batch_student(
   student_id int not null,
   name varchar(50),
   city varchar (50),
   course varchar(50),
   score int,
   fees int

);



select * from batch_student;


--lets import the data in this table using aur csv file ..


--copy batch_student (student_id, name, city, course, score, fees)
--from'/Users/yashsrivastava/Desktop/sql_import_practice.csv'
--with(Format csv, header true);

--ye sara command sahi h per permission na hone ki vjh se hum iss open nhi kr paa rhe h lekin command shi h aur data bhi import hoi gya hai so problem servr ya sql ki nhi h permisssion ki hai so problem wali baat nhi hai ....



--today we have learn about the operators in SQL ...

--1. Airthmetic Operators

select * from employees; --this is our compay database one table we have to doo something in this table


--we have to indicate first_name , last_name , salary and indicate a bonus of 10% in the section ..using of airthmetic operators ||||


select first_name , last_name , salary , (salary*0.10) as bonus from employees;

--calculate the anual salary and 5% increment and the new salary...

select first_name , last_name , salary  ,
(salary *12 ) as Annual_Salary , 
(salary *0.05) as Increment_salary ,
(salary *1.05) as New_Salary ,
(salary + salary *0.05) as Current_salary
from employees;

--2. Comparison Operators 


select * from employees; --this is our compay database one table we have to doo something in this table

select * from employees
where age >=30;

select first_name , last_name, age from employees 
where age >=30;


--3. Logical Operators 


select * from employees; --this is our compay database one table we have to doo something in this table

--And Operators

select * from employees 
where age>=30 and salary > 40000;

--Or Operators

select * from employees 
where age>=30 or salary > 40000;

--Not Operators

select * from employees 
where not (dept_name ='HR');


--4. Between , Like , And In Operators ..

--Between Opertors 


select first_name , last_name , salary 
from employees
where salary between 49000 and 55000;

--like Operators 

select first_name 
from employees 
where last_name like 'S%'; --This is case sensitivity...

--In operators 
select first_name , last_name
from employees
where dept_name in ('IT','Marketing');
 


--5. is null , order by , limit , distinct operators ....


select * from employees; --this is our compay database one table we have to doo something in this table

--find employees where email is null..

select * from employees
where email_id is null;

--list of sorted by salary employees ..

select * from employees
order by salary desc;


--retrieves the top 3 highest paid salary..


select * from employees
order by salary desc
limit 3;

--retrieve a list of unique department 

select distinct dept_name
from employees;

select count(distinct dept_name) as dep_unique_count
from employees;


--5.Set Operators

--for set function we have to create two tables in the same database ..


--Table 1 of student_2024:::


create table student_2024(
          student_id int primary key,
          student_name varchar(50),
          course varchar(50)
);        		  
     
insert into student_2024 
values (1,'Raghav','Computer Science'),
       (2,'Ajay','Civil Engineering'),
       (3,'Ishita','Mechanical Engineering'),
       (4,'Ishant','Electronics Engineering'),
       (5,'pooja','Computer Science');

select * from student_2024 ;


--Table 2 of student_2025:::

create table student_2025(
          student_id int primary key,
          student_name varchar(50),
          course varchar(50)
);        		  

insert into student_2025 
values (3,'Ishita','Mechanical Engineering'),  --Same as student_2024.
       (4,'Ishant','Electronics Engineering'), --Same as student_2024.
       (6,'Subhnag','Mechanical Engineering'),
       (7,'Raghav','Civil Engineering'),
       (8,'Rahul','Computer Science');

select * from student_2025 ;


-- 1 . Union Functions (combines Result , remove duplicate)

select * from student_2024
union 
select * from student_2025;


-- 2 . Union All (Combines Result,Keep Dublicate)


select * from student_2024
union all
select * from student_2025;

-- 3 . Intersect (Return Common Result)

select * from student_2024
intersect
select * from student_2025;


-- 4 . Except (Return Result in first , not second)--it basically works as A-B in sets ...

select * from student_2024
except
select * from student_2025;



--Functions ()
--1 . Aggregate Functions 

select * from employees;

select COUNT(*)from employees; -- returms the no.of rows in the table

select sum(salary)from employees; --return the sum of the salary 

select avg(salary)from employees; --return the average of the salary 

select max(salary)from employees; --return the max.element of the given command

select min(salary)from employees; --return the min.element of the given command





--2 . String functions 

select * from employees;


select upper(first_name)as First_name_captial from employees;

select lower(last_name)as lower_name_lower from employees;

select length(first_name) from employees; --alag alg row me kitne letters hai vio btata hai ..

select concat(first_name ,'_', last_name) as full_name from employees;

select substring(first_name , 1,5) from employees; -- har row me 1 se 5 letter tk print karega ye ..

select trim(first_name) from employees;

select replace(first_name , 'Neha','rashi')
 from employees;



--3 . Date And Time Functions 

select now() as Current_date_time ;


select current_date;


select current_time;

select first_name,
     to_char(joinig_date , 'DD-MM-YYYY') --to char function ,jaisa formate doge waisa answer dega thume....
from employees;



select extract(year from joinig_date) from employees;

select extract(month from joinig_date) from employees;

select extract(day from joinig_date) from employees;

select first_name,
     age(current_date , joinig_date)
from employees;


select first_name , joinig_date,
    date_part('dow',joinig_date) as day_of_week from employees; --sun=0 , mon=1 , tue=2 ...... as dow=day of week 
    
select first_name,joinig_date ,
  date_trunc ('week',joinig_date)
     from employees;


select first_name , joinig_date ,
   joinig_date + interval '6 days' as interval_join
    from employees;


select to_date('20-11-2005' , 'DD-MM-YYYY');



--3 . Conditional Functions 

--case function --


select * from employees;

select first_name , last_name , dept_name ,
          case when salary >=55000 then 'High_Paid'
          when salary >30000 then 'Medium_Paid'
          else 'Low_Paid' end as Paid_emplo
          from employees;




--Assignment Practise ......

create table Items (
   S_NO SERIAL primary key,
   Items_Names varchar(50),
   Related_Items varchar(50),
   Availability varchar(30),
   Quantity int,
   Price int,
   Peoples_Review varchar(70)
);



insert into Items(Items_Names,Related_Items,Availability,Quantity,Price,Peoples_Review)
values ('Milk','Dairy Product','Available',16,15,'Best And Affodable Price'),
('Bread','Dairy Product','Available',40,20,'Fresh'),
('Maggie','Snacks ','Available',70,15,'Easily Available'),
('Garam Masala','Masala_items','Available',28,67,Null),
('Toffees','Chocolates Product','Available',10,80,'Every brands'),
('Dahi','Dairy Product','Available',78,10,'great'),
('chips','snacks','Available',55,5,Null);

select * from Items;

/* Using Case Function Return the
      1.If Quantity > 50 return stock available
      2.If Quantity > 30 or 28 Return   Availabe_when you Order 
      3.If quantity <=20 return out_of_stock
*/

select items_names ,  quantity , 
       case when quantity >=50 then 'stock available'
       when quantity >=30 or quantity >=28 then 'Availabe_when_you_Order '
       when quantity <=20 then 'out_of_stock'
       end 
       from Items;



/* Using Case Function Return the
      1.If related_items ==  Dairy return Dairy_items
      2.If related_items == Snacks return snacks_items
      3.If related_items == chocolates_product return chocolate_items 
*/

select items_names , related_items , 
       case when related_items like 'Dairy Product' then 'Dairy_items'
       when related_items like 'Snacks%' then 'Snacks_items'
       when related_items like 'snacks' then 'Snacks_items'
       when related_items like 'Chocolates Product' then 'Chocolates_items'
       end as Items_pp
       from Items;

--Assignment done ...........


--Using of Coalesce() Function.

         --..because issme kuch null values hai .....


select * from items_Purchase; --Ye Upar Ki Table Hai ..


select items_names,availability ,  quantity , 
            coalesce( price ,s_no   ) --jaha jaha price null hai uski jagha s_no. show kr do 
as New_items
from items_Purchase;



--4 . Window Functions 

--Assign a unique row number to the same category of each product

select * from items_Purchase;

select items_names,related_items,
         row_number() over (partition by related_items order by price) as row_nn
         from items_Purchase;


 
select items_names,related_items,
         dense_rank() over (partition by related_items order by price) as dense_nn
         from items_Purchase;


select items_names,related_items,
       rank() over (partition by related_items order by price) as rank_nn
         from items_Purchase;

select items_names,related_items,
         sum(price) over (order by price) as sum_nn
         from items_Purchase;

select items_names,related_items,
         avg(price) over (order by price) as avg_nn
         from items_Purchase;





--joins In SQL....

--To understand Joins we have to create 2 table ....


create table employees3(
     employee_id serial primary key,
     first_name varchar(50),
     last_name varchar(50),
     department_id int
);

select * from employees3;

insert into employees3 (first_name,last_name,department_id)
values('Rahul','sharma',101),
      ('Priya','Mehta',102),
      ('Ankit','Verma',103),
      ('Simran','Kaur',null),
      ('Aman','Singh',101);


create table departments(
     department_id int,
     department_name varchar(50)
);


insert into department (department_id,department_name)
values(101,'Sales'),
      (102,'marketing'),
      (103,'IT'),
      (104,'HR');


select * from department;

--1.Inner Join 

select e.employee_id , e.first_name , e.last_name , 
       d.department_id , d.department_name
       
from employees3 e
inner join 
department d
on e.department_id=d.department_id;





--2.Left Join 

select e.employee_id , e.first_name , e.last_name ,
       d.department_name
from 
  employees3 e
left join 
  department d 
on 
   e.department_id=d.department_id;


--3.Right Join 

select e.employee_id , e.first_name , e.last_name ,
       d.department_name
from 
  employees3 e
right join 
  department d 
on 
   e.department_id=d.department_id;


--4.Full Join

select e.employee_id , e.first_name , e.last_name ,
       d.department_name
from 
  employees3 e
full outer join 
  department d 
on 
   e.department_id=d.department_id;


--5.Cross Join 

select e.employee_id , e.first_name , e.last_name ,
       d.department_name
from 
  employees3 e
cross join 
  department d ;


--6.Self Join 

select 
  e1.first_name as employees1, 
  e2.first_name as employees2,
  d.department_name 
from 
  employees3 e1
join 
  employees3 e2
on 
  e1.department_id=e2.department_id and e1.employee_id!=e2.employee_id 
join
  department d
on 
  e1.department_id=d.department_id; 
  
  
  
  
  
  
  
  
  
  
  
  








