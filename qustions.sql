CREATE TABLE Email(Email VARCHAR2(30));



INSERT INTO Email VALUES('nare@gmail.com');

INSERT INTO Email VALUES('nozi@hotmail.com');


SELECT Email,SUBSTR(Email,INSTR(Email,'@',1)+1) as domain_name from Email;

SELECT Email,SUBSTR(Email,1,INSTR(Email,'@',1)-1) as name from Email; 








