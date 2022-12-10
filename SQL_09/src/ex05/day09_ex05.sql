drop function fnc_persons_female();
drop function fnc_persons_male();

create or replace function fnc_persons(in pgender varchar default 'female')
returns setof text as $$
select name from person where gender = pgender
$$language sql;