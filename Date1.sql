--sysdate it return current date and time of the server

select sysdate from dual;

select current_date from dual;

alter session set time_zone = 'Europe/Zurich';

select to_char(sysdate,'dd/mm/yyyy HH:MI:SS am') sys_date,
to_char(current_date,'dd/mm/yyyy HH:MI:SS am') curr_date from dual;

--systimestamp it is used to return current date and time with fractional seconds of server

select systimestamp from dual;

--current_timestamp it is used to return current date and time with fractional seconds of session

select current_timestamp from dual;

--localtimestamp

select localtimestamp from dual;

--to_date it is used to convert non oracle date format into oracle format

select to_date('17/10/2024', 'dd/mm/yyyy') from dual;

--add_months it is used to add months in given date 

select add_months(to_date('17/10/2024', 'dd/mm/yyyy'),3) from dual;

select add_months(to_date('17/10/2024', 'dd/mm/yyyy'),0) from dual;

select add_months(to_date('17/10/2024', 'dd/mm/yyyy'),null) from dual;

--months_between it is used to find months betweeen to given date 

select months_between(to_date('17/10/2024', 'dd/mm/yyyy'),to_date('17/10/2025', 'dd/mm/yyyy')) from dual;

select months_between(to_date('17/10/2025', 'dd/mm/yyyy'),to_date('17/10/2024', 'dd/mm/yyyy')) from dual;

--next_day it returns next date of given date based on given day

select next_day(to_date('17/10/2024','dd/mm/yyyy'),'thursday') from dual;

--last_day it is used to return last date of current month

select last_day(to_date('17/10/2024','dd/mm/yyyy')) from dual;

--extract it is used to extract day|month|year from given date

select extract(day from sysdate) from dual;

select extract(month from sysdate) from dual;

select extract(year from sysdate) from dual;

--greatest it is used to return greatest date

select greatest(to_date('17/11/2024','dd/mm/yyyy'),
to_date('17/12/2025','dd/mm/yyyy'),
to_date('17/12/2026','dd/mm/yyyy')) from dual;

--least it is used to return least date

select least(to_date('17/11/2024','dd/mm/yyyy'),
to_date('17/12/2025','dd/mm/yyyy'),
to_date('17/12/2026','dd/mm/yyyy')) from dual;

--round it is used to round date based on given year,month,day

select round(to_date('17/11/2024','dd/mm/yyyy'),'year') from dual;

select round(to_date('17/3/2024','dd/mm/yyyy'),'year') from dual;

--if second argument is year then it will check months
--if months jan-june then it will dispaly first date of current year
--if months july-dec then it will display first date of next year


select round(to_date('17/10/2024','dd/mm/yyyy'),'month') from dual;

select round(to_date('14/10/2024','dd/mm/yyyy'),'month') from dual;

--if second argument is year then it will check days
--if days 1-15 then it will dispaly first date of current month
--if days 16-31 then it will display first date of next month

--trunc it is used for truncation based on given argument 

select trunc(to_date('17/10/2024','dd/mm/yyyy'),'year') from dual;

select trunc(to_date('17/10/2024','dd/mm/yyyy'),'month') from dual;

select trunc(to_date('17/10/2024','dd/mm/yyyy'),'day') from dual;

select trunc(to_date('14/10/2024','dd/mm/yyyy'),'day') from dual;

--coalesce it is used to return first not null value

select coalesce(null, to_date('17/10/2024','dd/mm/yyyy'),
to_date('17/12/2025','dd/mm/yyyy'),
to_date('17/1/2026','dd/mm/yyyy')) from dual;



















