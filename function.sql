

select current_date from dual;

select sysdate from dual;

select extract(year from sysdate) from dual;

select add_months(sysdate, 3) from dual;

select last_day('20-dec-2019') from dual;

select months_between(date '2019-07-01' , date '2019-01-01') from dual;

select next_day(date '2019-01-20', 'sunday') from dual;



to_date('01 jan 2020', 'dd mon yyyy)



select trunc(date '2020-09-25', 'mm') from dual;



select abs(5) from dual;

select abs(-5) from dual;

select  ceil(561.75) from dual;

select  ceil(-561.75) from dual;



select floor(4.99) from dual;


select floor(-4.99) from dual;

select mod(7,2) from dual;


select mod(-7,2);

select power(3,2) from dual;



select round(4.43) from dual;


select round(-4.535,2) from dual;


select round(34.4158,-1) from dual;


select sign(-145), sign(0), sign(145) from dual;


select sqrt(36) from dual;

select trunc(4.465,1) from dual;



select ASCII('A') from dual;

select CHR('65') from dual; 

select CONCAT('x','YZ') from dual;

SELECT INSTR( 'Johny Johny Yes Papa', 'Yes') from dual;

select LENGTH('hello') from dual;

select lower('ORACLE') from dual;

select LPAD( ABC',5,'*')+from dual;

select LTRIM('      hello ') from dual;

select replace('Bhupendra and Bhupesh','Bhup','Mah') from dual;

select RPAD('ABC',5,'*') from dual;

select RTRIM('      hello ') from dual;

select SUBSTR('Hello How R U', 7, 7) from dual;

select TRIM('    hello   ') from dual;

select upper('ORacle') from dual;
