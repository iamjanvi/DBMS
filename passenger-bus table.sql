create table passenger
   (
     Pid number(4) primary key,
     Pname varchar2(30) not null,
    Age int
    );


 create table bus
    (
    Bid number(3) primary key,
   Color varchar2(15) check ( Color in('red','yellow','blue'))
    );



 insert into passenger values(1,'janvi',19);


 insert into bus values(1,'yellowr');

 select * from passenger ;

  
 select * from bus ;

    
 alter  table passenger
   add( gender varchar2(5) check (gender in('m','f'))
    );


 update passenger set gender ='f' where Pid =1;


 update passenger set gender ='f' where Pid =2;


 update passenger set gender ='m' where Pid =3;


 update passenger set gender ='m' where Pid =4;


 update passenger set gender ='m' where Pid =5;


 select * from passenger;

     
alter table bus
   modify ( Color varchar2(20));


 desc bus;
 
 insert into bus values(11,'red');


 update bus set Color = 'blue' where Bid = 11;


 select * from bus;

     


 select Pname from passenger where age between 20 and 30;


 select * from bus where Color ='blue';

     