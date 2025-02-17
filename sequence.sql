--sequence
--database object
--to gentate unique, sequntial integer values for primary or unique key
--ascending or descending

CREATE SEQUENCE s100
MINVALUE 1
MAXVALUE 1000
start with 1
INCREMENT by 5;

select * from employees;

alter table employees add NO number(4);

update employees set NO=s100.nextval;

--currval and nextval

select s100.nextval from dual;

select s100.currval from dual;




