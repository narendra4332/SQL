select * from employees;

select max(SALARY) from employees;

select avg(SALARY) from employees;

--Group by: it is used to group, related infromation
--DEPARTMENT_ID is 90 so SALARY-58000
--the columns which are coming in select clause should be present in group by clause

select DEPARTMENT_ID as dep_id, SALARY from employees;

--Q: find sum of salary based on depeartment id 

select DEPARTMENT_ID, sum(SALARY) from employees
group by DEPARTMENT_ID;

--Q: find sum of salary based on job_id:

select * from employees;

select JOB_ID, sum(SALARY) from employees
group by JOB_ID;

select DEPARTMENT_ID, sum(SALARY) from employees
group by JOB_ID;--error

select JOB_ID,sum(SALARY) from employees
GROUP BY job_id;

select JOB_ID,sum(SALARY) from employees
GROUP BY job_id
ORDER BY job_id desc;

--Q : i want sum of salary based on department_id and job_id

select DEPARTMENT_ID,JOB_ID,sum(SALARY) from employees
GROUP BY DEPARTMENT_ID,JOB_ID
ORDER BY DEPARTMENT_ID asc, JOB_ID desc;

--Q: i want sum of salary based on department_id and job_id and i need only those recodrs department_id is 20

select DEPARTMENT_ID,JOB_ID, sum(SALARY) from employees
where DEPARTMENT_ID = 20
GROUP BY DEPARTMENT_ID,JOB_ID
ORDER BY DEPARTMENT_ID asc,JOB_ID desc;

select DEPARTMENT_ID,JOB_ID, sum(SALARY) from employees
where DEPARTMENT_ID in(30,60,90)
GROUP BY DEPARTMENT_ID,JOB_ID
ORDER BY DEPARTMENT_ID asc,JOB_ID desc;

--Q: i want sum of salary based on department_id and job_id and i need only those records where department_id is 30,60,90 but
--sum of salary should be greater than 25000

select DEPARTMENT_ID,JOB_ID, sum(SALARY) from employees
where DEPARTMENT_ID in(30,60,90)
GROUP BY DEPARTMENT_ID,JOB_ID
HAVING SUM(SAlARY)>25000
ORDER BY DEPARTMENT_ID asc,JOB_ID desc;

select * from employees where job_id = 'AD_VP';

select department_id, job_id,sum(salary) from employees
WHERE SUM(salary)>5000
GROUP BY department_id, job_id
ORDER BY department_id;--error

select department_id,job_id,sum(salary) from employees
GROUP BY department_id,job_id
HAVING SUM(salary)>5000
ORDER BY department_id;

--constraints
--Domain constraints
--(a) NOT NULL
--(b) CHECK

--before applying constraints
CREATE TABLE student1(ROLL_NO NUMBER(4),NAME1 VARCHAR2(25),CITY VARCHAR2(30));

insert into student1 VALUES(100,'SKS','VIDISHA');

insert into student1 VALUES(101,'SKV','BHOPLA');

insert into student1 VALUES(102,'VS','VIDISHA');

select * from student1;


insert into student1 VALUES(null,'VS','INDORE');--should be not possible 
--because roll number field can not be empty

DROP  TABLE student1;

--after applying constraints

CREATE TABLE student1(ROLL_NO NUMBER(4)NOT NULL,NAME1 VARCHAR2(25),CITY VARCHAR2(30));

insert into student1 VALUES(100,'SKS','VIDISHA');

insert into student1 VALUES(101,'SKV','BHOPLA');

insert into student1 VALUES(102,'VS','VIDISHA');

select * from student1;

COMMIT;

insert into student1 VALUES(null,'VS','INDORE');

update student1 set CITY='JAIPUR' WHERE ROLL_NO=102;

ROLLBACK;

--check constraints

DROP TABLE student;

CREATE TABLE student(ROLL_NO NUMBER(4) NOT NULL, NAME VARCHAR2(25),MARKS NUMBER(3));

select * from student;

ALTER TABLE student add check(MARKS>0);

insert into student VALUES(100,'SKS',89);

insert into student VALUES(101,'SKV',98);

insert into student VALUES(102,'VS',75);

insert into student VALUES(null,'KK',56);--error

insert into student VALUES(102,'RJ',-78);--error

insert into student VALUES(103,'RJ',10);

SELECT * FROM student;

--primary key constraints it is used to avoid null and duplicate value

drop table student;

CREATE TABLE student(ROLL_NO NUMBER(4) PRIMARY KEY, NAME VARCHAR2(25),MARKS NUMBER(3));

select * from student;

insert into student VALUES(100,'SKS',89);

insert into student VALUES(101,'SKV',98);

insert into student VALUES(102,'VS',75);

select * from student;

insert into student VALUES(null,'KK',56);

insert into student VALUES(102,'STU',78);

--alter table_name add primary key(column_Name);

--unique it is used to avoid duplication but null is allowed here

drop table student;

CREATE TABLE student(ROLL_NO NUMBER(4) UNIQUE, NAME VARCHAR2(25),MARKS NUMBER(3));

select * from student;

insert into student VALUES(100,'SKS',89);

insert into student VALUES(101,'SKV',98);

insert into student VALUES(102,'VS',75);

select * from student;

insert into student VALUES(102,'STU',78);--error bcoz duplication not allowed in unique

insert into student VALUES(null,'KK',56);



















