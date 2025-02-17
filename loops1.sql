
Error starting at line : 33 in command -
declare
N1 constant number(3):=100;
N2 number(3):=200;
begin
N1:=450
dbms_output.put_line('Addition of two number are ='||(N1+N2));
end;
Error report -
ORA-06550: line 6, column 1:
PLS-00103: Encountered the symbol "DBMS_OUTPUT" when expecting one of the following:

   * & = - + ; < / > at in is mod remainder not rem
   <an exponent (**)> <> or != or ~= >= <= <> and or like like2
   like4 likec between || multiset member submultiset
The symbol "*" was substituted for "DBMS_OUTPUT" to continue.
06550. 00000 -  "line %s, column %s:\n%s"
*Cause:    Usually a PL/SQL compilation error.
*Action:

Substitution cancelled

PL/SQL procedure successfully completed.


PL/SQL procedure successfully completed.

