create table emp
   ( E_no number(3) ,
      Ename varchar2(20) not null,
      salary number(5)
    );


 alter table emp add primary key (E_no);


 alter table emp add check (salary >10000);


 rename emp to employee;


 insert into employee values(1,'yug',12000);


insert into employee values(2,'ruturaj',18000);


insert into employee values(3,'raj',38000);


 insert into employee values(4,'jay',38000);


 insert into employee values(5,'ajay',50000);

 select * from employee;


 alter table employee
    add (city varchar2(20) );


 update employee set city='vadodara' where E_no=1;


 update employee set city='surat' where E_no=2;


 update employee set city='gujrat' where E_no=3;


 update employee set city='vadodara' where E_no=4;


 update employee set city='vadodara' where E_no=5;
