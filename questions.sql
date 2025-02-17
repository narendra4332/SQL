SELECT * FROM employees;

--find all employees wher first name is starting from d;
SELECT * FROM employees WHERE lower(FIRST_NAME) LIKE 'd%';

--find all employees wher second latter of first name is starting from d;
SELECT * FROM employees WHERE FIRST_NAME LIKE '_d%';

--find all employees wher second latter of first name contain2 aa continusosly;
SELECT * FROM employees WHERE lower(FIRST_NAME) LIKE '%a%a%';


CREATE TABLE email(input VARCHAR2(30));

INSERT ALL
INTO email VALUES('sks@gmail.com')
INTO email VALUES('nozi@hotmail.com')
INTO email VALUES('narendra@edffmail.com')
INTO email VALUES('minakshi0125@gmail.com')
SELECT * FROM dual;

SELECT * FROM email;

SELECT input,SUBSTR(input,1,INSTR(input,'@',1)-1) as output from email;

SELECT input,SUBSTR(input,INSTR(input,'@',1)+1) as output from email;

with abc as(
SELECT input,SUBSTR(input,INSTR(input,'@',1)+1) as output from email
)
SELECT input,SUBSTR(output,1,INSTR(output,'.',1)-1) as MALE_PRVDR from abc;

SELECT * FROM employees;

SELECT * FROM employees WHERE months_between(sysdate,HIRE_DATE)>12;

CREATE TABLE emp_date()


















