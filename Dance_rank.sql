--danse_rank it provides sequential ranking

SELECT * FROM  employees;

--Q find employee with minimum or lowest salary

with res as(
SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(ORDER BY SALARYY) as SALRANK
FROM employees)
SELECT * FROM res WHERE SALRANK= 1;

--Q find nth lowest salary with department wise

with res as(
SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY) as DEPTWISESAL
FROM employees)
SELECT * FROM res WHERE DEPTWISESAL=1;

--row_number with partition by clause

WITH res AS(
SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,
row_number() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY)as ROWNUMB
FROM employees)
SELECT * FROM res;

--lead function it is used to access subsequent row along with current row (after)
--lead(col_name,offset,default_value)

SELECT * FROM employees;

SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,
lead(SALARY,1,0) over(ORDER BY SALARY)as NEXTSAL,
lead(SALARY,1,0) over(ORDER BY SALARY)-SALARY as SALDIFF
from employees;

--lag function it is used to access previous row data along with current row data (previous)
--lag (col_name,offset,default_value)

SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,
LAG(SALARY,1,0) over(ORDER BY SALARY)as PREVSAL,
SALARY-LAG(SALARY,1,0) over(ORDER BY SALARY)-SALARY as PREVSAL
from employees;

--row between

SELECT * FROM employees;

SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,SUM(SALARY) from employees;--error

SELECT e.*,SUM(SALARY) over(ORDER BY SALARY ROWS BETWEEN 1 PRECEDING and 1 FOLLOWING) as TOTAL_SALARY FROM employees e;

SELECT * FROM employees;

SELECT e.* FROM employees e;

--first_value()

SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID,SALARY,
FIRST_VALUE(FIRST_NAME) OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY)as RNUM
FROM employees;










