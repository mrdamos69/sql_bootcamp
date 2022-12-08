--Session_1
begin transaction;

--Session_2
select * from pizzeria;

--Session_1
update pizzeria set rating = 5 where name = 'Pizza Hut';
select * from pizzeria;
end transaction;

--Session_2
select * from pizzeria;