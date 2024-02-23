create table countries
   ( country_id number(3) primary key,
      country_name varchar2(50) not null
    );



 create table locations
   ( location_id number(4) primary key,
     street_address varchar2(100) ,
      postal_code varchar2(6),
      city varchar2(30),
      state varchar2(30),
    country_id number(3) references countries(country_id)
    );



 create table department
    ( department_id number(3) primary key,
      department_name varchar2(30) ,
      manager_id number(4) ,
      location_id number(4) references locations(location_id)
    );



   create table jobs
    (
      job_id number(4) primary key,
      job_title varchar2(30) not null,
      min_salary number(9,2),
      max_salary number(9,2) check (max_salary <100000)
   );


  create table employees
    ( employee_id number(4) primary key ,
      first_name varchar2(20) ,
      email varchar2(60),
      phone_number varchar2(30),
      hire_date date ,
    job_id number(4) references jobs(job_id)
    );

alter table employees
   add( last_name varchar2(20) );


desc employees;
 
alter table jobs add check(min_salary >=7000);


 alter table countries
    modify( country_name varchar2(30) );


 desc countries;
 
 insert into countries values(1,'india');



 
 insert into locations values(1,'123,main street anytown',380001,'ahmedabad','gujrat',1);



 insert into department values(11,'sales dept',101,1);



 insert into jobs values(1001,'abc',8000,80000);



insert into employees values(111,'vishkha','abc@gmail.com',1454784,'22-feb-2024',1001,'soni');



 select * from employees  where first_name like'v%';


 select * from jobs where max_salary between 50000 and 70000;

  

 select * from locations where city ='ahmedabad';



 update locations set city='surat' where location_id =3;


 select * from locations;


 

 delete from department where location_id >3;


 delete from locations where country_id >3;


 delete from countries where country_id >3;
