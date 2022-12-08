--Session_1
SHOW TRANSACTION ISOLATION LEVEL;
--Session_2
SHOW TRANSACTION ISOLATION LEVEL;

--Session_1
begin transaction;
--Session_2
begin transaction;

--Session_1
select * from pizzeria where name = 'Pizza Hut';
--Session_2
select * from pizzeria where name = 'Pizza Hut';

--Session_1
update pizzeria set rating = 4 where name = 'Pizza Hut';
--Session_2
update pizzeria set rating = 4 where name = 'Pizza Hut';

--Session_1
commit;
--Session_2
commit;
 
--Session_1
select * from pizzeria where name = 'Pizza Hut';
--Session_2
select * from pizzeria where name = 'Pizza Hut';