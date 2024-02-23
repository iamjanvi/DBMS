 
    create table doctor
    ( did number(4) primary key,
      dname varchar2(20) not null,
      dept varchar2(20) ,
      qualification  varchar2(30) check(qualification in('MBBS','MS','ortho')),
      salary number(9,2)
   );


 create table patient
    ( pid  number(3) primary key,
      pname varchar2(20) not null,
      disease varchar2(25) ,
      charges number(5) default 100,
     did number(4) references doctor(did)
    );

 insert into doctor values ( 1,'sunil shah','skin care','MBBS',50000);

 
insert into patient values(101,'piyush','fever',120,8);

 select * from doctor;

 
 select * from patient;


 select dname , qualification, salary from doctor;



 select pid,pname,charges from patient;

  
 update patient set charges = 5000 where disease='brain tumour';


 select pid,pname,charges from patient;

 
 commit;

