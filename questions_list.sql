--question 1
CREATE TABLE table1(ID NUMBER(3));

INSERT INTO table1 values(1);
INSERT INTO table1 values(2);
INSERT INTO table1 values(1);
INSERT INTO table1 values(2);
INSERT INTO table1 values(3);
INSERT INTO table1 values(0);
INSERT INTO table1 values(null);
INSERT INTO table1 values(null);

select * from table1;

CREATE TABLE table2(ID NUMBER(3));


INSERT INTO table2 values(1);
INSERT INTO table2 values(2);
INSERT INTO table2 values(4);
INSERT INTO table2 values(0);
INSERT INTO table2 values(null);
INSERT INTO table2 values(null);

select * from table2;

select * from table1
INNER JOIN table2
on table1.ID=table2.ID;

select * from table1
LEFT OUTER JOIN table2
on table1.ID=table2.ID;

select * from table1
RIGHT OUTER JOIN table2
on table1.ID=table2.ID;

select * from table1
FULL OUTER JOIN table2
on table1.ID=table2.ID;

select * from table1
CROSS JOIN table2;


--question 2
select * from employees;

select EMPLOYEE_ID,COUNT(*) FROM employees GROUP by EMPLOYEE_ID HAVING COUNT(*)>1;



--question 3
CREATE TABLE table_email(email VARCHAR2(20));

INSERT INTO table_email values('abc@gmail.com');
INSERT INTO table_email values('ask123@gmail.com');

select * from table_email;

SELECT email,SUBSTR(email,1,INSTR(email,'@',1)-1) as output from table_email;

SELECT email,SUBSTR(email,INSTR(email,'@',1)+1) as output from table_email;

--question 4

CREATE TABLE table3(id NUMBER(2));

INSERT INTO table3 VALUES(1);
INSERT INTO table3 VALUES (2);

select *from table3;

ROLLBACK;

DELETE FROM table3;

COMMIT;

ROLLBACK;


--Question 5
select * from employees;

with res as(
SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY) as SALRANK
FROM employees)
SELECT * FROM res WHERE SALRANK= 1;


with res as(
SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY DESC) as SALRANK
FROM employees)
SELECT * FROM res WHERE  SALRANK= 1;

--question 6

CREATE TABLE table4(ID NUMBER(3));

INSERT INTO table4 values(1);
INSERT INTO table4 values(2);
INSERT INTO table4 values(3);
INSERT INTO table4 values(null);

select * from table4;

CREATE TABLE table5(ID NUMBER(3));


INSERT INTO table5 values(2);
INSERT INTO table5 values(4);
INSERT INTO table5 values(5);
INSERT INTO table5 values(null);

select * from table5;

select * from table4
UNION
SELECT ID from table5;

select * from table4
UNION ALL
SELECT ID from table5;

--question 7

select * from employees;

select * from employees WHERE lower(FIRST_NAME)LIKE '_a%';

select * from employees WHERE lower(FIRST_NAME)LIKE '%a_';


--question 8

SELECT * FROM employees WHERE months_between(sysdate,HIRE_DATE)>120;

--question 9

select * from
(SELECT ROWNUM as  RN,e.*
FROM employees e)temp
WHERE mod(RN,2)=0;



