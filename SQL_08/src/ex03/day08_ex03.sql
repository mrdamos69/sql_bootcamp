--Session_1
begin transaction;
--Session_2
begin transaction;

--Session_1
select * from pizzeria where name = 'Pizza Hut';
--Session_2
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
commit;

--Session_1
select * from pizzeria where name = 'Pizza Hut';
commit;
select * from pizzeria where name = 'Pizza Hut';
--Session_2
select * from pizzeria where name = 'Pizza Hut';