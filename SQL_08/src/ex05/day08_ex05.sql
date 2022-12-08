--Session_1
begin transaction;
--Session_2
begin transaction;

--Session_1
select sum(rating) from pizzeria;

--Session_2
update pizzeria set rating = 1 where name = 'Pizza Hut';
commit;

--Session_1
select sum(rating) from pizzeria;
commit;
select sum(rating) from pizzeria;

--Session_2
select sum(rating) from pizzeria;

