--group function applied on all row but produces a single result 

--sum()

select * from employees ;

desc employees;

--find total salary 

select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,JOB_ID,SALARY,sum(SALARY) from employees; --error

select sum(SALARY) from employees;

--find avg salray

select avg(SALARY) from employees;

--find maximum salary

select max(SALARY) from employees;

--find minimum salary

select min(SALARY) from employees;

--find total number of records

select count(*) from employees;

select count(FIRST_NAME) from employees;

select * from employees;

select count(COMMISSION_PCT) from employees;

--count function not count null values

--Q.1  find all employees whose salary is greater than avrage salary.

--selsect * from employees;

--select avg(SALARY) from employees;

--select * from employees where SALARY > avg(SALARY); err

--subquery

--6461.83177

select * from employees where SALARY > (select avg(SALARY) from employees);

--Q.2 find second maximum salary

select SALARY from employees order by SALARY desc;

--first highest salary ->24000
--second highest salary ->17000

select max(SALARY) from employees where SALARY<(select max(SALARY) from employees);

