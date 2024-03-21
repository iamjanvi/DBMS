create table emp
    (
    e_no number(3) primary key,
    e_name varchar2(20),
    salary number(5) check (salary >10000),
    city varchar2(20)
   );


 alter table emp modify(e_name varchar2(20) not null);




 insert into emp values(1,'kush',15000,'rajkot');


update emp set salary=salary+500;


 delete from emp where salary>80000;


 alter table emp
    add( phn_no number(9));




SQL> insert into emp values(1,'kjh',67000,'jiueu',84984947);
insert into emp values(1,'kjh',67000,'jiueu',84984947)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C007002) violated


 alter table emp drop constraints sys_c007002;


 drop table emp;