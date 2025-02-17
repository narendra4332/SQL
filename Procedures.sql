create or replace procedure PROC_NAME
is
begin
--Statements
end;
------------------------------------------------------------------------

set serveroutput on;

--static procedures
create or replace procedure greetings
is
begin
dbms_output.put_line('Welcome in PL/SQL');
end;

exec greetings;

--Dynamic Procedures
create or replace procedure greetings(p IN varchar2)
is
begin
dbms_output.put_line('Welcome in PL/SQL'||P);
end;

exec greetings('it is sql extension');

----------------------------------------------------------------------------------------

--add two numbers
create or replace procedure greetings(N1 IN number,N2 IN number)
is
addition number(3);
begin
addition:=N1+N2;
dbms_output.put_line('Output is'||addition);
end;

exec greetings(200,600);

declare
num1 number(3):=&num1;
num2 number(3):=&num2;
begin
greetings(num1,num2);
end;

----------------------------------------------------------------------------------
create or replace procedure greetings(N1 IN number,N2 IN number,N3 OUT number)
is
begin
N3:=N1+N2;
end;

declare
num1 number(3):=&num1;
num2 number(3):=&num2;
num3 number(3);
begin
greetings(num1,num2,num3);
dbms_output.put_line(num3);
end;

----------------------------------------------------------------------------------

create or replace procedure greetings(N1 IN number,N2 IN number,N3 OUT number)
is
begin
N3:=N1+N2;
end;

declare
num1 number(3):=10;
num2 number(3):=20;
num3 number(3);
begin
greetings(num1,num2,num3);
dbms_output.put_line(num3);
end;

----------------------------------------------------------------------------------
--question
create or replace procedure greetings(N1 IN number)
is
fact number:=1;
cl number;
begin
for cl in 1..N1
loop
fact:= fact*cl;
end loop;
dbms_output.put_line(fact);
end;

exec greetings(5);

----------------------------------------------------------------------------------
--Function