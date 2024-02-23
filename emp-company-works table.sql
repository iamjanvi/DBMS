 create table emp
    ( eid number(4) primary key,
     ename varchar2(20) not null
    );



 create table company
    ( cid number(2) ,
      cname varchar2(30),
      city varchar2(20) check(city not like'z%')
    );


 create table works
  ( eid number(4) references emp(eid),
    cid number(2),
    salary number(9,2) check (salary between 20000 and 80000)
  );


 alter table company add primary key(cid);


 alter table works add foreign key(cid) references company(cid);


 insert into emp values(1001,'raj');


 insert into company values(1,'abc','vadodara');


insert into works values(1001,1,20000);


 select * from emp;

   
 select * from company;


 select * from works;

 alter table emp
    add ( age number(3) check(age between 18 and 24)
    );


 select * from emp where ename like'___';

    
 select * from emp where ename like'a%' or ename like 'r%';

     
 select * from company where city='ahmedabad';

  
 update works set salary=salary+500;

 
 select * from works;



 delete from works where cid=1;


delete from company where city='vadodara';

