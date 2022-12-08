--Session_1
begin transaction isolation level repeatable read;;
--Session_2
begin transaction isolation level repeatable read;;

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