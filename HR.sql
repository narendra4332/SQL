select * from teach;

create table teach(ID number(3),NAME varchar2(15),city varchar2(15));

insert into teach values(100,'Narendra','Bhopal');

insert all
into teach values(2,'ABR','Vidisha')
into teach values(3,'SKS','Bina')
select * from dual;

update teach set ID = 102 where CITY='Vidisha';
update teach set ID = 103 where CITY='Bina';


delete teach where ID = 103;

savepoint s1;
INSERT INTO teach VALUES(3,'SON','Bhopal');
SAVEPOINT s2;
INSERT INTO teach VALUES(4,'Dev','HBJ');
SAVEPOINT s3;
INSERT INTO teach VALUES(5,'GUN','ZIM');

ROLLBACK to s3;
select * from teach;

delete teach where ID in(3,4,5);

insert into teach values in(103,'ABC','Dilhi',104,'SRS','Aagra',105,'KKR','');

