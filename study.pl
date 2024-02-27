create table study
    ( s_no number(3) primary key,
     s_name varchar2(20) not null,
    city varchar2(20)
    );


 insert into study values(&no,'&name','&city');




 delete from study where city='ahmedabad';


 rollback;


 drop table study;









