--synonym
--database object
--iit si used to provide an alias for a table,view,sequence,function,procedure

CREATE or REPLACE SYNONYM E1 for employees;

select * from employees;

select * from E1;

select * from locations;

select * from locations l;

select * from l;

CREATE or REPLACE SYNONYM first.E1
for HR.employees;

GRANT all on first.E1 to first;

REVOKE all on first.E1 from first;