--Session_1

SHOW TRANSACTION ISOLATION LEVEL;
begin transaction;
select * from pizzeria where name = 'Pizza Hut';
update pizzeria set rating = 4 where name = 'Pizza Hut';
commit;
select * from pizzeria where name = 'Pizza Hut';

--Session_2

SHOW TRANSACTION ISOLATION LEVEL;
begin transaction;
select * from pizzeria where name = 'Pizza Hut';
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
commit;
select * from pizzeria where name = 'Pizza Hut';
