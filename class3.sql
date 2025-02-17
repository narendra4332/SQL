--initcap used to create first letter in capital

select * from employees;

select INITCAP('computer'),INITCAP('COMPUTER'),INITCAP('Computer') from dual;

--upper is used to display string in uppercase

select upper('computer'),upper('COMPUTER'),upper('Computer') from dual;

select * from employees;

select * from employees where UPPER(FIRST_NAME) like 'ST%';

--lower it is used to display string in lowercase

select * from employees where lower(FIRST_NAME) like 's%';

select lower('computer'),lower('COMPUTER'),lower('Computer') from dual;

--length it is used to count no. of bytes in string 

select LENGTH('CANDIDE') from dual;

select LENGTH('computer & '),LENGTH('  COMPUTER'),LENGTH('Comp  uter') from dual;

select FIRST_NAME,length(FIRST_NAME) "len" from employees;

select * from employees where length(FIRST_NAME)>5;

select  FIRST_NAME from employees where length(FIRST_NAME)>5;

--rpad it is used for right side padding with any character

select rpad('computer',15,'*'),rpad('computer',10,'%'),rpad('computer',18,'#$%') from dual;

--lpad it is used for left side padding with any character

select lpad('computer',15,'*'),lpad('computer',10,'%'),lpad('computer',18,'#$%') from dual;

--ltrim it is used to remove unwanted characters from left

select ltrim('computer','compu'),ltrim('  computer'),ltrim('computer','er') from dual;

--rtrim it is used to remove unwanted characters from right

select rtrim('computer','ter'),rtrim('computer  '),rtrim('computer','co') from dual;

--trim it is used to remove unwanted characters from right as well as left

select rtrim(   'computer'   ) from dual;

--
























