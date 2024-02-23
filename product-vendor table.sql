 create table vendor
    ( v_id number(3) primary key,
      v_name varchar2(20) not null
    );



    create table product
    ( p_id  number(3) primary key,
      p_name varchar2(20) not null,
      p_price  number(9,2) ,
      mfgdt date ,
      p_qty number(3) check(p_qty >10),
      p_type varchar2(20) check( p_type in('food','stationery','electronics')),
      v_id  number(3) references vendor(v_id)
   )


 insert into vendor values(101,'jaid');


insert into product values (1,'burger',70,'22-feb-2024',11,'food',101);


 select * from vendor;

 
  select * from product;

  
 alter table product rename column p_type to stationery_item;

 desc product;

 select p_name , p_price, v_id from product;

 delete from product where p_id=2;



 update product set p_price=500 where p_id=1;


 select p_name , p_price, v_id from product;


 commit;

