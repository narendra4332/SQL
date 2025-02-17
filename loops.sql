DECLARE 
    --Variable --Optional
BEGIN
    --Exceptable statement --mendatory
Exception
 --Execption handling code --Optional
End
set SERVEROUTPUT on;

begin 
DBMS_OUTPUT.PUT_LINE('WELCOME in PL/SQL');
DBMS_OUTPUT.PUT_LINE('it is extension of SQL');
END;


declare
    N1 number(3):=100;
    N2 number(3):=200;
begin
  DBMS_OUTPUT.PUT_LINE('Addition of two number are = '||(N1+N2));
end;


declare
N1 number(3):=&N1;
N2 number(3):=&N2;
begin
dbms_output.put_line('Addition of two number are ='||(N1+N2));
end;


declare
N1 constant number(3):=100;
N2 number(3):=200;
begin
N1:=450
dbms_output.put_line('Addition of two number are ='||(N1+N2));
end;

select * from employees;

declare
v_FIRST_NAME varchar2(20);
begin
select FIRST_NAME into v_FIRST_NAME from employees where EMPLOYEE_ID=100;
dbms_output.put_line(v_FIRST_NAME);
end;

declare
v_FIRST_NAME varchar2(20);
v_Phone_number varchar2(20);
begin
select FIRST_NAME,PHONE_NUMBER into v_FIRST_NAME, v_Phone_number from employees where EMPLOYEE_ID=100;
dbms_output.put_line('my name is'||v_FIRST_NAME||'and my Phone number is'||v_Phone_number);
end;

select * from employees;

declare
v_Phone_number hr.EMPLOYEES.Phone_Number%type;
begin
select PHONE_NUMBER into v_Phone_number from employees where EMPLOYEE_ID=100;
dbms_output.put_line(v_Phone_number);
end;

if condition then
    statement;
    End if;
select *  from employees;

declare
v_EMPLOYEE_Id number(3);
begin
select EMPLOYEE_ID into v_EMPLOYEE_Id from EMPLOYEES where FIRST_NAME='SKS1';
dbms_output.put_line(v_EMPLOYEE_Id);
if v_EMPLOYEE_Id=1 then
delete from EMPLOYEES where EMPLOYEE_ID=v_EMPLOYEE_Id;
end if;

declare
c number:=0;
begin
while(c<=100)
loop
dbms_output.put_line(c);
c:=c+1;
end loop;
end;

declare
t number:=0;
begin
for t in 1..10
loop
dbms_output.put_line(t);
end loop;
end;


declare
num number(3):=&num;
fact number(3):=1;
m number(3);
begin
for m in 1..num
loop
fact:= fact*m;
end loop;
dbms_output.put_line('Factorial of'||num||'is'||fact);
end;

declare 
num number(3):&num;
digit number(3);
begin
while(num>0)
loop
digit:mod(num,10);
dbms_output.put_line(digit);
num:=num/10;
end loop;
end;








