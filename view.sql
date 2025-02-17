--view 
--it is logical representation of table tha means it dont take any storage space
--view is stored query or virtual table

SELECT * FROM employees;

desc employees;

CREATE OR REPLACE VIEW emp_v
as
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID,DEPARTMENT_ID FROM employees
WHERE DEPARTMENT_ID in(30,60,90);

SELECT * FROM emp_v;

CREATE OR REPLACE VIEW emp_v
as
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID,DEPARTMENT_ID FROM employees
WHERE DEPARTMENT_ID in(30,60,90)
WITH READ ONLY;

INSERT INTO emp_v VALUES(999,'SKSSS','SSS','sls123@gmaol.com',sysdate,'IT_PROG',100);

SELECT * FROM employees;

CREATE OR REPLACE VIEW emp_v
as
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID,DEPARTMENT_ID FROM employees
WHERE DEPARTMENT_ID in(30,60,90);

SELECT * FROM emp_v;

INSERT INTO emp_v VALUES(119,'SKSSS','SSS','sls123@gmaol.com',sysdate,'IT_PROG',100);

CREATE OR REPLACE VIEW emp_v
as
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE,JOB_ID,DEPARTMENT_ID FROM employees
WHERE DEPARTMENT_ID in(30,60,90);

SELECT * FROM emp_v;

CREATE OR REPLACE VIEW emp_v
as
SELECT * FROM emp_v WHERE department_id = 30;

SELECT * FROM emp_v1;

--view types 
--simple view
--complex view

SELECT * FROM emp_v;

SELECT * FROM departments;

--complex view
CREATE OR REPLACE VIEW emp_v2
as
SELECT emp_v.*,departments.department_name
FROM emp_v
INNER JOIN departments
on emp_v.department_id=departments.department_id;

SELECT * FROM emp_v2;

--inline view
SELECT * FROM employees;

SELECT * FROM 
(SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK()OVER(ORDER BY SALARY)as sal_rank from employees)a
WHERE sal_rank=1;



