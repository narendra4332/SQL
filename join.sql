--join it is used to combine data across tales
--join tyoes
--(1)inner join
--(2)outer join(left, rigth, full)
--(3)self join 
--(4) cross join
--(5)Natural join 

--join type conditions
--equi join (=)
--non equi join (>,<,>=,<=,!=)

SELECT * FROM emp;

DROP TABLE emp;

CREATE TABLE emp(EMPNO number(3),ENAME VARCHAR2(25),JOB VARCHAR2(25),
MANAGERID number(3),DEPTNO number(3));

 INSERT ALL
 INTO emp VALUES(100,'SKS','MGR',10,10)
 INTO emp VALUES(101,'SKV','ANALYST',100,10)
 INTO emp VALUES(102,'SK','SALES',101,20)
 INTO emp VALUES(103,'SKS','MGR',102,30)
 INTO emp VALUES(104,'SKS','MGR',103,40)
 SELECT * FROM dual;
 
 SELECT * FROM emp;
 
 DROP TABLE depart;
 
 CREATE TABLE depart(DEPTNO NUMBER(3),DEPTNAME VARCHAR2(25),DEPTLOC VARCHAR2(25));
 
 INSERT ALL 
 INTO depart VALUES(10,'EXE','BHS')
 INTO depart VALUES(20,'DATEENGG','BPL')
 INTO depart VALUES(30,'BANKING','PUNE')
 SELECT * FROM dual;
 

 SELECT * FROM depart;
 
 --inner join is used to return only matched records
 
 SELECT * 
 FROM emp
 INNER JOIN depart
 on emp.DEPTNO=depart.DEPTNO;
 
 select e.EMPNO,e.ENAME,e.JOB,nvl(e.MANAGERID,0),d.DEPTNAME,d.DEPTLOC
 FROM emp e
 INNER JOIN depart d
 on e.deptno=d.deptno;
 
 --left outer join it is used to return matched records + non matching records from left table
 SELECT *
 FROM emp
 LEFT OUTER JOIN depart
 on emp.deptno=depart.deptno;
 
 
 --roght outer join it is used to return matched records + non matching records from right table
 SELECT *
 FROM emp
 RIGHT OUTER JOIN depart
 on emp.deptno=depart.deptno;
 
 --full outer join it is used to return matched records + non matching records from both table
 SELECT *
 FROM emp
 FULL OUTER JOIN depart
 on emp.deptno=depart.deptno;
 
 --NON EQUI JOIN
 SELECT * 
 FROM emp
 INNER JOIN depart
 on emp.deptno > depart.deptno;
 
 --cross join it produces m*n number of rows
 SELECT * 
 FROM emp
 CROSS JOIN depart;
 
 --self join if any tables is joining itself
 SELECT e.ENAME as EMPNAME, m.ENAME as MANAGERANAME
 from emp e
 LEFT OUTER JOIN emp m
 on e.managerid=m.empno;
 
 
 
 
