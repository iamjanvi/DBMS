 create table stud
        ( s_no number(3) primary key,
         s_name varchar2(20),
         city varchar2(20) check(city in ('gandhinagar','baroda')),
         per number(5,2)
        );



 insert into stud values(1,'kush','gandhinagar',74);


 

 alter table stud
    add( result varchar2(20));


 alter table stud
   modify(city varchar2(30));


 select * from stud where per>50 and per<70;





 alter table stud modify ( s_name varchar2(20) not null);


 drop table stud;




 create table tt1
    ( no number(3) primary key,
    name varchar2(20)
    );



    create table ts2
    ( t_id number(3) references tt1(no),
      no number(3)
   );


 insert into tt1 values(1,'kush');






 insert into ts2 values(1,101);

 insert into ts2 values(2,102);


 select * from tt1 where no=(select max(no) from ts2);


 select * from tt1 where no=(select max(no) from tt1);

      
 select power(3,2) from dual;


 create table kk as select no,name from tt1;

















