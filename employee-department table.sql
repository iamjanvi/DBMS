 create table department
    ( d_id number(3) primary key,
      d_name varchar2(20) not null
    );



   create table employee
       (  e_id number(4) primary key,
          e_name varchar2(30) not null,
          e_desig varchar2(30) check(e_desig in('Manager','Clerk','Supervisor')),
          e_doj date ,
         e_city varchar2(15) default 'Ahmedabad',
         e_salary number(9,2),
        d_id number(3) references department(d_id)
     );
 



 insert into department values(101,'sales');




 insert into employee values( 1,'zoya','Manager','22-feb-2024','surat',20000,101);



 insert into employee (e_id,e_name,e_desig,e_doj,e_salary,d_id) values( 4,'mallika','Supervisor','15-sep-2023',18000,103);


 select * from department;


 select * from employee;

  

 select e_name , e_salary from employee where e_desig ='Manager';


 update employee set e_salary=e_salary+1000 ;


 select e_salary from employee;

alter table employee rename column e_salary to increment; 

 
 commit;

