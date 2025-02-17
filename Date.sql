--sysdate it is used to return current date and time of server where oracle db is installed 

select sysdate from dual;

alter session set nls_date_fromat = 'dd-mon-yyyy HH:MT::SS am'; 

--to_char it is used to extract various date fromats

select to_char(sysdate,'dd') from dual;

select to_char(sysdate,'mm') from dual;

select to_char(sysdate,'yyyy') from dual;

select to_char(sysdate,'d') from dual;

select to_char(sysdate,'ddd') from dual;

select to_char(sysdate,'dy') from dual;

select to_char(sysdate,'day') from dual;

select to_char(sysdate,'mon') from dual;

select to_char(sysdate,'month') from dual;

select to_char(sysdate,'am') from dual;

select to_char(sysdate,'y') from dual;

select to_char(sysdate,'yyy') from dual;

select to_char(sysdate,'dd/mm/yy HH:MI:SS am') from dual;

select to_char(sysdate,'dd*mm*yy') from dual;

--to_date it is used to convert non oracle date format to oracle date format

select sysdate from dual;

select to_date('16/10/2024','dd/mm/yyyy') from dual;

select sysdate from dual;

alter session set time_zone = 'europe/zurich'; 

select to_char(sysdate,'dd/mm/yy MM:MI:SS am') sys_date,
to_char(current_date,'dd/mm/yy HH:MI:SS am')curr_date from dual;
















