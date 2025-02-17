--Abstract Data Type

CREATE TYPE addr AS OBJECT(HNO NUMBER(3),CITY VARCHAR2(20));

CREATE TABLE student(SNO NUMBER(3), SNAME VARCHAR2(25),address addr);

DESC student;

INSERT INTO student VALUES(100,'SKS',addr(10,'VIDISHA'));

INSERT INTO student VALUES(101,'SV',addr(11,'BHOPAL'));

INSERT INTO student VALUES(102,'SJVT',addr(12,'INDORE'));

SELECT * FROM student;

SELECT SNO,SNAME,s.ADDRESS.HNO,s.ADDRESS.CITY from student s;

--update

UPDATE student s set s.ADDRESS.HNO=99 WHERE s.ADDRESS.CITY='VIDISHA';

--delete

DELETE student s WHERE s.ADDRESS.CITY='VIDISHA';

--drop

DROP TYPE addr;

--drop student

DROP TABLE student;

DESC student;








