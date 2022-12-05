with pz_famele as (select pz.name from pizzeria pz
join person_visits pv on pz.id = pv.pizzeria_id
join person p on pv.person_id = p.id
where p.gender = 'female'),
pz_male as (select pz.name from pizzeria pz
join person_visits pv on pz.id = pv.pizzeria_id
join person p on pv.person_id = p.id
where p.gender = 'male'),
all_pizzeria_1 as (select * from pz_famele except all select * from pz_male),
all_pizzeria_2 as (select * from pz_male except all select * from pz_famele)
select * from all_pizzeria_1 union all select * from all_pizzeria_2
order by 1;