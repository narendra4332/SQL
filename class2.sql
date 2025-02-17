--abs it always give positive number 

select abs(5) x,abs(-5) y,abs(0) z,abs(null) t from dual;

--sign it will reyurn positive and nagative number

select sign(5) x,sign(-5) y,sign(0) z,sign(null) t from dual;

--sqrt it will return square root of number

select sqrt(4) x,round(sqrt(5),2) y,sqrt(0) z,sqrt(null) t from dual;

--mod it will return remainder

select mod(5,3) x,mod(-5,2) y,mod(0,0) z,mod(null,null) t from dual;

--nvl nvl(arg1,arg2) if arg1 is null then it will return arg2 but if arg2 is null then it will return arg1

select * from employees;

select FIRST_NAME,LAST_NAME,JOB_ID,COMMISSION_PCT from employees;

select FIRST_NAME,LAST_NAME,JOB_ID,nvl(COMMISSION_PCT,0) from employees;

--power

select power(2,3) x,power(2,-5) y,power(0,0) z,power(null,null) t from dual;

--ceil it will return largest value

select ceil(2.3) x,ceil(-5.1) y,ceil(0) z,ceil(null) t from dual;

--floor it will return smallest value

select floor(2.4) x,floor(-5.1) y,floor(0) z,floor(null) t from dual;

--round it is used to rounnd off the number

select round(123.7896532) x,round(123.7896532,2) y,round(123.7896532) z,round(123.7896532,-2) from dual;

select round(123,2) x,round(123,-1) y,round(123,-2)z, round(123,-4) t from dual;

--trunc

select round(123.7896532) rou, trunc(123.7896532,2) tur from dual;

--greatest it will return greatest value

select greatest(123,98,456) x from dual;

select greatest(0,0,0) x from dual;

select greatest(0,nvl(null,0),0) x from dual;

--least

select least(123,98,456) x from dual;

--coalesce it will return first not null value 

select coalesce(123,98,456) x from dual;

select coalesce(null,0,0) x from dual;

select greatest(0,nvl(null,0),0) x from dual;


