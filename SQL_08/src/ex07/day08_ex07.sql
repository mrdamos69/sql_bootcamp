--Session_1
begin transaction;
--Session_2
begin transaction;

--Session_1
update pizzeria set rating = 0.6 where id = 1;
--Session_2
update pizzeria set rating = 0.4 where id = 2;
--Session_1
update pizzeria set rating = 0.8 where id = 2;
--Session_2
update pizzeria set rating = 0.9 where id = 1;

--Session_1
commit;
--Session_2
commit;
