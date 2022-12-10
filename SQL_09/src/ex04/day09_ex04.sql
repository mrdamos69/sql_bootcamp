create or replace function fnc_persons_female()
returns setof text as $$
select name from person where gender = 'female'
$$language sql;

create or replace function fnc_persons_male()
returns setof text as $$
select name from person where gender = 'male'
$$language sql;